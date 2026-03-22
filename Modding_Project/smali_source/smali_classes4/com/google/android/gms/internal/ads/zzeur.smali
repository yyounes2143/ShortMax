.class public final Lcom/google/android/gms/internal/ads/zzeur;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeuc;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgdy;

.field private final zzb:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgdy;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeur;->zza:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeur;->zzb:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzeur;)Lcom/google/android/gms/internal/ads/zzeup;
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeur;->zzb:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "phone"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 20
    .line 21
    .line 22
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 23
    .line 24
    invoke-static {p0, v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzB(Landroid/content/Context;Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, -0x1

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const-string v0, "connectivity"

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    move v8, v3

    .line 58
    move v3, v1

    .line 59
    move v1, v8

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    move v3, v1

    .line 62
    :goto_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    :goto_1
    move v6, v0

    .line 67
    move v7, v1

    .line 68
    goto :goto_2

    .line 69
    :cond_1
    const/4 v0, 0x0

    .line 70
    const/4 v3, -0x2

    .line 71
    goto :goto_1

    .line 72
    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeup;

    .line 73
    .line 74
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzs()Lcom/google/android/gms/ads/internal/util/zzaa;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1, p0}, Lcom/google/android/gms/ads/internal/util/zzaa;->zzm(Landroid/content/Context;)I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    move-object v1, v0

    .line 83
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzeup;-><init>(Ljava/lang/String;IIIZI)V

    .line 84
    .line 85
    .line 86
    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    const/16 v0, 0x27

    .line 2
    .line 3
    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeuq;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeuq;-><init>(Lcom/google/android/gms/internal/ads/zzeur;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeur;->zza:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 7
    .line 8
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgdy;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/e;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method
