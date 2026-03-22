.class public final Lcom/google/android/gms/internal/ads/zzaze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final zzc:J


# instance fields
.field zza:Landroid/content/BroadcastReceiver;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final zzb:Ljava/lang/ref/WeakReference;

.field private final zzd:Landroid/content/Context;

.field private zze:Landroid/app/Application;

.field private final zzf:Landroid/view/WindowManager;

.field private final zzg:Landroid/os/PowerManager;

.field private final zzh:Landroid/app/KeyguardManager;

.field private zzi:Ljava/lang/ref/WeakReference;

.field private zzj:Lcom/google/android/gms/internal/ads/zzazq;

.field private final zzk:Lcom/google/android/gms/ads/internal/util/zzbx;

.field private zzl:Z

.field private zzm:I

.field private final zzn:Ljava/util/HashSet;

.field private final zzo:Landroid/util/DisplayMetrics;

.field private final zzp:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzbz:Lcom/google/android/gms/internal/ads/zzbcv;

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
    check-cast v0, Ljava/lang/Long;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, Lcom/google/android/gms/internal/ads/zzaze;->zzc:J

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzbx;

    .line 5
    .line 6
    sget-wide v1, Lcom/google/android/gms/internal/ads/zzaze;->zzc:J

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzbx;-><init>(J)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzk:Lcom/google/android/gms/ads/internal/util/zzbx;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzl:Z

    .line 15
    .line 16
    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzm:I

    .line 18
    .line 19
    new-instance v0, Ljava/util/HashSet;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzn:Ljava/util/HashSet;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzd:Landroid/content/Context;

    .line 31
    .line 32
    const-string v1, "window"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroid/view/WindowManager;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzf:Landroid/view/WindowManager;

    .line 41
    .line 42
    const-string v2, "power"

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Landroid/os/PowerManager;

    .line 49
    .line 50
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzg:Landroid/os/PowerManager;

    .line 51
    .line 52
    const-string v2, "keyguard"

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Landroid/app/KeyguardManager;

    .line 59
    .line 60
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzh:Landroid/app/KeyguardManager;

    .line 61
    .line 62
    instance-of v2, v0, Landroid/app/Application;

    .line 63
    .line 64
    if-eqz v2, :cond_0

    .line 65
    .line 66
    move-object v2, v0

    .line 67
    check-cast v2, Landroid/app/Application;

    .line 68
    .line 69
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzaze;->zze:Landroid/app/Application;

    .line 70
    .line 71
    new-instance v2, Lcom/google/android/gms/internal/ads/zzazq;

    .line 72
    .line 73
    check-cast v0, Landroid/app/Application;

    .line 74
    .line 75
    invoke-direct {v2, v0, p0}, Lcom/google/android/gms/internal/ads/zzazq;-><init>(Landroid/app/Application;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 76
    .line 77
    .line 78
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzj:Lcom/google/android/gms/internal/ads/zzazq;

    .line 79
    .line 80
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzo:Landroid/util/DisplayMetrics;

    .line 89
    .line 90
    new-instance p1, Landroid/graphics/Rect;

    .line 91
    .line 92
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzp:Landroid/graphics/Rect;

    .line 96
    .line 97
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 106
    .line 107
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 116
    .line 117
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzb:Ljava/lang/ref/WeakReference;

    .line 118
    .line 119
    if-eqz p1, :cond_1

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    check-cast p1, Landroid/view/View;

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_1
    const/4 p1, 0x0

    .line 129
    :goto_0
    if-eqz p1, :cond_2

    .line 130
    .line 131
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 132
    .line 133
    .line 134
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaze;->zzm(Landroid/view/View;)V

    .line 135
    .line 136
    .line 137
    :cond_2
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 138
    .line 139
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzb:Ljava/lang/ref/WeakReference;

    .line 143
    .line 144
    if-eqz p2, :cond_4

    .line 145
    .line 146
    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_3

    .line 151
    .line 152
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzaze;->zzl(Landroid/view/View;)V

    .line 153
    .line 154
    .line 155
    :cond_3
    invoke-virtual {p2, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 156
    .line 157
    .line 158
    :cond_4
    return-void
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzaze;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaze;->zzj(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzaze;I)V
    .locals 0

    .line 1
    const/4 p1, 0x3

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaze;->zzj(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private final zzh(I)I
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzo:Landroid/util/DisplayMetrics;

    .line 3
    .line 4
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 5
    .line 6
    div-float/2addr p1, v0

    .line 7
    float-to-int p1, p1

    .line 8
    return p1
.end method

.method private final zzi(Landroid/app/Activity;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzb:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/view/View;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-ne v0, p1, :cond_1

    .line 35
    .line 36
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzm:I

    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method private final zzj(I)V
    .locals 34

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaze;->zzn:Ljava/util/HashSet;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_15

    .line 14
    .line 15
    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaze;->zzb:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    if-eqz v0, :cond_18

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    move-object v3, v0

    .line 24
    check-cast v3, Landroid/view/View;

    .line 25
    .line 26
    new-instance v4, Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v5, Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v6, Landroid/graphics/Rect;

    .line 37
    .line 38
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v7, Landroid/graphics/Rect;

    .line 42
    .line 43
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x2

    .line 47
    new-array v8, v0, [I

    .line 48
    .line 49
    new-array v9, v0, [I

    .line 50
    .line 51
    const/4 v11, 0x1

    .line 52
    const/4 v12, 0x0

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    invoke-virtual {v3, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 56
    .line 57
    .line 58
    move-result v13

    .line 59
    invoke-virtual {v3, v6}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 60
    .line 61
    .line 62
    move-result v14

    .line 63
    invoke-virtual {v3, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 64
    .line 65
    .line 66
    :try_start_0
    invoke-virtual {v3, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v9}, Landroid/view/View;->getLocationInWindow([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    sget v15, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 75
    .line 76
    const-string v15, "Failure getting view location."

    .line 77
    .line 78
    invoke-static {v15, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzfr:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 82
    .line 83
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 84
    .line 85
    .line 86
    move-result-object v15

    .line 87
    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Ljava/lang/Boolean;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_1

    .line 98
    .line 99
    aget v0, v9, v12

    .line 100
    .line 101
    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 102
    .line 103
    aget v0, v9, v11

    .line 104
    .line 105
    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_1
    aget v0, v8, v12

    .line 109
    .line 110
    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 111
    .line 112
    aget v0, v8, v11

    .line 113
    .line 114
    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 115
    .line 116
    :goto_1
    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 117
    .line 118
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    add-int/2addr v0, v8

    .line 123
    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 124
    .line 125
    iget v0, v4, Landroid/graphics/Rect;->top:I

    .line 126
    .line 127
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    add-int/2addr v0, v8

    .line 132
    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 133
    .line 134
    move-object v8, v3

    .line 135
    goto :goto_2

    .line 136
    :cond_2
    move v13, v12

    .line 137
    move v14, v13

    .line 138
    const/4 v8, 0x0

    .line 139
    :goto_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzbC:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 140
    .line 141
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Ljava/lang/Boolean;

    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_5

    .line 156
    .line 157
    if-eqz v8, :cond_5

    .line 158
    .line 159
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 165
    .line 166
    .line 167
    move-result-object v9

    .line 168
    :goto_3
    instance-of v15, v9, Landroid/view/View;

    .line 169
    .line 170
    if-eqz v15, :cond_4

    .line 171
    .line 172
    move-object v15, v9

    .line 173
    check-cast v15, Landroid/view/View;

    .line 174
    .line 175
    new-instance v12, Landroid/graphics/Rect;

    .line 176
    .line 177
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v15}, Landroid/view/View;->isScrollContainer()Z

    .line 181
    .line 182
    .line 183
    move-result v16

    .line 184
    if-eqz v16, :cond_3

    .line 185
    .line 186
    invoke-virtual {v15, v12}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 187
    .line 188
    .line 189
    move-result v15

    .line 190
    if-eqz v15, :cond_3

    .line 191
    .line 192
    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/ads/zzaze;->zza(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 193
    .line 194
    .line 195
    move-result-object v12

    .line 196
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :catch_1
    move-exception v0

    .line 201
    goto :goto_6

    .line 202
    :cond_3
    :goto_4
    invoke-interface {v9}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 203
    .line 204
    .line 205
    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    const/4 v12, 0x0

    .line 207
    goto :goto_3

    .line 208
    :cond_4
    :goto_5
    move-object/from16 v33, v0

    .line 209
    .line 210
    goto :goto_7

    .line 211
    :goto_6
    const-string v9, "PositionWatcher.getParentScrollViewRects"

    .line 212
    .line 213
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 214
    .line 215
    .line 216
    move-result-object v12

    .line 217
    invoke-virtual {v12, v0, v9}, Lcom/google/android/gms/internal/ads/zzbzs;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    goto :goto_5

    .line 225
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    goto :goto_5

    .line 230
    :goto_7
    if-eqz v8, :cond_6

    .line 231
    .line 232
    invoke-virtual {v8}, Landroid/view/View;->getWindowVisibility()I

    .line 233
    .line 234
    .line 235
    move-result v9

    .line 236
    goto :goto_8

    .line 237
    :cond_6
    const/16 v9, 0x8

    .line 238
    .line 239
    :goto_8
    iget v12, v1, Lcom/google/android/gms/internal/ads/zzaze;->zzm:I

    .line 240
    .line 241
    const/4 v15, -0x1

    .line 242
    if-eq v12, v15, :cond_7

    .line 243
    .line 244
    move v9, v12

    .line 245
    :cond_7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 246
    .line 247
    .line 248
    invoke-static {v8}, Lcom/google/android/gms/ads/internal/util/zzs;->zzx(Landroid/view/View;)J

    .line 249
    .line 250
    .line 251
    move-result-wide v28

    .line 252
    sget-object v12, Lcom/google/android/gms/internal/ads/zzbde;->zzkY:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 253
    .line 254
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 255
    .line 256
    .line 257
    move-result-object v15

    .line 258
    invoke-virtual {v15, v12}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v12

    .line 262
    check-cast v12, Ljava/lang/Boolean;

    .line 263
    .line 264
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 265
    .line 266
    .line 267
    move-result v12

    .line 268
    if-eqz v12, :cond_c

    .line 269
    .line 270
    if-eqz v3, :cond_9

    .line 271
    .line 272
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzaze;->zzg:Landroid/os/PowerManager;

    .line 273
    .line 274
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzaze;->zzh:Landroid/app/KeyguardManager;

    .line 275
    .line 276
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 277
    .line 278
    .line 279
    invoke-static {v8, v3, v12}, Lcom/google/android/gms/ads/internal/util/zzs;->zzT(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    if-eqz v3, :cond_9

    .line 284
    .line 285
    if-eqz v13, :cond_b

    .line 286
    .line 287
    if-eqz v14, :cond_a

    .line 288
    .line 289
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbde;->zzlb:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 290
    .line 291
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 292
    .line 293
    .line 294
    move-result-object v12

    .line 295
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    check-cast v3, Ljava/lang/Integer;

    .line 300
    .line 301
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 302
    .line 303
    .line 304
    move-result v3

    .line 305
    int-to-long v12, v3

    .line 306
    cmp-long v3, v28, v12

    .line 307
    .line 308
    if-ltz v3, :cond_8

    .line 309
    .line 310
    if-nez v9, :cond_8

    .line 311
    .line 312
    :goto_9
    move v3, v11

    .line 313
    move v13, v3

    .line 314
    move v14, v13

    .line 315
    const/4 v9, 0x0

    .line 316
    goto :goto_a

    .line 317
    :cond_8
    move v13, v11

    .line 318
    move v14, v13

    .line 319
    :cond_9
    const/4 v3, 0x0

    .line 320
    goto :goto_a

    .line 321
    :cond_a
    move v13, v11

    .line 322
    const/4 v3, 0x0

    .line 323
    const/4 v14, 0x0

    .line 324
    goto :goto_a

    .line 325
    :cond_b
    const/4 v3, 0x0

    .line 326
    const/4 v13, 0x0

    .line 327
    goto :goto_a

    .line 328
    :cond_c
    if-eqz v3, :cond_9

    .line 329
    .line 330
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzaze;->zzg:Landroid/os/PowerManager;

    .line 331
    .line 332
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzaze;->zzh:Landroid/app/KeyguardManager;

    .line 333
    .line 334
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 335
    .line 336
    .line 337
    invoke-static {v8, v3, v12}, Lcom/google/android/gms/ads/internal/util/zzs;->zzT(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    .line 338
    .line 339
    .line 340
    move-result v3

    .line 341
    if-eqz v3, :cond_9

    .line 342
    .line 343
    if-eqz v13, :cond_b

    .line 344
    .line 345
    if-eqz v14, :cond_a

    .line 346
    .line 347
    if-nez v9, :cond_8

    .line 348
    .line 349
    goto :goto_9

    .line 350
    :goto_a
    sget-object v12, Lcom/google/android/gms/internal/ads/zzbde;->zzld:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 351
    .line 352
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 353
    .line 354
    .line 355
    move-result-object v15

    .line 356
    invoke-virtual {v15, v12}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v12

    .line 360
    check-cast v12, Ljava/lang/Boolean;

    .line 361
    .line 362
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 363
    .line 364
    .line 365
    move-result v12

    .line 366
    if-eqz v12, :cond_12

    .line 367
    .line 368
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzaze;->zzg:Landroid/os/PowerManager;

    .line 369
    .line 370
    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzaze;->zzh:Landroid/app/KeyguardManager;

    .line 371
    .line 372
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 373
    .line 374
    .line 375
    invoke-static {v8, v12, v15}, Lcom/google/android/gms/ads/internal/util/zzs;->zzT(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    .line 376
    .line 377
    .line 378
    move-result v12

    .line 379
    if-eq v11, v12, :cond_d

    .line 380
    .line 381
    const/4 v12, 0x0

    .line 382
    goto :goto_b

    .line 383
    :cond_d
    const/16 v12, 0x40

    .line 384
    .line 385
    :goto_b
    if-eq v11, v13, :cond_e

    .line 386
    .line 387
    const/4 v15, 0x0

    .line 388
    goto :goto_c

    .line 389
    :cond_e
    const/16 v15, 0x8

    .line 390
    .line 391
    :goto_c
    if-eq v11, v14, :cond_f

    .line 392
    .line 393
    const/16 v16, 0x0

    .line 394
    .line 395
    goto :goto_d

    .line 396
    :cond_f
    const/16 v16, 0x10

    .line 397
    .line 398
    :goto_d
    if-nez v9, :cond_10

    .line 399
    .line 400
    const/16 v9, 0x80

    .line 401
    .line 402
    goto :goto_e

    .line 403
    :cond_10
    const/4 v9, 0x0

    .line 404
    :goto_e
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzlb:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 405
    .line 406
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 407
    .line 408
    .line 409
    move-result-object v11

    .line 410
    invoke-virtual {v11, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    check-cast v0, Ljava/lang/Integer;

    .line 415
    .line 416
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 417
    .line 418
    .line 419
    move-result v0

    .line 420
    int-to-long v10, v0

    .line 421
    cmp-long v0, v28, v10

    .line 422
    .line 423
    if-ltz v0, :cond_11

    .line 424
    .line 425
    const/16 v0, 0x20

    .line 426
    .line 427
    goto :goto_f

    .line 428
    :cond_11
    const/4 v0, 0x0

    .line 429
    :goto_f
    or-int v10, v12, v15

    .line 430
    .line 431
    or-int v10, v10, v16

    .line 432
    .line 433
    or-int/2addr v9, v10

    .line 434
    or-int/2addr v0, v9

    .line 435
    or-int/2addr v0, v3

    .line 436
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 437
    .line 438
    .line 439
    const/4 v9, 0x0

    .line 440
    invoke-static {v8, v0, v9}, Lcom/google/android/gms/ads/internal/util/zzs;->zzK(Landroid/view/View;ILandroid/view/MotionEvent;)V

    .line 441
    .line 442
    .line 443
    const/4 v9, 0x1

    .line 444
    goto :goto_10

    .line 445
    :cond_12
    move v9, v11

    .line 446
    :goto_10
    if-ne v2, v9, :cond_13

    .line 447
    .line 448
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaze;->zzk:Lcom/google/android/gms/ads/internal/util/zzbx;

    .line 449
    .line 450
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbx;->zzb()Z

    .line 451
    .line 452
    .line 453
    move-result v0

    .line 454
    if-nez v0, :cond_13

    .line 455
    .line 456
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzaze;->zzl:Z

    .line 457
    .line 458
    if-eq v3, v0, :cond_18

    .line 459
    .line 460
    :cond_13
    if-nez v3, :cond_14

    .line 461
    .line 462
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzaze;->zzl:Z

    .line 463
    .line 464
    if-nez v0, :cond_14

    .line 465
    .line 466
    const/4 v9, 0x1

    .line 467
    if-eq v2, v9, :cond_18

    .line 468
    .line 469
    goto :goto_11

    .line 470
    :cond_14
    const/4 v9, 0x1

    .line 471
    :goto_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzazc;

    .line 472
    .line 473
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 478
    .line 479
    .line 480
    move-result-wide v10

    .line 481
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaze;->zzg:Landroid/os/PowerManager;

    .line 482
    .line 483
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    .line 484
    .line 485
    .line 486
    move-result v19

    .line 487
    if-eqz v8, :cond_15

    .line 488
    .line 489
    invoke-virtual {v8}, Landroid/view/View;->isAttachedToWindow()Z

    .line 490
    .line 491
    .line 492
    move-result v2

    .line 493
    if-eqz v2, :cond_15

    .line 494
    .line 495
    move/from16 v20, v9

    .line 496
    .line 497
    goto :goto_12

    .line 498
    :cond_15
    const/16 v20, 0x0

    .line 499
    .line 500
    :goto_12
    if-eqz v8, :cond_16

    .line 501
    .line 502
    invoke-virtual {v8}, Landroid/view/View;->getWindowVisibility()I

    .line 503
    .line 504
    .line 505
    move-result v2

    .line 506
    move/from16 v21, v2

    .line 507
    .line 508
    goto :goto_13

    .line 509
    :cond_16
    const/16 v21, 0x8

    .line 510
    .line 511
    :goto_13
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaze;->zzp:Landroid/graphics/Rect;

    .line 512
    .line 513
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaze;->zza(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 514
    .line 515
    .line 516
    move-result-object v22

    .line 517
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzaze;->zza(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 518
    .line 519
    .line 520
    move-result-object v23

    .line 521
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzaze;->zza(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 522
    .line 523
    .line 524
    move-result-object v24

    .line 525
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzaze;->zza(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 526
    .line 527
    .line 528
    move-result-object v26

    .line 529
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzaze;->zza(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 530
    .line 531
    .line 532
    move-result-object v30

    .line 533
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaze;->zzo:Landroid/util/DisplayMetrics;

    .line 534
    .line 535
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 536
    .line 537
    move/from16 v31, v2

    .line 538
    .line 539
    move-object/from16 v16, v0

    .line 540
    .line 541
    move-wide/from16 v17, v10

    .line 542
    .line 543
    move/from16 v25, v13

    .line 544
    .line 545
    move/from16 v27, v14

    .line 546
    .line 547
    move/from16 v32, v3

    .line 548
    .line 549
    invoke-direct/range {v16 .. v33}, Lcom/google/android/gms/internal/ads/zzazc;-><init>(JZZILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/graphics/Rect;ZJLandroid/graphics/Rect;FZLjava/util/List;)V

    .line 550
    .line 551
    .line 552
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaze;->zzn:Ljava/util/HashSet;

    .line 553
    .line 554
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 555
    .line 556
    .line 557
    move-result-object v2

    .line 558
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 559
    .line 560
    .line 561
    move-result v4

    .line 562
    if-eqz v4, :cond_17

    .line 563
    .line 564
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v4

    .line 568
    check-cast v4, Lcom/google/android/gms/internal/ads/zzazd;

    .line 569
    .line 570
    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/ads/zzazd;->zzdr(Lcom/google/android/gms/internal/ads/zzazc;)V

    .line 571
    .line 572
    .line 573
    goto :goto_14

    .line 574
    :cond_17
    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzaze;->zzl:Z

    .line 575
    .line 576
    :cond_18
    :goto_15
    return-void
.end method

.method private final zzk()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfrw;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaza;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzaza;-><init>(Lcom/google/android/gms/internal/ads/zzaze;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final zzl(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzi:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaze;->zza:Landroid/content/BroadcastReceiver;

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    new-instance p1, Landroid/content/IntentFilter;

    .line 29
    .line 30
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v0, "android.intent.action.USER_PRESENT"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Lcom/google/android/gms/internal/ads/zzazb;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzazb;-><init>(Lcom/google/android/gms/internal/ads/zzaze;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaze;->zza:Landroid/content/BroadcastReceiver;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzd:Landroid/content/Context;

    .line 56
    .line 57
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzx()Lcom/google/android/gms/ads/internal/util/zzci;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaze;->zza:Landroid/content/BroadcastReceiver;

    .line 62
    .line 63
    invoke-virtual {v1, v0, v2, p1}, Lcom/google/android/gms/ads/internal/util/zzci;->zzc(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaze;->zze:Landroid/app/Application;

    .line 67
    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzj:Lcom/google/android/gms/internal/ads/zzazq;

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :catch_0
    move-exception p1

    .line 77
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 78
    .line 79
    const-string v0, "Error registering activity lifecycle callbacks."

    .line 80
    .line 81
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    return-void
.end method

.method private final zzm(Landroid/view/View;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzi:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    if-eqz v1, :cond_1

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/view/ViewTreeObserver;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzi:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :goto_1
    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 33
    .line 34
    const-string v2, "Error while unregistering listeners from the last ViewTreeObserver."

    .line 35
    .line 36
    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_2
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    .line 54
    .line 55
    goto :goto_3

    .line 56
    :catch_1
    move-exception p1

    .line 57
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 58
    .line 59
    const-string v1, "Error while unregistering listeners from the ViewTreeObserver."

    .line 60
    .line 61
    invoke-static {v1, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaze;->zza:Landroid/content/BroadcastReceiver;

    .line 65
    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzx()Lcom/google/android/gms/ads/internal/util/zzci;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzd:Landroid/content/Context;

    .line 73
    .line 74
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaze;->zza:Landroid/content/BroadcastReceiver;

    .line 75
    .line 76
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzci;->zzd(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 77
    .line 78
    .line 79
    goto :goto_6

    .line 80
    :catch_2
    move-exception p1

    .line 81
    goto :goto_4

    .line 82
    :catch_3
    move-exception p1

    .line 83
    goto :goto_5

    .line 84
    :goto_4
    const-string v1, "ActiveViewUnit.stopScreenStatusMonitoring"

    .line 85
    .line 86
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzbzs;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_6

    .line 94
    :goto_5
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 95
    .line 96
    const-string v1, "Failed trying to unregister the receiver"

    .line 97
    .line 98
    invoke-static {v1, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    :goto_6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaze;->zza:Landroid/content/BroadcastReceiver;

    .line 102
    .line 103
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaze;->zze:Landroid/app/Application;

    .line 104
    .line 105
    if-eqz p1, :cond_4

    .line 106
    .line 107
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzj:Lcom/google/android/gms/internal/ads/zzazq;

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :catch_4
    move-exception p1

    .line 114
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 115
    .line 116
    const-string v0, "Error registering activity lifecycle callbacks."

    .line 117
    .line 118
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    :cond_4
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaze;->zzi(Landroid/app/Activity;I)V

    .line 3
    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaze;->zzj(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaze;->zzk()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    const/4 p1, 0x3

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaze;->zzj(I)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaze;->zzk()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaze;->zzi(Landroid/app/Activity;I)V

    .line 3
    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaze;->zzj(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaze;->zzk()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaze;->zzi(Landroid/app/Activity;I)V

    .line 3
    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaze;->zzj(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaze;->zzk()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const/4 p1, 0x3

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaze;->zzj(I)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaze;->zzk()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaze;->zzi(Landroid/app/Activity;I)V

    .line 3
    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaze;->zzj(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaze;->zzk()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 1
    const/4 p1, 0x3

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaze;->zzj(I)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaze;->zzk()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onGlobalLayout()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaze;->zzj(I)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaze;->zzk()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onScrollChanged()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaze;->zzj(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzm:I

    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaze;->zzl(Landroid/view/View;)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x3

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaze;->zzj(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzm:I

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaze;->zzj(I)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaze;->zzk()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaze;->zzm(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method final zza(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 4
    .line 5
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzaze;->zzh(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 10
    .line 11
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzaze;->zzh(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 16
    .line 17
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzaze;->zzh(I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaze;->zzh(I)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzazd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzn:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x3

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaze;->zzj(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzazd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzn:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzf()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzk:Lcom/google/android/gms/ads/internal/util/zzbx;

    .line 2
    .line 3
    sget-wide v1, Lcom/google/android/gms/internal/ads/zzaze;->zzc:J

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzbx;->zza(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final zzg(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzk:Lcom/google/android/gms/ads/internal/util/zzbx;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/util/zzbx;->zza(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
