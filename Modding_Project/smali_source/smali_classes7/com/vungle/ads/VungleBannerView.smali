.class public final Lcom/vungle/ads/VungleBannerView;
.super Landroid/widget/RelativeLayout;
.source "VungleBannerView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/VungleBannerView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/VungleBannerView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VungleBannerView"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private adListener:Lcom/vungle/ads/BannerAdListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final adSize:Lcom/vungle/ads/VungleAdSize;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private adWidget:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private calculatedPixelHeight:I

.field private calculatedPixelWidth:I

.field private final destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private imageView:Lcom/vungle/ads/internal/ui/WatermarkView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final impressionTracker$delegate:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isAdAttachedToWindow:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isAdDownloaded:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isInvisibleLogged:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isOnImpressionCalled:Z

.field private isReceiverRegistered:Z

.field private final placementId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private presenter:Lcom/vungle/ads/internal/presenter/MRAIDPresenter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final presenterStarted:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ringerModeReceiver:Lcom/vungle/ads/internal/util/RingerModeReceiver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/VungleBannerView$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/VungleBannerView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/VungleBannerView;->Companion:Lcom/vungle/ads/VungleBannerView$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/VungleAdSize;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/vungle/ads/VungleAdSize;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "placementId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "adSize"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/vungle/ads/VungleBannerView;->placementId:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p3, p0, Lcom/vungle/ads/VungleBannerView;->adSize:Lcom/vungle/ads/VungleAdSize;

    .line 22
    .line 23
    new-instance v0, Lcom/vungle/ads/internal/util/RingerModeReceiver;

    .line 24
    .line 25
    invoke-direct {v0}, Lcom/vungle/ads/internal/util/RingerModeReceiver;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/vungle/ads/VungleBannerView;->ringerModeReceiver:Lcom/vungle/ads/internal/util/RingerModeReceiver;

    .line 29
    .line 30
    new-instance v0, Lcom/vungle/ads/internal/BannerAdImpl;

    .line 31
    .line 32
    new-instance v1, Lcom/vungle/ads/AdConfig;

    .line 33
    .line 34
    invoke-direct {v1}, Lcom/vungle/ads/AdConfig;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, p1, p2, p3, v1}, Lcom/vungle/ads/internal/BannerAdImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/VungleAdSize;Lcom/vungle/ads/AdConfig;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/vungle/ads/VungleBannerView;->adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;

    .line 41
    .line 42
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    .line 44
    const/4 p3, 0x0

    .line 45
    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 46
    .line 47
    .line 48
    iput-object p2, p0, Lcom/vungle/ads/VungleBannerView;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    .line 50
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    .line 52
    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 53
    .line 54
    .line 55
    iput-object p2, p0, Lcom/vungle/ads/VungleBannerView;->presenterStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    .line 57
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    .line 59
    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 60
    .line 61
    .line 62
    iput-object p2, p0, Lcom/vungle/ads/VungleBannerView;->isAdDownloaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    .line 64
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    .line 66
    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 67
    .line 68
    .line 69
    iput-object p2, p0, Lcom/vungle/ads/VungleBannerView;->isAdAttachedToWindow:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    .line 71
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    .line 73
    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 74
    .line 75
    .line 76
    iput-object p2, p0, Lcom/vungle/ads/VungleBannerView;->isInvisibleLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    .line 78
    new-instance p2, Lcom/vungle/ads/VungleBannerView$impressionTracker$2;

    .line 79
    .line 80
    invoke-direct {p2, p1}, Lcom/vungle/ads/VungleBannerView$impressionTracker$2;-><init>(Landroid/content/Context;)V

    .line 81
    .line 82
    .line 83
    invoke-static {p2}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iput-object p1, p0, Lcom/vungle/ads/VungleBannerView;->impressionTracker$delegate:Lms/i;

    .line 88
    .line 89
    new-instance p1, Lcom/vungle/ads/VungleBannerView$1;

    .line 90
    .line 91
    invoke-direct {p1, p0}, Lcom/vungle/ads/VungleBannerView$1;-><init>(Lcom/vungle/ads/VungleBannerView;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, p1}, Lcom/vungle/ads/BaseAd;->setAdListener(Lcom/vungle/ads/BaseAdListener;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public static final synthetic access$checkHardwareAcceleration(Lcom/vungle/ads/VungleBannerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/VungleBannerView;->checkHardwareAcceleration()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$finishAdInternal(Lcom/vungle/ads/VungleBannerView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/ads/VungleBannerView;->finishAdInternal(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getPresenter$p(Lcom/vungle/ads/VungleBannerView;)Lcom/vungle/ads/internal/presenter/MRAIDPresenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/ads/VungleBannerView;->presenter:Lcom/vungle/ads/internal/presenter/MRAIDPresenter;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$logViewInvisibleOnPlay(Lcom/vungle/ads/VungleBannerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/VungleBannerView;->logViewInvisibleOnPlay()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$logViewVisibleOnPlay(Lcom/vungle/ads/VungleBannerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/VungleBannerView;->logViewVisibleOnPlay()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onBannerAdLoaded(Lcom/vungle/ads/VungleBannerView;Lcom/vungle/ads/BaseAd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/ads/VungleBannerView;->onBannerAdLoaded(Lcom/vungle/ads/BaseAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setOnImpressionCalled$p(Lcom/vungle/ads/VungleBannerView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/vungle/ads/VungleBannerView;->isOnImpressionCalled:Z

    .line 2
    .line 3
    return-void
.end method

.method private final checkHardwareAcceleration()V
    .locals 9

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "hardwareAccelerated = "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "VungleBannerView"

    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Lcom/vungle/ads/internal/util/Logger$Companion;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    sget-object v1, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    .line 36
    .line 37
    sget-object v2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->HARDWARE_ACCELERATE_DISABLED:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/LogEntry;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    const/16 v7, 0xa

    .line 46
    .line 47
    const/4 v8, 0x0

    .line 48
    const-wide/16 v3, 0x0

    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    invoke-static/range {v1 .. v8}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/LogEntry;Ljava/lang/String;ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method private final finishAdInternal(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 14
    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x4

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :goto_0
    or-int/lit8 p1, p1, 0x2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->presenter:Lcom/vungle/ads/internal/presenter/MRAIDPresenter;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->stop()V

    .line 28
    .line 29
    .line 30
    :cond_2
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->presenter:Lcom/vungle/ads/internal/presenter/MRAIDPresenter;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->detach(I)V

    .line 35
    .line 36
    .line 37
    :cond_3
    invoke-direct {p0}, Lcom/vungle/ads/VungleBannerView;->getImpressionTracker()Lcom/vungle/ads/internal/ImpressionTracker;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/vungle/ads/internal/ImpressionTracker;->destroy()V

    .line 42
    .line 43
    .line 44
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_4

    .line 49
    .line 50
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    check-cast p1, Landroid/view/ViewGroup;

    .line 55
    .line 56
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catch_0
    move-exception p1

    .line 61
    goto :goto_2

    .line 62
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_3

    .line 66
    :goto_2
    sget-object v0, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v2, "Removing webView error: "

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const-string v1, "VungleBannerView"

    .line 86
    .line 87
    invoke-virtual {v0, v1, p1}, Lcom/vungle/ads/internal/util/Logger$Companion;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    :goto_3
    return-void
.end method

.method private final getImpressionTracker()Lcom/vungle/ads/internal/ImpressionTracker;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->impressionTracker$delegate:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/vungle/ads/internal/ImpressionTracker;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic load$default(Lcom/vungle/ads/VungleBannerView;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/vungle/ads/VungleBannerView;->load(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final logViewInvisibleOnPlay()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->isInvisibleLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "ImpressionTracker checked the banner view invisible on play. "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "VungleBannerView"

    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Lcom/vungle/ads/internal/util/Logger$Companion;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    .line 39
    .line 40
    new-instance v1, Lcom/vungle/ads/SingleValueMetric;

    .line 41
    .line 42
    sget-object v2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_VISIBILITY:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 43
    .line 44
    invoke-direct {v1, v2}, Lcom/vungle/ads/SingleValueMetric;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/vungle/ads/VungleBannerView;->adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/LogEntry;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v3, "1"

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2, v3}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release(Lcom/vungle/ads/SingleValueMetric;Lcom/vungle/ads/internal/util/LogEntry;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method

.method private final logViewVisibleOnPlay()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->isInvisibleLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "3"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, "2"

    .line 13
    .line 14
    :goto_0
    sget-object v1, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    .line 15
    .line 16
    new-instance v2, Lcom/vungle/ads/SingleValueMetric;

    .line 17
    .line 18
    sget-object v3, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_VISIBILITY:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 19
    .line 20
    invoke-direct {v2, v3}, Lcom/vungle/ads/SingleValueMetric;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Lcom/vungle/ads/VungleBannerView;->adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/LogEntry;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release(Lcom/vungle/ads/SingleValueMetric;Lcom/vungle/ads/internal/util/LogEntry;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object v1, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v3, "Log metric AD_VISIBILITY: "

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v2, "VungleBannerView"

    .line 52
    .line 53
    invoke-virtual {v1, v2, v0}, Lcom/vungle/ads/internal/util/Logger$Companion;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private final onBannerAdLoaded(Lcom/vungle/ads/BaseAd;)V
    .locals 8

    .line 1
    sget-object v6, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    .line 2
    .line 3
    new-instance v1, Lcom/vungle/ads/SingleValueMetric;

    .line 4
    .line 5
    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->PLAY_AD_API:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/vungle/ads/SingleValueMetric;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/LogEntry;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v4, 0x4

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    move-object v0, v6

    .line 20
    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/SingleValueMetric;Lcom/vungle/ads/internal/util/LogEntry;Ljava/lang/String;ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/vungle/ads/internal/AdInternal;->getShowToValidationMetric$vungle_ads_release()Lcom/vungle/ads/TimeIntervalMetric;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/vungle/ads/TimeIntervalMetric;->markStart()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const/4 v7, 0x1

    .line 43
    invoke-virtual {v0, v7}, Lcom/vungle/ads/internal/AdInternal;->canPlayAd(Z)Lcom/vungle/ads/VungleError;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object v1, p0, Lcom/vungle/ads/VungleBannerView;->adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->getCode()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-virtual {v1, v2}, Lcom/vungle/ads/internal/AdInternal;->isErrorTerminal$vungle_ads_release(I)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_0

    .line 64
    .line 65
    iget-object v1, p0, Lcom/vungle/ads/VungleBannerView;->adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    sget-object v2, Lcom/vungle/ads/internal/AdInternal$AdState;->ERROR:Lcom/vungle/ads/internal/AdInternal$AdState;

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Lcom/vungle/ads/internal/AdInternal;->setAdState(Lcom/vungle/ads/internal/AdInternal$AdState;)V

    .line 74
    .line 75
    .line 76
    :cond_0
    iget-object v1, p0, Lcom/vungle/ads/VungleBannerView;->adListener:Lcom/vungle/ads/BannerAdListener;

    .line 77
    .line 78
    if-eqz v1, :cond_1

    .line 79
    .line 80
    invoke-interface {v1, p1, v0}, Lcom/vungle/ads/BaseAdListener;->onAdFailedToPlay(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    return-void

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/vungle/ads/internal/AdInternal;->getAdvertisement()Lcom/vungle/ads/internal/model/AdPayload;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/vungle/ads/VungleBannerView;->adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1}, Lcom/vungle/ads/internal/AdInternal;->getPlacement()Lcom/vungle/ads/internal/model/Placement;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    if-eqz v0, :cond_5

    .line 105
    .line 106
    if-nez v1, :cond_3

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    iget-object v2, p0, Lcom/vungle/ads/VungleBannerView;->adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;

    .line 110
    .line 111
    invoke-virtual {v2}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v2}, Lcom/vungle/ads/internal/AdInternal;->cancelDownload$vungle_ads_release()V

    .line 116
    .line 117
    .line 118
    :try_start_0
    invoke-virtual {p0}, Lcom/vungle/ads/VungleBannerView;->getAdViewSize()Lcom/vungle/ads/VungleAdSize;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-direct {p0, v0, v1, v2}, Lcom/vungle/ads/VungleBannerView;->willPresentAdView(Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/model/Placement;Lcom/vungle/ads/VungleAdSize;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getResponseToShowMetric$vungle_ads_release()Lcom/vungle/ads/TimeIntervalMetric;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/vungle/ads/TimeIntervalMetric;->markEnd()V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getResponseToShowMetric$vungle_ads_release()Lcom/vungle/ads/TimeIntervalMetric;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/LogEntry;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    const/4 v4, 0x4

    .line 147
    const/4 v5, 0x0

    .line 148
    const/4 v3, 0x0

    .line 149
    move-object v0, v6

    .line 150
    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/TimeIntervalMetric;Lcom/vungle/ads/internal/util/LogEntry;Ljava/lang/String;ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;

    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getShowToCloseMetric$vungle_ads_release()Lcom/vungle/ads/TimeIntervalMetric;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/vungle/ads/TimeIntervalMetric;->markStart()V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;

    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getShowToFailMetric$vungle_ads_release()Lcom/vungle/ads/TimeIntervalMetric;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/vungle/ads/TimeIntervalMetric;->markStart()V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->isAdDownloaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 172
    .line 173
    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->adListener:Lcom/vungle/ads/BannerAdListener;

    .line 177
    .line 178
    if-eqz v0, :cond_4

    .line 179
    .line 180
    invoke-interface {v0, p1}, Lcom/vungle/ads/BaseAdListener;->onAdLoaded(Lcom/vungle/ads/BaseAd;)V

    .line 181
    .line 182
    .line 183
    :cond_4
    invoke-direct {p0}, Lcom/vungle/ads/VungleBannerView;->renderAd()V

    .line 184
    .line 185
    .line 186
    :catch_0
    return-void

    .line 187
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->adListener:Lcom/vungle/ads/BannerAdListener;

    .line 188
    .line 189
    if-eqz v0, :cond_6

    .line 190
    .line 191
    new-instance v1, Lcom/vungle/ads/AdNotLoadedCantPlay;

    .line 192
    .line 193
    const-string v2, "Ad or Placement is null"

    .line 194
    .line 195
    invoke-direct {v1, v2}, Lcom/vungle/ads/AdNotLoadedCantPlay;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    iget-object v2, p0, Lcom/vungle/ads/VungleBannerView;->adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;

    .line 199
    .line 200
    invoke-virtual {v2}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/LogEntry;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-virtual {v1, v2}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/LogEntry;)Lcom/vungle/ads/VungleError;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {v1}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-interface {v0, p1, v1}, Lcom/vungle/ads/BaseAdListener;->onAdFailedToPlay(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V

    .line 213
    .line 214
    .line 215
    :cond_6
    return-void
.end method

.method private final renderAd()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "VungleBannerView"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    .line 12
    .line 13
    const-string v2, "renderAd() - destroyed"

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/util/Logger$Companion;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->isAdDownloaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    sget-object v0, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    .line 28
    .line 29
    const-string v2, "renderAd() - not ready: not downloaded."

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/util/Logger$Companion;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->isAdAttachedToWindow:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    sget-object v0, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    .line 44
    .line 45
    const-string v2, "renderAd() - not ready: not attached."

    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/util/Logger$Companion;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Lcom/vungle/ads/VungleBannerView;->logViewInvisibleOnPlay()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->presenterStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_4

    .line 62
    .line 63
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/vungle/ads/internal/AdInternal;->getShowToValidationMetric$vungle_ads_release()Lcom/vungle/ads/TimeIntervalMetric;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/vungle/ads/TimeIntervalMetric;->markEnd()V

    .line 74
    .line 75
    .line 76
    sget-object v1, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/vungle/ads/internal/AdInternal;->getShowToValidationMetric$vungle_ads_release()Lcom/vungle/ads/TimeIntervalMetric;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/LogEntry;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    const/4 v5, 0x4

    .line 95
    const/4 v6, 0x0

    .line 96
    const/4 v4, 0x0

    .line 97
    invoke-static/range {v1 .. v6}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/TimeIntervalMetric;Lcom/vungle/ads/internal/util/LogEntry;Ljava/lang/String;ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/vungle/ads/internal/AdInternal;->getValidationToPresentMetric$vungle_ads_release()Lcom/vungle/ads/TimeIntervalMetric;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/vungle/ads/TimeIntervalMetric;->markStart()V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->presenter:Lcom/vungle/ads/internal/presenter/MRAIDPresenter;

    .line 114
    .line 115
    if-eqz v0, :cond_3

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->prepare()V

    .line 118
    .line 119
    .line 120
    :cond_3
    invoke-direct {p0}, Lcom/vungle/ads/VungleBannerView;->getImpressionTracker()Lcom/vungle/ads/internal/ImpressionTracker;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    new-instance v1, Lcom/vungle/ads/VungleBannerView$renderAd$1;

    .line 125
    .line 126
    invoke-direct {v1, p0}, Lcom/vungle/ads/VungleBannerView$renderAd$1;-><init>(Lcom/vungle/ads/VungleBannerView;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, p0, v1}, Lcom/vungle/ads/internal/ImpressionTracker;->addView(Landroid/view/View;Lcom/vungle/ads/internal/ImpressionTracker$ImpressionListener;)V

    .line 130
    .line 131
    .line 132
    :cond_4
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->adWidget:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;

    .line 133
    .line 134
    if-eqz v0, :cond_6

    .line 135
    .line 136
    if-eqz v0, :cond_5

    .line 137
    .line 138
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    goto :goto_0

    .line 143
    :cond_5
    const/4 v0, 0x0

    .line 144
    :goto_0
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-nez v0, :cond_6

    .line 149
    .line 150
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->adWidget:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;

    .line 151
    .line 152
    iget v1, p0, Lcom/vungle/ads/VungleBannerView;->calculatedPixelWidth:I

    .line 153
    .line 154
    iget v2, p0, Lcom/vungle/ads/VungleBannerView;->calculatedPixelHeight:I

    .line 155
    .line 156
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->imageView:Lcom/vungle/ads/internal/ui/WatermarkView;

    .line 160
    .line 161
    if-eqz v0, :cond_6

    .line 162
    .line 163
    iget v1, p0, Lcom/vungle/ads/VungleBannerView;->calculatedPixelWidth:I

    .line 164
    .line 165
    iget v2, p0, Lcom/vungle/ads/VungleBannerView;->calculatedPixelHeight:I

    .line 166
    .line 167
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->imageView:Lcom/vungle/ads/internal/ui/WatermarkView;

    .line 171
    .line 172
    if-eqz v0, :cond_6

    .line 173
    .line 174
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 175
    .line 176
    .line 177
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    if-eqz v0, :cond_7

    .line 182
    .line 183
    iget v1, p0, Lcom/vungle/ads/VungleBannerView;->calculatedPixelHeight:I

    .line 184
    .line 185
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 186
    .line 187
    iget v1, p0, Lcom/vungle/ads/VungleBannerView;->calculatedPixelWidth:I

    .line 188
    .line 189
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 190
    .line 191
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 192
    .line 193
    .line 194
    :cond_7
    return-void
.end method

.method private final setAdVisibility(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/vungle/ads/VungleBannerView;->isOnImpressionCalled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->presenter:Lcom/vungle/ads/internal/presenter/MRAIDPresenter;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->setAdVisibility(Z)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method private final willPresentAdView(Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/model/Placement;Lcom/vungle/ads/VungleAdSize;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    sget-object v0, Lcom/vungle/ads/internal/util/ViewUtility;->INSTANCE:Lcom/vungle/ads/internal/util/ViewUtility;

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "context"

    .line 10
    .line 11
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p3 .. p3}, Lcom/vungle/ads/VungleAdSize;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    invoke-virtual {v0, v2, v4}, Lcom/vungle/ads/internal/util/ViewUtility;->dpToPixels(Landroid/content/Context;I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iput v2, v1, Lcom/vungle/ads/VungleBannerView;->calculatedPixelHeight:I

    .line 23
    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p3 .. p3}, Lcom/vungle/ads/VungleAdSize;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-virtual {v0, v2, v4}, Lcom/vungle/ads/internal/util/ViewUtility;->dpToPixels(Landroid/content/Context;I)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, v1, Lcom/vungle/ads/VungleBannerView;->calculatedPixelWidth:I

    .line 40
    .line 41
    iget-object v0, v1, Lcom/vungle/ads/VungleBannerView;->adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/vungle/ads/internal/BannerAdImpl;->getAdPlayCallback$vungle_ads_release()Lcom/vungle/ads/internal/presenter/AdPlayCallbackWrapper;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v2, v1, Lcom/vungle/ads/VungleBannerView;->adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lcom/vungle/ads/internal/AdInternal;->getPlacement()Lcom/vungle/ads/internal/model/Placement;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    new-instance v4, Lcom/vungle/ads/VungleBannerView$willPresentAdView$adEventListener$1;

    .line 58
    .line 59
    invoke-direct {v4, v0, v2}, Lcom/vungle/ads/VungleBannerView$willPresentAdView$adEventListener$1;-><init>(Lcom/vungle/ads/internal/presenter/AdPlayCallbackWrapper;Lcom/vungle/ads/internal/model/Placement;)V

    .line 60
    .line 61
    .line 62
    :try_start_0
    new-instance v6, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;

    .line 63
    .line 64
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {v6, v0}, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    iput-object v6, v1, Lcom/vungle/ads/VungleBannerView;->adWidget:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;

    .line 75
    .line 76
    new-instance v0, Lcom/vungle/ads/VungleBannerView$willPresentAdView$1;

    .line 77
    .line 78
    invoke-direct {v0, v1}, Lcom/vungle/ads/VungleBannerView$willPresentAdView$1;-><init>(Lcom/vungle/ads/VungleBannerView;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6, v0}, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->setCloseDelegate(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$CloseDelegate;)V

    .line 82
    .line 83
    .line 84
    new-instance v0, Lcom/vungle/ads/VungleBannerView$willPresentAdView$2;

    .line 85
    .line 86
    invoke-direct {v0, v1}, Lcom/vungle/ads/VungleBannerView$willPresentAdView$2;-><init>(Lcom/vungle/ads/VungleBannerView;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6, v0}, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->setOnViewTouchListener(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$OnViewTouchListener;)V

    .line 90
    .line 91
    .line 92
    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    .line 93
    .line 94
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 102
    .line 103
    new-instance v5, Lcom/vungle/ads/VungleBannerView$willPresentAdView$$inlined$inject$1;

    .line 104
    .line 105
    invoke-direct {v5, v0}, Lcom/vungle/ads/VungleBannerView$willPresentAdView$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    .line 106
    .line 107
    .line 108
    invoke-static {v2, v5}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    new-instance v7, Lcom/vungle/ads/VungleBannerView$willPresentAdView$$inlined$inject$2;

    .line 120
    .line 121
    invoke-direct {v7, v5}, Lcom/vungle/ads/VungleBannerView$willPresentAdView$$inlined$inject$2;-><init>(Landroid/content/Context;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v2, v7}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-static {v5}, Lcom/vungle/ads/VungleBannerView;->willPresentAdView$lambda-2(Lms/i;)Lcom/vungle/ads/internal/omsdk/OMTracker$Factory;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/model/AdPayload;->omEnabled()Z

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    invoke-virtual {v5, v7}, Lcom/vungle/ads/internal/omsdk/OMTracker$Factory;->make(Z)Lcom/vungle/ads/internal/omsdk/OMTracker;

    .line 137
    .line 138
    .line 139
    move-result-object v11

    .line 140
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    new-instance v7, Lcom/vungle/ads/VungleBannerView$willPresentAdView$$inlined$inject$3;

    .line 148
    .line 149
    invoke-direct {v7, v5}, Lcom/vungle/ads/VungleBannerView$willPresentAdView$$inlined$inject$3;-><init>(Landroid/content/Context;)V

    .line 150
    .line 151
    .line 152
    invoke-static {v2, v7}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    new-instance v9, Lcom/vungle/ads/internal/ui/VungleWebClient;

    .line 157
    .line 158
    invoke-static {v0}, Lcom/vungle/ads/VungleBannerView;->willPresentAdView$lambda-1(Lms/i;)Lcom/vungle/ads/internal/executor/Executors;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-interface {v5}, Lcom/vungle/ads/internal/executor/Executors;->getOffloadExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 163
    .line 164
    .line 165
    move-result-object v15

    .line 166
    invoke-static {v2}, Lcom/vungle/ads/VungleBannerView;->willPresentAdView$lambda-3(Lms/i;)Lcom/vungle/ads/internal/platform/Platform;

    .line 167
    .line 168
    .line 169
    move-result-object v17

    .line 170
    const/16 v18, 0x8

    .line 171
    .line 172
    const/16 v19, 0x0

    .line 173
    .line 174
    const/16 v16, 0x0

    .line 175
    .line 176
    move-object v12, v9

    .line 177
    move-object/from16 v13, p1

    .line 178
    .line 179
    move-object/from16 v14, p2

    .line 180
    .line 181
    invoke-direct/range {v12 .. v19}, Lcom/vungle/ads/internal/ui/VungleWebClient;-><init>(Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/model/Placement;Ljava/util/concurrent/ExecutorService;Lcom/vungle/ads/internal/signals/SignalManager;Lcom/vungle/ads/internal/platform/Platform;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 182
    .line 183
    .line 184
    iget-object v5, v1, Lcom/vungle/ads/VungleBannerView;->ringerModeReceiver:Lcom/vungle/ads/internal/util/RingerModeReceiver;

    .line 185
    .line 186
    invoke-virtual {v5, v9}, Lcom/vungle/ads/internal/util/RingerModeReceiver;->setWebClient(Lcom/vungle/ads/internal/ui/VungleWebClient;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v9, v11}, Lcom/vungle/ads/internal/ui/VungleWebClient;->setWebViewObserver(Lcom/vungle/ads/internal/omsdk/WebViewObserver;)V

    .line 190
    .line 191
    .line 192
    new-instance v14, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;

    .line 193
    .line 194
    invoke-static {v0}, Lcom/vungle/ads/VungleBannerView;->willPresentAdView$lambda-1(Lms/i;)Lcom/vungle/ads/internal/executor/Executors;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-interface {v0}, Lcom/vungle/ads/internal/executor/Executors;->getJobExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 199
    .line 200
    .line 201
    move-result-object v10

    .line 202
    iget-object v0, v1, Lcom/vungle/ads/VungleBannerView;->adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;

    .line 203
    .line 204
    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lcom/vungle/ads/internal/AdInternal;->getBidPayload()Lcom/vungle/ads/internal/model/BidPayload;

    .line 209
    .line 210
    .line 211
    move-result-object v12

    .line 212
    invoke-static {v2}, Lcom/vungle/ads/VungleBannerView;->willPresentAdView$lambda-3(Lms/i;)Lcom/vungle/ads/internal/platform/Platform;

    .line 213
    .line 214
    .line 215
    move-result-object v13

    .line 216
    move-object v5, v14

    .line 217
    move-object/from16 v7, p1

    .line 218
    .line 219
    move-object/from16 v8, p2

    .line 220
    .line 221
    invoke-direct/range {v5 .. v13}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;-><init>(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/model/Placement;Lcom/vungle/ads/internal/ui/VungleWebClient;Ljava/util/concurrent/Executor;Lcom/vungle/ads/internal/omsdk/OMTracker;Lcom/vungle/ads/internal/model/BidPayload;Lcom/vungle/ads/internal/platform/Platform;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v14, v4}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->setEventListener(Lcom/vungle/ads/internal/presenter/AdEventListener;)V

    .line 225
    .line 226
    .line 227
    iput-object v14, v1, Lcom/vungle/ads/VungleBannerView;->presenter:Lcom/vungle/ads/internal/presenter/MRAIDPresenter;

    .line 228
    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/vungle/ads/VungleBannerView;->getAdConfig()Lcom/vungle/ads/AdConfig;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lcom/vungle/ads/AdConfig;->getWatermark$vungle_ads_release()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    if-eqz v0, :cond_0

    .line 238
    .line 239
    new-instance v2, Lcom/vungle/ads/internal/ui/WatermarkView;

    .line 240
    .line 241
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-direct {v2, v4, v0}, Lcom/vungle/ads/internal/ui/WatermarkView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iput-object v2, v1, Lcom/vungle/ads/VungleBannerView;->imageView:Lcom/vungle/ads/internal/ui/WatermarkView;

    .line 252
    .line 253
    :cond_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    new-instance v2, Lcom/vungle/ads/AdCantPlayWithoutWebView;

    .line 256
    .line 257
    invoke-direct {v2}, Lcom/vungle/ads/AdCantPlayWithoutWebView;-><init>()V

    .line 258
    .line 259
    .line 260
    iget-object v3, v1, Lcom/vungle/ads/VungleBannerView;->adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;

    .line 261
    .line 262
    invoke-virtual {v3}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/LogEntry;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-virtual {v2, v3}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/LogEntry;)Lcom/vungle/ads/VungleError;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-virtual {v2}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    iget-object v3, v1, Lcom/vungle/ads/VungleBannerView;->placementId:Ljava/lang/String;

    .line 275
    .line 276
    invoke-virtual {v4, v2, v3}, Lcom/vungle/ads/internal/presenter/AdEventListener;->onError(Lcom/vungle/ads/VungleError;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    throw v0
.end method

.method private static final willPresentAdView$lambda-1(Lms/i;)Lcom/vungle/ads/internal/executor/Executors;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lms/i<",
            "+",
            "Lcom/vungle/ads/internal/executor/Executors;",
            ">;)",
            "Lcom/vungle/ads/internal/executor/Executors;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/vungle/ads/internal/executor/Executors;

    .line 6
    .line 7
    return-object p0
.end method

.method private static final willPresentAdView$lambda-2(Lms/i;)Lcom/vungle/ads/internal/omsdk/OMTracker$Factory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lms/i<",
            "Lcom/vungle/ads/internal/omsdk/OMTracker$Factory;",
            ">;)",
            "Lcom/vungle/ads/internal/omsdk/OMTracker$Factory;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/vungle/ads/internal/omsdk/OMTracker$Factory;

    .line 6
    .line 7
    return-object p0
.end method

.method private static final willPresentAdView$lambda-3(Lms/i;)Lcom/vungle/ads/internal/platform/Platform;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lms/i<",
            "+",
            "Lcom/vungle/ads/internal/platform/Platform;",
            ">;)",
            "Lcom/vungle/ads/internal/platform/Platform;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/vungle/ads/internal/platform/Platform;

    .line 6
    .line 7
    return-object p0
.end method


# virtual methods
.method public final finishAd()V
    .locals 2

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/ThreadUtil;->INSTANCE:Lcom/vungle/ads/internal/util/ThreadUtil;

    .line 2
    .line 3
    new-instance v1, Lcom/vungle/ads/VungleBannerView$finishAd$1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/vungle/ads/VungleBannerView$finishAd$1;-><init>(Lcom/vungle/ads/VungleBannerView;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/util/ThreadUtil;->runOnUiThread(Lkotlin/jvm/functions/Function0;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final getAdConfig()Lcom/vungle/ads/AdConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdConfig()Lcom/vungle/ads/AdConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getAdListener()Lcom/vungle/ads/BannerAdListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->adListener:Lcom/vungle/ads/BannerAdListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAdSize()Lcom/vungle/ads/VungleAdSize;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->adSize:Lcom/vungle/ads/VungleAdSize;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAdViewSize()Lcom/vungle/ads/VungleAdSize;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/vungle/ads/internal/BannerAdImpl;->getAdViewSize()Lcom/vungle/ads/VungleAdSize;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getCreativeId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getCreativeId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getEventId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getEventId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getPlacementId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->placementId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final load(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/vungle/ads/BaseAd;->load(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "onAttachedToWindow(): "

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "VungleBannerView"

    .line 28
    .line 29
    invoke-virtual {v0, v2, v1}, Lcom/vungle/ads/internal/util/Logger$Companion;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/vungle/ads/VungleBannerView;->isAdAttachedToWindow:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/vungle/ads/VungleBannerView;->adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/vungle/ads/internal/AdInternal;->getPlacement()Lcom/vungle/ads/internal/model/Placement;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    :try_start_0
    iget-boolean v1, p0, Lcom/vungle/ads/VungleBannerView;->isReceiverRegistered:Z

    .line 51
    .line 52
    if-nez v1, :cond_0

    .line 53
    .line 54
    new-instance v1, Landroid/content/IntentFilter;

    .line 55
    .line 56
    const-string v4, "android.media.RINGER_MODE_CHANGED"

    .line 57
    .line 58
    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    iget-object v5, p0, Lcom/vungle/ads/VungleBannerView;->ringerModeReceiver:Lcom/vungle/ads/internal/util/RingerModeReceiver;

    .line 66
    .line 67
    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    iput-boolean v3, p0, Lcom/vungle/ads/VungleBannerView;->isReceiverRegistered:Z

    .line 71
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v3, "registerReceiver(): "

    .line 78
    .line 79
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v3, p0, Lcom/vungle/ads/VungleBannerView;->ringerModeReceiver:Lcom/vungle/ads/internal/util/RingerModeReceiver;

    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v2, v1}, Lcom/vungle/ads/internal/util/Logger$Companion;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    sget-object v1, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    .line 101
    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v4, "registerReceiver error: "

    .line 108
    .line 109
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v1, v2, v0}, Lcom/vungle/ads/internal/util/Logger$Companion;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/vungle/ads/VungleBannerView;->renderAd()V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "onDetachedFromWindow(): "

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "VungleBannerView"

    .line 28
    .line 29
    invoke-virtual {v0, v2, v1}, Lcom/vungle/ads/internal/util/Logger$Companion;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->isAdAttachedToWindow:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->adViewImpl:Lcom/vungle/ads/internal/BannerAdImpl;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/vungle/ads/internal/AdInternal;->getPlacement()Lcom/vungle/ads/internal/model/Placement;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    :try_start_0
    iget-boolean v0, p0, Lcom/vungle/ads/VungleBannerView;->isReceiverRegistered:Z

    .line 51
    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v3, p0, Lcom/vungle/ads/VungleBannerView;->ringerModeReceiver:Lcom/vungle/ads/internal/util/RingerModeReceiver;

    .line 59
    .line 60
    invoke-virtual {v0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 61
    .line 62
    .line 63
    iput-boolean v1, p0, Lcom/vungle/ads/VungleBannerView;->isReceiverRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    sget-object v1, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    .line 68
    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v4, "unregisterReceiver error: "

    .line 75
    .line 76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v1, v2, v0}, Lcom/vungle/ads/internal/util/Logger$Companion;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    :cond_0
    :goto_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    invoke-direct {p0, p1}, Lcom/vungle/ads/VungleBannerView;->setAdVisibility(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final setAdListener(Lcom/vungle/ads/BannerAdListener;)V
    .locals 0
    .param p1    # Lcom/vungle/ads/BannerAdListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/VungleBannerView;->adListener:Lcom/vungle/ads/BannerAdListener;

    .line 2
    .line 3
    return-void
.end method
