.class final Lcom/android/billingclient/api/m;
.super Lcom/google/android/gms/internal/play_billing/zzai;
.source "com.android.billingclient:billing@@8.0.0"


# instance fields
.field final a:Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;

.field final b:Lcom/android/billingclient/api/t;

.field final c:I


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/t;ILcom/android/billingclient/api/zzbp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzai;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/m;->a:Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/billingclient/api/m;->b:Lcom/android/billingclient/api/t;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/billingclient/api/m;->c:I

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
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x17

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/billingclient/api/m;->b:Lcom/android/billingclient/api/t;

    .line 7
    .line 8
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzaD:Lcom/google/android/gms/internal/play_billing/zzie;

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
    invoke-static {v2, v1, v3, v0, v4}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzhx;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget v1, p0, Lcom/android/billingclient/api/m;->c:I

    .line 21
    .line 22
    invoke-interface {p1, v0, v1}, Lcom/android/billingclient/api/t;->k(Lcom/google/android/gms/internal/play_billing/zzhx;I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/billingclient/api/m;->a:Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;

    .line 26
    .line 27
    invoke-interface {p1, v3}, Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;->onExternalOfferAvailabilityResponse(Lcom/android/billingclient/api/BillingResult;)V

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
    move-result-object p1

    .line 41
    invoke-static {v3, p1}, Lcom/android/billingclient/api/u;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v5, "isExternalOfferAvailableAsync() failed. Response code: "

    .line 53
    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lcom/android/billingclient/api/m;->b:Lcom/android/billingclient/api/t;

    .line 68
    .line 69
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzie;->zzw:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 70
    .line 71
    sget v4, Lcom/android/billingclient/api/zzcg;->zza:I

    .line 72
    .line 73
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzil;->zza:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 74
    .line 75
    invoke-static {v3, v1, p1, v0, v4}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzhx;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget v1, p0, Lcom/android/billingclient/api/m;->c:I

    .line 80
    .line 81
    invoke-interface {v2, v0, v1}, Lcom/android/billingclient/api/t;->k(Lcom/google/android/gms/internal/play_billing/zzhx;I)V

    .line 82
    .line 83
    .line 84
    :cond_1
    iget-object v0, p0, Lcom/android/billingclient/api/m;->a:Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;

    .line 85
    .line 86
    invoke-interface {v0, p1}, Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;->onExternalOfferAvailabilityResponse(Lcom/android/billingclient/api/BillingResult;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method
