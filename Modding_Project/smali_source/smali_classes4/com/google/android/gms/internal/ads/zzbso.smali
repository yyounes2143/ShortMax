.class public final Lcom/google/android/gms/internal/ads/zzbso;
.super Lcom/google/android/gms/internal/ads/zzbsu;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Z

.field private zzc:I

.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private final zzi:Ljava/lang/Object;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzcfg;

.field private final zzk:Landroid/app/Activity;

.field private zzl:Lcom/google/android/gms/internal/ads/zzchd;

.field private zzm:Landroid/widget/ImageView;

.field private zzn:Landroid/widget/LinearLayout;

.field private final zzo:Lcom/google/android/gms/internal/ads/zzbsv;

.field private zzp:Landroid/widget/PopupWindow;

.field private zzq:Landroid/widget/RelativeLayout;

.field private zzr:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v5, "bottom-right"

    .line 2
    .line 3
    const-string v6, "bottom-center"

    .line 4
    .line 5
    const-string v0, "top-left"

    .line 6
    .line 7
    const-string v1, "top-right"

    .line 8
    .line 9
    const-string v2, "top-center"

    .line 10
    .line 11
    const-string v3, "center"

    .line 12
    .line 13
    const-string v4, "bottom-left"

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcfg;Lcom/google/android/gms/internal/ads/zzbsv;)V
    .locals 2

    .line 1
    const-string v0, "resize"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbsu;-><init>(Lcom/google/android/gms/internal/ads/zzcfg;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "top-right"

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbso;->zza:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzb:Z

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzc:I

    .line 15
    .line 16
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzd:I

    .line 17
    .line 18
    const/4 v1, -0x1

    .line 19
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbso;->zze:I

    .line 20
    .line 21
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzf:I

    .line 22
    .line 23
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzg:I

    .line 24
    .line 25
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzh:I

    .line 26
    .line 27
    new-instance v0, Ljava/lang/Object;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzi:Ljava/lang/Object;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzj:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 35
    .line 36
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfg;->zzi()Landroid/app/Activity;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzk:Landroid/app/Activity;

    .line 41
    .line 42
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzo:Lcom/google/android/gms/internal/ads/zzbsv;

    .line 43
    .line 44
    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzbso;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbso;->zzm(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final zzm(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzlm:Lcom/google/android/gms/internal/ads/zzbcv;

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
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzq:Landroid/widget/RelativeLayout;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzj:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 22
    .line 23
    check-cast v1, Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzp:Landroid/widget/PopupWindow;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzp:Landroid/widget/PopupWindow;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzq:Landroid/widget/RelativeLayout;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzj:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 42
    .line 43
    check-cast v1, Landroid/view/View;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzln:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 49
    .line 50
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzj:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 67
    .line 68
    check-cast v0, Landroid/view/View;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    instance-of v2, v1, Landroid/view/ViewGroup;

    .line 75
    .line 76
    if-eqz v2, :cond_1

    .line 77
    .line 78
    check-cast v1, Landroid/view/ViewGroup;

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzr:Landroid/view/ViewGroup;

    .line 84
    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzm:Landroid/widget/ImageView;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 90
    .line 91
    .line 92
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzlo:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 93
    .line 94
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

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
    if-eqz v0, :cond_2

    .line 109
    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzr:Landroid/view/ViewGroup;

    .line 111
    .line 112
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzj:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 113
    .line 114
    move-object v2, v1

    .line 115
    check-cast v2, Landroid/view/View;

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzl:Lcom/google/android/gms/internal/ads/zzchd;

    .line 121
    .line 122
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzcfg;->zzaj(Lcom/google/android/gms/internal/ads/zzchd;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :catch_0
    move-exception v0

    .line 127
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 128
    .line 129
    const-string v1, "Unable to add webview back to view hierarchy."

    .line 130
    .line 131
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzr:Landroid/view/ViewGroup;

    .line 136
    .line 137
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzj:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 138
    .line 139
    move-object v2, v1

    .line 140
    check-cast v2, Landroid/view/View;

    .line 141
    .line 142
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzl:Lcom/google/android/gms/internal/ads/zzchd;

    .line 146
    .line 147
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzcfg;->zzaj(Lcom/google/android/gms/internal/ads/zzchd;)V

    .line 148
    .line 149
    .line 150
    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 151
    .line 152
    const-string p1, "default"

    .line 153
    .line 154
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbsu;->zzl(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzo:Lcom/google/android/gms/internal/ads/zzbsv;

    .line 158
    .line 159
    if-eqz p1, :cond_4

    .line 160
    .line 161
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbsv;->zzb()V

    .line 162
    .line 163
    .line 164
    :cond_4
    const/4 p1, 0x0

    .line 165
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzp:Landroid/widget/PopupWindow;

    .line 166
    .line 167
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzq:Landroid/widget/RelativeLayout;

    .line 168
    .line 169
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzr:Landroid/view/ViewGroup;

    .line 170
    .line 171
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzn:Landroid/widget/LinearLayout;

    .line 172
    .line 173
    return-void
.end method


# virtual methods
.method public final zzb(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzi:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzp:Landroid/widget/PopupWindow;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzll:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eq v1, v2, :cond_0

    .line 39
    .line 40
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcaf;->zzf:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 41
    .line 42
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbsm;

    .line 43
    .line 44
    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/ads/zzbsm;-><init>(Lcom/google/android/gms/internal/ads/zzbso;Z)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzgdy;->zza(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/e;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbso;->zzm(Z)V

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p1
.end method

.method public final zzc(Ljava/util/Map;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzi:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzk:Landroid/app/Activity;

    if-nez v3, :cond_0

    const-string v0, "Not an activity context. Cannot resize."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsu;->zzh(Ljava/lang/String;)V

    .line 2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    :cond_0
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzj:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 3
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcfg;->zzO()Lcom/google/android/gms/internal/ads/zzchd;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v0, "Webview is not yet available, size is not set."

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsu;->zzh(Ljava/lang/String;)V

    .line 5
    monitor-exit v2

    return-void

    .line 6
    :cond_1
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcfg;->zzO()Lcom/google/android/gms/internal/ads/zzchd;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzchd;->zzi()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v0, "Is interstitial. Cannot resize an interstitial."

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsu;->zzh(Ljava/lang/String;)V

    .line 8
    monitor-exit v2

    return-void

    .line 9
    :cond_2
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcfg;->zzaF()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v0, "Cannot resize an expanded banner."

    .line 10
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsu;->zzh(Ljava/lang/String;)V

    .line 11
    monitor-exit v2

    return-void

    :cond_3
    const-string v5, "width"

    .line 12
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    const-string v5, "width"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzs;->zzP(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzh:I

    :cond_4
    const-string v5, "height"

    .line 14
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    const-string v5, "height"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzs;->zzP(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/google/android/gms/internal/ads/zzbso;->zze:I

    :cond_5
    const-string v5, "offsetX"

    .line 16
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    const-string v5, "offsetX"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzs;->zzP(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzf:I

    :cond_6
    const-string v5, "offsetY"

    .line 18
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    const-string v5, "offsetY"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzs;->zzP(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzg:I

    :cond_7
    const-string v5, "allowOffscreen"

    .line 20
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "allowOffscreen"

    .line 21
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzb:Z

    :cond_8
    const-string v5, "customClosePosition"

    .line 22
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbso;->zza:Ljava/lang/String;

    :cond_9
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzh:I

    if-ltz v0, :cond_2b

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzbso;->zze:I

    if-ltz v0, :cond_2b

    .line 24
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 25
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_a

    goto/16 :goto_f

    .line 26
    :cond_a
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzs;->zzW(Landroid/app/Activity;)[I

    move-result-object v5

    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzs;->zzS(Landroid/app/Activity;)[I

    move-result-object v6

    const/4 v7, 0x0

    aget v8, v5, v7

    const/4 v9, 0x1

    aget v5, v5, v9

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzh:I

    const/4 v12, 0x2

    const/4 v13, 0x3

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/16 v11, 0x32

    const/16 v16, 0x0

    if-lt v10, v11, :cond_1c

    if-le v10, v8, :cond_b

    goto/16 :goto_9

    .line 28
    :cond_b
    iget v7, v1, Lcom/google/android/gms/internal/ads/zzbso;->zze:I

    if-lt v7, v11, :cond_1b

    if-le v7, v5, :cond_c

    goto/16 :goto_8

    :cond_c
    if-ne v7, v5, :cond_d

    if-ne v10, v8, :cond_d

    .line 29
    const-string v5, "Cannot resize to a full-screen ad."

    .line 30
    sget v6, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 31
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_d
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzb:Z

    if-eqz v5, :cond_16

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbso;->zza:Ljava/lang/String;

    .line 32
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v17, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v11, "top-center"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move v5, v9

    goto :goto_1

    :sswitch_1
    const-string v11, "bottom-center"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move v5, v15

    goto :goto_1

    :sswitch_2
    const-string v11, "bottom-right"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move v5, v14

    goto :goto_1

    :sswitch_3
    const-string v11, "bottom-left"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move v5, v13

    goto :goto_1

    :sswitch_4
    const-string v11, "top-left"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_5
    const-string v11, "center"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move v5, v12

    goto :goto_1

    :cond_e
    :goto_0
    const/4 v5, -0x1

    :goto_1
    if-eqz v5, :cond_14

    if-eq v5, v9, :cond_13

    if-eq v5, v12, :cond_12

    if-eq v5, v13, :cond_11

    if-eq v5, v15, :cond_10

    if-eq v5, v14, :cond_f

    :try_start_1
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzc:I

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzf:I

    add-int/2addr v5, v7

    add-int/2addr v5, v10

    add-int/lit8 v5, v5, -0x32

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzd:I

    :goto_2
    iget v10, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzg:I

    add-int/2addr v7, v10

    goto :goto_4

    :cond_f
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzc:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzf:I

    add-int/2addr v5, v11

    add-int/2addr v5, v10

    add-int/lit8 v5, v5, -0x32

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzd:I

    :goto_3
    iget v11, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzg:I

    add-int/2addr v10, v11

    add-int/2addr v10, v7

    add-int/lit8 v7, v10, -0x32

    goto :goto_4

    :cond_10
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzc:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzf:I

    shr-int/2addr v10, v9

    add-int/2addr v5, v11

    add-int/2addr v5, v10

    add-int/lit8 v5, v5, -0x19

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzd:I

    goto :goto_3

    :cond_11
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzc:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzf:I

    add-int/2addr v5, v10

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzd:I

    goto :goto_3

    :cond_12
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzc:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzf:I

    shr-int/2addr v10, v9

    add-int/2addr v5, v11

    add-int/2addr v5, v10

    add-int/lit8 v5, v5, -0x19

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzd:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzg:I

    add-int/2addr v10, v11

    shr-int/2addr v7, v9

    add-int/2addr v10, v7

    add-int/lit8 v7, v10, -0x19

    goto :goto_4

    :cond_13
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzc:I

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzf:I

    shr-int/2addr v10, v9

    add-int/2addr v5, v7

    add-int/2addr v5, v10

    add-int/lit8 v5, v5, -0x19

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzd:I

    goto :goto_2

    :cond_14
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzc:I

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzf:I

    add-int/2addr v5, v7

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzd:I

    goto :goto_2

    :goto_4
    if-ltz v5, :cond_1d

    const/16 v10, 0x32

    add-int/2addr v5, v10

    if-gt v5, v8, :cond_1d

    const/4 v5, 0x0

    aget v8, v6, v5

    if-lt v7, v8, :cond_1d

    add-int/2addr v7, v10

    aget v5, v6, v9

    if-le v7, v5, :cond_15

    goto :goto_a

    :cond_15
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzc:I

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzf:I

    add-int/2addr v5, v6

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzd:I

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzg:I

    add-int/2addr v6, v7

    filled-new-array {v5, v6}, [I

    move-result-object v16

    goto :goto_a

    .line 33
    :cond_16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzs;->zzW(Landroid/app/Activity;)[I

    move-result-object v5

    .line 34
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzs;->zzS(Landroid/app/Activity;)[I

    move-result-object v6

    const/4 v7, 0x0

    aget v5, v5, v7

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzc:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzf:I

    add-int/2addr v7, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzd:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzg:I

    add-int/2addr v8, v10

    if-gez v7, :cond_17

    const/4 v5, 0x0

    :goto_5
    const/4 v7, 0x0

    goto :goto_6

    :cond_17
    iget v10, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzh:I

    add-int v11, v7, v10

    if-le v11, v5, :cond_18

    sub-int/2addr v5, v10

    goto :goto_5

    :cond_18
    move v5, v7

    goto :goto_5

    :goto_6
    aget v10, v6, v7

    if-ge v8, v10, :cond_19

    move v8, v10

    goto :goto_7

    :cond_19
    iget v7, v1, Lcom/google/android/gms/internal/ads/zzbso;->zze:I

    add-int v10, v8, v7

    aget v6, v6, v9

    if-le v10, v6, :cond_1a

    sub-int v8, v6, v7

    :cond_1a
    :goto_7
    filled-new-array {v5, v8}, [I

    move-result-object v16

    goto :goto_a

    .line 35
    :cond_1b
    :goto_8
    const-string v5, "Height is too small or too large."

    .line 36
    sget v6, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 37
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    goto :goto_a

    .line 38
    :cond_1c
    :goto_9
    const-string v5, "Width is too small or too large."

    .line 39
    sget v6, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 40
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    :cond_1d
    :goto_a
    if-nez v16, :cond_1e

    const-string v0, "Resize location out of screen or close button is not visible."

    .line 41
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsu;->zzh(Ljava/lang/String;)V

    .line 42
    monitor-exit v2

    return-void

    .line 43
    :cond_1e
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzh:I

    invoke-static {v3, v5}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzC(Landroid/content/Context;I)I

    move-result v5

    .line 44
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzbso;->zze:I

    invoke-static {v3, v6}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzC(Landroid/content/Context;I)I

    move-result v6

    move-object v7, v4

    check-cast v7, Landroid/view/View;

    .line 45
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    .line 46
    instance-of v8, v7, Landroid/view/ViewGroup;

    if-eqz v8, :cond_29

    .line 47
    check-cast v7, Landroid/view/ViewGroup;

    move-object v8, v4

    check-cast v8, Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzp:Landroid/widget/PopupWindow;

    if-nez v8, :cond_1f

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzr:Landroid/view/ViewGroup;

    .line 48
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    move-object v7, v4

    check-cast v7, Landroid/view/View;

    .line 49
    invoke-virtual {v7, v9}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    move-object v7, v4

    check-cast v7, Landroid/view/View;

    .line 50
    invoke-virtual {v7}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v8, v4

    check-cast v8, Landroid/view/View;

    const/4 v10, 0x0

    .line 51
    invoke-virtual {v8, v10}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    new-instance v8, Landroid/widget/ImageView;

    .line 52
    invoke-direct {v8, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzm:Landroid/widget/ImageView;

    .line 53
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 54
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcfg;->zzO()Lcom/google/android/gms/internal/ads/zzchd;

    move-result-object v7

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzl:Lcom/google/android/gms/internal/ads/zzchd;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzr:Landroid/view/ViewGroup;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzm:Landroid/widget/ImageView;

    .line 55
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_b

    .line 56
    :cond_1f
    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    .line 57
    :goto_b
    new-instance v7, Landroid/widget/RelativeLayout;

    .line 58
    invoke-direct {v7, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzq:Landroid/widget/RelativeLayout;

    const/4 v8, 0x0

    .line 59
    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzq:Landroid/widget/RelativeLayout;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    .line 60
    invoke-direct {v8, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzq:Landroid/widget/RelativeLayout;

    new-instance v8, Landroid/widget/PopupWindow;

    const/4 v10, 0x0

    .line 62
    invoke-direct {v8, v7, v5, v6, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzp:Landroid/widget/PopupWindow;

    .line 63
    invoke-virtual {v8, v10}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzp:Landroid/widget/PopupWindow;

    .line 64
    invoke-virtual {v7, v9}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzp:Landroid/widget/PopupWindow;

    iget-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzb:Z

    xor-int/2addr v8, v9

    .line 65
    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzq:Landroid/widget/RelativeLayout;

    check-cast v4, Landroid/view/View;

    const/4 v8, -0x1

    .line 66
    invoke-virtual {v7, v4, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    new-instance v4, Landroid/widget/LinearLayout;

    .line 67
    invoke-direct {v4, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzn:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 68
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    const/16 v7, 0x32

    invoke-static {v3, v7}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzC(Landroid/content/Context;I)I

    move-result v10

    .line 69
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    invoke-static {v3, v7}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzC(Landroid/content/Context;I)I

    move-result v7

    invoke-direct {v4, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbso;->zza:Ljava/lang/String;

    .line 70
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sparse-switch v10, :sswitch_data_1

    goto :goto_c

    .line 71
    :sswitch_6
    const-string v10, "top-center"

    .line 72
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    move v11, v9

    goto :goto_d

    :sswitch_7
    const-string v10, "bottom-center"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    move v11, v15

    goto :goto_d

    :sswitch_8
    const-string v10, "bottom-right"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    move v11, v14

    goto :goto_d

    :sswitch_9
    const-string v10, "bottom-left"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    move v11, v13

    goto :goto_d

    :sswitch_a
    const-string v10, "top-left"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    const/4 v11, 0x0

    goto :goto_d

    :sswitch_b
    const-string v10, "center"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    move v11, v12

    goto :goto_d

    :cond_20
    :goto_c
    move v11, v8

    :goto_d
    const/16 v7, 0x9

    const/16 v8, 0xa

    if-eqz v11, :cond_26

    const/16 v10, 0xe

    if-eq v11, v9, :cond_25

    if-eq v11, v12, :cond_24

    const/16 v12, 0xc

    if-eq v11, v13, :cond_23

    if-eq v11, v15, :cond_22

    const/16 v7, 0xb

    if-eq v11, v14, :cond_21

    .line 73
    :try_start_2
    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 74
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_e

    .line 75
    :cond_21
    invoke-virtual {v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 76
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_e

    .line 77
    :cond_22
    invoke-virtual {v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 78
    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_e

    .line 79
    :cond_23
    invoke-virtual {v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 80
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_e

    :cond_24
    const/16 v7, 0xd

    .line 81
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_e

    .line 82
    :cond_25
    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 83
    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_e

    .line 84
    :cond_26
    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 85
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 86
    :goto_e
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzn:Landroid/widget/LinearLayout;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzbsn;

    .line 87
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzbsn;-><init>(Lcom/google/android/gms/internal/ads/zzbso;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzn:Landroid/widget/LinearLayout;

    const-string v8, "Close button"

    .line 88
    invoke-virtual {v7, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzq:Landroid/widget/RelativeLayout;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzn:Landroid/widget/LinearLayout;

    .line 89
    invoke-virtual {v7, v8, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzp:Landroid/widget/PopupWindow;

    .line 90
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 91
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    const/4 v7, 0x0

    aget v8, v16, v7

    invoke-static {v3, v8}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzC(Landroid/content/Context;I)I

    move-result v8

    .line 92
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    aget v10, v16, v9

    invoke-static {v3, v10}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzC(Landroid/content/Context;I)I

    move-result v3

    .line 93
    invoke-virtual {v4, v0, v7, v8, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    aget v0, v16, v7

    aget v3, v16, v9

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzo:Lcom/google/android/gms/internal/ads/zzbsv;

    if-eqz v4, :cond_27

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzh:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbso;->zze:I

    .line 94
    invoke-interface {v4, v0, v3, v7, v8}, Lcom/google/android/gms/internal/ads/zzbsv;->zza(IIII)V

    :cond_27
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzj:Lcom/google/android/gms/internal/ads/zzcfg;

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzchd;->zzb(II)Lcom/google/android/gms/internal/ads/zzchd;

    move-result-object v3

    .line 95
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzcfg;->zzaj(Lcom/google/android/gms/internal/ads/zzchd;)V

    const/4 v0, 0x0

    aget v3, v16, v0

    aget v4, v16, v9

    .line 96
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzk:Landroid/app/Activity;

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzs;->zzS(Landroid/app/Activity;)[I

    move-result-object v5

    aget v0, v5, v0

    sub-int/2addr v4, v0

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzh:I

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbso;->zze:I

    .line 97
    invoke-virtual {v1, v3, v4, v0, v5}, Lcom/google/android/gms/internal/ads/zzbsu;->zzk(IIII)V

    const-string v0, "resized"

    .line 98
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsu;->zzl(Ljava/lang/String;)V

    .line 99
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot show popup window: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsu;->zzh(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzq:Landroid/widget/RelativeLayout;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzj:Lcom/google/android/gms/internal/ads/zzcfg;

    move-object v4, v3

    check-cast v4, Landroid/view/View;

    .line 101
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzr:Landroid/view/ViewGroup;

    if-eqz v0, :cond_28

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzm:Landroid/widget/ImageView;

    .line 102
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzr:Landroid/view/ViewGroup;

    move-object v4, v3

    check-cast v4, Landroid/view/View;

    .line 103
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbso;->zzl:Lcom/google/android/gms/internal/ads/zzchd;

    .line 104
    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/ads/zzcfg;->zzaj(Lcom/google/android/gms/internal/ads/zzchd;)V

    .line 105
    :cond_28
    monitor-exit v2

    return-void

    .line 106
    :cond_29
    const-string v0, "Webview is detached, probably in the middle of a resize or expand."

    .line 107
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsu;->zzh(Ljava/lang/String;)V

    .line 108
    monitor-exit v2

    return-void

    .line 109
    :cond_2a
    :goto_f
    const-string v0, "Activity context is not ready, cannot get window or decor view."

    .line 110
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsu;->zzh(Ljava/lang/String;)V

    .line 111
    monitor-exit v2

    return-void

    .line 112
    :cond_2b
    const-string v0, "Invalid width and height options. Cannot resize."

    .line 113
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsu;->zzh(Ljava/lang/String;)V

    .line 114
    monitor-exit v2

    return-void

    .line 115
    :goto_10
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x3c587281 -> :sswitch_4
        -0x27103597 -> :sswitch_3
        0x455fe3fa -> :sswitch_2
        0x4ccee637 -> :sswitch_1
        0x68a23bcd -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x514d33ab -> :sswitch_b
        -0x3c587281 -> :sswitch_a
        -0x27103597 -> :sswitch_9
        0x455fe3fa -> :sswitch_8
        0x4ccee637 -> :sswitch_7
        0x68a23bcd -> :sswitch_6
    .end sparse-switch
.end method

.method public final zzd(IIZ)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzi:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p3

    .line 4
    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzc:I

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzd:I

    .line 7
    .line 8
    monitor-exit p3

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p1
.end method

.method public final zze(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzc:I

    .line 2
    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzd:I

    .line 4
    .line 5
    return-void
.end method

.method public final zzf()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzi:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzp:Landroid/widget/PopupWindow;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    monitor-exit v0

    .line 12
    return v1

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v1
.end method
