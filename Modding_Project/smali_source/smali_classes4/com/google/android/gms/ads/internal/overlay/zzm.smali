.class public Lcom/google/android/gms/ads/internal/overlay/zzm;
.super Lcom/google/android/gms/internal/ads/zzbtp;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzah;


# static fields
.field static final zza:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field protected final zzb:Landroid/app/Activity;

.field zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field zzd:Lcom/google/android/gms/internal/ads/zzcfg;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field zze:Lcom/google/android/gms/ads/internal/overlay/zzi;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field zzf:Lcom/google/android/gms/ads/internal/overlay/zzu;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field zzg:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field zzh:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field zzi:Landroid/webkit/WebChromeClient$CustomViewCallback;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field zzj:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field zzk:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field zzl:Lcom/google/android/gms/ads/internal/overlay/zzh;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field zzm:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field zzn:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final zzo:Ljava/lang/Object;

.field private final zzp:Landroid/view/View$OnClickListener;

.field private zzq:Ljava/lang/Runnable;

.field private zzr:Z

.field private zzs:Z

.field private zzt:Z

.field private zzu:Z

.field private zzv:Z

.field private zzw:Landroid/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    sput v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zza:I

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbtp;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzg:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzj:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzk:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzm:Z

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzn:I

    .line 15
    .line 16
    new-instance v2, Ljava/lang/Object;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzo:Ljava/lang/Object;

    .line 22
    .line 23
    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzf;

    .line 24
    .line 25
    invoke-direct {v2, p0}, Lcom/google/android/gms/ads/internal/overlay/zzf;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzm;)V

    .line 26
    .line 27
    .line 28
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzp:Landroid/view/View$OnClickListener;

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzt:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzu:Z

    .line 33
    .line 34
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzv:Z

    .line 35
    .line 36
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzb:Landroid/app/Activity;

    .line 37
    .line 38
    return-void
.end method

.method private final zzJ(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzfC:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 7
    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfg;->zzP()Lcom/google/android/gms/internal/ads/zzedf;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzedf;->zza(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzfB:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 36
    .line 37
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfg;->zzQ()Lcom/google/android/gms/internal/ads/zzedh;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzedh;->zzb()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/internal/ads/zzedc;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzedh;->zza()Lcom/google/android/gms/internal/ads/zzfll;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzedc;->zzg(Lcom/google/android/gms/internal/ads/zzfll;Landroid/view/View;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_1
    return-void
.end method

.method private final zzK(Landroid/content/res/Configuration;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzo:Lcom/google/android/gms/ads/internal/zzl;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/zzl;->zzb:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    move v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzb:Landroid/app/Activity;

    .line 19
    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzs()Lcom/google/android/gms/ads/internal/util/zzaa;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v4, v3, p1}, Lcom/google/android/gms/ads/internal/util/zzaa;->zzd(Landroid/app/Activity;Landroid/content/res/Configuration;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iget-boolean v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzk:Z

    .line 29
    .line 30
    if-eqz v4, :cond_2

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzaU:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 35
    .line 36
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move v1, v2

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 56
    .line 57
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbde;->zzaT:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 58
    .line 59
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Ljava/lang/Boolean;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_1

    .line 74
    .line 75
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 76
    .line 77
    if-eqz p1, :cond_4

    .line 78
    .line 79
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzo:Lcom/google/android/gms/ads/internal/zzl;

    .line 80
    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    iget-boolean p1, p1, Lcom/google/android/gms/ads/internal/zzl;->zzg:Z

    .line 84
    .line 85
    if-eqz p1, :cond_4

    .line 86
    .line 87
    move v2, v1

    .line 88
    :cond_4
    :goto_2
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzbr:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 93
    .line 94
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_7

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-eqz v1, :cond_6

    .line 115
    .line 116
    if-eqz v2, :cond_5

    .line 117
    .line 118
    const/16 v0, 0x1706

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_5
    const/16 v0, 0x1504

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_6
    const/16 v0, 0x100

    .line 125
    .line 126
    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_7
    const/16 v0, 0x800

    .line 131
    .line 132
    const/16 v3, 0x400

    .line 133
    .line 134
    if-eqz v1, :cond_9

    .line 135
    .line 136
    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 140
    .line 141
    .line 142
    if-eqz v2, :cond_8

    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    const/16 v0, 0x1002

    .line 149
    .line 150
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 151
    .line 152
    .line 153
    :cond_8
    return-void

    .line 154
    :cond_9
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method private static final zzL(Lcom/google/android/gms/internal/ads/zzedh;Landroid/view/View;)V
    .locals 2
    .param p0    # Lcom/google/android/gms/internal/ads/zzedh;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzfB:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 7
    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzedh;->zzb()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/internal/ads/zzedc;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzedh;->zza()Lcom/google/android/gms/internal/ads/zzfll;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzedc;->zzj(Lcom/google/android/gms/internal/ads/zzfll;Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final zzA(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzb:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 8
    .line 9
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbde;->zzgk:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-lt v1, v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 32
    .line 33
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbde;->zzgl:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 34
    .line 35
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-gt v1, v2, :cond_1

    .line 50
    .line 51
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 52
    .line 53
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbde;->zzgm:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 54
    .line 55
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Ljava/lang/Integer;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-lt v1, v2, :cond_1

    .line 70
    .line 71
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbde;->zzgn:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 72
    .line 73
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Ljava/lang/Integer;

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-le v1, v2, :cond_0

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    return-void

    .line 91
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :catchall_0
    move-exception p1

    .line 96
    const-string v0, "AdOverlay.setRequestedOrientation"

    .line 97
    .line 98
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzbzs;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final zzB(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzl:Lcom/google/android/gms/ads/internal/overlay/zzh;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzl:Lcom/google/android/gms/ads/internal/overlay/zzh;

    .line 11
    .line 12
    const/high16 v0, -0x1000000

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final zzC(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzb:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzh:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    const/high16 v2, -0x1000000

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzh:Landroid/widget/FrameLayout;

    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    invoke-virtual {v0, p1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzh:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzs:Z

    .line 28
    .line 29
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzi:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 30
    .line 31
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzg:Z

    .line 32
    .line 33
    return-void
.end method

.method protected final zzD(Z)V
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/ads/internal/overlay/zzg;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-boolean v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzs:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzb:Landroid/app/Activity;

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzb:Landroid/app/Activity;

    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_19

    .line 20
    .line 21
    iget-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 22
    .line 23
    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 24
    .line 25
    const/4 v14, 0x0

    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcfg;->zzN()Lcom/google/android/gms/internal/ads/zzcgy;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object v4, v14

    .line 34
    :goto_0
    const/4 v13, 0x0

    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcgy;->zzV()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    move v10, v2

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move v10, v13

    .line 46
    :goto_1
    iput-boolean v13, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzm:Z

    .line 47
    .line 48
    if-eqz v10, :cond_6

    .line 49
    .line 50
    iget-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 51
    .line 52
    iget v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzj:I

    .line 53
    .line 54
    const/4 v5, 0x6

    .line 55
    if-ne v4, v5, :cond_4

    .line 56
    .line 57
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    .line 66
    .line 67
    if-ne v4, v2, :cond_3

    .line 68
    .line 69
    move v4, v2

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    move v4, v13

    .line 72
    :goto_2
    iput-boolean v4, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzm:Z

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_4
    const/4 v5, 0x7

    .line 76
    if-ne v4, v5, :cond_6

    .line 77
    .line 78
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    .line 87
    .line 88
    const/4 v5, 0x2

    .line 89
    if-ne v4, v5, :cond_5

    .line 90
    .line 91
    move v4, v2

    .line 92
    goto :goto_3

    .line 93
    :cond_5
    move v4, v13

    .line 94
    :goto_3
    iput-boolean v4, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzm:Z

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_6
    move v4, v13

    .line 98
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v6, "Delay onShow to next orientation change: "

    .line 104
    .line 105
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    sget v5, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 116
    .line 117
    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 121
    .line 122
    iget v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzj:I

    .line 123
    .line 124
    invoke-virtual {v1, v4}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzA(I)V

    .line 125
    .line 126
    .line 127
    const/high16 v4, 0x1000000

    .line 128
    .line 129
    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 130
    .line 131
    .line 132
    const-string v0, "Hardware acceleration on the AdActivity window enabled."

    .line 133
    .line 134
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-boolean v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzk:Z

    .line 138
    .line 139
    if-nez v0, :cond_7

    .line 140
    .line 141
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzl:Lcom/google/android/gms/ads/internal/overlay/zzh;

    .line 142
    .line 143
    const/high16 v4, -0x1000000

    .line 144
    .line 145
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 146
    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_7
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzl:Lcom/google/android/gms/ads/internal/overlay/zzh;

    .line 150
    .line 151
    sget v4, Lcom/google/android/gms/ads/internal/overlay/zzm;->zza:I

    .line 152
    .line 153
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 154
    .line 155
    .line 156
    :goto_5
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzl:Lcom/google/android/gms/ads/internal/overlay/zzh;

    .line 157
    .line 158
    invoke-virtual {v3, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 159
    .line 160
    .line 161
    iput-boolean v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzs:Z

    .line 162
    .line 163
    if-eqz p1, :cond_e

    .line 164
    .line 165
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lcom/google/android/gms/internal/ads/zzcft;

    .line 166
    .line 167
    .line 168
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 169
    .line 170
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 171
    .line 172
    if-eqz v0, :cond_8

    .line 173
    .line 174
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfg;->zzO()Lcom/google/android/gms/internal/ads/zzchd;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    move-object v4, v0

    .line 179
    goto :goto_6

    .line 180
    :catch_0
    move-exception v0

    .line 181
    goto/16 :goto_b

    .line 182
    .line 183
    :cond_8
    move-object v4, v14

    .line 184
    :goto_6
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 185
    .line 186
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 187
    .line 188
    if-eqz v0, :cond_9

    .line 189
    .line 190
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfg;->zzU()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    move-object v5, v0

    .line 195
    goto :goto_7

    .line 196
    :cond_9
    move-object v5, v14

    .line 197
    :goto_7
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 198
    .line 199
    iget-object v7, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 200
    .line 201
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 202
    .line 203
    if-eqz v0, :cond_a

    .line 204
    .line 205
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfg;->zzj()Lcom/google/android/gms/ads/internal/zza;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    goto :goto_8

    .line 210
    :cond_a
    move-object v0, v14

    .line 211
    :goto_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbcc;->zza()Lcom/google/android/gms/internal/ads/zzbcc;

    .line 212
    .line 213
    .line 214
    move-result-object v20

    .line 215
    const/16 v18, 0x0

    .line 216
    .line 217
    const/16 v19, 0x0

    .line 218
    .line 219
    const/4 v6, 0x1

    .line 220
    const/4 v8, 0x0

    .line 221
    const/4 v9, 0x0

    .line 222
    const/4 v11, 0x0

    .line 223
    const/4 v12, 0x0

    .line 224
    const/4 v15, 0x0

    .line 225
    const/16 v16, 0x0

    .line 226
    .line 227
    const/16 v17, 0x0

    .line 228
    .line 229
    move-object/from16 v21, v7

    .line 230
    .line 231
    move v7, v10

    .line 232
    move v2, v10

    .line 233
    move-object/from16 v10, v21

    .line 234
    .line 235
    move-object v13, v0

    .line 236
    move-object v0, v14

    .line 237
    move-object/from16 v14, v20

    .line 238
    .line 239
    invoke-static/range {v3 .. v19}, Lcom/google/android/gms/internal/ads/zzcft;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzchd;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzavu;Lcom/google/android/gms/internal/ads/zzbel;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbdt;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbcc;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfcd;Lcom/google/android/gms/internal/ads/zzecl;Lcom/google/android/gms/internal/ads/zzfda;Lcom/google/android/gms/internal/ads/zzdsj;)Lcom/google/android/gms/internal/ads/zzcfg;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    iput-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .line 245
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfg;->zzN()Lcom/google/android/gms/internal/ads/zzcgy;

    .line 246
    .line 247
    .line 248
    move-result-object v22

    .line 249
    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 250
    .line 251
    iget-object v4, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzp:Lcom/google/android/gms/internal/ads/zzbiv;

    .line 252
    .line 253
    iget-object v5, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zze:Lcom/google/android/gms/internal/ads/zzbix;

    .line 254
    .line 255
    iget-object v6, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzi:Lcom/google/android/gms/ads/internal/overlay/zzad;

    .line 256
    .line 257
    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 258
    .line 259
    if-eqz v3, :cond_b

    .line 260
    .line 261
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfg;->zzN()Lcom/google/android/gms/internal/ads/zzcgy;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcgy;->zzd()Lcom/google/android/gms/ads/internal/zzb;

    .line 266
    .line 267
    .line 268
    move-result-object v14

    .line 269
    move-object/from16 v30, v14

    .line 270
    .line 271
    goto :goto_9

    .line 272
    :cond_b
    move-object/from16 v30, v0

    .line 273
    .line 274
    :goto_9
    const/16 v40, 0x0

    .line 275
    .line 276
    const/16 v41, 0x0

    .line 277
    .line 278
    const/16 v23, 0x0

    .line 279
    .line 280
    const/16 v25, 0x0

    .line 281
    .line 282
    const/16 v28, 0x1

    .line 283
    .line 284
    const/16 v29, 0x0

    .line 285
    .line 286
    const/16 v31, 0x0

    .line 287
    .line 288
    const/16 v32, 0x0

    .line 289
    .line 290
    const/16 v33, 0x0

    .line 291
    .line 292
    const/16 v34, 0x0

    .line 293
    .line 294
    const/16 v35, 0x0

    .line 295
    .line 296
    const/16 v36, 0x0

    .line 297
    .line 298
    const/16 v37, 0x0

    .line 299
    .line 300
    const/16 v38, 0x0

    .line 301
    .line 302
    const/16 v39, 0x0

    .line 303
    .line 304
    move-object/from16 v24, v4

    .line 305
    .line 306
    move-object/from16 v26, v5

    .line 307
    .line 308
    move-object/from16 v27, v6

    .line 309
    .line 310
    invoke-interface/range {v22 .. v41}, Lcom/google/android/gms/internal/ads/zzcgy;->zzX(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/internal/ads/zzbiv;Lcom/google/android/gms/ads/internal/overlay/zzr;Lcom/google/android/gms/internal/ads/zzbix;Lcom/google/android/gms/ads/internal/overlay/zzad;ZLcom/google/android/gms/internal/ads/zzbki;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbsv;Lcom/google/android/gms/internal/ads/zzbya;Lcom/google/android/gms/internal/ads/zzeca;Lcom/google/android/gms/internal/ads/zzfjy;Lcom/google/android/gms/internal/ads/zzdsj;Lcom/google/android/gms/internal/ads/zzbkz;Lcom/google/android/gms/internal/ads/zzded;Lcom/google/android/gms/internal/ads/zzbky;Lcom/google/android/gms/internal/ads/zzbks;Lcom/google/android/gms/internal/ads/zzbkg;Lcom/google/android/gms/internal/ads/zzcmq;)V

    .line 311
    .line 312
    .line 313
    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 314
    .line 315
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfg;->zzN()Lcom/google/android/gms/internal/ads/zzcgy;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    new-instance v4, Lcom/google/android/gms/ads/internal/overlay/zze;

    .line 320
    .line 321
    invoke-direct {v4, v1}, Lcom/google/android/gms/ads/internal/overlay/zze;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzm;)V

    .line 322
    .line 323
    .line 324
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzcgy;->zzC(Lcom/google/android/gms/internal/ads/zzcgw;)V

    .line 325
    .line 326
    .line 327
    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 328
    .line 329
    iget-object v4, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzl:Ljava/lang/String;

    .line 330
    .line 331
    if-eqz v4, :cond_c

    .line 332
    .line 333
    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 334
    .line 335
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzcfg;->loadUrl(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    goto :goto_a

    .line 339
    :cond_c
    iget-object v7, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzh:Ljava/lang/String;

    .line 340
    .line 341
    if-eqz v7, :cond_d

    .line 342
    .line 343
    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 344
    .line 345
    iget-object v6, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzf:Ljava/lang/String;

    .line 346
    .line 347
    const-string v9, "UTF-8"

    .line 348
    .line 349
    const/4 v10, 0x0

    .line 350
    const-string v8, "text/html"

    .line 351
    .line 352
    invoke-interface/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzcfg;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    :goto_a
    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 356
    .line 357
    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 358
    .line 359
    if-eqz v3, :cond_f

    .line 360
    .line 361
    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/zzcfg;->zzaw(Lcom/google/android/gms/ads/internal/overlay/zzm;)V

    .line 362
    .line 363
    .line 364
    goto :goto_c

    .line 365
    :cond_d
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzg;

    .line 366
    .line 367
    const-string v2, "No URL or HTML to display in ad overlay."

    .line 368
    .line 369
    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzg;-><init>(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    throw v0

    .line 373
    :goto_b
    const-string v2, "Error obtaining webview."

    .line 374
    .line 375
    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 376
    .line 377
    .line 378
    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzg;

    .line 379
    .line 380
    const-string v3, "Could not obtain webview for the overlay."

    .line 381
    .line 382
    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/ads/internal/overlay/zzg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 383
    .line 384
    .line 385
    throw v2

    .line 386
    :cond_e
    move v2, v10

    .line 387
    move-object v0, v14

    .line 388
    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 389
    .line 390
    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 391
    .line 392
    iput-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 393
    .line 394
    iget-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzb:Landroid/app/Activity;

    .line 395
    .line 396
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzcfg;->zzan(Landroid/content/Context;)V

    .line 397
    .line 398
    .line 399
    :cond_f
    :goto_c
    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 400
    .line 401
    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzw:Z

    .line 402
    .line 403
    if-eqz v3, :cond_10

    .line 404
    .line 405
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    iget-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 410
    .line 411
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcfg;->zzG()Landroid/webkit/WebView;

    .line 412
    .line 413
    .line 414
    move-result-object v4

    .line 415
    const/4 v5, 0x0

    .line 416
    invoke-virtual {v3, v4, v5}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 417
    .line 418
    .line 419
    goto :goto_d

    .line 420
    :cond_10
    const/4 v5, 0x0

    .line 421
    :goto_d
    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 422
    .line 423
    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/zzcfg;->zzai(Lcom/google/android/gms/ads/internal/overlay/zzm;)V

    .line 424
    .line 425
    .line 426
    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 427
    .line 428
    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 429
    .line 430
    if-eqz v3, :cond_11

    .line 431
    .line 432
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfg;->zzQ()Lcom/google/android/gms/internal/ads/zzedh;

    .line 433
    .line 434
    .line 435
    move-result-object v3

    .line 436
    iget-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzl:Lcom/google/android/gms/ads/internal/overlay/zzh;

    .line 437
    .line 438
    invoke-static {v3, v4}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzL(Lcom/google/android/gms/internal/ads/zzedh;Landroid/view/View;)V

    .line 439
    .line 440
    .line 441
    :cond_11
    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 442
    .line 443
    iget v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzk:I

    .line 444
    .line 445
    const/4 v4, 0x5

    .line 446
    if-eq v3, v4, :cond_15

    .line 447
    .line 448
    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 449
    .line 450
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfg;->getParent()Landroid/view/ViewParent;

    .line 451
    .line 452
    .line 453
    move-result-object v3

    .line 454
    instance-of v6, v3, Landroid/view/ViewGroup;

    .line 455
    .line 456
    if-eqz v6, :cond_12

    .line 457
    .line 458
    check-cast v3, Landroid/view/ViewGroup;

    .line 459
    .line 460
    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 461
    .line 462
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcfg;->zzF()Landroid/view/View;

    .line 463
    .line 464
    .line 465
    move-result-object v6

    .line 466
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 467
    .line 468
    .line 469
    :cond_12
    iget-boolean v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzk:Z

    .line 470
    .line 471
    if-eqz v3, :cond_13

    .line 472
    .line 473
    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 474
    .line 475
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfg;->zzam()V

    .line 476
    .line 477
    .line 478
    :cond_13
    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 479
    .line 480
    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzw:Z

    .line 481
    .line 482
    const/4 v6, -0x1

    .line 483
    if-eqz v3, :cond_14

    .line 484
    .line 485
    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzb:Landroid/app/Activity;

    .line 486
    .line 487
    new-instance v7, Landroid/widget/Toolbar;

    .line 488
    .line 489
    invoke-direct {v7, v3}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;)V

    .line 490
    .line 491
    .line 492
    iput-object v7, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzw:Landroid/widget/Toolbar;

    .line 493
    .line 494
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 495
    .line 496
    .line 497
    move-result v3

    .line 498
    invoke-virtual {v7, v3}, Landroid/view/View;->setId(I)V

    .line 499
    .line 500
    .line 501
    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 502
    .line 503
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfg;->zzF()Landroid/view/View;

    .line 504
    .line 505
    .line 506
    move-result-object v3

    .line 507
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 508
    .line 509
    .line 510
    move-result v7

    .line 511
    invoke-virtual {v3, v7}, Landroid/view/View;->setId(I)V

    .line 512
    .line 513
    .line 514
    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzw:Landroid/widget/Toolbar;

    .line 515
    .line 516
    const v7, -0xbbbbbc

    .line 517
    .line 518
    .line 519
    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 520
    .line 521
    .line 522
    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzw:Landroid/widget/Toolbar;

    .line 523
    .line 524
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 525
    .line 526
    .line 527
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 528
    .line 529
    .line 530
    move-result-object v3

    .line 531
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbzs;->zze()Landroid/content/res/Resources;

    .line 532
    .line 533
    .line 534
    move-result-object v3

    .line 535
    sget v7, Lcom/google/android/gms/ads/impl/R$drawable;->admob_close_button_white_cross:I

    .line 536
    .line 537
    invoke-virtual {v3, v7, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzw:Landroid/widget/Toolbar;

    .line 542
    .line 543
    invoke-virtual {v3, v0}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 544
    .line 545
    .line 546
    goto :goto_f

    .line 547
    :catch_1
    move-exception v0

    .line 548
    goto :goto_e

    .line 549
    :catch_2
    move-exception v0

    .line 550
    :goto_e
    const-string v3, "Error obtaining close icon."

    .line 551
    .line 552
    invoke-static {v3, v0}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 553
    .line 554
    .line 555
    :goto_f
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzw:Landroid/widget/Toolbar;

    .line 556
    .line 557
    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzp:Landroid/view/View$OnClickListener;

    .line 558
    .line 559
    invoke-virtual {v0, v3}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    .line 561
    .line 562
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzw:Landroid/widget/Toolbar;

    .line 563
    .line 564
    invoke-virtual {v0, v5}, Landroid/widget/Toolbar;->setTitleMarginStart(I)V

    .line 565
    .line 566
    .line 567
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 568
    .line 569
    const/4 v3, -0x2

    .line 570
    invoke-direct {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 571
    .line 572
    .line 573
    const/16 v5, 0xa

    .line 574
    .line 575
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 576
    .line 577
    .line 578
    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzl:Lcom/google/android/gms/ads/internal/overlay/zzh;

    .line 579
    .line 580
    iget-object v7, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzw:Landroid/widget/Toolbar;

    .line 581
    .line 582
    invoke-virtual {v5, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 583
    .line 584
    .line 585
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 586
    .line 587
    invoke-direct {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 588
    .line 589
    .line 590
    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzw:Landroid/widget/Toolbar;

    .line 591
    .line 592
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 593
    .line 594
    .line 595
    move-result v3

    .line 596
    const/4 v5, 0x3

    .line 597
    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 598
    .line 599
    .line 600
    const/16 v3, 0xc

    .line 601
    .line 602
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 603
    .line 604
    .line 605
    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzl:Lcom/google/android/gms/ads/internal/overlay/zzh;

    .line 606
    .line 607
    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 608
    .line 609
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzcfg;->zzF()Landroid/view/View;

    .line 610
    .line 611
    .line 612
    move-result-object v5

    .line 613
    invoke-virtual {v3, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 614
    .line 615
    .line 616
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzw:Landroid/widget/Toolbar;

    .line 617
    .line 618
    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJ(Landroid/view/View;)V

    .line 619
    .line 620
    .line 621
    goto :goto_10

    .line 622
    :cond_14
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzl:Lcom/google/android/gms/ads/internal/overlay/zzh;

    .line 623
    .line 624
    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 625
    .line 626
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfg;->zzF()Landroid/view/View;

    .line 627
    .line 628
    .line 629
    move-result-object v3

    .line 630
    invoke-virtual {v0, v3, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 631
    .line 632
    .line 633
    :cond_15
    :goto_10
    if-nez p1, :cond_16

    .line 634
    .line 635
    iget-boolean v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzm:Z

    .line 636
    .line 637
    if-nez v0, :cond_16

    .line 638
    .line 639
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zze()V

    .line 640
    .line 641
    .line 642
    :cond_16
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 643
    .line 644
    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzk:I

    .line 645
    .line 646
    if-eq v0, v4, :cond_18

    .line 647
    .line 648
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzw(Z)V

    .line 649
    .line 650
    .line 651
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 652
    .line 653
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfg;->zzaB()Z

    .line 654
    .line 655
    .line 656
    move-result v0

    .line 657
    if-eqz v0, :cond_17

    .line 658
    .line 659
    const/4 v3, 0x1

    .line 660
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzy(ZZ)V

    .line 661
    .line 662
    .line 663
    :cond_17
    return-void

    .line 664
    :cond_18
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzb:Landroid/app/Activity;

    .line 665
    .line 666
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzecn;->zze()Lcom/google/android/gms/internal/ads/zzecm;

    .line 667
    .line 668
    .line 669
    move-result-object v2

    .line 670
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzecm;->zza(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzecm;

    .line 671
    .line 672
    .line 673
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzecm;->zzb(Lcom/google/android/gms/ads/internal/overlay/zzm;)Lcom/google/android/gms/internal/ads/zzecm;

    .line 674
    .line 675
    .line 676
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 677
    .line 678
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzq:Ljava/lang/String;

    .line 679
    .line 680
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzecm;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzecm;

    .line 681
    .line 682
    .line 683
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 684
    .line 685
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzr:Ljava/lang/String;

    .line 686
    .line 687
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzecm;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzecm;

    .line 688
    .line 689
    .line 690
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzecm;->zze()Lcom/google/android/gms/internal/ads/zzecn;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    :try_start_2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzf(Lcom/google/android/gms/internal/ads/zzecn;)V
    :try_end_2
    .catch Lcom/google/android/gms/ads/internal/overlay/zzg; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 695
    .line 696
    .line 697
    return-void

    .line 698
    :catch_3
    move-exception v0

    .line 699
    goto :goto_11

    .line 700
    :catch_4
    move-exception v0

    .line 701
    :goto_11
    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzg;

    .line 702
    .line 703
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v3

    .line 707
    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/ads/internal/overlay/zzg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 708
    .line 709
    .line 710
    throw v2

    .line 711
    :cond_19
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzg;

    .line 712
    .line 713
    const-string v2, "Invalid activity, no window available."

    .line 714
    .line 715
    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzg;-><init>(Ljava/lang/String;)V

    .line 716
    .line 717
    .line 718
    throw v0
.end method

.method public final zzE()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzo:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzr:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzq:Ljava/lang/Runnable;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget-object v2, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfrw;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzq:Ljava/lang/Runnable;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v1
.end method

.method protected final zzF()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzb:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzt:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_3

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzt:Z

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzn:I

    .line 22
    .line 23
    add-int/lit8 v1, v1, -0x1

    .line 24
    .line 25
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcfg;->zzZ(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzo:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzr:Z

    .line 32
    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 36
    .line 37
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcfg;->zzaC()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzfn:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 44
    .line 45
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzu:Z

    .line 62
    .line 63
    if-nez v1, :cond_1

    .line 64
    .line 65
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 66
    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzc:Lcom/google/android/gms/ads/internal/overlay/zzr;

    .line 70
    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzds()V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception v1

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    :goto_0
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzd;

    .line 80
    .line 81
    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzm;)V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzq:Ljava/lang/Runnable;

    .line 85
    .line 86
    sget-object v2, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfrw;

    .line 87
    .line 88
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbde;->zzbk:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 89
    .line 90
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    check-cast v3, Ljava/lang/Long;

    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 101
    .line 102
    .line 103
    move-result-wide v3

    .line 104
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    .line 106
    .line 107
    monitor-exit v0

    .line 108
    return-void

    .line 109
    :cond_2
    monitor-exit v0

    .line 110
    goto :goto_2

    .line 111
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    throw v1

    .line 113
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc()V

    .line 114
    .line 115
    .line 116
    :cond_4
    :goto_3
    return-void
.end method

.method public final zzG(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzw:Landroid/widget/Toolbar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final zzH()Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzn:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzjp:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 28
    .line 29
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfg;->canGoBack()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 37
    .line 38
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfg;->goBack()V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    return v0

    .line 43
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 44
    .line 45
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfg;->zzaH()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 52
    .line 53
    const-string v2, "onbackblocked"

    .line 54
    .line 55
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbna;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    .line 60
    .line 61
    .line 62
    :cond_3
    return v0
.end method

.method public final zzb()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzn:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzb:Landroid/app/Activity;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzk:I

    .line 14
    .line 15
    const/4 v2, 0x5

    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcfg;->zzai(Lcom/google/android/gms/ads/internal/overlay/zzm;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method final zzc()V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzu:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzu:Z

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 11
    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzl:Lcom/google/android/gms/ads/internal/overlay/zzh;

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfg;->zzF()Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zze:Lcom/google/android/gms/ads/internal/overlay/zzi;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzd:Landroid/content/Context;

    .line 31
    .line 32
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzcfg;->zzan(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzcfg;->zzaq(Z)V

    .line 39
    .line 40
    .line 41
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zznc:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 42
    .line 43
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 60
    .line 61
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfg;->getParent()Landroid/view/ViewParent;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 68
    .line 69
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfg;->getParent()Landroid/view/ViewParent;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Landroid/view/ViewGroup;

    .line 74
    .line 75
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 76
    .line 77
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcfg;->zzF()Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zze:Lcom/google/android/gms/ads/internal/overlay/zzi;

    .line 85
    .line 86
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzc:Landroid/view/ViewGroup;

    .line 87
    .line 88
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 89
    .line 90
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcfg;->zzF()Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zze:Lcom/google/android/gms/ads/internal/overlay/zzi;

    .line 95
    .line 96
    iget v4, v3, Lcom/google/android/gms/ads/internal/overlay/zzi;->zza:I

    .line 97
    .line 98
    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzb:Landroid/view/ViewGroup$LayoutParams;

    .line 99
    .line 100
    invoke-virtual {v0, v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 101
    .line 102
    .line 103
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zze:Lcom/google/android/gms/ads/internal/overlay/zzi;

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzb:Landroid/app/Activity;

    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    if-eqz v2, :cond_3

    .line 113
    .line 114
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzcfg;->zzan(Landroid/content/Context;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 124
    .line 125
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 126
    .line 127
    if-eqz v0, :cond_5

    .line 128
    .line 129
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzc:Lcom/google/android/gms/ads/internal/overlay/zzr;

    .line 130
    .line 131
    if-eqz v0, :cond_5

    .line 132
    .line 133
    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzn:I

    .line 134
    .line 135
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzdw(I)V

    .line 136
    .line 137
    .line 138
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 139
    .line 140
    if-eqz v0, :cond_6

    .line 141
    .line 142
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 143
    .line 144
    if-eqz v0, :cond_6

    .line 145
    .line 146
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfg;->zzQ()Lcom/google/android/gms/internal/ads/zzedh;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 151
    .line 152
    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 153
    .line 154
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcfg;->zzF()Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzL(Lcom/google/android/gms/internal/ads/zzedh;Landroid/view/View;)V

    .line 159
    .line 160
    .line 161
    :cond_6
    :goto_1
    return-void
.end method

.method public final zzd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzl:Lcom/google/android/gms/ads/internal/overlay/zzh;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzh;->zzb:Z

    .line 5
    .line 6
    return-void
.end method

.method protected final zze()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfg;->zzaa()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzecn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/ads/internal/overlay/zzg;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzv:Lcom/google/android/gms/internal/ads/zzbtj;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbtj;->zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzg;

    .line 18
    .line 19
    const-string v0, "noioou"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzg;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public final zzg()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzg:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzj:I

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzA(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzh:Landroid/widget/FrameLayout;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzb:Landroid/app/Activity;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzl:Lcom/google/android/gms/ads/internal/overlay/zzh;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzs:Z

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzh:Landroid/widget/FrameLayout;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzh:Landroid/widget/FrameLayout;

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzi:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzi:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 44
    .line 45
    :cond_2
    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzg:Z

    .line 47
    .line 48
    return-void
.end method

.method public final zzh(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    const/16 v0, 0xec

    .line 2
    .line 3
    if-ne p1, v0, :cond_3

    .line 4
    .line 5
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbde;->zzny:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v1, "Callback from intent launch with requestCode: 236 and resultCode: "

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 44
    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfg;->zzN()Lcom/google/android/gms/internal/ads/zzcgy;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfg;->zzN()Lcom/google/android/gms/internal/ads/zzcgy;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcgy;->zze()Lcom/google/android/gms/internal/ads/zzdsj;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 65
    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsj;->zza()Lcom/google/android/gms/internal/ads/zzdsi;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const-string v0, "action"

    .line 89
    .line 90
    const-string v2, "hilca"

    .line 91
    .line 92
    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdsi;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsi;

    .line 93
    .line 94
    .line 95
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzq:Ljava/lang/String;

    .line 96
    .line 97
    const-string v1, "gqi"

    .line 98
    .line 99
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfwg;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdsi;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsi;

    .line 104
    .line 105
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const-string v1, "hilr"

    .line 119
    .line 120
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdsi;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsi;

    .line 121
    .line 122
    .line 123
    const/4 v0, -0x1

    .line 124
    if-ne p2, v0, :cond_2

    .line 125
    .line 126
    if-eqz p3, :cond_2

    .line 127
    .line 128
    const-string p2, "callerPackage"

    .line 129
    .line 130
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    const-string v0, "loadingStage"

    .line 135
    .line 136
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    if-eqz p2, :cond_1

    .line 141
    .line 142
    const-string v0, "hilcp"

    .line 143
    .line 144
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzdsi;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsi;

    .line 145
    .line 146
    .line 147
    :cond_1
    if-eqz p3, :cond_2

    .line 148
    .line 149
    const-string p2, "hills"

    .line 150
    .line 151
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdsi;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsi;

    .line 152
    .line 153
    .line 154
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdsi;->zzi()V

    .line 155
    .line 156
    .line 157
    :cond_3
    :goto_0
    return-void
.end method

.method public final zzi()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzn:I

    .line 3
    .line 4
    return-void
.end method

.method public final zzj()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzn:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzb:Landroid/app/Activity;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/content/res/Configuration;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzK(Landroid/content/res/Configuration;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public zzl(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzs:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzb:Landroid/app/Activity;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const-string v2, "com.google.android.gms.ads.internal.overlay.hasResumed"

    .line 15
    .line 16
    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    move v2, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v2, v0

    .line 25
    :goto_0
    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzj:Z

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzb:Landroid/app/Activity;

    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-static {v4}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zza(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    iput-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 39
    .line 40
    if-eqz v4, :cond_11

    .line 41
    .line 42
    iget-boolean v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzw:Z

    .line 43
    .line 44
    if-eqz v4, :cond_3

    .line 45
    .line 46
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 47
    .line 48
    const/16 v5, 0x1c

    .line 49
    .line 50
    if-lt v4, v5, :cond_2

    .line 51
    .line 52
    invoke-static {v3, v1}, Lcom/google/android/gms/ads/internal/overlay/a;->a(Landroid/app/Activity;Z)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catch_0
    move-exception p1

    .line 57
    goto/16 :goto_4

    .line 58
    .line 59
    :cond_2
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    const/high16 v5, 0x80000

    .line 64
    .line 65
    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 66
    .line 67
    .line 68
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 69
    .line 70
    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 71
    .line 72
    iget v4, v4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 73
    .line 74
    const v5, 0x7270e0

    .line 75
    .line 76
    .line 77
    if-le v4, v5, :cond_4

    .line 78
    .line 79
    iput v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzn:I

    .line 80
    .line 81
    :cond_4
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    if-eqz v4, :cond_5

    .line 86
    .line 87
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    const-string v5, "shouldCallOnOverlayOpened"

    .line 92
    .line 93
    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    iput-boolean v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzv:Z

    .line 98
    .line 99
    :cond_5
    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 100
    .line 101
    iget-object v5, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzo:Lcom/google/android/gms/ads/internal/zzl;

    .line 102
    .line 103
    const/4 v6, 0x5

    .line 104
    if-eqz v5, :cond_6

    .line 105
    .line 106
    iget-boolean v7, v5, Lcom/google/android/gms/ads/internal/zzl;->zza:Z

    .line 107
    .line 108
    iput-boolean v7, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzk:Z

    .line 109
    .line 110
    if-eqz v7, :cond_8

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_6
    iget v7, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzk:I

    .line 114
    .line 115
    if-ne v7, v6, :cond_7

    .line 116
    .line 117
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzk:Z

    .line 118
    .line 119
    :goto_2
    iget v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzk:I

    .line 120
    .line 121
    if-eq v4, v6, :cond_8

    .line 122
    .line 123
    iget v4, v5, Lcom/google/android/gms/ads/internal/zzl;->zzf:I

    .line 124
    .line 125
    const/4 v5, -0x1

    .line 126
    if-eq v4, v5, :cond_8

    .line 127
    .line 128
    new-instance v4, Lcom/google/android/gms/ads/internal/overlay/zzk;

    .line 129
    .line 130
    const/4 v5, 0x0

    .line 131
    invoke-direct {v4, p0, v5}, Lcom/google/android/gms/ads/internal/overlay/zzk;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzm;Lcom/google/android/gms/ads/internal/overlay/zzl;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4}, Lcom/google/android/gms/ads/internal/util/zzb;->zzb()Lcom/google/common/util/concurrent/e;

    .line 135
    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_7
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzk:Z

    .line 139
    .line 140
    :cond_8
    :goto_3
    if-nez p1, :cond_c

    .line 141
    .line 142
    iget-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzv:Z

    .line 143
    .line 144
    if-eqz p1, :cond_a

    .line 145
    .line 146
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 147
    .line 148
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzt:Lcom/google/android/gms/internal/ads/zzcwl;

    .line 149
    .line 150
    if-eqz p1, :cond_9

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwl;->zzb()V

    .line 153
    .line 154
    .line 155
    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 156
    .line 157
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzc:Lcom/google/android/gms/ads/internal/overlay/zzr;

    .line 158
    .line 159
    if-eqz p1, :cond_a

    .line 160
    .line 161
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzdt()V

    .line 162
    .line 163
    .line 164
    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 165
    .line 166
    iget v4, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzk:I

    .line 167
    .line 168
    if-eq v4, v1, :cond_c

    .line 169
    .line 170
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzb:Lcom/google/android/gms/ads/internal/client/zza;

    .line 171
    .line 172
    if-eqz p1, :cond_b

    .line 173
    .line 174
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zza;->onAdClicked()V

    .line 175
    .line 176
    .line 177
    :cond_b
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 178
    .line 179
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzu:Lcom/google/android/gms/internal/ads/zzded;

    .line 180
    .line 181
    if-eqz p1, :cond_c

    .line 182
    .line 183
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzded;->zzdf()V

    .line 184
    .line 185
    .line 186
    :cond_c
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzh;

    .line 187
    .line 188
    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 189
    .line 190
    iget-object v5, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzn:Ljava/lang/String;

    .line 191
    .line 192
    iget-object v7, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 193
    .line 194
    iget-object v7, v7, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    .line 195
    .line 196
    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzs:Ljava/lang/String;

    .line 197
    .line 198
    invoke-direct {p1, v3, v5, v7, v4}, Lcom/google/android/gms/ads/internal/overlay/zzh;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzl:Lcom/google/android/gms/ads/internal/overlay/zzh;

    .line 202
    .line 203
    const/16 v4, 0x3e8

    .line 204
    .line 205
    invoke-virtual {p1, v4}, Landroid/view/View;->setId(I)V

    .line 206
    .line 207
    .line 208
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzs()Lcom/google/android/gms/ads/internal/util/zzaa;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-virtual {p1, v3}, Lcom/google/android/gms/ads/internal/util/zzaa;->zzl(Landroid/app/Activity;)V

    .line 213
    .line 214
    .line 215
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 216
    .line 217
    iget v3, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzk:I

    .line 218
    .line 219
    if-eq v3, v1, :cond_10

    .line 220
    .line 221
    const/4 v4, 0x2

    .line 222
    if-eq v3, v4, :cond_f

    .line 223
    .line 224
    const/4 p1, 0x3

    .line 225
    if-eq v3, p1, :cond_e

    .line 226
    .line 227
    if-ne v3, v6, :cond_d

    .line 228
    .line 229
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzD(Z)V

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :cond_d
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzg;

    .line 234
    .line 235
    const-string v0, "Could not determine ad overlay type."

    .line 236
    .line 237
    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzg;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw p1

    .line 241
    :cond_e
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzD(Z)V

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :cond_f
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzi;

    .line 246
    .line 247
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 248
    .line 249
    invoke-direct {v1, p1}, Lcom/google/android/gms/ads/internal/overlay/zzi;-><init>(Lcom/google/android/gms/internal/ads/zzcfg;)V

    .line 250
    .line 251
    .line 252
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zze:Lcom/google/android/gms/ads/internal/overlay/zzi;

    .line 253
    .line 254
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzD(Z)V

    .line 255
    .line 256
    .line 257
    return-void

    .line 258
    :cond_10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzD(Z)V

    .line 259
    .line 260
    .line 261
    return-void

    .line 262
    :cond_11
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzg;

    .line 263
    .line 264
    const-string v0, "Could not get info for ad overlay."

    .line 265
    .line 266
    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzg;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/ads/internal/overlay/zzg; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 275
    .line 276
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    iput v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzn:I

    .line 280
    .line 281
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzb:Landroid/app/Activity;

    .line 282
    .line 283
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 284
    .line 285
    .line 286
    return-void
.end method

.method public final zzm()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzl:Lcom/google/android/gms/ads/internal/overlay/zzh;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfg;->zzF()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :catch_0
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzF()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final zzn()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzm:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzm:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zze()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final zzo()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzg()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzc:Lcom/google/android/gms/ads/internal/overlay/zzr;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzdk()V

    .line 13
    .line 14
    .line 15
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzfp:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 16
    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzb:Landroid/app/Activity;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zze:Lcom/google/android/gms/ads/internal/overlay/zzi;

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 50
    .line 51
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfg;->onPause()V

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzF()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final zzp(I[Ljava/lang/String;[I)V
    .locals 2

    .line 1
    const/16 v0, 0x3039

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzb:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzecn;->zze()Lcom/google/android/gms/internal/ads/zzecm;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzecm;->zza(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzecm;

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 15
    .line 16
    iget p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzk:I

    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    if-ne p1, v1, :cond_0

    .line 20
    .line 21
    move-object p1, p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzecm;->zzb(Lcom/google/android/gms/ads/internal/overlay/zzm;)Lcom/google/android/gms/internal/ads/zzecm;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzecm;->zze()Lcom/google/android/gms/internal/ads/zzecn;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzv:Lcom/google/android/gms/internal/ads/zzbtj;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {v0, p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzbtj;->zzf([Ljava/lang/String;[ILcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    :catch_0
    :cond_1
    return-void
.end method

.method public final zzq()V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzr()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzc:Lcom/google/android/gms/ads/internal/overlay/zzr;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzd()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzb:Landroid/app/Activity;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzK(Landroid/content/res/Configuration;)V

    .line 23
    .line 24
    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzfp:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 26
    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfg;->zzaE()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 54
    .line 55
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfg;->onResume()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 60
    .line 61
    const-string v0, "The webview does not exist. Ignoring action."

    .line 62
    .line 63
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void
.end method

.method public final zzs(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "com.google.android.gms.ads.internal.overlay.hasResumed"

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzj:Z

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final zzt()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzfp:Lcom/google/android/gms/internal/ads/zzbcv;

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
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfg;->zzaE()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfg;->onResume()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 36
    .line 37
    const-string v0, "The webview does not exist. Ignoring action."

    .line 38
    .line 39
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public final zzu()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzfp:Lcom/google/android/gms/internal/ads/zzbcv;

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
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzb:Landroid/app/Activity;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zze:Lcom/google/android/gms/ads/internal/overlay/zzi;

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 36
    .line 37
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfg;->onPause()V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzF()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final zzv()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzc:Lcom/google/android/gms/ads/internal/overlay/zzr;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzdv()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final zzw(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzw:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzfs:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzbn:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 25
    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/4 v2, 0x0

    .line 41
    const/4 v3, 0x1

    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    :cond_1
    move v1, v3

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move v1, v2

    .line 49
    :goto_0
    new-instance v4, Lcom/google/android/gms/ads/internal/overlay/zzt;

    .line 50
    .line 51
    invoke-direct {v4}, Lcom/google/android/gms/ads/internal/overlay/zzt;-><init>()V

    .line 52
    .line 53
    .line 54
    const/16 v5, 0x32

    .line 55
    .line 56
    iput v5, v4, Lcom/google/android/gms/ads/internal/overlay/zzt;->zzd:I

    .line 57
    .line 58
    if-eq v3, v1, :cond_3

    .line 59
    .line 60
    move v5, v2

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    move v5, v0

    .line 63
    :goto_1
    iput v5, v4, Lcom/google/android/gms/ads/internal/overlay/zzt;->zza:I

    .line 64
    .line 65
    if-eq v3, v1, :cond_4

    .line 66
    .line 67
    move v2, v0

    .line 68
    :cond_4
    iput v2, v4, Lcom/google/android/gms/ads/internal/overlay/zzt;->zzb:I

    .line 69
    .line 70
    iput v0, v4, Lcom/google/android/gms/ads/internal/overlay/zzt;->zzc:I

    .line 71
    .line 72
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzb:Landroid/app/Activity;

    .line 73
    .line 74
    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzu;

    .line 75
    .line 76
    invoke-direct {v2, v0, v4, p0}, Lcom/google/android/gms/ads/internal/overlay/zzu;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzt;Lcom/google/android/gms/ads/internal/overlay/zzah;)V

    .line 77
    .line 78
    .line 79
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzf:Lcom/google/android/gms/ads/internal/overlay/zzu;

    .line 80
    .line 81
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 82
    .line 83
    const/4 v2, -0x2

    .line 84
    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 85
    .line 86
    .line 87
    const/16 v2, 0xa

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 90
    .line 91
    .line 92
    if-eq v3, v1, :cond_5

    .line 93
    .line 94
    const/16 v1, 0x9

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    const/16 v1, 0xb

    .line 98
    .line 99
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 103
    .line 104
    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzg:Z

    .line 105
    .line 106
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzy(ZZ)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzl:Lcom/google/android/gms/ads/internal/overlay/zzh;

    .line 110
    .line 111
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzf:Lcom/google/android/gms/ads/internal/overlay/zzu;

    .line 112
    .line 113
    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzf:Lcom/google/android/gms/ads/internal/overlay/zzu;

    .line 117
    .line 118
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJ(Landroid/view/View;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public final zzx()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzs:Z

    .line 3
    .line 4
    return-void
.end method

.method public final zzy(ZZ)V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzbl:Lcom/google/android/gms/internal/ads/zzbcv;

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
    const/4 v1, 0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzo:Lcom/google/android/gms/ads/internal/zzl;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/zzl;->zzh:Z

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    move v0, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v0, v2

    .line 36
    :goto_0
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbde;->zzbm:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 37
    .line 38
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 55
    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzo:Lcom/google/android/gms/ads/internal/zzl;

    .line 59
    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/zzl;->zzi:Z

    .line 63
    .line 64
    if-eqz v3, :cond_1

    .line 65
    .line 66
    move v3, v1

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    move v3, v2

    .line 69
    :goto_1
    if-eqz p1, :cond_2

    .line 70
    .line 71
    if-eqz p2, :cond_2

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    if-nez v3, :cond_2

    .line 76
    .line 77
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbsu;

    .line 78
    .line 79
    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 80
    .line 81
    const-string v5, "useCustomClose"

    .line 82
    .line 83
    invoke-direct {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzbsu;-><init>(Lcom/google/android/gms/internal/ads/zzcfg;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string v4, "Custom close has been disabled for interstitial ads in this ad slot."

    .line 87
    .line 88
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzbsu;->zzh(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzf:Lcom/google/android/gms/ads/internal/overlay/zzu;

    .line 92
    .line 93
    if-eqz p1, :cond_5

    .line 94
    .line 95
    if-nez v3, :cond_4

    .line 96
    .line 97
    if-eqz p2, :cond_3

    .line 98
    .line 99
    if-nez v0, :cond_3

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    move v1, v2

    .line 103
    :cond_4
    :goto_2
    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzb(Z)V

    .line 104
    .line 105
    .line 106
    :cond_5
    return-void
.end method

.method public final zzz()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzl:Lcom/google/android/gms/ads/internal/overlay/zzh;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzf:Lcom/google/android/gms/ads/internal/overlay/zzu;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzw(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
