.class final Lcom/android/billingclient/api/z;
.super Landroid/content/BroadcastReceiver;
.source "com.android.billingclient:billing@@8.0.0"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# instance fields
.field private a:Z

.field private final b:Z

.field final synthetic c:Lcom/android/billingclient/api/a0;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/a0;Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/z;->c:Lcom/android/billingclient/api/a0;

    .line 5
    .line 6
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-boolean p2, p0, Lcom/android/billingclient/api/z;->b:Z

    .line 10
    .line 11
    return-void
.end method

.method private final d(Landroid/os/Bundle;Lcom/android/billingclient/api/BillingResult;ILcom/google/android/gms/internal/play_billing/zzil;JZ)V
    .locals 2

    .line 1
    const-string v0, "FAILURE_LOGGING_PAYLOAD"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lcom/android/billingclient/api/z;->c:Lcom/android/billingclient/api/a0;

    .line 10
    .line 11
    invoke-static {p2}, Lcom/android/billingclient/api/a0;->b(Lcom/android/billingclient/api/a0;)Lcom/android/billingclient/api/t;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzeu;->zza()Lcom/google/android/gms/internal/play_billing/zzeu;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzhx;->zzA([BLcom/google/android/gms/internal/play_billing/zzeu;)Lcom/google/android/gms/internal/play_billing/zzhx;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p2, p1, p5, p6, p7}, Lcom/android/billingclient/api/t;->a(Lcom/google/android/gms/internal/play_billing/zzhx;JZ)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/android/billingclient/api/z;->c:Lcom/android/billingclient/api/a0;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/android/billingclient/api/a0;->b(Lcom/android/billingclient/api/a0;)Lcom/android/billingclient/api/t;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzie;->zzw:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-static {v0, p3, p2, v1, p4}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzhx;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-interface {p1, p2, p5, p6, p7}, Lcom/android/billingclient/api/t;->a(Lcom/google/android/gms/internal/play_billing/zzhx;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catchall_0
    const-string p1, "BillingBroadcastManager"

    .line 49
    .line 50
    const-string p2, "Failed parsing Api failure."

    .line 51
    .line 52
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/z;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v1, 0x21

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-lt v0, v1, :cond_2

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/android/billingclient/api/z;->b:Z

    .line 16
    .line 17
    if-eq v2, v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x2

    .line 22
    :goto_0
    invoke-static {p1, p0, p2, v0}, Lcom/android/billingclient/api/x;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    :goto_1
    iput-boolean v2, p0, Lcom/android/billingclient/api/z;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    throw p1
.end method

.method public final declared-synchronized b(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p3, p0, Lcom/android/billingclient/api/z;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const-string v3, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST"

    .line 11
    .line 12
    const/16 v0, 0x21

    .line 13
    .line 14
    const/4 v6, 0x1

    .line 15
    if-lt p3, v0, :cond_2

    .line 16
    .line 17
    iget-boolean p3, p0, Lcom/android/billingclient/api/z;->b:Z

    .line 18
    .line 19
    if-eq v6, p3, :cond_1

    .line 20
    .line 21
    const/4 p3, 0x4

    .line 22
    :goto_0
    move v5, p3

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 p3, 0x2

    .line 25
    goto :goto_0

    .line 26
    :goto_1
    const/4 v4, 0x0

    .line 27
    move-object v0, p1

    .line 28
    move-object v1, p0

    .line 29
    move-object v2, p2

    .line 30
    invoke-static/range {v0 .. v5}, Lcom/android/billingclient/api/y;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_3

    .line 36
    :cond_2
    const/4 p3, 0x0

    .line 37
    invoke-virtual {p1, p0, p2, v3, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    :goto_2
    iput-boolean v6, p0, Lcom/android/billingclient/api/z;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    throw p1
.end method

.method public final declared-synchronized c(Landroid/content/Context;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/z;->a:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/android/billingclient/api/z;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    :try_start_1
    const-string p1, "BillingBroadcastManager"

    .line 17
    .line 18
    const-string v0, "Receiver is not registered."

    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    throw p1
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const v2, -0x58756162

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    const/4 v4, 0x0

    .line 15
    if-eq v1, v2, :cond_2

    .line 16
    .line 17
    const v2, -0x141f9074

    .line 18
    .line 19
    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    const v2, 0x14937179

    .line 23
    .line 24
    .line 25
    if-eq v1, v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v1, "com.android.vending.billing.ALTERNATIVE_BILLING"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    move v0, v3

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const-string v1, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    move v0, p1

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const-string v1, "com.android.vending.billing.PURCHASES_UPDATED"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    move v0, v4

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    :goto_0
    const/4 v0, -0x1

    .line 59
    :goto_1
    if-eqz v0, :cond_6

    .line 60
    .line 61
    if-eq v0, p1, :cond_5

    .line 62
    .line 63
    if-eq v0, v3, :cond_4

    .line 64
    .line 65
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzil;->zza:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 66
    .line 67
    :goto_2
    move-object v9, v0

    .line 68
    goto :goto_3

    .line 69
    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzil;->zzd:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzil;->zzc:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_6
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzil;->zzb:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :goto_3
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzil;->zzc:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 79
    .line 80
    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_7

    .line 85
    .line 86
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzil;->zzd:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 87
    .line 88
    invoke-virtual {v9, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_8

    .line 93
    .line 94
    :cond_7
    move v8, v3

    .line 95
    goto :goto_4

    .line 96
    :cond_8
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzil;->zzb:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 97
    .line 98
    invoke-virtual {v9, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_9

    .line 103
    .line 104
    const/16 v1, 0x20

    .line 105
    .line 106
    move v8, v1

    .line 107
    goto :goto_4

    .line 108
    :cond_9
    move v8, p1

    .line 109
    :goto_4
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    const/4 v1, 0x0

    .line 114
    const-string v2, "BillingBroadcastManager"

    .line 115
    .line 116
    if-nez v6, :cond_a

    .line 117
    .line 118
    const-string p1, "Bundle is null."

    .line 119
    .line 120
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lcom/android/billingclient/api/z;->c:Lcom/android/billingclient/api/a0;

    .line 124
    .line 125
    invoke-static {p1}, Lcom/android/billingclient/api/a0;->b(Lcom/android/billingclient/api/a0;)Lcom/android/billingclient/api/t;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzie;->zzk:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 130
    .line 131
    sget-object v2, Lcom/android/billingclient/api/u;->h:Lcom/android/billingclient/api/BillingResult;

    .line 132
    .line 133
    invoke-static {v0, v8, v2, v1, v9}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzhx;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-interface {p2, v0}, Lcom/android/billingclient/api/t;->h(Lcom/google/android/gms/internal/play_billing/zzhx;)V

    .line 138
    .line 139
    .line 140
    invoke-static {p1}, Lcom/android/billingclient/api/a0;->c(Lcom/android/billingclient/api/a0;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    if-eqz p2, :cond_18

    .line 145
    .line 146
    invoke-static {p1}, Lcom/android/billingclient/api/a0;->c(Lcom/android/billingclient/api/a0;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-interface {p1, v2, v1}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_a
    if-ne v8, v3, :cond_e

    .line 155
    .line 156
    sget v3, Lcom/google/android/gms/internal/play_billing/zzc;->zza:I

    .line 157
    .line 158
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    invoke-static {v5, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    invoke-virtual {v3, v5}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    if-nez v5, :cond_b

    .line 178
    .line 179
    const-string v5, "Unexpected null bundle received!"

    .line 180
    .line 181
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :goto_5
    move v5, v4

    .line 185
    goto :goto_6

    .line 186
    :cond_b
    const-string v7, "SUB_RESPONSE_CODE"

    .line 187
    .line 188
    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    if-nez v5, :cond_c

    .line 193
    .line 194
    const-string v5, "getLaunchBillingFlowSubResponseCodeFromBundle() got null response code, assuming OK"

    .line 195
    .line 196
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_c
    instance-of v7, v5, Ljava/lang/Integer;

    .line 201
    .line 202
    if-eqz v7, :cond_d

    .line 203
    .line 204
    check-cast v5, Ljava/lang/Integer;

    .line 205
    .line 206
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    goto :goto_6

    .line 211
    :cond_d
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    const-string v7, "Unexpected type for bundle sub response code: "

    .line 220
    .line 221
    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    goto :goto_5

    .line 229
    :goto_6
    invoke-virtual {v3, v5}, Lcom/android/billingclient/api/BillingResult$Builder;->setOnPurchasesUpdatedSubResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 233
    .line 234
    .line 235
    move-result-object p2

    .line 236
    invoke-static {p2, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzj(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    invoke-virtual {v3, p2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    goto :goto_7

    .line 248
    :cond_e
    invoke-static {p2, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzh(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    :goto_7
    const-string v3, "billingClientTransactionId"

    .line 253
    .line 254
    const-wide/16 v10, 0x0

    .line 255
    .line 256
    invoke-virtual {v6, v3, v10, v11}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 257
    .line 258
    .line 259
    move-result-wide v10

    .line 260
    const-string/jumbo v3, "wasServiceAutoReconnected"

    .line 261
    .line 262
    .line 263
    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 264
    .line 265
    .line 266
    move-result v12

    .line 267
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzil;->zzb:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 268
    .line 269
    invoke-virtual {v9, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v3

    .line 273
    if-nez v3, :cond_19

    .line 274
    .line 275
    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-eqz v0, :cond_f

    .line 280
    .line 281
    goto/16 :goto_c

    .line 282
    .line 283
    :cond_f
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzil;->zzd:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 284
    .line 285
    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    if-eqz v0, :cond_18

    .line 290
    .line 291
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-eqz v0, :cond_10

    .line 296
    .line 297
    move-object v5, p0

    .line 298
    move-object v7, p2

    .line 299
    invoke-direct/range {v5 .. v12}, Lcom/android/billingclient/api/z;->d(Landroid/os/Bundle;Lcom/android/billingclient/api/BillingResult;ILcom/google/android/gms/internal/play_billing/zzil;JZ)V

    .line 300
    .line 301
    .line 302
    iget-object p1, p0, Lcom/android/billingclient/api/z;->c:Lcom/android/billingclient/api/a0;

    .line 303
    .line 304
    invoke-static {p1}, Lcom/android/billingclient/api/a0;->c(Lcom/android/billingclient/api/a0;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbt;->zzk()Lcom/google/android/gms/internal/play_billing/zzbt;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-interface {p1, p2, v0}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 313
    .line 314
    .line 315
    return-void

    .line 316
    :cond_10
    iget-object p2, p0, Lcom/android/billingclient/api/z;->c:Lcom/android/billingclient/api/a0;

    .line 317
    .line 318
    invoke-static {p2}, Lcom/android/billingclient/api/a0;->a(Lcom/android/billingclient/api/a0;)Lcom/android/billingclient/api/zzb;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    if-nez v0, :cond_12

    .line 323
    .line 324
    invoke-static {p2}, Lcom/android/billingclient/api/a0;->e(Lcom/android/billingclient/api/a0;)Lcom/android/billingclient/api/UserChoiceBillingListener;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    if-eqz v0, :cond_11

    .line 329
    .line 330
    goto :goto_8

    .line 331
    :cond_11
    const-string p1, "AlternativeBillingListener and UserChoiceBillingListener is null."

    .line 332
    .line 333
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    iget-object p1, p0, Lcom/android/billingclient/api/z;->c:Lcom/android/billingclient/api/a0;

    .line 337
    .line 338
    invoke-static {p1}, Lcom/android/billingclient/api/a0;->b(Lcom/android/billingclient/api/a0;)Lcom/android/billingclient/api/t;

    .line 339
    .line 340
    .line 341
    move-result-object p2

    .line 342
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzie;->zzay:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 343
    .line 344
    sget-object v2, Lcom/android/billingclient/api/u;->h:Lcom/android/billingclient/api/BillingResult;

    .line 345
    .line 346
    invoke-static {v0, v8, v2, v1, v9}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzhx;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    invoke-interface {p2, v0, v10, v11, v12}, Lcom/android/billingclient/api/t;->a(Lcom/google/android/gms/internal/play_billing/zzhx;JZ)V

    .line 351
    .line 352
    .line 353
    invoke-static {p1}, Lcom/android/billingclient/api/a0;->c(Lcom/android/billingclient/api/a0;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbt;->zzk()Lcom/google/android/gms/internal/play_billing/zzbt;

    .line 358
    .line 359
    .line 360
    move-result-object p2

    .line 361
    invoke-interface {p1, v2, p2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 362
    .line 363
    .line 364
    return-void

    .line 365
    :cond_12
    :goto_8
    const-string v0, "ALTERNATIVE_BILLING_USER_CHOICE_DATA"

    .line 366
    .line 367
    invoke-virtual {v6, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    if-eqz v0, :cond_17

    .line 372
    .line 373
    :try_start_0
    invoke-static {p2}, Lcom/android/billingclient/api/a0;->e(Lcom/android/billingclient/api/a0;)Lcom/android/billingclient/api/UserChoiceBillingListener;

    .line 374
    .line 375
    .line 376
    move-result-object v3

    .line 377
    if-eqz v3, :cond_13

    .line 378
    .line 379
    new-instance p1, Lcom/android/billingclient/api/UserChoiceDetails;

    .line 380
    .line 381
    invoke-direct {p1, v0}, Lcom/android/billingclient/api/UserChoiceDetails;-><init>(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    invoke-static {p2}, Lcom/android/billingclient/api/a0;->e(Lcom/android/billingclient/api/a0;)Lcom/android/billingclient/api/UserChoiceBillingListener;

    .line 385
    .line 386
    .line 387
    move-result-object p2

    .line 388
    invoke-interface {p2, p1}, Lcom/android/billingclient/api/UserChoiceBillingListener;->userSelectedAlternativeBilling(Lcom/android/billingclient/api/UserChoiceDetails;)V

    .line 389
    .line 390
    .line 391
    goto :goto_b

    .line 392
    :cond_13
    new-instance v3, Lorg/json/JSONObject;

    .line 393
    .line 394
    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    const-string v5, "products"

    .line 398
    .line 399
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    new-instance v5, Ljava/util/ArrayList;

    .line 404
    .line 405
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .line 407
    .line 408
    if-nez v3, :cond_14

    .line 409
    .line 410
    goto :goto_a

    .line 411
    :cond_14
    :goto_9
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 412
    .line 413
    .line 414
    move-result v6

    .line 415
    if-ge v4, v6, :cond_16

    .line 416
    .line 417
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 418
    .line 419
    .line 420
    move-result-object v6

    .line 421
    if-eqz v6, :cond_15

    .line 422
    .line 423
    new-instance v7, Lcom/android/billingclient/api/zzc;

    .line 424
    .line 425
    invoke-direct {v7, v6, v1}, Lcom/android/billingclient/api/zzc;-><init>(Lorg/json/JSONObject;Lcom/android/billingclient/api/zzd;)V

    .line 426
    .line 427
    .line 428
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    :cond_15
    add-int/2addr v4, p1

    .line 432
    goto :goto_9

    .line 433
    :cond_16
    :goto_a
    invoke-static {p2}, Lcom/android/billingclient/api/a0;->a(Lcom/android/billingclient/api/a0;)Lcom/android/billingclient/api/zzb;

    .line 434
    .line 435
    .line 436
    move-result-object p1

    .line 437
    invoke-interface {p1}, Lcom/android/billingclient/api/zzb;->zza()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    .line 439
    .line 440
    :goto_b
    iget-object p1, p0, Lcom/android/billingclient/api/z;->c:Lcom/android/billingclient/api/a0;

    .line 441
    .line 442
    invoke-static {p1}, Lcom/android/billingclient/api/a0;->b(Lcom/android/billingclient/api/a0;)Lcom/android/billingclient/api/t;

    .line 443
    .line 444
    .line 445
    move-result-object p1

    .line 446
    invoke-static {v8, v9}, Lcom/android/billingclient/api/zzcg;->zzc(ILcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzib;

    .line 447
    .line 448
    .line 449
    move-result-object p2

    .line 450
    invoke-interface {p1, p2, v10, v11, v12}, Lcom/android/billingclient/api/t;->i(Lcom/google/android/gms/internal/play_billing/zzib;JZ)V

    .line 451
    .line 452
    .line 453
    return-void

    .line 454
    :catch_0
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    const-string p2, "Error when parsing invalid user choice data: [%s]"

    .line 459
    .line 460
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object p1

    .line 464
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    iget-object p1, p0, Lcom/android/billingclient/api/z;->c:Lcom/android/billingclient/api/a0;

    .line 468
    .line 469
    invoke-static {p1}, Lcom/android/billingclient/api/a0;->b(Lcom/android/billingclient/api/a0;)Lcom/android/billingclient/api/t;

    .line 470
    .line 471
    .line 472
    move-result-object p2

    .line 473
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzie;->zzq:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 474
    .line 475
    sget-object v2, Lcom/android/billingclient/api/u;->h:Lcom/android/billingclient/api/BillingResult;

    .line 476
    .line 477
    invoke-static {v0, v8, v2, v1, v9}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzhx;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    invoke-interface {p2, v0, v10, v11, v12}, Lcom/android/billingclient/api/t;->a(Lcom/google/android/gms/internal/play_billing/zzhx;JZ)V

    .line 482
    .line 483
    .line 484
    invoke-static {p1}, Lcom/android/billingclient/api/a0;->c(Lcom/android/billingclient/api/a0;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 485
    .line 486
    .line 487
    move-result-object p1

    .line 488
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbt;->zzk()Lcom/google/android/gms/internal/play_billing/zzbt;

    .line 489
    .line 490
    .line 491
    move-result-object p2

    .line 492
    invoke-interface {p1, v2, p2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 493
    .line 494
    .line 495
    return-void

    .line 496
    :cond_17
    const-string p1, "Couldn\'t find alternative billing user choice data in bundle."

    .line 497
    .line 498
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    invoke-static {p2}, Lcom/android/billingclient/api/a0;->b(Lcom/android/billingclient/api/a0;)Lcom/android/billingclient/api/t;

    .line 502
    .line 503
    .line 504
    move-result-object p1

    .line 505
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzie;->zzp:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 506
    .line 507
    sget-object v2, Lcom/android/billingclient/api/u;->h:Lcom/android/billingclient/api/BillingResult;

    .line 508
    .line 509
    invoke-static {v0, v8, v2, v1, v9}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzhx;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    invoke-interface {p1, v0, v10, v11, v12}, Lcom/android/billingclient/api/t;->a(Lcom/google/android/gms/internal/play_billing/zzhx;JZ)V

    .line 514
    .line 515
    .line 516
    invoke-static {p2}, Lcom/android/billingclient/api/a0;->c(Lcom/android/billingclient/api/a0;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbt;->zzk()Lcom/google/android/gms/internal/play_billing/zzbt;

    .line 521
    .line 522
    .line 523
    move-result-object p2

    .line 524
    invoke-interface {p1, v2, p2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 525
    .line 526
    .line 527
    :cond_18
    return-void

    .line 528
    :cond_19
    :goto_c
    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzc;->zzl(Landroid/os/Bundle;)Ljava/util/List;

    .line 529
    .line 530
    .line 531
    move-result-object p1

    .line 532
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    .line 533
    .line 534
    .line 535
    move-result v0

    .line 536
    if-nez v0, :cond_1a

    .line 537
    .line 538
    iget-object v0, p0, Lcom/android/billingclient/api/z;->c:Lcom/android/billingclient/api/a0;

    .line 539
    .line 540
    invoke-static {v0}, Lcom/android/billingclient/api/a0;->b(Lcom/android/billingclient/api/a0;)Lcom/android/billingclient/api/t;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    invoke-static {v8, v9}, Lcom/android/billingclient/api/zzcg;->zzc(ILcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzib;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    invoke-interface {v0, v1, v10, v11, v12}, Lcom/android/billingclient/api/t;->i(Lcom/google/android/gms/internal/play_billing/zzib;JZ)V

    .line 549
    .line 550
    .line 551
    goto :goto_d

    .line 552
    :cond_1a
    move-object v5, p0

    .line 553
    move-object v7, p2

    .line 554
    invoke-direct/range {v5 .. v12}, Lcom/android/billingclient/api/z;->d(Landroid/os/Bundle;Lcom/android/billingclient/api/BillingResult;ILcom/google/android/gms/internal/play_billing/zzil;JZ)V

    .line 555
    .line 556
    .line 557
    :goto_d
    iget-object v0, p0, Lcom/android/billingclient/api/z;->c:Lcom/android/billingclient/api/a0;

    .line 558
    .line 559
    invoke-static {v0}, Lcom/android/billingclient/api/a0;->c(Lcom/android/billingclient/api/a0;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    invoke-interface {v0, p2, p1}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 564
    .line 565
    .line 566
    return-void
.end method
