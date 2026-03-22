.class public final Lcom/google/android/gms/internal/ads/zzfqi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzfql;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final zzb:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzfql;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfqi;->zza:Lcom/google/android/gms/internal/ads/zzfql;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfqi;->zzb:Z

    .line 12
    .line 13
    return-void
.end method

.method public static zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfqi;
    .locals 4

    .line 1
    const-string p2, "GASS"

    .line 2
    .line 3
    :try_start_0
    const-string v0, "com.google.android.gms.gass.internal.clearcut.GassDynamiteClearcutLogger"
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfpk; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4
    .line 5
    :try_start_1
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 6
    .line 7
    const-string v2, "com.google.android.gms.ads.dynamite"

    .line 8
    .line 9
    invoke-static {p0, v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 10
    .line 11
    .line 12
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 13
    :try_start_2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/os/IBinder;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    move-object v2, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v2, "com.google.android.gms.gass.internal.clearcut.IGassClearcut"

    .line 25
    .line 26
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/zzfql;

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    check-cast v2, Lcom/google/android/gms/internal/ads/zzfql;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfqj;

    .line 40
    .line 41
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzfqj;-><init>(Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 42
    .line 43
    .line 44
    :goto_0
    :try_start_3
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-interface {v2, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfql;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string p0, "GassClearcutLogger Initialized."

    .line 52
    .line 53
    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    new-instance p0, Lcom/google/android/gms/internal/ads/zzfqi;

    .line 57
    .line 58
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzfqi;-><init>(Lcom/google/android/gms/internal/ads/zzfql;)V
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzfpk; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    .line 59
    .line 60
    .line 61
    return-object p0

    .line 62
    :catch_1
    move-exception p0

    .line 63
    :try_start_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfpk;

    .line 64
    .line 65
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzfpk;-><init>(Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 69
    :goto_1
    :try_start_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfpk;

    .line 70
    .line 71
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzfpk;-><init>(Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    throw p1
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzfpk; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2

    .line 75
    :catch_2
    const-string p0, "Cannot dynamite load clearcut"

    .line 76
    .line 77
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    new-instance p0, Lcom/google/android/gms/internal/ads/zzfqm;

    .line 81
    .line 82
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfqm;-><init>()V

    .line 83
    .line 84
    .line 85
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfqi;

    .line 86
    .line 87
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzfqi;-><init>(Lcom/google/android/gms/internal/ads/zzfql;)V

    .line 88
    .line 89
    .line 90
    return-object p1
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzfqi;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqm;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfqm;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "GASS"

    .line 7
    .line 8
    const-string v2, "Clearcut logging disabled"

    .line 9
    .line 10
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfqi;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfqi;-><init>(Lcom/google/android/gms/internal/ads/zzfql;)V

    .line 16
    .line 17
    .line 18
    return-object v1
.end method


# virtual methods
.method public final zza([B)Lcom/google/android/gms/internal/ads/zzfqg;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqg;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfqg;-><init>(Lcom/google/android/gms/internal/ads/zzfqi;[BLcom/google/android/gms/internal/ads/zzfqh;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
