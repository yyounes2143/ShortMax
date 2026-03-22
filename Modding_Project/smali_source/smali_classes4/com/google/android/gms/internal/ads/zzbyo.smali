.class public final Lcom/google/android/gms/internal/ads/zzbyo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field final zza:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final zzb:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzc:Ljava/lang/Object;

.field private zzd:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zze:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzf:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzg:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzh:Ljava/util/concurrent/ConcurrentMap;

.field private final zzi:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/Object;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzc:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzd:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    .line 31
    const/4 v2, -0x1

    .line 32
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zze:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    .line 43
    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    .line 50
    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    .line 53
    const/16 v1, 0x9

    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzh:Ljava/util/concurrent/ConcurrentMap;

    .line 59
    .line 60
    new-instance v0, Ljava/lang/Object;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzi:Ljava/lang/Object;

    .line 66
    .line 67
    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzbyo;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "getAppInstanceId"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzbyo;->zzs(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method

.method public static final zzq(Ljava/util/Map;)Landroid/os/Bundle;
    .locals 5
    .param p0    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :catch_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/String;

    .line 28
    .line 29
    :try_start_0
    const-string v3, "value"

    .line 30
    .line 31
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    :goto_1
    return-object v0
.end method

.method static final zzr(Landroid/content/Context;)Z
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzaB:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    const-string v0, "com.google.android.gms.ads.dynamite"

    .line 21
    .line 22
    invoke-static {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbde;->zzaC:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 27
    .line 28
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-ge v0, v2, :cond_0

    .line 43
    .line 44
    return v1

    .line 45
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzaD:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 46
    .line 47
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/4 v2, 0x1

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string v0, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    return v1

    .line 74
    :catch_0
    :cond_1
    return v2

    .line 75
    :cond_2
    return v1
.end method

.method private final zzs(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    const-string v1, "com.google.android.gms.measurement.AppMeasurement"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {p0, p2, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbyo;->zzx(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-object v3

    .line 14
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzbyo;->zzt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    new-array v1, v1, [Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {p2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-object p1

    .line 30
    :catch_0
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzbyo;->zzw(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    return-object v3
.end method

.method private final zzt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzh:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/reflect/Method;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v2, "com.google.android.gms.measurement.AppMeasurement"

    .line 18
    .line 19
    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-array v2, v1, [Ljava/lang/Class;

    .line 24
    .line 25
    invoke-virtual {p1, p2, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    return-object p1

    .line 33
    :catch_0
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzbyo;->zzw(Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    return-object p1
.end method

.method private final zzu(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "com.google.android.gms.measurement.AppMeasurement"

    .line 5
    .line 6
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbyo;->zzx(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzh:Ljava/util/concurrent/ConcurrentMap;

    .line 14
    .line 15
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/reflect/Method;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-class v1, Ljava/lang/String;

    .line 34
    .line 35
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p1, p3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    invoke-direct {p0, p3, v3}, Lcom/google/android/gms/internal/ads/zzbyo;->zzw(Ljava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v0, "Invoke Firebase method "

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v0, ", Ad Unit Id: "

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :catch_1
    invoke-direct {p0, p3, v3}, Lcom/google/android/gms/internal/ads/zzbyo;->zzw(Ljava/lang/String;Z)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method private final zzv(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbyo;->zzp(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    const-string v2, "_aeid"

    .line 17
    .line 18
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :catch_0
    move-exception v2

    .line 27
    goto :goto_0

    .line 28
    :catch_1
    move-exception v2

    .line 29
    :goto_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 34
    .line 35
    const-string v3, "Invalid event ID: "

    .line 36
    .line 37
    invoke-virtual {v3, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    invoke-static {p3, v2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    :goto_1
    const-string p3, "_ac"

    .line 45
    .line 46
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    const/4 v2, 0x1

    .line 51
    if-eqz p3, :cond_1

    .line 52
    .line 53
    const-string p3, "_r"

    .line 54
    .line 55
    invoke-virtual {v1, p3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    :cond_1
    if-eqz p4, :cond_2

    .line 59
    .line 60
    invoke-virtual {v1, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    .line 64
    .line 65
    const-string p4, "com.google.android.gms.measurement.AppMeasurement"

    .line 66
    .line 67
    invoke-direct {p0, p1, p4, p3, v2}, Lcom/google/android/gms/internal/ads/zzbyo;->zzx(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Z)Z

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    if-eqz p3, :cond_4

    .line 72
    .line 73
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzh:Ljava/util/concurrent/ConcurrentMap;

    .line 74
    .line 75
    const-string v3, "logEventInternal"

    .line 76
    .line 77
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Ljava/lang/reflect/Method;

    .line 82
    .line 83
    if-eqz v4, :cond_3

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1, p4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const-class p4, Landroid/os/Bundle;

    .line 95
    .line 96
    filled-new-array {v0, v0, p4}, [Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    move-result-object p4

    .line 100
    invoke-virtual {p1, v3, p4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-interface {p3, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :catch_2
    invoke-direct {p0, v3, v2}, Lcom/google/android/gms/internal/ads/zzbyo;->zzw(Ljava/lang/String;Z)V

    .line 109
    .line 110
    .line 111
    const/4 v4, 0x0

    .line 112
    :goto_2
    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const-string p3, "am"

    .line 119
    .line 120
    filled-new-array {p3, p2, v1}, [Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-virtual {v4, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :catch_3
    invoke-direct {p0, v3, v2}, Lcom/google/android/gms/internal/ads/zzbyo;->zzw(Ljava/lang/String;Z)V

    .line 129
    .line 130
    .line 131
    :cond_4
    :goto_3
    return-void
.end method

.method private final zzw(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "Invoke Firebase method "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, " error."

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 32
    .line 33
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    const-string p1, "The Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires the latest Firebase SDK jar, but Firebase SDK is either missing or out of date"

    .line 39
    .line 40
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method private final zzx(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Z)Z
    .locals 2

    .line 1
    const-string v0, "getInstance"

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const-class v1, Landroid/content/Context;

    .line 18
    .line 19
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p2, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p3, v1, p1}, Lcom/google/android/gms/internal/ads/zzbyl;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    invoke-direct {p0, v0, p4}, Lcom/google/android/gms/internal/ads/zzbyo;->zzw(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    return p1

    .line 45
    :cond_0
    :goto_0
    const/4 p1, 0x1

    .line 46
    return p1
.end method


# virtual methods
.method public final zzb(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbyo;->zzp(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "generateEventId"

    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzbyo;->zzs(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 22
    return-object p1
.end method

.method public final zzc(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbyo;->zzp(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzaz:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Long;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    const-wide/16 v4, 0x0

    .line 26
    .line 27
    cmp-long v0, v2, v4

    .line 28
    .line 29
    if-gez v0, :cond_1

    .line 30
    .line 31
    const-string v0, "getAppInstanceId"

    .line 32
    .line 33
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzbyo;->zzs(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Ljava/lang/String;

    .line 38
    .line 39
    return-object p1

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    if-nez v4, :cond_3

    .line 47
    .line 48
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfrv;->zza()Lcom/google/android/gms/internal/ads/zzfrs;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbde;->zzaA:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 59
    .line 60
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    check-cast v5, Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    new-instance v6, Lcom/google/android/gms/internal/ads/zzbyn;

    .line 75
    .line 76
    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/ads/zzbyn;-><init>(Lcom/google/android/gms/internal/ads/zzbyo;)V

    .line 77
    .line 78
    .line 79
    const/4 v7, 0x2

    .line 80
    invoke-interface {v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzfrs;->zzc(ILjava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    new-instance v4, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 86
    .line 87
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbde;->zzaA:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 88
    .line 89
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    check-cast v6, Ljava/lang/Integer;

    .line 98
    .line 99
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    check-cast v5, Ljava/lang/Integer;

    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 118
    .line 119
    new-instance v11, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 120
    .line 121
    invoke-direct {v11}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 122
    .line 123
    .line 124
    new-instance v12, Lcom/google/android/gms/internal/ads/zzbyn;

    .line 125
    .line 126
    invoke-direct {v12, p0}, Lcom/google/android/gms/internal/ads/zzbyn;-><init>(Lcom/google/android/gms/internal/ads/zzbyo;)V

    .line 127
    .line 128
    .line 129
    const-wide/16 v8, 0x1

    .line 130
    .line 131
    move-object v5, v4

    .line 132
    invoke-direct/range {v5 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 133
    .line 134
    .line 135
    :goto_0
    invoke-static {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzbyl;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 143
    .line 144
    new-instance v4, Lcom/google/android/gms/internal/ads/zzbym;

    .line 145
    .line 146
    invoke-direct {v4, p0, p1}, Lcom/google/android/gms/internal/ads/zzbym;-><init>(Lcom/google/android/gms/internal/ads/zzbyo;Landroid/content/Context;)V

    .line 147
    .line 148
    .line 149
    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 154
    .line 155
    invoke-interface {p1, v2, v3, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .line 161
    return-object p1

    .line 162
    :catch_0
    return-object v1

    .line 163
    :catch_1
    const-string p1, "TIME_OUT"

    .line 164
    .line 165
    return-object p1
.end method

.method public final zzd(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "getCurrentScreenName"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbyo;->zzp(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, ""

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    .line 14
    const-string v3, "com.google.android.gms.measurement.AppMeasurement"

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-direct {p0, p1, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzbyo;->zzx(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Z)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_3

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbyo;->zzt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    new-array v6, v3, [Ljava/lang/Object;

    .line 33
    .line 34
    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Ljava/lang/String;

    .line 39
    .line 40
    if-nez v4, :cond_1

    .line 41
    .line 42
    const-string v4, "getCurrentScreenClass"

    .line 43
    .line 44
    invoke-direct {p0, p1, v4}, Lcom/google/android/gms/internal/ads/zzbyo;->zzt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    new-array v4, v3, [Ljava/lang/Object;

    .line 53
    .line 54
    invoke-virtual {p1, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    move-object v4, p1

    .line 59
    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    :cond_1
    if-nez v4, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move-object v2, v4

    .line 65
    :goto_0
    return-object v2

    .line 66
    :catch_0
    invoke-direct {p0, v0, v3}, Lcom/google/android/gms/internal/ads/zzbyo;->zzw(Ljava/lang/String;Z)V

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_1
    return-object v2
.end method

.method public final zze(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbyo;->zzp(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzc:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzd:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-object v1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const-string v1, "getGmpAppId"

    .line 21
    .line 22
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbyo;->zzs(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/String;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzd:Ljava/lang/String;

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-object p1

    .line 32
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p1
.end method

.method public final zzf(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbyo;->zzp(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "beginAdUnitExposure"

    .line 9
    .line 10
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbyo;->zzu(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final zzg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbyo;->zzp(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "endAdUnitExposure"

    .line 9
    .line 10
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbyo;->zzu(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final zzh(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "_aa"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/internal/ads/zzbyo;->zzv(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final zzi(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "_aq"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/internal/ads/zzbyo;->zzv(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final zzj(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzbyo;->zzq(Ljava/util/Map;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    const-string v0, "_ac"

    .line 6
    .line 7
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzbyo;->zzv(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final zzk(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzbyo;->zzq(Ljava/util/Map;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    const-string v0, "_ai"

    .line 6
    .line 7
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzbyo;->zzv(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final zzl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbyo;->zzp(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "_ai"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string p3, "reward_type"

    .line 19
    .line 20
    invoke-virtual {v0, p3, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string p3, "reward_value"

    .line 24
    .line 25
    invoke-virtual {v0, p3, p5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    const-string p3, "_ar"

    .line 29
    .line 30
    invoke-direct {p0, p1, p3, p2, v0}, Lcom/google/android/gms/internal/ads/zzbyo;->zzv(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string p2, "Log a Firebase reward video event, reward type: "

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p2, ", reward value: "

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final zzm(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzm;)V
    .locals 1

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbde;->zzaG:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbyo;->zzp(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbyo;->zzr(Landroid/content/Context;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzi:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter p1

    .line 35
    :try_start_0
    monitor-exit p1

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p2

    .line 38
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p2

    .line 40
    :cond_1
    :goto_0
    return-void
.end method

.method public final zzn(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzfx;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbyp;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbyp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyp;->zza()Lcom/google/android/gms/internal/ads/zzbyf;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbyf;->zzc(Lcom/google/android/gms/ads/internal/client/zzfx;)V

    .line 10
    .line 11
    .line 12
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbde;->zzaG:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 13
    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbyo;->zzp(Landroid/content/Context;)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbyo;->zzr(Landroid/content/Context;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzi:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter p1

    .line 46
    :try_start_0
    monitor-exit p1

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p2

    .line 49
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p2

    .line 51
    :cond_1
    :goto_0
    return-void
.end method

.method public final zzo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbyo;->zzp(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    instance-of v1, p1, Landroid/app/Activity;

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    .line 16
    const-string v2, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzbyo;->zzx(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzh:Ljava/util/concurrent/ConcurrentMap;

    .line 26
    .line 27
    const-string v4, "setCurrentScreen"

    .line 28
    .line 29
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    check-cast v5, Ljava/lang/reflect/Method;

    .line 34
    .line 35
    if-eqz v5, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v5, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-class v5, Landroid/app/Activity;

    .line 47
    .line 48
    filled-new-array {v5, v0, v0}, [Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v2, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    invoke-direct {p0, v4, v3}, Lcom/google/android/gms/internal/ads/zzbyo;->zzw(Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    :goto_0
    :try_start_1
    move-object v0, p1

    .line 65
    check-cast v0, Landroid/app/Activity;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    filled-new-array {v0, p2, p1}, [Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v5, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :catch_1
    invoke-direct {p0, v4, v3}, Lcom/google/android/gms/internal/ads/zzbyo;->zzw(Ljava/lang/String;Z)V

    .line 86
    .line 87
    .line 88
    :cond_2
    :goto_1
    return-void
.end method

.method public final zzp(Landroid/content/Context;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzat:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_4

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzaE:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 30
    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v2, 0x1

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    return v2

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zze:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    const/4 v4, -0x1

    .line 56
    if-ne v3, v4, :cond_3

    .line 57
    .line 58
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    .line 59
    .line 60
    .line 61
    const v3, 0xbdfcb8

    .line 62
    .line 63
    .line 64
    invoke-static {p1, v3}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzx(Landroid/content/Context;I)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-nez v3, :cond_2

    .line 69
    .line 70
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzy(Landroid/content/Context;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 80
    .line 81
    const-string p1, "Google Play Service is out of date, the Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires updated Google Play Service."

    .line 82
    .line 83
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 91
    .line 92
    .line 93
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-ne p1, v2, :cond_4

    .line 98
    .line 99
    return v2

    .line 100
    :cond_4
    :goto_1
    return v1
.end method
