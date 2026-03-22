.class final Lcom/android/billingclient/api/j;
.super Lcom/google/android/gms/internal/play_billing/zzac;
.source "com.android.billingclient:billing@@8.0.0"


# instance fields
.field final a:Lcom/android/billingclient/api/BillingConfigResponseListener;

.field final b:Lcom/android/billingclient/api/t;

.field final c:I


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/BillingConfigResponseListener;Lcom/android/billingclient/api/t;ILcom/android/billingclient/api/zzbp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzac;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/j;->a:Lcom/android/billingclient/api/BillingConfigResponseListener;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/billingclient/api/j;->b:Lcom/android/billingclient/api/t;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/billingclient/api/j;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/billingclient/api/j;->b:Lcom/android/billingclient/api/t;

    .line 7
    .line 8
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzak:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 9
    .line 10
    sget-object v3, Lcom/android/billingclient/api/u;->h:Lcom/android/billingclient/api/BillingResult;

    .line 11
    .line 12
    sget v4, Lcom/android/billingclient/api/zzcg;->zza:I

    .line 13
    .line 14
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzil;->zza:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 15
    .line 16
    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzhx;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget v2, p0, Lcom/android/billingclient/api/j;->c:I

    .line 21
    .line 22
    invoke-interface {p1, v0, v2}, Lcom/android/billingclient/api/t;->k(Lcom/google/android/gms/internal/play_billing/zzhx;I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/billingclient/api/j;->a:Lcom/android/billingclient/api/BillingConfigResponseListener;

    .line 26
    .line 27
    invoke-interface {p1, v3, v1}, Lcom/android/billingclient/api/BillingConfigResponseListener;->onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    const-string v2, "BillingClient"

    .line 32
    .line 33
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzj(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v5, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, v4}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 49
    .line 50
    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v4, "getBillingConfig() failed. Response code: "

    .line 59
    .line 60
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget-object v2, p0, Lcom/android/billingclient/api/j;->b:Lcom/android/billingclient/api/t;

    .line 78
    .line 79
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzie;->zzw:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 80
    .line 81
    sget v4, Lcom/android/billingclient/api/zzcg;->zza:I

    .line 82
    .line 83
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzil;->zza:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 84
    .line 85
    invoke-static {v3, v0, p1, v1, v4}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzhx;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget v3, p0, Lcom/android/billingclient/api/j;->c:I

    .line 90
    .line 91
    invoke-interface {v2, v0, v3}, Lcom/android/billingclient/api/t;->k(Lcom/google/android/gms/internal/play_billing/zzhx;I)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/android/billingclient/api/j;->a:Lcom/android/billingclient/api/BillingConfigResponseListener;

    .line 95
    .line 96
    invoke-interface {v0, p1, v1}, Lcom/android/billingclient/api/BillingConfigResponseListener;->onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_1
    const-string v3, "BILLING_CONFIG"

    .line 101
    .line 102
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-nez v4, :cond_2

    .line 107
    .line 108
    const-string p1, "getBillingConfig() returned a bundle with neither an error nor a billing config response"

    .line 109
    .line 110
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const/4 p1, 0x6

    .line 114
    invoke-virtual {v5, p1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget-object v2, p0, Lcom/android/billingclient/api/j;->b:Lcom/android/billingclient/api/t;

    .line 122
    .line 123
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzie;->zzal:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 124
    .line 125
    sget v4, Lcom/android/billingclient/api/zzcg;->zza:I

    .line 126
    .line 127
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzil;->zza:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 128
    .line 129
    invoke-static {v3, v0, p1, v1, v4}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzhx;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iget v3, p0, Lcom/android/billingclient/api/j;->c:I

    .line 134
    .line 135
    invoke-interface {v2, v0, v3}, Lcom/android/billingclient/api/t;->k(Lcom/google/android/gms/internal/play_billing/zzhx;I)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/android/billingclient/api/j;->a:Lcom/android/billingclient/api/BillingConfigResponseListener;

    .line 139
    .line 140
    invoke-interface {v0, p1, v1}, Lcom/android/billingclient/api/BillingConfigResponseListener;->onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    :try_start_0
    new-instance v3, Lcom/android/billingclient/api/BillingConfig;

    .line 149
    .line 150
    invoke-direct {v3, p1}, Lcom/android/billingclient/api/BillingConfig;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Lcom/android/billingclient/api/j;->a:Lcom/android/billingclient/api/BillingConfigResponseListener;

    .line 154
    .line 155
    invoke-virtual {v5}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-interface {p1, v4, v3}, Lcom/android/billingclient/api/BillingConfigResponseListener;->onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :catch_0
    move-exception p1

    .line 164
    const-string v3, "Got a JSON exception trying to decode BillingConfig. \n Exception: "

    .line 165
    .line 166
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lcom/android/billingclient/api/j;->b:Lcom/android/billingclient/api/t;

    .line 170
    .line 171
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzam:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 172
    .line 173
    sget-object v3, Lcom/android/billingclient/api/u;->h:Lcom/android/billingclient/api/BillingResult;

    .line 174
    .line 175
    sget v4, Lcom/android/billingclient/api/zzcg;->zza:I

    .line 176
    .line 177
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzil;->zza:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 178
    .line 179
    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzhx;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    iget v2, p0, Lcom/android/billingclient/api/j;->c:I

    .line 184
    .line 185
    invoke-interface {p1, v0, v2}, Lcom/android/billingclient/api/t;->k(Lcom/google/android/gms/internal/play_billing/zzhx;I)V

    .line 186
    .line 187
    .line 188
    iget-object p1, p0, Lcom/android/billingclient/api/j;->a:Lcom/android/billingclient/api/BillingConfigResponseListener;

    .line 189
    .line 190
    invoke-interface {p1, v3, v1}, Lcom/android/billingclient/api/BillingConfigResponseListener;->onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    .line 191
    .line 192
    .line 193
    return-void
.end method
