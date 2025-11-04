# Firestore Schema

## Collection Overview
- **users** (`userId`) – Profil ve tercih bilgileri, premium durumu, istatistikler.
- **habits** (`habitId`) – Kullanıcıya ait alışkanlık tanımları.
- **habit_completions** (`completionId`) – Her alışkanlık için günlük tamamlanma kayıtları.
- **tasks** (`taskId`) – Tekil görevler ve alt görevler.
- **categories** (`categoryId`) – Kullanıcı tanımlı kategori meta verileri.
- **badges** (`badgeId`) – Global rozet tanımları.
- **user_badges** (`userBadgeId`) – Kullanıcıların kazandığı rozetler.
- **analytics_events** (`eventId`) – Analytics olay logları (isteğe bağlı).
- **subscriptions** (`subscriptionId`) – Premium abonelik verileri.

## Ortak Alanlar
| Alan | Tip | Açıklama |
| --- | --- | --- |
| `userId` | string | Kullanıcıya ait belgelerde zorunlu. Kurallar tarafından sahiplik kontrolü için kullanılır. |
| `createdAt` | timestamp | Firestore serverTimestamp ile set edilmeli. |
| `updatedAt` | timestamp | Her değişiklikte güncellenmeli. |

## Koleksiyon Detayları
### users/{userId}
| Alan | Tip | Not |
| --- | --- | --- |
| email | string | Auth email ile eşleşmeli. |
| displayName | string | Opsiyonel, profil adı. |
| photoURL | string | Opsiyonel. |
| language | string | `tr`, `en` vb. |
| theme | string | `light`, `dark`, `system`. |
| isPremium | boolean | Premium statüsü. |
| premiumExpiryDate | timestamp | Premium bitiş tarihi. |
| preferences | map | Bildirim vs. özelleştirmeler. |
| stats | map | Toplam alışkanlık/görev ve streak bilgileri. |

### habits/{habitId}
| Alan | Tip | Not |
| --- | --- | --- |
| userId | string | indeksli. |
| title | string | 40 karakter önerilir. |
| description | string | Opsiyonel. |
| category | string | (health, career, vb.) |
| color | string | HEX kodu. |
| icon | string | Material icon adı. |
| frequency | map | `{ type: 'daily' | 'specific_days' | 'weekly', days: [1..7] }`. |
| reminderTime | string | `HH:mm`. |
| reminderEnabled | boolean | |
| currentStreak | number | |
| bestStreak | number | |
| order | number | Kullanıcı listesi sıralaması. |

### habit_completions/{completionId}
| Alan | Tip | Not |
| userId | string | |
| habitId | string | |
| completedAt | timestamp | indeksli. |
| date | string | `YYYY-MM-DD` formatında, sorgu kolaylığı sağlar. |
| note | string | Opsiyonel. |
| photoURL | string | Opsiyonel (Faz 3). |

### tasks/{taskId}
| Alan | Tip | Not |
| --- | --- | --- |
| userId | string | |
| title | string | |
| description | string | Opsiyonel. |
| dueDate | timestamp | İndeksli. |
| dueTime | string | Opsiyonel. |
| priority | string | `high | medium | low`. |
| labels | array<string> | |
| category | string | |
| isCompleted | boolean | indeksli. |
| completedAt | timestamp | Opsiyonel. |
| isRecurring | boolean | |
| recurringPattern | map | `{ frequency: 'daily', interval: 1 }`. |
| parentTaskId | string | Alt görevlerde üst görev id'si. |
| order | number | Liste sırası. |
| reminderEnabled | boolean | |

### categories/{categoryId}
| Alan | Tip | Not |
| --- | --- | --- |
| userId | string | |
| name | string | |
| color | string | |
| icon | string | |
| type | string | `habit`, `task`, `both`. |

### badges/{badgeId}
Global, kullanıcıya özgü alan yok; offline okunabilir.

### user_badges/{userBadgeId}
| Alan | Tip | Not |
| --- | --- | --- |
| userId | string | |
| badgeId | string | |
| earnedAt | timestamp | |
| isDisplayed | boolean | Profilde gösterilsin mi. |

### analytics_events/{eventId}
Sadece yazma izni. `eventType`, `eventData` (map), `timestamp` alanları bulunur.

### subscriptions/{subscriptionId}
| Alan | Tip | Not |
| --- | --- | --- |
| userId | string | |
| plan | string | `free`, `premium`. |
| status | string | `active`, `expired`, `cancelled`. |
| platform | string | `ios`, `android`, `stripe`. |
| startDate | timestamp | |
| expiryDate | timestamp | |
| autoRenew | boolean | |
| transactionId | string | ödeme kaydı. |

## İndeksler
`firebase/firestore.indexes.json` dosyasında tutulur.
- `habits`: `userId ASC` simple index.
- `tasks`: `userId ASC`, `isCompleted ASC`, `dueDate DESC` composite.
- `habit_completions`: `(userId ASC, date DESC)` composite.
- `user_badges`: `(userId ASC, earnedAt DESC)` composite.
- `subscriptions`: `(userId ASC, status ASC)` composite.

## Sunucu Tarafı Notlar
- serverTimestamp kullanımı: `createdAt`, `updatedAt` alanlarında client tarafında `FieldValue.serverTimestamp()` zorunlu.
- Offline destek: kritik sorgular `userId` filtreli composite indexler üzerinden yapılmalıdır.
- Veri tutarlılığı: tasks/habits silindiğinde ilişkili completions veya subtasks için Cloud Function temizliği planlanmalı (Faz 2).
