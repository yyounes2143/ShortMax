.class public final Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final m:Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Lcom/google/android/gms/ads/nativead/NativeAd;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Lcom/google/android/gms/ads/nativead/NativeAdView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Lcom/google/android/gms/ads/nativead/MediaView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:Lia/c;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->m:Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->a:I

    .line 6
    invoke-direct {p0, p1}, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->c(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    iput p2, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->a:I

    .line 3
    invoke-direct {p0, p1}, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->c(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 8
    iput p2, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->a:I

    .line 9
    invoke-direct {p0, p1}, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->c(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 11
    iput p2, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->a:I

    .line 12
    invoke-direct {p0, p1}, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->c(Landroid/content/Context;)V

    return-void
.end method

.method private final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->b:Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAd;->getMediaContent()Lcom/google/android/gms/ads/MediaContent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/ads/MediaContent;->getVideoController()Lcom/google/android/gms/ads/VideoController;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iget-object v1, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->k:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->setVideoLifecycleCallbacks(Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;)V

    .line 23
    .line 24
    .line 25
    :goto_1
    return-void
.end method

.method private final c(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CutPasteId"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->a:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    .line 6
    const-string v0, "layout_inflater"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    instance-of v0, p1, Landroid/view/LayoutInflater;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    check-cast p1, Landroid/view/LayoutInflater;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget v0, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->a:I

    .line 23
    .line 24
    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    :cond_1
    sget p1, Lba/a;->k:I

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->c:Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 36
    .line 37
    sget p1, Lba/a;->j:I

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroid/widget/ImageView;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->d:Landroid/widget/ImageView;

    .line 46
    .line 47
    sget p1, Lba/a;->i:I

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lcom/google/android/gms/ads/nativead/MediaView;

    .line 54
    .line 55
    iput-object p1, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->e:Lcom/google/android/gms/ads/nativead/MediaView;

    .line 56
    .line 57
    sget p1, Lba/a;->c:I

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Landroid/widget/ImageView;

    .line 64
    .line 65
    iput-object p1, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->f:Landroid/widget/ImageView;

    .line 66
    .line 67
    sget p1, Lba/a;->l:I

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Landroid/widget/TextView;

    .line 74
    .line 75
    iput-object p1, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->g:Landroid/widget/TextView;

    .line 76
    .line 77
    sget p1, Lba/a;->e:I

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Landroid/widget/TextView;

    .line 84
    .line 85
    iput-object p1, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->h:Landroid/widget/TextView;

    .line 86
    .line 87
    sget p1, Lba/a;->g:I

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Landroid/widget/TextView;

    .line 94
    .line 95
    iput-object p1, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->i:Landroid/widget/TextView;

    .line 96
    .line 97
    sget p1, Lba/a;->h:I

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iput-object p1, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->j:Landroid/view/View;

    .line 104
    .line 105
    return-void

    .line 106
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 107
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v1, "Invalid mLayoutResource("

    .line 111
    .line 112
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget v1, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->a:I

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const/16 v1, 0x29

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p1
.end method

.method public static synthetic setNativeAd$default(Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;Lcom/google/android/gms/ads/nativead/NativeAd;Lia/b;Landroid/widget/ImageView$ScaleType;ILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    move-object p2, v0

    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    move-object p3, v0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;Lia/b;Landroid/widget/ImageView$ScaleType;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    .line 1
    const-string v0, "AdManagerAdmobNativeAdView"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->c:Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    sget-object v2, Lga/a;->a:Lga/a;

    .line 8
    .line 9
    const-string v3, "admob NativeAdView destroyed"

    .line 10
    .line 11
    invoke-virtual {v2, v0, v3}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->destroy()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->removeAllViews()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->b:Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAd;->destroy()V

    .line 28
    .line 29
    .line 30
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    sget-object v1, Lga/a;->a:Lga/a;

    .line 33
    .line 34
    const-string v2, "admob NativeAd destroyed"

    .line 35
    .line 36
    invoke-virtual {v1, v0, v2}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :goto_1
    sget-object v2, Lga/a;->a:Lga/a;

    .line 41
    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v4, "destroy exception -> "

    .line 45
    .line 46
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, " by call destroyed"

    .line 57
    .line 58
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v2, v0, v1}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_2
    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->c:Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->b:Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->l:Lia/c;

    .line 74
    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    invoke-interface {v1}, Lia/c;->a()V

    .line 78
    .line 79
    .line 80
    :cond_2
    iput-object v0, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->l:Lia/c;

    .line 81
    .line 82
    return-void
.end method

.method public final getMOnDestroyListener()Lia/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->l:Lia/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMVideoLifecycleCallbacks()Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->k:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setMOnDestroyListener(Lia/c;)V
    .locals 0
    .param p1    # Lia/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->l:Lia/c;

    .line 2
    .line 3
    return-void
.end method

.method public final setMVideoLifecycleCallbacks(Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->k:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    .line 2
    .line 3
    return-void
.end method

.method public final setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;Lia/b;Landroid/widget/ImageView$ScaleType;)V
    .locals 5
    .param p1    # Lcom/google/android/gms/ads/nativead/NativeAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lia/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView$ScaleType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "nativeAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->b:Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getImages()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "nativeAd.images"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "context"

    .line 28
    .line 29
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->d:Landroid/widget/ImageView;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move-object v0, v3

    .line 43
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getIcon()Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move-object v4, v3

    .line 55
    :goto_1
    invoke-static {v1, v2, v0, v4}, Ld/d;->b(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->j:Landroid/view/View;

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getHeadline()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const/16 v2, 0x8

    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-nez v4, :cond_3

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_3
    iget-object v4, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->g:Landroid/widget/TextView;

    .line 83
    .line 84
    if-eqz v4, :cond_6

    .line 85
    .line 86
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->g:Landroid/widget/TextView;

    .line 94
    .line 95
    if-nez v0, :cond_5

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->h:Landroid/widget/TextView;

    .line 102
    .line 103
    if-nez v0, :cond_7

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getBody()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    :goto_5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getIcon()Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    if-nez v0, :cond_9

    .line 118
    .line 119
    iget-object v0, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->f:Landroid/widget/ImageView;

    .line 120
    .line 121
    if-nez v0, :cond_8

    .line 122
    .line 123
    goto :goto_6

    .line 124
    :cond_8
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    goto :goto_6

    .line 128
    :cond_9
    iget-object v2, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->f:Landroid/widget/ImageView;

    .line 129
    .line 130
    if-eqz v2, :cond_a

    .line 131
    .line 132
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    .line 141
    .line 142
    :cond_a
    :goto_6
    iget-object v0, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->i:Landroid/widget/TextView;

    .line 143
    .line 144
    if-eqz v0, :cond_c

    .line 145
    .line 146
    if-eqz p2, :cond_b

    .line 147
    .line 148
    invoke-interface {p2, v0}, Lia/b;->a(Landroid/widget/TextView;)V

    .line 149
    .line 150
    .line 151
    :cond_b
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getCallToAction()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    :cond_c
    iget-object p2, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->c:Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 159
    .line 160
    if-eqz p2, :cond_10

    .line 161
    .line 162
    iget-object v0, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->e:Lcom/google/android/gms/ads/nativead/MediaView;

    .line 163
    .line 164
    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setMediaView(Lcom/google/android/gms/ads/nativead/MediaView;)V

    .line 165
    .line 166
    .line 167
    if-eqz p3, :cond_d

    .line 168
    .line 169
    iget-object v0, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->e:Lcom/google/android/gms/ads/nativead/MediaView;

    .line 170
    .line 171
    if-eqz v0, :cond_d

    .line 172
    .line 173
    invoke-virtual {v0, p3}, Lcom/google/android/gms/ads/nativead/MediaView;->setImageScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 174
    .line 175
    .line 176
    :cond_d
    sget-object p3, Lga/a;->a:Lga/a;

    .line 177
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string v1, "setNativeAd -> adChoicesInfo="

    .line 181
    .line 182
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    iget-object v1, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->b:Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 186
    .line 187
    if-eqz v1, :cond_e

    .line 188
    .line 189
    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getAdChoicesInfo()Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    goto :goto_7

    .line 194
    :cond_e
    move-object v1, v3

    .line 195
    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v1, " images.size="

    .line 199
    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    iget-object v1, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->b:Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 204
    .line 205
    if-eqz v1, :cond_f

    .line 206
    .line 207
    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getAdChoicesInfo()Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    if-eqz v1, :cond_f

    .line 212
    .line 213
    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;->getImages()Ljava/util/List;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    if-eqz v1, :cond_f

    .line 218
    .line 219
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    :cond_f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    const-string v1, "AdManagerAdmobNativeAdView"

    .line 235
    .line 236
    invoke-virtual {p3, v1, v0}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    iget-object p3, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->f:Landroid/widget/ImageView;

    .line 240
    .line 241
    invoke-virtual {p2, p3}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setIconView(Landroid/view/View;)V

    .line 242
    .line 243
    .line 244
    iget-object p3, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->g:Landroid/widget/TextView;

    .line 245
    .line 246
    invoke-virtual {p2, p3}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setHeadlineView(Landroid/view/View;)V

    .line 247
    .line 248
    .line 249
    iget-object p3, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->h:Landroid/widget/TextView;

    .line 250
    .line 251
    invoke-virtual {p2, p3}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setBodyView(Landroid/view/View;)V

    .line 252
    .line 253
    .line 254
    iget-object p3, p0, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->i:Landroid/widget/TextView;

    .line 255
    .line 256
    invoke-virtual {p2, p3}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setCallToActionView(Landroid/view/View;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    .line 260
    .line 261
    .line 262
    invoke-direct {p0}, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->a()V

    .line 263
    .line 264
    .line 265
    :cond_10
    return-void
.end method
