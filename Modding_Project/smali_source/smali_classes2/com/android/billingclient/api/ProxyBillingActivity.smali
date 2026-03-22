.class public Lcom/android/billingclient/api/ProxyBillingActivity;
.super Landroid/app/Activity;
.source "com.android.billingclient:billing@@8.0.0"


# annotations
.annotation build Lcom/android/billingclient/api/zzq;
.end annotation

.annotation build Lcom/google/android/apps/common/proguard/UsedByReflection;
    value = "PlatformActivityProxy"
.end annotation


# instance fields
.field private a:Landroid/os/ResultReceiver;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:I

.field private e:J

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private a(I)Lcom/google/android/gms/internal/play_billing/zzie;
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_4

    .line 3
    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x5

    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzie;->zzbm:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzie;->zzbn:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzie;->zzbl:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzie;->zzbk:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzie;->zzbj:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_4
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzie;->zzbi:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 31
    .line 32
    return-object p1
.end method

.method private b(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.android.vending.billing.ALTERNATIVE_BILLING"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    const-string v1, "ALTERNATIVE_BILLING_USER_CHOICE_DATA"

    .line 20
    .line 21
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method private c(Lcom/google/android/gms/internal/play_billing/zzie;J)Landroid/content/Intent;
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->d()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "RESPONSE_CODE"

    .line 6
    .line 7
    const/4 v2, 0x6

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    const-string v1, "DEBUG_MESSAGE"

    .line 12
    .line 13
    const-string v3, "An internal error occurred."

    .line 14
    .line 15
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    sget v2, Lcom/android/billingclient/api/zzcg;->zza:I

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzil;->zza:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 36
    .line 37
    const/4 v4, 0x2

    .line 38
    invoke-static {p1, v4, v1, v2, v3}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzhx;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzds;->zzM()[B

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string v1, "FAILURE_LOGGING_PAYLOAD"

    .line 47
    .line 48
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    const-string p1, "INTENT_SOURCE"

    .line 52
    .line 53
    const-string v1, "LAUNCH_BILLING_FLOW"

    .line 54
    .line 55
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    const-string p1, "billingClientTransactionId"

    .line 59
    .line 60
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    const-string/jumbo p1, "wasServiceAutoReconnected"

    .line 64
    .line 65
    .line 66
    iget-boolean p2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->f:Z

    .line 67
    .line 68
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    return-object v0
.end method

.method private d()Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/android/billingclient/api/zzq;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x64

    .line 5
    .line 6
    const/16 v1, 0x6e

    .line 7
    .line 8
    const-string v2, "ProxyBillingActivity"

    .line 9
    .line 10
    if-eq p1, v0, :cond_3

    .line 11
    .line 12
    if-ne p1, v1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/16 p2, 0x65

    .line 16
    .line 17
    if-ne p1, p2, :cond_2

    .line 18
    .line 19
    invoke-static {p3, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zza(Landroid/content/Intent;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget-object p2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->a:Landroid/os/ResultReceiver;

    .line 24
    .line 25
    if-eqz p2, :cond_a

    .line 26
    .line 27
    if-nez p3, :cond_1

    .line 28
    .line 29
    const/4 p3, 0x0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    :goto_0
    invoke-virtual {p2, p1, p3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_4

    .line 39
    .line 40
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string p3, "Got onActivityResult with wrong requestCode: "

    .line 46
    .line 47
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, "; skipping..."

    .line 54
    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto/16 :goto_4

    .line 66
    .line 67
    :cond_3
    :goto_1
    invoke-static {p3, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzh(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const/4 v3, -0x1

    .line 76
    if-ne p2, v3, :cond_4

    .line 77
    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    move p2, v3

    .line 81
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v4, "Activity finished with resultCode "

    .line 87
    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v4, " and billing\'s responseCode: "

    .line 95
    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    move v3, p2

    .line 110
    :cond_5
    if-eqz p3, :cond_8

    .line 111
    .line 112
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    if-eqz p2, :cond_7

    .line 117
    .line 118
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    const-string v0, "ALTERNATIVE_BILLING_USER_CHOICE_DATA"

    .line 123
    .line 124
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    const-string v0, "LAUNCH_BILLING_FLOW"

    .line 129
    .line 130
    const-string v2, "INTENT_SOURCE"

    .line 131
    .line 132
    if-eqz p2, :cond_6

    .line 133
    .line 134
    invoke-direct {p0, p2}, Lcom/android/billingclient/api/ProxyBillingActivity;->b(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_6
    invoke-direct {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->d()Landroid/content/Intent;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 147
    .line 148
    .line 149
    move-result-object p3

    .line 150
    invoke-virtual {p2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    .line 155
    .line 156
    :goto_2
    iget-wide v2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->e:J

    .line 157
    .line 158
    const-string p3, "billingClientTransactionId"

    .line 159
    .line 160
    invoke-virtual {p2, p3, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 161
    .line 162
    .line 163
    iget-boolean p3, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->f:Z

    .line 164
    .line 165
    const-string/jumbo v0, "wasServiceAutoReconnected"

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_7
    const-string p2, "Got null bundle!"

    .line 173
    .line 174
    invoke-static {v2, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzie;->zzv:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 178
    .line 179
    iget-wide v2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->e:J

    .line 180
    .line 181
    invoke-direct {p0, p2, v2, v3}, Lcom/android/billingclient/api/ProxyBillingActivity;->c(Lcom/google/android/gms/internal/play_billing/zzie;J)Landroid/content/Intent;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    goto :goto_3

    .line 186
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    const-string p3, "Got null data with resultCode "

    .line 192
    .line 193
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string p3, "!"

    .line 200
    .line 201
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    invoke-static {v2, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-direct {p0, v3}, Lcom/android/billingclient/api/ProxyBillingActivity;->a(I)Lcom/google/android/gms/internal/play_billing/zzie;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    iget-wide v2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->e:J

    .line 216
    .line 217
    invoke-direct {p0, p2, v2, v3}, Lcom/android/billingclient/api/ProxyBillingActivity;->c(Lcom/google/android/gms/internal/play_billing/zzie;J)Landroid/content/Intent;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    :goto_3
    if-ne p1, v1, :cond_9

    .line 222
    .line 223
    const-string p1, "IS_FIRST_PARTY_PURCHASE"

    .line 224
    .line 225
    const/4 p3, 0x1

    .line 226
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 227
    .line 228
    .line 229
    :cond_9
    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 230
    .line 231
    .line 232
    :cond_a
    :goto_4
    const/4 p1, 0x0

    .line 233
    iput-boolean p1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->b:Z

    .line 234
    .line 235
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 236
    .line 237
    .line 238
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/android/billingclient/api/zzq;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/16 v1, 0x64

    .line 5
    .line 6
    const-string v2, "in_app_message_result_receiver"

    .line 7
    .line 8
    const-string v3, "IS_FLOW_FROM_FIRST_PARTY_CLIENT"

    .line 9
    .line 10
    const-string v8, "ProxyBillingActivity"

    .line 11
    .line 12
    const-string/jumbo v4, "wasServiceAutoReconnected"

    .line 13
    .line 14
    .line 15
    const-string v5, "billingClientTransactionId"

    .line 16
    .line 17
    const/4 v9, 0x0

    .line 18
    if-nez p1, :cond_7

    .line 19
    .line 20
    const-string v0, "Launching Play Store billing flow"

    .line 21
    .line 22
    invoke-static {v8, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->d:I

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "BUY_INTENT"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v10, 0x0

    .line 38
    const/4 v11, 0x1

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/app/PendingIntent;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1, v3, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    iput-boolean v11, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->c:Z

    .line 72
    .line 73
    const/16 v1, 0x6e

    .line 74
    .line 75
    iput v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->d:I

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v1, "IN_APP_MESSAGE_INTENT"

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_1

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Landroid/app/PendingIntent;

    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Landroid/os/ResultReceiver;

    .line 109
    .line 110
    iput-object v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->a:Landroid/os/ResultReceiver;

    .line 111
    .line 112
    const/16 v1, 0x65

    .line 113
    .line 114
    iput v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->d:I

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_1
    move-object v0, v10

    .line 118
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_3

    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    const-wide/16 v2, 0x0

    .line 133
    .line 134
    invoke-virtual {v1, v5, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 135
    .line 136
    .line 137
    move-result-wide v1

    .line 138
    iput-wide v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->e:J

    .line 139
    .line 140
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_4

    .line 149
    .line 150
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v1, v4, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    iput-boolean v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->f:Z

    .line 159
    .line 160
    :cond_4
    :try_start_0
    iput-boolean v11, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->b:Z

    .line 161
    .line 162
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    iget v3, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->d:I

    .line 167
    .line 168
    new-instance v4, Landroid/content/Intent;

    .line 169
    .line 170
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 171
    .line 172
    .line 173
    const/4 v6, 0x0

    .line 174
    const/4 v7, 0x0

    .line 175
    const/4 v5, 0x0

    .line 176
    move-object v1, p0

    .line 177
    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    const-string v1, "Got exception while trying to start a purchase flow."

    .line 183
    .line 184
    invoke-static {v8, v1, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->a:Landroid/os/ResultReceiver;

    .line 188
    .line 189
    if-eqz v0, :cond_5

    .line 190
    .line 191
    invoke-virtual {v0, v9, v10}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzie;->zzbG:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 196
    .line 197
    iget-wide v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->e:J

    .line 198
    .line 199
    invoke-direct {p0, v0, v1, v2}, Lcom/android/billingclient/api/ProxyBillingActivity;->c(Lcom/google/android/gms/internal/play_billing/zzie;J)Landroid/content/Intent;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    iget-boolean v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->c:Z

    .line 204
    .line 205
    if-eqz v1, :cond_6

    .line 206
    .line 207
    const-string v1, "IS_FIRST_PARTY_PURCHASE"

    .line 208
    .line 209
    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 210
    .line 211
    .line 212
    :cond_6
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 213
    .line 214
    .line 215
    :goto_1
    iput-boolean v9, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->b:Z

    .line 216
    .line 217
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :cond_7
    const-string v6, "Launching Play Store billing flow from savedInstanceState"

    .line 222
    .line 223
    invoke-static {v8, v6}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    const-string v6, "send_cancelled_broadcast_if_finished"

    .line 227
    .line 228
    invoke-virtual {p1, v6, v9}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    iput-boolean v6, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->b:Z

    .line 233
    .line 234
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    if-eqz v6, :cond_8

    .line 239
    .line 240
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    check-cast v2, Landroid/os/ResultReceiver;

    .line 245
    .line 246
    iput-object v2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->a:Landroid/os/ResultReceiver;

    .line 247
    .line 248
    :cond_8
    invoke-virtual {p1, v3, v9}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    iput-boolean v2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->c:Z

    .line 253
    .line 254
    const-string v2, "activity_code"

    .line 255
    .line 256
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    iput v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->d:I

    .line 261
    .line 262
    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    if-eqz v1, :cond_9

    .line 267
    .line 268
    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 269
    .line 270
    .line 271
    move-result-wide v1

    .line 272
    iput-wide v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->e:J

    .line 273
    .line 274
    :cond_9
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    if-eqz v1, :cond_a

    .line 279
    .line 280
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    iput-boolean v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->f:Z

    .line 285
    .line 286
    :cond_a
    return-void
.end method

.method protected onDestroy()V
    .locals 4
    .annotation build Lcom/android/billingclient/api/zzq;
    .end annotation

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->b:Z

    .line 12
    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->d()Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "RESPONSE_CODE"

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    const-string v1, "DEBUG_MESSAGE"

    .line 26
    .line 27
    const-string v3, "Billing dialog closed."

    .line 28
    .line 29
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    iget-boolean v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->c:Z

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    const-string v1, "IS_FIRST_PARTY_PURCHASE"

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    :cond_1
    iget v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->d:I

    .line 42
    .line 43
    const/16 v2, 0x6e

    .line 44
    .line 45
    if-eq v1, v2, :cond_2

    .line 46
    .line 47
    const/16 v2, 0x64

    .line 48
    .line 49
    if-ne v1, v2, :cond_3

    .line 50
    .line 51
    :cond_2
    const-string v1, "INTENT_SOURCE"

    .line 52
    .line 53
    const-string v2, "LAUNCH_BILLING_FLOW"

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    iget-wide v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->e:J

    .line 59
    .line 60
    const-string v3, "billingClientTransactionId"

    .line 61
    .line 62
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 66
    .line 67
    .line 68
    :cond_4
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/android/billingclient/api/zzq;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->a:Landroid/os/ResultReceiver;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v1, "in_app_message_result_receiver"

    .line 9
    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->b:Z

    .line 14
    .line 15
    const-string v1, "send_cancelled_broadcast_if_finished"

    .line 16
    .line 17
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->c:Z

    .line 21
    .line 22
    const-string v1, "IS_FLOW_FROM_FIRST_PARTY_CLIENT"

    .line 23
    .line 24
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    iget v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->d:I

    .line 28
    .line 29
    const-string v1, "activity_code"

    .line 30
    .line 31
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    iget-wide v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->e:J

    .line 35
    .line 36
    const-string v2, "billingClientTransactionId"

    .line 37
    .line 38
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 39
    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->f:Z

    .line 42
    .line 43
    const-string/jumbo v1, "wasServiceAutoReconnected"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
