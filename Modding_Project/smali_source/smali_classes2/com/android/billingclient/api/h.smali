.class final Lcom/android/billingclient/api/h;
.super Lcom/google/android/gms/internal/play_billing/zzy;
.source "com.android.billingclient:billing@@8.0.0"


# instance fields
.field final a:Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;

.field final b:Lcom/android/billingclient/api/t;

.field final c:I


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/android/billingclient/api/t;ILcom/android/billingclient/api/zzbp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzy;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/h;->a:Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/billingclient/api/h;->b:Lcom/android/billingclient/api/t;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/billingclient/api/h;->c:I

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
    const/16 v0, 0x18

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/billingclient/api/h;->b:Lcom/android/billingclient/api/t;

    .line 7
    .line 8
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzaG:Lcom/google/android/gms/internal/play_billing/zzie;

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
    iget v2, p0, Lcom/android/billingclient/api/h;->c:I

    .line 21
    .line 22
    invoke-interface {p1, v0, v2}, Lcom/android/billingclient/api/t;->k(Lcom/google/android/gms/internal/play_billing/zzhx;I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/billingclient/api/h;->a:Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;

    .line 26
    .line 27
    invoke-interface {p1, v3, v1}, Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;->onExternalOfferReportingDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/ExternalOfferReportingDetails;)V

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
    invoke-static {v3, v4}, Lcom/android/billingclient/api/u;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v5, "createExternalOfferReportingDetailsAsync() failed. Response code: "

    .line 53
    .line 54
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/android/billingclient/api/h;->b:Lcom/android/billingclient/api/t;

    .line 68
    .line 69
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzw:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 70
    .line 71
    sget v3, Lcom/android/billingclient/api/zzcg;->zza:I

    .line 72
    .line 73
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzil;->zza:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 74
    .line 75
    invoke-static {v2, v0, v4, v1, v3}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzhx;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget v2, p0, Lcom/android/billingclient/api/h;->c:I

    .line 80
    .line 81
    invoke-interface {p1, v0, v2}, Lcom/android/billingclient/api/t;->k(Lcom/google/android/gms/internal/play_billing/zzhx;I)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/android/billingclient/api/h;->a:Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;

    .line 85
    .line 86
    invoke-interface {p1, v4, v1}, Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;->onExternalOfferReportingDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/ExternalOfferReportingDetails;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_1
    const-string v3, "CREATE_EXTERNAL_PAYMENT_REPORTING_DETAILS"

    .line 91
    .line 92
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    :try_start_0
    new-instance v3, Lcom/android/billingclient/api/ExternalOfferReportingDetails;

    .line 97
    .line 98
    invoke-direct {v3, p1}, Lcom/android/billingclient/api/ExternalOfferReportingDetails;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/android/billingclient/api/h;->a:Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;

    .line 102
    .line 103
    invoke-interface {p1, v4, v3}, Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;->onExternalOfferReportingDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/ExternalOfferReportingDetails;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :catch_0
    move-exception p1

    .line 108
    const-string v3, "Error when parsing invalid external offer reporting details. \n Exception: "

    .line 109
    .line 110
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/android/billingclient/api/h;->b:Lcom/android/billingclient/api/t;

    .line 114
    .line 115
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzaH:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 116
    .line 117
    sget-object v3, Lcom/android/billingclient/api/u;->h:Lcom/android/billingclient/api/BillingResult;

    .line 118
    .line 119
    sget v4, Lcom/android/billingclient/api/zzcg;->zza:I

    .line 120
    .line 121
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzil;->zza:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 122
    .line 123
    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzhx;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iget v2, p0, Lcom/android/billingclient/api/h;->c:I

    .line 128
    .line 129
    invoke-interface {p1, v0, v2}, Lcom/android/billingclient/api/t;->k(Lcom/google/android/gms/internal/play_billing/zzhx;I)V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lcom/android/billingclient/api/h;->a:Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;

    .line 133
    .line 134
    invoke-interface {p1, v3, v1}, Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;->onExternalOfferReportingDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/ExternalOfferReportingDetails;)V

    .line 135
    .line 136
    .line 137
    return-void
.end method
