.class public final Lcom/google/android/gms/internal/ads/zzabw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzaat;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzabu;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/ads/zzabv;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzd:Z

.field private zze:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzf:F

.field private zzg:F

.field private zzh:F

.field private zzi:F

.field private zzj:I

.field private zzk:J

.field private zzl:J

.field private zzm:J

.field private zzn:J

.field private zzo:J

.field private zzp:J

.field private zzq:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaat;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaat;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zza:Lcom/google/android/gms/internal/ads/zzaat;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    :cond_0
    move-object v1, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const-string v1, "display"

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    new-instance v1, Lcom/google/android/gms/internal/ads/zzabu;

    .line 27
    .line 28
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzabu;-><init>(Lcom/google/android/gms/internal/ads/zzabw;Landroid/hardware/display/DisplayManager;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzb:Lcom/google/android/gms/internal/ads/zzabu;

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzabv;->zza()Lcom/google/android/gms/internal/ads/zzabv;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :cond_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzc:Lcom/google/android/gms/internal/ads/zzabv;

    .line 40
    .line 41
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzk:J

    .line 47
    .line 48
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzl:J

    .line 49
    .line 50
    const/high16 p1, -0x40800000    # -1.0f

    .line 51
    .line 52
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzf:F

    .line 53
    .line 54
    const/high16 p1, 0x3f800000    # 1.0f

    .line 55
    .line 56
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzi:F

    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzj:I

    .line 60
    .line 61
    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzabw;Landroid/view/Display;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    float-to-double v0, p1

    .line 8
    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    div-double/2addr v2, v0

    .line 14
    double-to-long v0, v2

    .line 15
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzk:J

    .line 16
    .line 17
    const-wide/16 v2, 0x50

    .line 18
    .line 19
    mul-long/2addr v0, v2

    .line 20
    const-wide/16 v2, 0x64

    .line 21
    .line 22
    div-long/2addr v0, v2

    .line 23
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzl:J

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const-string p1, "VideoFrameReleaseHelper"

    .line 27
    .line 28
    const-string v0, "Unable to query display refresh rate"

    .line 29
    .line 30
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzk:J

    .line 39
    .line 40
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzl:J

    .line 41
    .line 42
    return-void
.end method

.method private final zzk()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zze:Landroid/view/Surface;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzj:I

    .line 12
    .line 13
    const/high16 v2, -0x80000000

    .line 14
    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    .line 17
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzh:F

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    cmpl-float v1, v1, v2

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzh:F

    .line 26
    .line 27
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzabt;->zza(Landroid/view/Surface;F)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method private final zzl()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzm:J

    .line 4
    .line 5
    const-wide/16 v0, -0x1

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzp:J

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzn:J

    .line 10
    .line 11
    return-void
.end method

.method private final zzm()V
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_5

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zze:Landroid/view/Surface;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zza:Lcom/google/android/gms/internal/ads/zzaat;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->zzg()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->zza()F

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzf:F

    .line 26
    .line 27
    :goto_0
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzg:F

    .line 28
    .line 29
    cmpl-float v4, v2, v3

    .line 30
    .line 31
    if-eqz v4, :cond_5

    .line 32
    .line 33
    const/high16 v4, -0x40800000    # -1.0f

    .line 34
    .line 35
    cmpl-float v5, v2, v4

    .line 36
    .line 37
    if-eqz v5, :cond_3

    .line 38
    .line 39
    cmpl-float v3, v3, v4

    .line 40
    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->zzg()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/high16 v3, 0x3f800000    # 1.0f

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->zzd()J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    const-wide v4, 0x12a05f200L

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    cmp-long v0, v0, v4

    .line 61
    .line 62
    if-ltz v0, :cond_2

    .line 63
    .line 64
    const v3, 0x3ca3d70a    # 0.02f

    .line 65
    .line 66
    .line 67
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzg:F

    .line 68
    .line 69
    sub-float v0, v2, v0

    .line 70
    .line 71
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    cmpl-float v0, v0, v3

    .line 76
    .line 77
    if-ltz v0, :cond_5

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    if-nez v5, :cond_4

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->zzb()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-lt v0, v1, :cond_5

    .line 87
    .line 88
    :cond_4
    :goto_1
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzg:F

    .line 89
    .line 90
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzabw;->zzn(Z)V

    .line 92
    .line 93
    .line 94
    :cond_5
    :goto_2
    return-void
.end method

.method private final zzn(Z)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zze:Landroid/view/Surface;

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzj:I

    .line 12
    .line 13
    const/high16 v2, -0x80000000

    .line 14
    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzd:Z

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzg:F

    .line 24
    .line 25
    const/high16 v3, -0x40800000    # -1.0f

    .line 26
    .line 27
    cmpl-float v3, v1, v3

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzi:F

    .line 32
    .line 33
    mul-float/2addr v2, v1

    .line 34
    :cond_1
    if-nez p1, :cond_2

    .line 35
    .line 36
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzh:F

    .line 37
    .line 38
    cmpl-float p1, p1, v2

    .line 39
    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    :cond_2
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzh:F

    .line 43
    .line 44
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzabt;->zza(Landroid/view/Surface;F)V

    .line 45
    .line 46
    .line 47
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final zza(J)J
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzp:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zza:Lcom/google/android/gms/internal/ads/zzaat;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->zzg()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->zzc()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzq:J

    .line 22
    .line 23
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzm:J

    .line 24
    .line 25
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzp:J

    .line 26
    .line 27
    sub-long/2addr v4, v6

    .line 28
    mul-long/2addr v0, v4

    .line 29
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzi:F

    .line 30
    .line 31
    long-to-float v0, v0

    .line 32
    div-float/2addr v0, v4

    .line 33
    float-to-long v0, v0

    .line 34
    add-long/2addr v2, v0

    .line 35
    sub-long v0, p1, v2

    .line 36
    .line 37
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    const-wide/32 v4, 0x1312d00

    .line 42
    .line 43
    .line 44
    cmp-long v0, v0, v4

    .line 45
    .line 46
    if-lez v0, :cond_0

    .line 47
    .line 48
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzabw;->zzl()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move-wide p1, v2

    .line 53
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzm:J

    .line 54
    .line 55
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzn:J

    .line 56
    .line 57
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzo:J

    .line 58
    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzc:Lcom/google/android/gms/internal/ads/zzabv;

    .line 60
    .line 61
    if-eqz v0, :cond_5

    .line 62
    .line 63
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzk:J

    .line 64
    .line 65
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    cmp-long v1, v1, v3

    .line 71
    .line 72
    if-nez v1, :cond_2

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_2
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzabv;->zza:J

    .line 76
    .line 77
    cmp-long v2, v0, v3

    .line 78
    .line 79
    if-eqz v2, :cond_5

    .line 80
    .line 81
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzk:J

    .line 82
    .line 83
    sub-long v4, p1, v0

    .line 84
    .line 85
    div-long/2addr v4, v2

    .line 86
    mul-long/2addr v4, v2

    .line 87
    add-long/2addr v0, v4

    .line 88
    cmp-long v4, p1, v0

    .line 89
    .line 90
    if-gtz v4, :cond_3

    .line 91
    .line 92
    sub-long v2, v0, v2

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    add-long/2addr v2, v0

    .line 96
    move-wide v8, v0

    .line 97
    move-wide v0, v2

    .line 98
    move-wide v2, v8

    .line 99
    :goto_1
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzl:J

    .line 100
    .line 101
    sub-long v6, v0, p1

    .line 102
    .line 103
    sub-long/2addr p1, v2

    .line 104
    cmp-long p1, v6, p1

    .line 105
    .line 106
    if-gez p1, :cond_4

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    move-wide v0, v2

    .line 110
    :goto_2
    sub-long/2addr v0, v4

    .line 111
    return-wide v0

    .line 112
    :cond_5
    :goto_3
    return-wide p1
.end method

.method public final zzc(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzf:F

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzabw;->zza:Lcom/google/android/gms/internal/ads/zzaat;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaat;->zzf()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzabw;->zzm()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zzd(J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzn:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzp:J

    .line 10
    .line 11
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzo:J

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzq:J

    .line 14
    .line 15
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzm:J

    .line 16
    .line 17
    const-wide/16 v2, 0x1

    .line 18
    .line 19
    add-long/2addr v0, v2

    .line 20
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzm:J

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zza:Lcom/google/android/gms/internal/ads/zzaat;

    .line 23
    .line 24
    const-wide/16 v1, 0x3e8

    .line 25
    .line 26
    mul-long/2addr p1, v1

    .line 27
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaat;->zze(J)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzabw;->zzm()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final zze(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzi:F

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzabw;->zzl()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzabw;->zzn(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final zzf()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzabw;->zzl()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final zzg()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzd:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzabw;->zzl()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzb:Lcom/google/android/gms/internal/ads/zzabu;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzc:Lcom/google/android/gms/internal/ads/zzabv;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzabv;->zzb()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabu;->zza()V

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzabw;->zzn(Z)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final zzh()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzd:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzb:Lcom/google/android/gms/internal/ads/zzabu;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabu;->zzb()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzc:Lcom/google/android/gms/internal/ads/zzabv;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabv;->zzc()V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzabw;->zzk()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final zzi(Landroid/view/Surface;)V
    .locals 1
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zze:Landroid/view/Surface;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzabw;->zzk()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabw;->zze:Landroid/view/Surface;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzabw;->zzn(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final zzj(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzj:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabw;->zzj:I

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzabw;->zzn(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
