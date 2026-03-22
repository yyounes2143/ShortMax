.class public final Lcom/google/android/gms/internal/ads/zzawy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private zza:J

.field private zzb:J

.field private zzc:J

.field private zzd:J

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zza:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzb:J

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzc:J

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzd:J

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zze:J

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzf:J

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzg:J

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzh:J

    .line 21
    .line 22
    return-void
.end method

.method private static zzl(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 1

    .line 1
    const-string v0, "window"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/WindowManager;

    .line 8
    .line 9
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-object v0
.end method

.method private static zzm(Landroid/view/View;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "DebugGestureViewWrapper"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    check-cast p0, Landroid/view/ViewGroup;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "getAdConfiguration"

    .line 29
    .line 30
    new-array v3, v0, [Ljava/lang/Class;

    .line 31
    .line 32
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-array v2, v0, [Ljava/lang/Object;

    .line 37
    .line 38
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v2, "adType"

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const-string v2, "adTypeToString"

    .line 66
    .line 67
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 68
    .line 69
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const/4 v2, 0x0

    .line 82
    invoke-virtual {p0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    check-cast p0, Ljava/lang/String;

    .line 87
    .line 88
    const-string v1, "INTERSTITIAL"

    .line 89
    .line 90
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_2

    .line 95
    .line 96
    const-string v1, "APP_OPEN"

    .line 97
    .line 98
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-nez v1, :cond_2

    .line 103
    .line 104
    const-string v1, "REWARDED"

    .line 105
    .line 106
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    if-eqz p0, :cond_1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    return v0

    .line 114
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 115
    return p0

    .line 116
    :catch_0
    return v0
.end method


# virtual methods
.method public final zza()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzg:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final zzb()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zze:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final zzc()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zza:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final zzd()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzc:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final zze()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzh:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final zzf()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzf:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final zzg()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzb:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final zzh()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzd:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final zzi()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzg:J

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzh:J

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzg:J

    .line 10
    .line 11
    return-void
.end method

.method public final zzj()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zza:J

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzb:J

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zza:J

    .line 10
    .line 11
    return-void
.end method

.method public final zzk(Landroid/content/Context;Landroid/view/View;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzc:J

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzd:J

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzc:J

    .line 10
    .line 11
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zze:J

    .line 12
    .line 13
    const-wide/16 v2, -0x1

    .line 14
    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzf:J

    .line 20
    .line 21
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawy;->zzl(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 26
    .line 27
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 28
    .line 29
    mul-int/2addr v0, v1

    .line 30
    if-nez p2, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iget v4, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 38
    .line 39
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 48
    .line 49
    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    mul-int/2addr v1, p1

    .line 54
    add-int p1, v1, v1

    .line 55
    .line 56
    if-lt p1, v0, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    if-nez v1, :cond_3

    .line 60
    .line 61
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzawy;->zzm(Landroid/view/View;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    :goto_0
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzc:J

    .line 68
    .line 69
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzawy;->zze:J

    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    :goto_1
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzawy;->zze:J

    .line 73
    .line 74
    return-void
.end method
