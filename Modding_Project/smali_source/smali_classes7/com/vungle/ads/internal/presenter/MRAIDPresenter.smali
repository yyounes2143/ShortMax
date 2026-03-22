.class public final Lcom/vungle/ads/internal/presenter/MRAIDPresenter;
.super Ljava/lang/Object;
.source "MRAIDPresenter.kt"

# interfaces
.implements Lcom/vungle/ads/internal/ui/view/WebViewAPI$MraidDelegate;
.implements Lcom/vungle/ads/internal/ui/view/WebViewAPI$WebClientErrorHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/presenter/MRAIDPresenter$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "action"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_WITH_VALUE:Ljava/lang/String; = "actionWithValue"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CLOSE:Ljava/lang/String; = "close"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CONSENT_ACTION:Ljava/lang/String; = "consentAction"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CREATIVE_HEARTBEAT:Ljava/lang/String; = "creativeHeartbeat"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/vungle/ads/internal/presenter/MRAIDPresenter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ERROR:Ljava/lang/String; = "error"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GET_AVAILABLE_DISK_SPACE:Ljava/lang/String; = "getAvailableDiskSpace"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final HEARTBEAT_INTERVAL:D = 6.0

.field public static final OPEN:Ljava/lang/String; = "open"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final OPEN_NON_MRAID:Ljava/lang/String; = "openNonMraid"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OPEN_PRIVACY:Ljava/lang/String; = "openPrivacy"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PING_URL:Ljava/lang/String; = "pingUrl"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SET_ORIENTATION_PROPERTIES:Ljava/lang/String; = "setOrientationProperties"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SUCCESSFUL_VIEW:Ljava/lang/String; = "successfulView"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MRAIDPresenter"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TPAT:Ljava/lang/String; = "tpat"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UPDATE_SIGNALS:Ljava/lang/String; = "updateSignals"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final USE_CUSTOM_CLOSE:Ljava/lang/String; = "useCustomClose"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final USE_CUSTOM_PRIVACY:Ljava/lang/String; = "useCustomPrivacy"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final VIDEO_LENGTH:Ljava/lang/String; = "videoLength"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final VIDEO_VIEWED:Ljava/lang/String; = "videoViewed"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final eventMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private adStartTime:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private adViewed:Z

.field private final adWidget:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final advertisement:Lcom/vungle/ads/internal/model/AdPayload;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private backEnabled:Z

.field private final bidPayload:Lcom/vungle/ads/internal/model/BidPayload;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private bus:Lcom/vungle/ads/internal/presenter/AdEventListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final clickCoordinateTracker$delegate:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cp0Fired:Z

.field private executor:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private heartbeatEnabled:Z

.field private final isDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lastUserInteractionTimestamp:J

.field private final logEntry$delegate:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final omTracker:Lcom/vungle/ads/internal/omsdk/OMTracker;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pathProvider$delegate:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final placement:Lcom/vungle/ads/internal/model/Placement;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final platform:Lcom/vungle/ads/internal/platform/Platform;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private presenterDelegate:Lcom/vungle/ads/internal/presenter/PresenterDelegate;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final scheduler$delegate:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final signalManager$delegate:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final suspendableTimer$delegate:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tpatSender$delegate:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private videoLength:J

.field private final vungleApiClient$delegate:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final vungleWebClient:Lcom/vungle/ads/internal/ui/VungleWebClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->Companion:Lcom/vungle/ads/internal/presenter/MRAIDPresenter$Companion;

    .line 8
    .line 9
    const-string v0, "checkpoint.0"

    .line 10
    .line 11
    sget-object v1, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_START_EVENT:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "clickUrl"

    .line 18
    .line 19
    sget-object v2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_CLICK_EVENT:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 20
    .line 21
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    filled-new-array {v0, v1}, [Lkotlin/Pair;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->eventMap:Ljava/util/Map;

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/model/Placement;Lcom/vungle/ads/internal/ui/VungleWebClient;Ljava/util/concurrent/Executor;Lcom/vungle/ads/internal/omsdk/OMTracker;Lcom/vungle/ads/internal/model/BidPayload;Lcom/vungle/ads/internal/platform/Platform;)V
    .locals 1
    .param p1    # Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/ads/internal/model/AdPayload;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/vungle/ads/internal/model/Placement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/vungle/ads/internal/ui/VungleWebClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/vungle/ads/internal/omsdk/OMTracker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/vungle/ads/internal/model/BidPayload;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/vungle/ads/internal/platform/Platform;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adWidget"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "advertisement"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "placement"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "vungleWebClient"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "executor"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "omTracker"

    .line 27
    .line 28
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "platform"

    .line 32
    .line 33
    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->adWidget:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 42
    .line 43
    iput-object p3, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->placement:Lcom/vungle/ads/internal/model/Placement;

    .line 44
    .line 45
    iput-object p4, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->vungleWebClient:Lcom/vungle/ads/internal/ui/VungleWebClient;

    .line 46
    .line 47
    iput-object p5, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->executor:Ljava/util/concurrent/Executor;

    .line 48
    .line 49
    iput-object p6, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->omTracker:Lcom/vungle/ads/internal/omsdk/OMTracker;

    .line 50
    .line 51
    iput-object p7, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->bidPayload:Lcom/vungle/ads/internal/model/BidPayload;

    .line 52
    .line 53
    iput-object p8, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->platform:Lcom/vungle/ads/internal/platform/Platform;

    .line 54
    .line 55
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    .line 57
    const/4 p3, 0x0

    .line 58
    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 59
    .line 60
    .line 61
    iput-object p2, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->isDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    .line 63
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    .line 65
    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 66
    .line 67
    .line 68
    iput-object p2, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    .line 70
    sget-object p2, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    const-string p3, "adWidget.context"

    .line 77
    .line 78
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sget-object p4, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 82
    .line 83
    new-instance p5, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$special$$inlined$inject$1;

    .line 84
    .line 85
    invoke-direct {p5, p2}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$special$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    .line 86
    .line 87
    .line 88
    invoke-static {p4, p5}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    iput-object p2, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->vungleApiClient$delegate:Lms/i;

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    new-instance p5, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$special$$inlined$inject$2;

    .line 102
    .line 103
    invoke-direct {p5, p2}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$special$$inlined$inject$2;-><init>(Landroid/content/Context;)V

    .line 104
    .line 105
    .line 106
    invoke-static {p4, p5}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    iput-object p2, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->pathProvider$delegate:Lms/i;

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    new-instance p5, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$special$$inlined$inject$3;

    .line 120
    .line 121
    invoke-direct {p5, p2}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$special$$inlined$inject$3;-><init>(Landroid/content/Context;)V

    .line 122
    .line 123
    .line 124
    invoke-static {p4, p5}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    iput-object p2, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->signalManager$delegate:Lms/i;

    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    new-instance p2, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$special$$inlined$inject$4;

    .line 138
    .line 139
    invoke-direct {p2, p1}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$special$$inlined$inject$4;-><init>(Landroid/content/Context;)V

    .line 140
    .line 141
    .line 142
    invoke-static {p4, p2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->tpatSender$delegate:Lms/i;

    .line 147
    .line 148
    sget-object p1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$scheduler$2;->INSTANCE:Lcom/vungle/ads/internal/presenter/MRAIDPresenter$scheduler$2;

    .line 149
    .line 150
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->scheduler$delegate:Lms/i;

    .line 155
    .line 156
    new-instance p1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$logEntry$2;

    .line 157
    .line 158
    invoke-direct {p1, p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$logEntry$2;-><init>(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;)V

    .line 159
    .line 160
    .line 161
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->logEntry$delegate:Lms/i;

    .line 166
    .line 167
    new-instance p1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$suspendableTimer$2;

    .line 168
    .line 169
    invoke-direct {p1, p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$suspendableTimer$2;-><init>(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;)V

    .line 170
    .line 171
    .line 172
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->suspendableTimer$delegate:Lms/i;

    .line 177
    .line 178
    new-instance p1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$clickCoordinateTracker$2;

    .line 179
    .line 180
    invoke-direct {p1, p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$clickCoordinateTracker$2;-><init>(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;)V

    .line 181
    .line 182
    .line 183
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->clickCoordinateTracker$delegate:Lms/i;

    .line 188
    .line 189
    return-void
.end method

.method public static synthetic a(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->prepare$lambda-14(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getAdWidget$p(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;)Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->adWidget:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getAdvertisement$p(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;)Lcom/vungle/ads/internal/model/AdPayload;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getEventMap$cp()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->eventMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getLogEntry(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;)Lcom/vungle/ads/internal/util/LogEntry;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/LogEntry;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getTpatSender(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;)Lcom/vungle/ads/internal/network/TpatSender;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getTpatSender()Lcom/vungle/ads/internal/network/TpatSender;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$handleWebViewException(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;Lcom/vungle/ads/VungleError;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->handleWebViewException(Lcom/vungle/ads/VungleError;ZLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$reportErrorAndCloseAd(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;Lcom/vungle/ads/VungleError;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->reportErrorAndCloseAd(Lcom/vungle/ads/VungleError;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->processCommand$lambda-12(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->processCommand$lambda-10(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final closeView()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->adStartTime:Ljava/lang/Long;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    sub-long/2addr v2, v0

    .line 14
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 15
    .line 16
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->platform:Lcom/vungle/ads/internal/platform/Platform;

    .line 21
    .line 22
    invoke-interface {v2}, Lcom/vungle/ads/internal/platform/Platform;->getVolumeLevel()F

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "ad.close"

    .line 31
    .line 32
    invoke-virtual {v0, v3, v1, v2}, Lcom/vungle/ads/internal/model/AdPayload;->getTpatUrls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    check-cast v0, Ljava/lang/Iterable;

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Ljava/lang/String;

    .line 55
    .line 56
    new-instance v2, Lcom/vungle/ads/internal/network/TpatRequest$Builder;

    .line 57
    .line 58
    invoke-direct {v2, v1}, Lcom/vungle/ads/internal/network/TpatRequest$Builder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Lcom/vungle/ads/internal/network/TpatRequest$Builder;->tpatKey(Ljava/lang/String;)Lcom/vungle/ads/internal/network/TpatRequest$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/LogEntry;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Lcom/vungle/ads/internal/network/TpatRequest$Builder;->withLogEntry(Lcom/vungle/ads/internal/util/LogEntry;)Lcom/vungle/ads/internal/network/TpatRequest$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lcom/vungle/ads/internal/network/TpatRequest$Builder;->build()Lcom/vungle/ads/internal/network/TpatRequest;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getTpatSender()Lcom/vungle/ads/internal/network/TpatSender;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    const/4 v4, 0x2

    .line 82
    const/4 v5, 0x0

    .line 83
    const/4 v6, 0x0

    .line 84
    invoke-static {v2, v1, v6, v4, v5}, Lcom/vungle/ads/internal/network/TpatSender;->sendTpat$default(Lcom/vungle/ads/internal/network/TpatSender;Lcom/vungle/ads/internal/network/TpatRequest;ZILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    sget-object v0, Lcom/vungle/ads/internal/util/ThreadUtil;->INSTANCE:Lcom/vungle/ads/internal/util/ThreadUtil;

    .line 89
    .line 90
    new-instance v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$closeView$2;

    .line 91
    .line 92
    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$closeView$2;-><init>(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/util/ThreadUtil;->runOnUiThread(Lkotlin/jvm/functions/Function0;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public static synthetic d(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->processCommand$lambda-11(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->processCommand$lambda-5(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic getAdStartTime$vungle_ads_release$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getBackEnabled$vungle_ads_release$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getBus$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getClickCoordinateTracker$vungle_ads_release$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getHeartbeatEnabled$vungle_ads_release$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getLastUserInteractionTimestamp$vungle_ads_release$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    return-void
.end method

.method private final getLogEntry()Lcom/vungle/ads/internal/util/LogEntry;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->logEntry$delegate:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/vungle/ads/internal/util/LogEntry;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getPathProvider()Lcom/vungle/ads/internal/util/PathProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->pathProvider$delegate:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/vungle/ads/internal/util/PathProvider;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getScheduler()Lcom/vungle/ads/internal/util/HandlerScheduler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->scheduler$delegate:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/vungle/ads/internal/util/HandlerScheduler;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getSignalManager()Lcom/vungle/ads/internal/signals/SignalManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->signalManager$delegate:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/vungle/ads/internal/signals/SignalManager;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic getSuspendableTimer$vungle_ads_release$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    return-void
.end method

.method private final getTpatSender()Lcom/vungle/ads/internal/network/TpatSender;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->tpatSender$delegate:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/vungle/ads/internal/network/TpatSender;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic getUserId$vungle_ads_release$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getVideoLength$vungle_ads_release$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    return-void
.end method

.method private final getVungleApiClient()Lcom/vungle/ads/internal/network/VungleApiClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->vungleApiClient$delegate:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/vungle/ads/internal/network/VungleApiClient;

    .line 8
    .line 9
    return-object v0
.end method

.method private final handleWebViewException(Lcom/vungle/ads/VungleError;ZLjava/lang/String;)V
    .locals 3

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
    const-string v2, "handleWebViewException: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->getLocalizedMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, ", fatal: "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, ", errorMsg: "

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    const-string v1, "MRAIDPresenter"

    .line 41
    .line 42
    invoke-virtual {v0, v1, p3}, Lcom/vungle/ads/internal/util/Logger$Companion;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/LogEntry;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    invoke-virtual {p1, p3}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/LogEntry;)Lcom/vungle/ads/VungleError;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    invoke-virtual {p3}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 54
    .line 55
    .line 56
    if-eqz p2, :cond_0

    .line 57
    .line 58
    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->makeBusError(Lcom/vungle/ads/VungleError;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->closeView()V

    .line 62
    .line 63
    .line 64
    :cond_0
    return-void
.end method

.method static synthetic handleWebViewException$default(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;Lcom/vungle/ads/VungleError;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->handleWebViewException(Lcom/vungle/ads/VungleError;ZLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic isDestroying$vungle_ads_release$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    return-void
.end method

.method private final loadMraidAd(Ljava/io/File;)Lcom/vungle/ads/VungleError;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v1, "index.html"

    .line 8
    .line 9
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    new-instance p1, Lcom/vungle/ads/IndexHtmlError;

    .line 19
    .line 20
    sget-object v1, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->AD_HTML_FAILED_TO_LOAD:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v3, "Fail to load html "

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-direct {p1, v1, v0}, Lcom/vungle/ads/IndexHtmlError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object p1

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->adWidget:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v2, "file://"

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->showWebsite(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const/4 p1, 0x0

    .line 74
    return-object p1
.end method

.method private final makeBusError(Lcom/vungle/ads/VungleError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->bus:Lcom/vungle/ads/internal/presenter/AdEventListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->placement:Lcom/vungle/ads/internal/model/Placement;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/Placement;->getReferenceId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, p1, v1}, Lcom/vungle/ads/internal/presenter/AdEventListener;->onError(Lcom/vungle/ads/VungleError;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private static final prepare$lambda-14(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->backEnabled:Z

    .line 8
    .line 9
    return-void
.end method

.method private static final processCommand$lambda-10(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;)V
    .locals 10

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->placement:Lcom/vungle/ads/internal/model/Placement;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/Placement;->getReferenceId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v6

    .line 12
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/AdPayload;->advAppId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    iget-object v4, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->adStartTime:Ljava/lang/Long;

    .line 19
    .line 20
    iget-object v7, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->userId:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;

    .line 23
    .line 24
    const/4 v8, 0x3

    .line 25
    const/4 v9, 0x0

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    move-object v1, v0

    .line 29
    invoke-direct/range {v1 .. v9}, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;-><init>(Ljava/util/List;Lcom/vungle/ads/internal/model/CommonRequestBody$AdSizeParam;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getVungleApiClient()Lcom/vungle/ads/internal/network/VungleApiClient;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1, v0}, Lcom/vungle/ads/internal/network/VungleApiClient;->ri(Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;)Lcom/vungle/ads/internal/network/Call;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    sget-object v0, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    .line 43
    .line 44
    const-string v1, "MRAIDPresenter"

    .line 45
    .line 46
    const-string v2, "Invalid ri call."

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/util/Logger$Companion;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    new-instance v0, Lcom/vungle/ads/NetworkUnreachable;

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v2, "Error RI API for placement: "

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->placement:Lcom/vungle/ads/internal/model/Placement;

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/Placement;->getReferenceId()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-direct {v0, v1}, Lcom/vungle/ads/NetworkUnreachable;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/LogEntry;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {v0, p0}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/LogEntry;)Lcom/vungle/ads/VungleError;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_0
    new-instance v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$processCommand$7$1;

    .line 92
    .line 93
    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$processCommand$7$1;-><init>(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v0, v1}, Lcom/vungle/ads/internal/network/Call;->enqueue(Lcom/vungle/ads/internal/network/Callback;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method private static final processCommand$lambda-11(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getSuspendableTimer$vungle_ads_release()Lcom/vungle/ads/internal/util/SuspendableTimer;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/SuspendableTimer;->reset()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static final processCommand$lambda-12(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;J)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->vungleWebClient:Lcom/vungle/ads/internal/ui/VungleWebClient;

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/ui/VungleWebClient;->notifyDiskAvailableSize(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static final processCommand$lambda-5(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->adWidget:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private final recordPlayAssetMetric()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/AdPayload;->getAssetsFullyDownloaded()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->LOCAL_ASSETS_USED:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->REMOTE_ASSETS_USED:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 13
    .line 14
    :goto_0
    new-instance v2, Lcom/vungle/ads/SingleValueMetric;

    .line 15
    .line 16
    invoke-direct {v2, v0}, Lcom/vungle/ads/SingleValueMetric;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 17
    .line 18
    .line 19
    sget-object v1, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/LogEntry;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/4 v5, 0x4

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-static/range {v1 .. v6}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/SingleValueMetric;Lcom/vungle/ads/internal/util/LogEntry;Ljava/lang/String;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private final reportErrorAndCloseAd(Lcom/vungle/ads/VungleError;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/LogEntry;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/LogEntry;)Lcom/vungle/ads/VungleError;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->makeBusError(Lcom/vungle/ads/VungleError;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->closeView()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final triggerEventMetricForTpat(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->eventMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    .line 12
    .line 13
    new-instance v1, Lcom/vungle/ads/SingleValueMetric;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Lcom/vungle/ads/SingleValueMetric;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/LogEntry;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v4, 0x4

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/SingleValueMetric;Lcom/vungle/ads/internal/util/LogEntry;Ljava/lang/String;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public final detach(I)V
    .locals 4
    .param p1    # I
        .annotation runtime Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$AdStopReason;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    .line 2
    .line 3
    const-string v1, "MRAIDPresenter"

    .line 4
    .line 5
    const-string v2, "detach()"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/util/Logger$Companion;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    and-int/lit8 v0, p1, 0x1

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    move v0, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v1

    .line 19
    :goto_0
    and-int/lit8 p1, p1, 0x2

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    move v1, v2

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->vungleWebClient:Lcom/vungle/ads/internal/ui/VungleWebClient;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {p1, v3}, Lcom/vungle/ads/internal/ui/VungleWebClient;->setWebViewObserver(Lcom/vungle/ads/internal/omsdk/WebViewObserver;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->vungleWebClient:Lcom/vungle/ads/internal/ui/VungleWebClient;

    .line 31
    .line 32
    invoke-virtual {p1, v3}, Lcom/vungle/ads/internal/ui/VungleWebClient;->setMraidDelegate(Lcom/vungle/ads/internal/ui/view/WebViewAPI$MraidDelegate;)V

    .line 33
    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    iget-object p1, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->isDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_2

    .line 46
    .line 47
    iget-object p1, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->bus:Lcom/vungle/ads/internal/presenter/AdEventListener;

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->placement:Lcom/vungle/ads/internal/model/Placement;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/Placement;->getReferenceId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v1, "end"

    .line 58
    .line 59
    invoke-virtual {p1, v1, v3, v0}, Lcom/vungle/ads/internal/presenter/AdEventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    iget-object p1, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->omTracker:Lcom/vungle/ads/internal/omsdk/OMTracker;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/vungle/ads/internal/omsdk/OMTracker;->stop()J

    .line 65
    .line 66
    .line 67
    move-result-wide v0

    .line 68
    iget-object p1, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->adWidget:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;

    .line 69
    .line 70
    invoke-virtual {p1, v0, v1}, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->destroyWebView(J)V

    .line 71
    .line 72
    .line 73
    iget-boolean p1, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->heartbeatEnabled:Z

    .line 74
    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getSuspendableTimer$vungle_ads_release()Lcom/vungle/ads/internal/util/SuspendableTimer;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/vungle/ads/internal/util/SuspendableTimer;->cancel()V

    .line 82
    .line 83
    .line 84
    :cond_3
    return-void
.end method

.method public final getAdStartTime$vungle_ads_release()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->adStartTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBackEnabled$vungle_ads_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->backEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getBus()Lcom/vungle/ads/internal/presenter/AdEventListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->bus:Lcom/vungle/ads/internal/presenter/AdEventListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getClickCoordinateTracker$vungle_ads_release()Lcom/vungle/ads/internal/ClickCoordinateTracker;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->clickCoordinateTracker$delegate:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/vungle/ads/internal/ClickCoordinateTracker;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getHeartbeatEnabled$vungle_ads_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->heartbeatEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getLastUserInteractionTimestamp$vungle_ads_release()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->lastUserInteractionTimestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSuspendableTimer$vungle_ads_release()Lcom/vungle/ads/internal/util/SuspendableTimer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->suspendableTimer$delegate:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/vungle/ads/internal/util/SuspendableTimer;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getUserId$vungle_ads_release()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->userId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVideoLength$vungle_ads_release()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->videoLength:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getViewStatus()Ljava/lang/Long;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->adViewed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->cp0Fired:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, 0x3

    .line 10
    .line 11
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-boolean v1, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->cp0Fired:Z

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    const-wide/16 v0, 0x1

    .line 21
    .line 22
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    if-nez v0, :cond_2

    .line 28
    .line 29
    const-wide/16 v0, 0x2

    .line 30
    .line 31
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0
.end method

.method public final handleExit()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->backEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->adWidget:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;

    .line 6
    .line 7
    const-string v1, "javascript:window.vungle.mraidBridgeExt.requestMRAIDClose()"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->showWebsite(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final isDestroying$vungle_ads_release()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->isDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public onReceivedError(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "errorDesc"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    new-instance p2, Lcom/vungle/ads/WebViewError;

    .line 9
    .line 10
    invoke-direct {p2, p1}, Lcom/vungle/ads/WebViewError;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p2}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->reportErrorAndCloseAd(Lcom/vungle/ads/VungleError;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public onRenderProcessUnresponsive(Landroid/webkit/WebView;Landroid/webkit/WebViewRenderProcess;)V
    .locals 6
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/WebViewRenderProcess;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v1, Lcom/vungle/ads/WebViewRenderProcessUnresponsive;

    .line 2
    .line 3
    const-string p1, "fatal=true"

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/vungle/ads/WebViewRenderProcessUnresponsive;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v4, 0x4

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    move-object v0, p0

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->handleWebViewException$default(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;Lcom/vungle/ads/VungleError;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onViewConfigurationChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->vungleWebClient:Lcom/vungle/ads/internal/ui/VungleWebClient;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/ui/VungleWebClient;->notifyPropertiesChange(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onViewTouched(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    .line 4
    .line 5
    const-string v1, "MRAIDPresenter"

    .line 6
    .line 7
    const-string v2, "user interaction"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/util/Logger$Companion;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iput-wide v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->lastUserInteractionTimestamp:J

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getClickCoordinateTracker$vungle_ads_release()Lcom/vungle/ads/internal/ClickCoordinateTracker;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/ClickCoordinateTracker;->trackCoordinate(Landroid/view/MotionEvent;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public onWebRenderingProcessGone(Landroid/webkit/WebView;Ljava/lang/Boolean;)Z
    .locals 6
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x1

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    move v2, p2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v2, p1

    .line 11
    :goto_0
    new-instance v1, Lcom/vungle/ads/WebViewRenderingProcessGone;

    .line 12
    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v0, "didCrash="

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-direct {v1, p2}, Lcom/vungle/ads/WebViewRenderingProcessGone;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v4, 0x4

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v3, 0x0

    .line 36
    move-object v0, p0

    .line 37
    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->handleWebViewException$default(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;Lcom/vungle/ads/VungleError;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return p1
.end method

.method public final prepare()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->isDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->adWidget:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->vungleWebClient:Lcom/vungle/ads/internal/ui/VungleWebClient;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 12
    .line 13
    invoke-virtual {v3}, Lcom/vungle/ads/internal/model/AdPayload;->getWebViewSettings()Lcom/vungle/ads/internal/model/AdPayload$WebViewSettings;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v0, v2, v3}, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->linkWebView(Landroid/webkit/WebViewClient;Lcom/vungle/ads/internal/model/AdPayload$WebViewSettings;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/AdPayload;->getAdConfig()Lcom/vungle/ads/AdConfig;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v2, 0x1

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/vungle/ads/AdConfig;->getSettings()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-lez v0, :cond_1

    .line 34
    .line 35
    const/4 v3, 0x2

    .line 36
    and-int/2addr v0, v3

    .line 37
    if-ne v0, v3, :cond_0

    .line 38
    .line 39
    move v0, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v0, v1

    .line 42
    :goto_0
    iput-boolean v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->backEnabled:Z

    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/AdPayload;->heartbeatEnabled()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iput-boolean v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->heartbeatEnabled:Z

    .line 51
    .line 52
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/AdPayload;->getAdConfig()Lcom/vungle/ads/AdConfig;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const/4 v3, 0x0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/vungle/ads/AdConfig;->getAdOrientation()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    move-object v0, v3

    .line 71
    :goto_1
    if-nez v0, :cond_3

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_4

    .line 79
    .line 80
    const/4 v0, 0x7

    .line 81
    goto :goto_4

    .line 82
    :cond_4
    :goto_2
    if-nez v0, :cond_5

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-ne v0, v2, :cond_6

    .line 90
    .line 91
    const/4 v0, 0x6

    .line 92
    goto :goto_4

    .line 93
    :cond_6
    :goto_3
    const/4 v0, 0x4

    .line 94
    :goto_4
    iget-object v4, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->adWidget:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;

    .line 95
    .line 96
    invoke-virtual {v4, v0}, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->setOrientation(I)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->omTracker:Lcom/vungle/ads/internal/omsdk/OMTracker;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/vungle/ads/internal/omsdk/OMTracker;->start()V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->vungleWebClient:Lcom/vungle/ads/internal/ui/VungleWebClient;

    .line 105
    .line 106
    invoke-virtual {v0, p0}, Lcom/vungle/ads/internal/ui/VungleWebClient;->setMraidDelegate(Lcom/vungle/ads/internal/ui/view/WebViewAPI$MraidDelegate;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->vungleWebClient:Lcom/vungle/ads/internal/ui/VungleWebClient;

    .line 110
    .line 111
    invoke-virtual {v0, p0}, Lcom/vungle/ads/internal/ui/VungleWebClient;->setErrorHandler(Lcom/vungle/ads/internal/ui/view/WebViewAPI$WebClientErrorHandler;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/AdPayload;->getAssetDirectory()Ljava/io/File;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    if-eqz v0, :cond_18

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-nez v4, :cond_7

    .line 127
    .line 128
    goto/16 :goto_7

    .line 129
    .line 130
    :cond_7
    invoke-direct {p0, v0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->loadMraidAd(Ljava/io/File;)Lcom/vungle/ads/VungleError;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    if-eqz v0, :cond_8

    .line 135
    .line 136
    invoke-direct {p0, v0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->reportErrorAndCloseAd(Lcom/vungle/ads/VungleError;)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 141
    .line 142
    .line 143
    move-result-wide v4

    .line 144
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iput-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->adStartTime:Ljava/lang/Long;

    .line 149
    .line 150
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->presenterDelegate:Lcom/vungle/ads/internal/presenter/PresenterDelegate;

    .line 151
    .line 152
    if-eqz v0, :cond_9

    .line 153
    .line 154
    invoke-interface {v0}, Lcom/vungle/ads/internal/presenter/PresenterDelegate;->getUserId()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    goto :goto_5

    .line 159
    :cond_9
    move-object v0, v3

    .line 160
    :goto_5
    iput-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->userId:Ljava/lang/String;

    .line 161
    .line 162
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->presenterDelegate:Lcom/vungle/ads/internal/presenter/PresenterDelegate;

    .line 163
    .line 164
    const-string v4, ""

    .line 165
    .line 166
    if-eqz v0, :cond_a

    .line 167
    .line 168
    invoke-interface {v0}, Lcom/vungle/ads/internal/presenter/PresenterDelegate;->getAlertTitleText()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    if-nez v0, :cond_b

    .line 173
    .line 174
    :cond_a
    move-object v0, v4

    .line 175
    :cond_b
    iget-object v5, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->presenterDelegate:Lcom/vungle/ads/internal/presenter/PresenterDelegate;

    .line 176
    .line 177
    if-eqz v5, :cond_c

    .line 178
    .line 179
    invoke-interface {v5}, Lcom/vungle/ads/internal/presenter/PresenterDelegate;->getAlertBodyText()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    if-nez v5, :cond_d

    .line 184
    .line 185
    :cond_c
    move-object v5, v4

    .line 186
    :cond_d
    iget-object v6, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->presenterDelegate:Lcom/vungle/ads/internal/presenter/PresenterDelegate;

    .line 187
    .line 188
    if-eqz v6, :cond_e

    .line 189
    .line 190
    invoke-interface {v6}, Lcom/vungle/ads/internal/presenter/PresenterDelegate;->getAlertContinueButtonText()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    if-nez v6, :cond_f

    .line 195
    .line 196
    :cond_e
    move-object v6, v4

    .line 197
    :cond_f
    iget-object v7, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->presenterDelegate:Lcom/vungle/ads/internal/presenter/PresenterDelegate;

    .line 198
    .line 199
    if-eqz v7, :cond_10

    .line 200
    .line 201
    invoke-interface {v7}, Lcom/vungle/ads/internal/presenter/PresenterDelegate;->getAlertCloseButtonText()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    if-nez v7, :cond_11

    .line 206
    .line 207
    :cond_10
    move-object v7, v4

    .line 208
    :cond_11
    iget-object v8, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 209
    .line 210
    invoke-virtual {v8, v0, v5, v6, v7}, Lcom/vungle/ads/internal/model/AdPayload;->setIncentivizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    .line 214
    .line 215
    invoke-virtual {v0}, Lcom/vungle/ads/internal/ConfigManager;->getGDPRIsCountryDataProtected()Z

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    if-eqz v5, :cond_12

    .line 220
    .line 221
    sget-object v5, Lcom/vungle/ads/internal/privacy/PrivacyManager;->INSTANCE:Lcom/vungle/ads/internal/privacy/PrivacyManager;

    .line 222
    .line 223
    invoke-virtual {v5}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->getConsentStatus()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    const-string v6, "unknown"

    .line 228
    .line 229
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v5

    .line 233
    if-eqz v5, :cond_12

    .line 234
    .line 235
    move v1, v2

    .line 236
    :cond_12
    iget-object v6, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->vungleWebClient:Lcom/vungle/ads/internal/ui/VungleWebClient;

    .line 237
    .line 238
    invoke-virtual {v0}, Lcom/vungle/ads/internal/ConfigManager;->getGDPRConsentTitle()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v8

    .line 242
    invoke-virtual {v0}, Lcom/vungle/ads/internal/ConfigManager;->getGDPRConsentMessage()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v9

    .line 246
    invoke-virtual {v0}, Lcom/vungle/ads/internal/ConfigManager;->getGDPRButtonAccept()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v10

    .line 250
    invoke-virtual {v0}, Lcom/vungle/ads/internal/ConfigManager;->getGDPRButtonDeny()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v11

    .line 254
    move v7, v1

    .line 255
    invoke-virtual/range {v6 .. v11}, Lcom/vungle/ads/internal/ui/VungleWebClient;->setConsentStatus(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    if-eqz v1, :cond_13

    .line 259
    .line 260
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->INSTANCE:Lcom/vungle/ads/internal/privacy/PrivacyManager;

    .line 261
    .line 262
    const-string v1, "opted_out_by_timeout"

    .line 263
    .line 264
    const-string v5, "vungle_modal"

    .line 265
    .line 266
    invoke-virtual {v0, v1, v5, v4}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->updateGdprConsent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    :cond_13
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 270
    .line 271
    iget-object v1, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->placement:Lcom/vungle/ads/internal/model/Placement;

    .line 272
    .line 273
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/Placement;->isRewardedVideo()Z

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/model/AdPayload;->getShowCloseDelay(Ljava/lang/Boolean;)I

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-lez v0, :cond_14

    .line 286
    .line 287
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getScheduler()Lcom/vungle/ads/internal/util/HandlerScheduler;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    new-instance v2, Lcom/vungle/ads/internal/presenter/e;

    .line 292
    .line 293
    invoke-direct {v2, p0}, Lcom/vungle/ads/internal/presenter/e;-><init>(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;)V

    .line 294
    .line 295
    .line 296
    int-to-long v4, v0

    .line 297
    invoke-virtual {v1, v2, v4, v5}, Lcom/vungle/ads/internal/util/HandlerScheduler;->schedule(Ljava/lang/Runnable;J)V

    .line 298
    .line 299
    .line 300
    goto :goto_6

    .line 301
    :cond_14
    iput-boolean v2, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->backEnabled:Z

    .line 302
    .line 303
    :goto_6
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->bus:Lcom/vungle/ads/internal/presenter/AdEventListener;

    .line 304
    .line 305
    if-eqz v0, :cond_15

    .line 306
    .line 307
    iget-object v1, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->placement:Lcom/vungle/ads/internal/model/Placement;

    .line 308
    .line 309
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/Placement;->getReferenceId()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    const-string v2, "start"

    .line 314
    .line 315
    invoke-virtual {v0, v2, v3, v1}, Lcom/vungle/ads/internal/presenter/AdEventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    :cond_15
    iget-boolean v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->heartbeatEnabled:Z

    .line 319
    .line 320
    if-eqz v0, :cond_16

    .line 321
    .line 322
    invoke-virtual {p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getSuspendableTimer$vungle_ads_release()Lcom/vungle/ads/internal/util/SuspendableTimer;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-virtual {v0}, Lcom/vungle/ads/internal/util/SuspendableTimer;->start()V

    .line 327
    .line 328
    .line 329
    :cond_16
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 330
    .line 331
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/AdPayload;->adLoadOptimizationEnabled()Z

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    if-eqz v0, :cond_17

    .line 336
    .line 337
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->recordPlayAssetMetric()V

    .line 338
    .line 339
    .line 340
    :cond_17
    return-void

    .line 341
    :cond_18
    :goto_7
    new-instance v1, Lcom/vungle/ads/AdNotLoadedCantPlay;

    .line 342
    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .line 347
    .line 348
    const-string v4, "adv dir not exists: "

    .line 349
    .line 350
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    if-eqz v0, :cond_19

    .line 354
    .line 355
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    :cond_19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-direct {v1, v0}, Lcom/vungle/ads/AdNotLoadedCantPlay;-><init>(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    invoke-direct {p0, v1}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->reportErrorAndCloseAd(Lcom/vungle/ads/VungleError;)V

    .line 370
    .line 371
    .line 372
    return-void
.end method

.method public processCommand(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)Z
    .locals 23
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/serialization/json/JsonObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-class v3, Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "command"

    .line 10
    .line 11
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v4, "arguments"

    .line 15
    .line 16
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v4, Landroid/os/Handler;

    .line 20
    .line 21
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const-string v6, "adLeftApplication"

    .line 33
    .line 34
    const-string v7, "adWidget.context"

    .line 35
    .line 36
    const-string v10, "url"

    .line 37
    .line 38
    const/4 v11, 0x2

    .line 39
    const/4 v12, 0x0

    .line 40
    const-string v13, "event"

    .line 41
    .line 42
    const-string v14, "MRAIDPresenter"

    .line 43
    .line 44
    const-string v15, "open"

    .line 45
    .line 46
    const/4 v8, 0x0

    .line 47
    const/4 v9, 0x1

    .line 48
    sparse-switch v5, :sswitch_data_0

    .line 49
    .line 50
    .line 51
    goto/16 :goto_12

    .line 52
    .line 53
    :sswitch_0
    const-string v2, "creativeHeartbeat"

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_0

    .line 60
    .line 61
    goto/16 :goto_12

    .line 62
    .line 63
    :cond_0
    iget-boolean v0, v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->heartbeatEnabled:Z

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    new-instance v0, Lcom/vungle/ads/internal/presenter/c;

    .line 68
    .line 69
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/presenter/c;-><init>(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    .line 74
    .line 75
    :cond_1
    return v9

    .line 76
    :sswitch_1
    const-string v2, "useCustomClose"

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-nez v2, :cond_2

    .line 83
    .line 84
    goto/16 :goto_12

    .line 85
    .line 86
    :cond_2
    return v9

    .line 87
    :sswitch_2
    const-string v2, "getAvailableDiskSpace"

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-nez v2, :cond_3

    .line 94
    .line 95
    goto/16 :goto_12

    .line 96
    .line 97
    :cond_3
    :try_start_0
    iget-object v0, v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->adWidget:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-direct/range {p0 .. p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getPathProvider()Lcom/vungle/ads/internal/util/PathProvider;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const-string v3, "dir.path"

    .line 116
    .line 117
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v0}, Lcom/vungle/ads/internal/util/PathProvider;->getAvailableBytes(Ljava/lang/String;)J

    .line 121
    .line 122
    .line 123
    move-result-wide v2

    .line 124
    new-instance v0, Lcom/vungle/ads/internal/presenter/d;

    .line 125
    .line 126
    invoke-direct {v0, v1, v2, v3}, Lcom/vungle/ads/internal/presenter/d;-><init>(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :catch_0
    sget-object v0, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    .line 134
    .line 135
    const-string v2, "Failed to get available disk space"

    .line 136
    .line 137
    invoke-virtual {v0, v14, v2}, Lcom/vungle/ads/internal/util/Logger$Companion;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    :goto_0
    return v9

    .line 141
    :sswitch_3
    const-string v3, "updateSignals"

    .line 142
    .line 143
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-nez v3, :cond_4

    .line 148
    .line 149
    goto/16 :goto_12

    .line 150
    .line 151
    :cond_4
    sget-object v0, Lcom/vungle/ads/internal/util/JsonUtil;->INSTANCE:Lcom/vungle/ads/internal/util/JsonUtil;

    .line 152
    .line 153
    const-string v3, "signals"

    .line 154
    .line 155
    invoke-virtual {v0, v2, v3}, Lcom/vungle/ads/internal/util/JsonUtil;->getContentStringValue(Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    if-eqz v0, :cond_6

    .line 160
    .line 161
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-nez v2, :cond_5

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getSignalManager()Lcom/vungle/ads/internal/signals/SignalManager;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v2, v0}, Lcom/vungle/ads/internal/signals/SignalManager;->updateTemplateSignals(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :cond_6
    :goto_1
    return v9

    .line 176
    :sswitch_4
    const-string v3, "setOrientationProperties"

    .line 177
    .line 178
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-nez v3, :cond_7

    .line 183
    .line 184
    goto/16 :goto_12

    .line 185
    .line 186
    :cond_7
    sget-object v0, Lcom/vungle/ads/internal/util/JsonUtil;->INSTANCE:Lcom/vungle/ads/internal/util/JsonUtil;

    .line 187
    .line 188
    const-string v3, "forceOrientation"

    .line 189
    .line 190
    invoke-virtual {v0, v2, v3}, Lcom/vungle/ads/internal/util/JsonUtil;->getContentStringValue(Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    if-eqz v0, :cond_a

    .line 195
    .line 196
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-nez v2, :cond_8

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_8
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 204
    .line 205
    const-string v3, "ENGLISH"

    .line 206
    .line 207
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    const-string v2, "this as java.lang.String).toLowerCase(locale)"

    .line 215
    .line 216
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    const-string v2, "landscape"

    .line 220
    .line 221
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-eqz v2, :cond_9

    .line 226
    .line 227
    iget-object v0, v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->adWidget:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;

    .line 228
    .line 229
    const/4 v2, 0x6

    .line 230
    invoke-virtual {v0, v2}, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->setOrientation(I)V

    .line 231
    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_9
    const-string v2, "portrait"

    .line 235
    .line 236
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-eqz v0, :cond_a

    .line 241
    .line 242
    iget-object v0, v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->adWidget:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;

    .line 243
    .line 244
    const/4 v2, 0x7

    .line 245
    invoke-virtual {v0, v2}, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->setOrientation(I)V

    .line 246
    .line 247
    .line 248
    :cond_a
    :goto_2
    return v9

    .line 249
    :sswitch_5
    const-string v3, "error"

    .line 250
    .line 251
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    if-nez v3, :cond_b

    .line 256
    .line 257
    goto/16 :goto_12

    .line 258
    .line 259
    :cond_b
    sget-object v0, Lcom/vungle/ads/internal/util/JsonUtil;->INSTANCE:Lcom/vungle/ads/internal/util/JsonUtil;

    .line 260
    .line 261
    const-string v3, "code"

    .line 262
    .line 263
    invoke-virtual {v0, v2, v3}, Lcom/vungle/ads/internal/util/JsonUtil;->getContentStringValue(Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    const-string v4, "fatal"

    .line 268
    .line 269
    invoke-virtual {v0, v2, v4}, Lcom/vungle/ads/internal/util/JsonUtil;->getContentStringValue(Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 274
    .line 275
    .line 276
    move-result v4

    .line 277
    const-string v5, "errorMessage"

    .line 278
    .line 279
    invoke-virtual {v0, v2, v5}, Lcom/vungle/ads/internal/util/JsonUtil;->getContentStringValue(Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    if-eqz v4, :cond_c

    .line 284
    .line 285
    sget-object v2, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->AD_CLOSED_TEMPLATE_ERROR:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 286
    .line 287
    goto :goto_3

    .line 288
    :cond_c
    sget-object v2, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->MRAID_ERROR:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 289
    .line 290
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string v3, " : "

    .line 299
    .line 300
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    new-instance v3, Lcom/vungle/ads/MraidTemplateError;

    .line 311
    .line 312
    invoke-direct {v3, v2, v0}, Lcom/vungle/ads/MraidTemplateError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    sget-object v2, Lcom/vungle/ads/internal/util/ThreadUtil;->INSTANCE:Lcom/vungle/ads/internal/util/ThreadUtil;

    .line 316
    .line 317
    new-instance v5, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$processCommand$8;

    .line 318
    .line 319
    invoke-direct {v5, v1, v3, v4, v0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$processCommand$8;-><init>(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;Lcom/vungle/ads/MraidTemplateError;ZLjava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2, v5}, Lcom/vungle/ads/internal/util/ThreadUtil;->runOnUiThread(Lkotlin/jvm/functions/Function0;)V

    .line 323
    .line 324
    .line 325
    return v9

    .line 326
    :sswitch_6
    const-string v2, "close"

    .line 327
    .line 328
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    if-nez v2, :cond_d

    .line 333
    .line 334
    goto/16 :goto_12

    .line 335
    .line 336
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->closeView()V

    .line 337
    .line 338
    .line 339
    return v9

    .line 340
    :sswitch_7
    const-string v3, "tpat"

    .line 341
    .line 342
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    if-nez v3, :cond_e

    .line 347
    .line 348
    goto/16 :goto_12

    .line 349
    .line 350
    :cond_e
    sget-object v0, Lcom/vungle/ads/internal/util/JsonUtil;->INSTANCE:Lcom/vungle/ads/internal/util/JsonUtil;

    .line 351
    .line 352
    invoke-virtual {v0, v2, v13}, Lcom/vungle/ads/internal/util/JsonUtil;->getContentStringValue(Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    if-eqz v0, :cond_15

    .line 357
    .line 358
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    if-nez v2, :cond_f

    .line 363
    .line 364
    goto/16 :goto_6

    .line 365
    .line 366
    :cond_f
    invoke-direct {v1, v0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->triggerEventMetricForTpat(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    const-string v10, "checkpoint.0"

    .line 370
    .line 371
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    if-eqz v2, :cond_10

    .line 376
    .line 377
    iget-object v2, v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 378
    .line 379
    iget-object v3, v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->platform:Lcom/vungle/ads/internal/platform/Platform;

    .line 380
    .line 381
    invoke-interface {v3}, Lcom/vungle/ads/internal/platform/Platform;->getCarrierName()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    iget-object v4, v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->platform:Lcom/vungle/ads/internal/platform/Platform;

    .line 386
    .line 387
    invoke-interface {v4}, Lcom/vungle/ads/internal/platform/Platform;->getVolumeLevel()F

    .line 388
    .line 389
    .line 390
    move-result v4

    .line 391
    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v4

    .line 395
    invoke-virtual {v2, v0, v3, v4}, Lcom/vungle/ads/internal/model/AdPayload;->getTpatUrls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    goto :goto_4

    .line 400
    :cond_10
    const-string v2, "video.length"

    .line 401
    .line 402
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result v2

    .line 406
    if-eqz v2, :cond_11

    .line 407
    .line 408
    iget-object v2, v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 409
    .line 410
    iget-wide v3, v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->videoLength:J

    .line 411
    .line 412
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v4

    .line 416
    const/4 v6, 0x4

    .line 417
    const/4 v7, 0x0

    .line 418
    const/4 v5, 0x0

    .line 419
    move-object v3, v0

    .line 420
    invoke-static/range {v2 .. v7}, Lcom/vungle/ads/internal/model/AdPayload;->getTpatUrls$default(Lcom/vungle/ads/internal/model/AdPayload;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    goto :goto_4

    .line 425
    :cond_11
    iget-object v2, v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 426
    .line 427
    const/4 v6, 0x6

    .line 428
    const/4 v7, 0x0

    .line 429
    const/4 v4, 0x0

    .line 430
    const/4 v5, 0x0

    .line 431
    move-object v3, v0

    .line 432
    invoke-static/range {v2 .. v7}, Lcom/vungle/ads/internal/model/AdPayload;->getTpatUrls$default(Lcom/vungle/ads/internal/model/AdPayload;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    :goto_4
    if-eqz v2, :cond_13

    .line 437
    .line 438
    check-cast v2, Ljava/lang/Iterable;

    .line 439
    .line 440
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 445
    .line 446
    .line 447
    move-result v3

    .line 448
    if-eqz v3, :cond_12

    .line 449
    .line 450
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v3

    .line 454
    check-cast v3, Ljava/lang/String;

    .line 455
    .line 456
    new-instance v4, Lcom/vungle/ads/internal/network/TpatRequest$Builder;

    .line 457
    .line 458
    invoke-direct {v4, v3}, Lcom/vungle/ads/internal/network/TpatRequest$Builder;-><init>(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v4, v0}, Lcom/vungle/ads/internal/network/TpatRequest$Builder;->tpatKey(Ljava/lang/String;)Lcom/vungle/ads/internal/network/TpatRequest$Builder;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    invoke-direct/range {p0 .. p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/LogEntry;

    .line 466
    .line 467
    .line 468
    move-result-object v4

    .line 469
    invoke-virtual {v3, v4}, Lcom/vungle/ads/internal/network/TpatRequest$Builder;->withLogEntry(Lcom/vungle/ads/internal/util/LogEntry;)Lcom/vungle/ads/internal/network/TpatRequest$Builder;

    .line 470
    .line 471
    .line 472
    move-result-object v3

    .line 473
    invoke-virtual {v3}, Lcom/vungle/ads/internal/network/TpatRequest$Builder;->build()Lcom/vungle/ads/internal/network/TpatRequest;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    invoke-direct/range {p0 .. p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getTpatSender()Lcom/vungle/ads/internal/network/TpatSender;

    .line 478
    .line 479
    .line 480
    move-result-object v4

    .line 481
    invoke-static {v4, v3, v12, v11, v8}, Lcom/vungle/ads/internal/network/TpatSender;->sendTpat$default(Lcom/vungle/ads/internal/network/TpatSender;Lcom/vungle/ads/internal/network/TpatRequest;ZILjava/lang/Object;)V

    .line 482
    .line 483
    .line 484
    goto :goto_5

    .line 485
    :cond_12
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 486
    .line 487
    :cond_13
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    if-eqz v0, :cond_14

    .line 492
    .line 493
    iput-boolean v9, v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->cp0Fired:Z

    .line 494
    .line 495
    :cond_14
    return v9

    .line 496
    :cond_15
    :goto_6
    new-instance v0, Lcom/vungle/ads/TpatError;

    .line 497
    .line 498
    sget-object v2, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->EMPTY_TPAT_ERROR:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 499
    .line 500
    const-string v3, "Empty tpat key"

    .line 501
    .line 502
    invoke-direct {v0, v2, v3}, Lcom/vungle/ads/TpatError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    invoke-direct/range {p0 .. p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/LogEntry;

    .line 506
    .line 507
    .line 508
    move-result-object v2

    .line 509
    invoke-virtual {v0, v2}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/LogEntry;)Lcom/vungle/ads/VungleError;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 514
    .line 515
    .line 516
    return v9

    .line 517
    :sswitch_8
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 518
    .line 519
    .line 520
    move-result v3

    .line 521
    if-nez v3, :cond_17

    .line 522
    .line 523
    goto/16 :goto_12

    .line 524
    .line 525
    :sswitch_9
    const-string v2, "useCustomPrivacy"

    .line 526
    .line 527
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    move-result v2

    .line 531
    if-nez v2, :cond_16

    .line 532
    .line 533
    goto/16 :goto_12

    .line 534
    .line 535
    :cond_16
    return v9

    .line 536
    :sswitch_a
    const-string v3, "openNonMraid"

    .line 537
    .line 538
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    move-result v3

    .line 542
    if-nez v3, :cond_17

    .line 543
    .line 544
    goto/16 :goto_12

    .line 545
    .line 546
    :cond_17
    iget-object v0, v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 547
    .line 548
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/AdPayload;->adUnit()Lcom/vungle/ads/internal/model/AdPayload$AdUnit;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    if-eqz v0, :cond_18

    .line 553
    .line 554
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/AdPayload$AdUnit;->getDeeplinkUrl()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v8

    .line 558
    :cond_18
    sget-object v0, Lcom/vungle/ads/internal/util/JsonUtil;->INSTANCE:Lcom/vungle/ads/internal/util/JsonUtil;

    .line 559
    .line 560
    invoke-virtual {v0, v2, v10}, Lcom/vungle/ads/internal/util/JsonUtil;->getContentStringValue(Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    sget-object v2, Lcom/vungle/ads/internal/util/FileUtility;->INSTANCE:Lcom/vungle/ads/internal/util/FileUtility;

    .line 565
    .line 566
    invoke-virtual {v2, v0}, Lcom/vungle/ads/internal/util/FileUtility;->isValidUrl(Ljava/lang/String;)Z

    .line 567
    .line 568
    .line 569
    move-result v2

    .line 570
    if-nez v2, :cond_19

    .line 571
    .line 572
    new-instance v2, Lcom/vungle/ads/InvalidCTAUrl;

    .line 573
    .line 574
    new-instance v3, Ljava/lang/StringBuilder;

    .line 575
    .line 576
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 577
    .line 578
    .line 579
    const-string v4, "Unable to open CTA Url ("

    .line 580
    .line 581
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    const/16 v4, 0x29

    .line 588
    .line 589
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v3

    .line 596
    invoke-direct {v2, v3}, Lcom/vungle/ads/InvalidCTAUrl;-><init>(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    invoke-direct/range {p0 .. p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/LogEntry;

    .line 600
    .line 601
    .line 602
    move-result-object v3

    .line 603
    invoke-virtual {v2, v3}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/LogEntry;)Lcom/vungle/ads/VungleError;

    .line 604
    .line 605
    .line 606
    move-result-object v2

    .line 607
    invoke-virtual {v2}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 608
    .line 609
    .line 610
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->shouldBlockAutoRedirect$vungle_ads_release()Z

    .line 611
    .line 612
    .line 613
    move-result v2

    .line 614
    if-eqz v2, :cond_1a

    .line 615
    .line 616
    const-wide/16 v2, 0x0

    .line 617
    .line 618
    iput-wide v2, v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->lastUserInteractionTimestamp:J

    .line 619
    .line 620
    sget-object v16, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    .line 621
    .line 622
    new-instance v0, Lcom/vungle/ads/SingleValueMetric;

    .line 623
    .line 624
    sget-object v2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->BANNER_AUTO_REDIRECT:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 625
    .line 626
    invoke-direct {v0, v2}, Lcom/vungle/ads/SingleValueMetric;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 627
    .line 628
    .line 629
    invoke-direct/range {p0 .. p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/LogEntry;

    .line 630
    .line 631
    .line 632
    move-result-object v18

    .line 633
    const/16 v20, 0x4

    .line 634
    .line 635
    const/16 v21, 0x0

    .line 636
    .line 637
    const/16 v19, 0x0

    .line 638
    .line 639
    move-object/from16 v17, v0

    .line 640
    .line 641
    invoke-static/range {v16 .. v21}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/SingleValueMetric;Lcom/vungle/ads/internal/util/LogEntry;Ljava/lang/String;ILjava/lang/Object;)V

    .line 642
    .line 643
    .line 644
    return v9

    .line 645
    :cond_1a
    const-wide/16 v2, 0x0

    .line 646
    .line 647
    iput-wide v2, v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->lastUserInteractionTimestamp:J

    .line 648
    .line 649
    iget-object v2, v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->adWidget:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;

    .line 650
    .line 651
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 652
    .line 653
    .line 654
    move-result-object v2

    .line 655
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    invoke-direct/range {p0 .. p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/LogEntry;

    .line 659
    .line 660
    .line 661
    move-result-object v3

    .line 662
    new-instance v4, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$processCommand$launched$1;

    .line 663
    .line 664
    invoke-direct {v4, v8, v1}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$processCommand$launched$1;-><init>(Ljava/lang/String;Lcom/vungle/ads/internal/presenter/MRAIDPresenter;)V

    .line 665
    .line 666
    .line 667
    invoke-static {v8, v0, v2, v3, v4}, Lcom/vungle/ads/internal/util/ExternalRouter;->launch(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/vungle/ads/internal/util/LogEntry;Lcom/vungle/ads/internal/ui/PresenterAdOpenCallback;)Z

    .line 668
    .line 669
    .line 670
    move-result v0

    .line 671
    iget-object v2, v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->bus:Lcom/vungle/ads/internal/presenter/AdEventListener;

    .line 672
    .line 673
    if-eqz v2, :cond_1b

    .line 674
    .line 675
    iget-object v3, v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->placement:Lcom/vungle/ads/internal/model/Placement;

    .line 676
    .line 677
    invoke-virtual {v3}, Lcom/vungle/ads/internal/model/Placement;->getReferenceId()Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v3

    .line 681
    const-string v4, "adClick"

    .line 682
    .line 683
    invoke-virtual {v2, v15, v4, v3}, Lcom/vungle/ads/internal/presenter/AdEventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 687
    .line 688
    :cond_1b
    if-eqz v0, :cond_1c

    .line 689
    .line 690
    iget-object v0, v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->bus:Lcom/vungle/ads/internal/presenter/AdEventListener;

    .line 691
    .line 692
    if-eqz v0, :cond_1c

    .line 693
    .line 694
    iget-object v2, v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->placement:Lcom/vungle/ads/internal/model/Placement;

    .line 695
    .line 696
    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/Placement;->getReferenceId()Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v2

    .line 700
    invoke-virtual {v0, v15, v6, v2}, Lcom/vungle/ads/internal/presenter/AdEventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 704
    .line 705
    :cond_1c
    return v9

    .line 706
    :sswitch_b
    const-string v3, "openPrivacy"

    .line 707
    .line 708
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 709
    .line 710
    .line 711
    move-result v3

    .line 712
    if-nez v3, :cond_1d

    .line 713
    .line 714
    goto/16 :goto_12

    .line 715
    .line 716
    :cond_1d
    sget-object v16, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    .line 717
    .line 718
    new-instance v0, Lcom/vungle/ads/SingleValueMetric;

    .line 719
    .line 720
    sget-object v3, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->PRIVACY_URL_OPENED:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 721
    .line 722
    invoke-direct {v0, v3}, Lcom/vungle/ads/SingleValueMetric;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 723
    .line 724
    .line 725
    invoke-direct/range {p0 .. p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/LogEntry;

    .line 726
    .line 727
    .line 728
    move-result-object v18

    .line 729
    const/16 v20, 0x4

    .line 730
    .line 731
    const/16 v21, 0x0

    .line 732
    .line 733
    const/16 v19, 0x0

    .line 734
    .line 735
    move-object/from16 v17, v0

    .line 736
    .line 737
    invoke-static/range {v16 .. v21}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/SingleValueMetric;Lcom/vungle/ads/internal/util/LogEntry;Ljava/lang/String;ILjava/lang/Object;)V

    .line 738
    .line 739
    .line 740
    sget-object v0, Lcom/vungle/ads/internal/util/JsonUtil;->INSTANCE:Lcom/vungle/ads/internal/util/JsonUtil;

    .line 741
    .line 742
    invoke-virtual {v0, v2, v10}, Lcom/vungle/ads/internal/util/JsonUtil;->getContentStringValue(Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v0

    .line 746
    if-eqz v0, :cond_22

    .line 747
    .line 748
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 749
    .line 750
    .line 751
    move-result v2

    .line 752
    if-nez v2, :cond_1e

    .line 753
    .line 754
    goto :goto_8

    .line 755
    :cond_1e
    sget-object v2, Lcom/vungle/ads/internal/util/FileUtility;->INSTANCE:Lcom/vungle/ads/internal/util/FileUtility;

    .line 756
    .line 757
    invoke-virtual {v2, v0}, Lcom/vungle/ads/internal/util/FileUtility;->isValidUrl(Ljava/lang/String;)Z

    .line 758
    .line 759
    .line 760
    move-result v2

    .line 761
    if-nez v2, :cond_1f

    .line 762
    .line 763
    goto :goto_8

    .line 764
    :cond_1f
    iget-object v2, v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->adWidget:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;

    .line 765
    .line 766
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 767
    .line 768
    .line 769
    move-result-object v2

    .line 770
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    invoke-direct/range {p0 .. p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/LogEntry;

    .line 774
    .line 775
    .line 776
    move-result-object v19

    .line 777
    const/16 v21, 0x10

    .line 778
    .line 779
    const/16 v22, 0x0

    .line 780
    .line 781
    const/16 v16, 0x0

    .line 782
    .line 783
    const/16 v20, 0x0

    .line 784
    .line 785
    move-object/from16 v17, v0

    .line 786
    .line 787
    move-object/from16 v18, v2

    .line 788
    .line 789
    invoke-static/range {v16 .. v22}, Lcom/vungle/ads/internal/util/ExternalRouter;->launch$default(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/vungle/ads/internal/util/LogEntry;Lcom/vungle/ads/internal/ui/PresenterAdOpenCallback;ILjava/lang/Object;)Z

    .line 790
    .line 791
    .line 792
    move-result v2

    .line 793
    if-eqz v2, :cond_20

    .line 794
    .line 795
    iget-object v0, v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->bus:Lcom/vungle/ads/internal/presenter/AdEventListener;

    .line 796
    .line 797
    if-eqz v0, :cond_21

    .line 798
    .line 799
    iget-object v2, v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->placement:Lcom/vungle/ads/internal/model/Placement;

    .line 800
    .line 801
    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/Placement;->getReferenceId()Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v2

    .line 805
    invoke-virtual {v0, v15, v6, v2}, Lcom/vungle/ads/internal/presenter/AdEventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    .line 807
    .line 808
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 809
    .line 810
    goto :goto_7

    .line 811
    :cond_20
    new-instance v2, Lcom/vungle/ads/PrivacyUrlError;

    .line 812
    .line 813
    invoke-direct {v2, v0}, Lcom/vungle/ads/PrivacyUrlError;-><init>(Ljava/lang/String;)V

    .line 814
    .line 815
    .line 816
    invoke-direct/range {p0 .. p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/LogEntry;

    .line 817
    .line 818
    .line 819
    move-result-object v0

    .line 820
    invoke-virtual {v2, v0}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/LogEntry;)Lcom/vungle/ads/VungleError;

    .line 821
    .line 822
    .line 823
    move-result-object v0

    .line 824
    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 825
    .line 826
    .line 827
    :cond_21
    :goto_7
    return v9

    .line 828
    :cond_22
    :goto_8
    new-instance v2, Lcom/vungle/ads/PrivacyUrlError;

    .line 829
    .line 830
    if-nez v0, :cond_23

    .line 831
    .line 832
    const-string v0, "nonePrivacyUrl"

    .line 833
    .line 834
    :cond_23
    invoke-direct {v2, v0}, Lcom/vungle/ads/PrivacyUrlError;-><init>(Ljava/lang/String;)V

    .line 835
    .line 836
    .line 837
    invoke-direct/range {p0 .. p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/LogEntry;

    .line 838
    .line 839
    .line 840
    move-result-object v0

    .line 841
    invoke-virtual {v2, v0}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/LogEntry;)Lcom/vungle/ads/VungleError;

    .line 842
    .line 843
    .line 844
    move-result-object v0

    .line 845
    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 846
    .line 847
    .line 848
    return v9

    .line 849
    :sswitch_c
    const-string v4, "pingUrl"

    .line 850
    .line 851
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 852
    .line 853
    .line 854
    move-result v5

    .line 855
    if-nez v5, :cond_24

    .line 856
    .line 857
    goto/16 :goto_12

    .line 858
    .line 859
    :cond_24
    sget-object v0, Lcom/vungle/ads/internal/util/JsonUtil;->INSTANCE:Lcom/vungle/ads/internal/util/JsonUtil;

    .line 860
    .line 861
    const-string v5, "requestType"

    .line 862
    .line 863
    invoke-virtual {v0, v2, v5}, Lcom/vungle/ads/internal/util/JsonUtil;->getContentStringValue(Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 864
    .line 865
    .line 866
    move-result-object v5

    .line 867
    if-eqz v5, :cond_25

    .line 868
    .line 869
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 870
    .line 871
    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object v5

    .line 875
    const-string v6, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    .line 876
    .line 877
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 878
    .line 879
    .line 880
    goto :goto_9

    .line 881
    :cond_25
    move-object v5, v8

    .line 882
    :goto_9
    const-string v6, "POST"

    .line 883
    .line 884
    const-string v7, "GET"

    .line 885
    .line 886
    filled-new-array {v7, v6}, [Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object v6

    .line 890
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 891
    .line 892
    .line 893
    move-result-object v6

    .line 894
    check-cast v6, Ljava/lang/Iterable;

    .line 895
    .line 896
    invoke-static {v6, v5}, Lkotlin/collections/CollectionsKt;->g0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 897
    .line 898
    .line 899
    move-result v6

    .line 900
    if-nez v6, :cond_26

    .line 901
    .line 902
    new-instance v0, Lcom/vungle/ads/TpatError;

    .line 903
    .line 904
    sget-object v2, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->TPAT_ERROR:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 905
    .line 906
    new-instance v3, Ljava/lang/StringBuilder;

    .line 907
    .line 908
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 909
    .line 910
    .line 911
    const-string v4, "Invalid request type: "

    .line 912
    .line 913
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    .line 915
    .line 916
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    .line 918
    .line 919
    const-string v4, ". Only \'GET\' and \'POST\' are supported"

    .line 920
    .line 921
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    .line 923
    .line 924
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object v3

    .line 928
    invoke-direct {v0, v2, v3}, Lcom/vungle/ads/TpatError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 929
    .line 930
    .line 931
    invoke-direct/range {p0 .. p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/LogEntry;

    .line 932
    .line 933
    .line 934
    move-result-object v2

    .line 935
    invoke-virtual {v0, v2}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/LogEntry;)Lcom/vungle/ads/VungleError;

    .line 936
    .line 937
    .line 938
    move-result-object v0

    .line 939
    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 940
    .line 941
    .line 942
    return v9

    .line 943
    :cond_26
    invoke-virtual {v0, v2, v10}, Lcom/vungle/ads/internal/util/JsonUtil;->getContentStringValue(Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 944
    .line 945
    .line 946
    move-result-object v6

    .line 947
    const-string v10, "requestData"

    .line 948
    .line 949
    invoke-virtual {v0, v2, v10}, Lcom/vungle/ads/internal/util/JsonUtil;->getContentStringValue(Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 950
    .line 951
    .line 952
    move-result-object v10

    .line 953
    const-string v13, "retry"

    .line 954
    .line 955
    invoke-virtual {v0, v2, v13}, Lcom/vungle/ads/internal/util/JsonUtil;->getContentStringValue(Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 956
    .line 957
    .line 958
    move-result-object v13

    .line 959
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 960
    .line 961
    .line 962
    move-result v13

    .line 963
    const-string v14, "headers"

    .line 964
    .line 965
    invoke-virtual {v0, v2, v14}, Lcom/vungle/ads/internal/util/JsonUtil;->getContentStringValue(Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 966
    .line 967
    .line 968
    move-result-object v0

    .line 969
    if-eqz v0, :cond_27

    .line 970
    .line 971
    :try_start_1
    sget-object v2, Lkotlinx/serialization/json/a;->d:Lkotlinx/serialization/json/a$a;

    .line 972
    .line 973
    invoke-interface {v2}, Lst/j;->getSerializersModule()Lxt/a;

    .line 974
    .line 975
    .line 976
    move-result-object v14

    .line 977
    const-class v15, Ljava/util/Map;

    .line 978
    .line 979
    sget-object v8, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    .line 980
    .line 981
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 982
    .line 983
    .line 984
    move-result-object v11

    .line 985
    invoke-virtual {v8, v11}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    .line 986
    .line 987
    .line 988
    move-result-object v11

    .line 989
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 990
    .line 991
    .line 992
    move-result-object v3

    .line 993
    invoke-virtual {v8, v3}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    .line 994
    .line 995
    .line 996
    move-result-object v3

    .line 997
    invoke-static {v15, v11, v3}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;Lkotlin/reflect/KTypeProjection;Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KType;

    .line 998
    .line 999
    .line 1000
    move-result-object v3

    .line 1001
    invoke-static {v14, v3}, Lst/t;->c(Lxt/a;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v3

    .line 1005
    const-string v8, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 1006
    .line 1007
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1008
    .line 1009
    .line 1010
    check-cast v3, Lst/c;

    .line 1011
    .line 1012
    invoke-interface {v2, v3, v0}, Lst/w;->b(Lst/c;Ljava/lang/String;)Ljava/lang/Object;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v2

    .line 1016
    check-cast v2, Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1017
    .line 1018
    goto :goto_a

    .line 1019
    :catch_1
    new-instance v2, Lcom/vungle/ads/TpatError;

    .line 1020
    .line 1021
    sget-object v3, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->TPAT_ERROR:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 1022
    .line 1023
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1024
    .line 1025
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1026
    .line 1027
    .line 1028
    const-string v5, "Failed to decode header: "

    .line 1029
    .line 1030
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    .line 1032
    .line 1033
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    .line 1035
    .line 1036
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v0

    .line 1040
    invoke-direct {v2, v3, v0}, Lcom/vungle/ads/TpatError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 1041
    .line 1042
    .line 1043
    invoke-direct/range {p0 .. p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/LogEntry;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v0

    .line 1047
    invoke-virtual {v2, v0}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/LogEntry;)Lcom/vungle/ads/VungleError;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v0

    .line 1051
    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 1052
    .line 1053
    .line 1054
    return v9

    .line 1055
    :cond_27
    const/4 v2, 0x0

    .line 1056
    :goto_a
    sget-object v0, Lcom/vungle/ads/internal/util/Utils;->INSTANCE:Lcom/vungle/ads/internal/util/Utils;

    .line 1057
    .line 1058
    invoke-virtual {v0, v6}, Lcom/vungle/ads/internal/util/Utils;->isUrlValid(Ljava/lang/String;)Z

    .line 1059
    .line 1060
    .line 1061
    move-result v0

    .line 1062
    if-nez v0, :cond_28

    .line 1063
    .line 1064
    new-instance v0, Lcom/vungle/ads/TpatError;

    .line 1065
    .line 1066
    sget-object v2, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->EMPTY_TPAT_ERROR:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 1067
    .line 1068
    const-string v3, "URL is missing in params from a template for generic tpat"

    .line 1069
    .line 1070
    invoke-direct {v0, v2, v3}, Lcom/vungle/ads/TpatError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 1071
    .line 1072
    .line 1073
    invoke-direct/range {p0 .. p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/LogEntry;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v2

    .line 1077
    invoke-virtual {v0, v2}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/LogEntry;)Lcom/vungle/ads/VungleError;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v0

    .line 1081
    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 1082
    .line 1083
    .line 1084
    return v9

    .line 1085
    :cond_28
    if-eqz v6, :cond_2a

    .line 1086
    .line 1087
    new-instance v0, Lcom/vungle/ads/internal/network/TpatRequest$Builder;

    .line 1088
    .line 1089
    invoke-direct {v0, v6}, Lcom/vungle/ads/internal/network/TpatRequest$Builder;-><init>(Ljava/lang/String;)V

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v0, v2}, Lcom/vungle/ads/internal/network/TpatRequest$Builder;->headers(Ljava/util/Map;)Lcom/vungle/ads/internal/network/TpatRequest$Builder;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v0

    .line 1096
    invoke-virtual {v0, v10}, Lcom/vungle/ads/internal/network/TpatRequest$Builder;->body(Ljava/lang/String;)Lcom/vungle/ads/internal/network/TpatRequest$Builder;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v0

    .line 1100
    invoke-virtual {v0, v13}, Lcom/vungle/ads/internal/network/TpatRequest$Builder;->regularRetry(Z)Lcom/vungle/ads/internal/network/TpatRequest$Builder;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v0

    .line 1104
    invoke-virtual {v0, v4}, Lcom/vungle/ads/internal/network/TpatRequest$Builder;->tpatKey(Ljava/lang/String;)Lcom/vungle/ads/internal/network/TpatRequest$Builder;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v0

    .line 1108
    invoke-direct/range {p0 .. p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/LogEntry;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v2

    .line 1112
    invoke-virtual {v0, v2}, Lcom/vungle/ads/internal/network/TpatRequest$Builder;->withLogEntry(Lcom/vungle/ads/internal/util/LogEntry;)Lcom/vungle/ads/internal/network/TpatRequest$Builder;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v0

    .line 1116
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1117
    .line 1118
    .line 1119
    move-result v2

    .line 1120
    if-eqz v2, :cond_29

    .line 1121
    .line 1122
    invoke-virtual {v0}, Lcom/vungle/ads/internal/network/TpatRequest$Builder;->get()Lcom/vungle/ads/internal/network/TpatRequest$Builder;

    .line 1123
    .line 1124
    .line 1125
    goto :goto_b

    .line 1126
    :cond_29
    invoke-virtual {v0}, Lcom/vungle/ads/internal/network/TpatRequest$Builder;->post()Lcom/vungle/ads/internal/network/TpatRequest$Builder;

    .line 1127
    .line 1128
    .line 1129
    :goto_b
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1130
    .line 1131
    invoke-virtual {v0}, Lcom/vungle/ads/internal/network/TpatRequest$Builder;->build()Lcom/vungle/ads/internal/network/TpatRequest;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v0

    .line 1135
    invoke-direct/range {p0 .. p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getTpatSender()Lcom/vungle/ads/internal/network/TpatSender;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v2

    .line 1139
    const/4 v3, 0x2

    .line 1140
    const/4 v4, 0x0

    .line 1141
    invoke-static {v2, v0, v12, v3, v4}, Lcom/vungle/ads/internal/network/TpatSender;->sendTpat$default(Lcom/vungle/ads/internal/network/TpatSender;Lcom/vungle/ads/internal/network/TpatRequest;ZILjava/lang/Object;)V

    .line 1142
    .line 1143
    .line 1144
    :cond_2a
    return v9

    .line 1145
    :sswitch_d
    const-string v3, "consentAction"

    .line 1146
    .line 1147
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1148
    .line 1149
    .line 1150
    move-result v3

    .line 1151
    if-nez v3, :cond_2b

    .line 1152
    .line 1153
    goto/16 :goto_12

    .line 1154
    .line 1155
    :cond_2b
    sget-object v0, Lcom/vungle/ads/internal/util/JsonUtil;->INSTANCE:Lcom/vungle/ads/internal/util/JsonUtil;

    .line 1156
    .line 1157
    invoke-virtual {v0, v2, v13}, Lcom/vungle/ads/internal/util/JsonUtil;->getContentStringValue(Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v0

    .line 1161
    sget-object v2, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->OPT_OUT:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    .line 1162
    .line 1163
    invoke-virtual {v2}, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->getValue()Ljava/lang/String;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v3

    .line 1167
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1168
    .line 1169
    .line 1170
    move-result v0

    .line 1171
    if-eqz v0, :cond_2c

    .line 1172
    .line 1173
    invoke-virtual {v2}, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->getValue()Ljava/lang/String;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v0

    .line 1177
    goto :goto_c

    .line 1178
    :cond_2c
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->OPT_IN:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    .line 1179
    .line 1180
    invoke-virtual {v0}, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->getValue()Ljava/lang/String;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v0

    .line 1184
    :goto_c
    sget-object v2, Lcom/vungle/ads/internal/privacy/PrivacyManager;->INSTANCE:Lcom/vungle/ads/internal/privacy/PrivacyManager;

    .line 1185
    .line 1186
    const-string v3, "vungle_modal"

    .line 1187
    .line 1188
    const/4 v4, 0x0

    .line 1189
    invoke-virtual {v2, v0, v3, v4}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->updateGdprConsent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    .line 1191
    .line 1192
    return v9

    .line 1193
    :sswitch_e
    const-wide/16 v5, 0x0

    .line 1194
    .line 1195
    const-string v3, "actionWithValue"

    .line 1196
    .line 1197
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1198
    .line 1199
    .line 1200
    move-result v3

    .line 1201
    if-nez v3, :cond_2d

    .line 1202
    .line 1203
    goto/16 :goto_12

    .line 1204
    .line 1205
    :cond_2d
    sget-object v0, Lcom/vungle/ads/internal/util/JsonUtil;->INSTANCE:Lcom/vungle/ads/internal/util/JsonUtil;

    .line 1206
    .line 1207
    invoke-virtual {v0, v2, v13}, Lcom/vungle/ads/internal/util/JsonUtil;->getContentStringValue(Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v3

    .line 1211
    const-string v7, "value"

    .line 1212
    .line 1213
    invoke-virtual {v0, v2, v7}, Lcom/vungle/ads/internal/util/JsonUtil;->getContentStringValue(Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v2

    .line 1217
    const-string v0, "videoLength"

    .line 1218
    .line 1219
    invoke-static {v0, v3, v9}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1220
    .line 1221
    .line 1222
    move-result v0

    .line 1223
    if-eqz v0, :cond_31

    .line 1224
    .line 1225
    :try_start_2
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 1226
    .line 1227
    if-eqz v2, :cond_2e

    .line 1228
    .line 1229
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 1230
    .line 1231
    .line 1232
    move-result-wide v7

    .line 1233
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v0

    .line 1237
    goto :goto_d

    .line 1238
    :catchall_0
    move-exception v0

    .line 1239
    goto :goto_e

    .line 1240
    :cond_2e
    const/4 v0, 0x0

    .line 1241
    :goto_d
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1245
    goto :goto_f

    .line 1246
    :goto_e
    sget-object v7, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 1247
    .line 1248
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v0

    .line 1252
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v0

    .line 1256
    :goto_f
    invoke-static {v0}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 1257
    .line 1258
    .line 1259
    move-result v7

    .line 1260
    if-eqz v7, :cond_2f

    .line 1261
    .line 1262
    const/4 v0, 0x0

    .line 1263
    :cond_2f
    check-cast v0, Ljava/lang/Long;

    .line 1264
    .line 1265
    if-eqz v0, :cond_30

    .line 1266
    .line 1267
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 1268
    .line 1269
    .line 1270
    move-result-wide v5

    .line 1271
    :cond_30
    iput-wide v5, v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->videoLength:J

    .line 1272
    .line 1273
    :cond_31
    const-string v0, "videoViewed"

    .line 1274
    .line 1275
    invoke-static {v0, v3, v9}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1276
    .line 1277
    .line 1278
    move-result v0

    .line 1279
    if-eqz v0, :cond_35

    .line 1280
    .line 1281
    const/4 v0, 0x0

    .line 1282
    if-eqz v2, :cond_32

    .line 1283
    .line 1284
    :try_start_3
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1285
    .line 1286
    .line 1287
    move-result v2
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1288
    goto :goto_10

    .line 1289
    :catch_2
    sget-object v2, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    .line 1290
    .line 1291
    const-string v3, "value for videoViewed is null !"

    .line 1292
    .line 1293
    invoke-virtual {v2, v14, v3}, Lcom/vungle/ads/internal/util/Logger$Companion;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    .line 1295
    .line 1296
    :cond_32
    move v2, v0

    .line 1297
    :goto_10
    iget-object v3, v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->bus:Lcom/vungle/ads/internal/presenter/AdEventListener;

    .line 1298
    .line 1299
    if-eqz v3, :cond_35

    .line 1300
    .line 1301
    cmpl-float v0, v2, v0

    .line 1302
    .line 1303
    if-lez v0, :cond_35

    .line 1304
    .line 1305
    iget-boolean v0, v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->adViewed:Z

    .line 1306
    .line 1307
    if-nez v0, :cond_35

    .line 1308
    .line 1309
    iput-boolean v9, v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->adViewed:Z

    .line 1310
    .line 1311
    if-eqz v3, :cond_33

    .line 1312
    .line 1313
    iget-object v0, v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->placement:Lcom/vungle/ads/internal/model/Placement;

    .line 1314
    .line 1315
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/Placement;->getReferenceId()Ljava/lang/String;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v0

    .line 1319
    const-string v2, "adViewed"

    .line 1320
    .line 1321
    const/4 v5, 0x0

    .line 1322
    invoke-virtual {v3, v2, v5, v0}, Lcom/vungle/ads/internal/presenter/AdEventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    .line 1324
    .line 1325
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1326
    .line 1327
    :cond_33
    iget-object v0, v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->bidPayload:Lcom/vungle/ads/internal/model/BidPayload;

    .line 1328
    .line 1329
    if-eqz v0, :cond_35

    .line 1330
    .line 1331
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/BidPayload;->getImpression()Ljava/util/List;

    .line 1332
    .line 1333
    .line 1334
    move-result-object v0

    .line 1335
    if-eqz v0, :cond_35

    .line 1336
    .line 1337
    check-cast v0, Ljava/lang/Iterable;

    .line 1338
    .line 1339
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1340
    .line 1341
    .line 1342
    move-result-object v0

    .line 1343
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1344
    .line 1345
    .line 1346
    move-result v2

    .line 1347
    if-eqz v2, :cond_34

    .line 1348
    .line 1349
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1350
    .line 1351
    .line 1352
    move-result-object v2

    .line 1353
    check-cast v2, Ljava/lang/String;

    .line 1354
    .line 1355
    new-instance v3, Lcom/vungle/ads/internal/network/TpatRequest$Builder;

    .line 1356
    .line 1357
    invoke-direct {v3, v2}, Lcom/vungle/ads/internal/network/TpatRequest$Builder;-><init>(Ljava/lang/String;)V

    .line 1358
    .line 1359
    .line 1360
    const-string v2, "impression"

    .line 1361
    .line 1362
    invoke-virtual {v3, v2}, Lcom/vungle/ads/internal/network/TpatRequest$Builder;->tpatKey(Ljava/lang/String;)Lcom/vungle/ads/internal/network/TpatRequest$Builder;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v2

    .line 1366
    invoke-direct/range {p0 .. p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/LogEntry;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v3

    .line 1370
    invoke-virtual {v2, v3}, Lcom/vungle/ads/internal/network/TpatRequest$Builder;->withLogEntry(Lcom/vungle/ads/internal/util/LogEntry;)Lcom/vungle/ads/internal/network/TpatRequest$Builder;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v2

    .line 1374
    invoke-virtual {v2}, Lcom/vungle/ads/internal/network/TpatRequest$Builder;->build()Lcom/vungle/ads/internal/network/TpatRequest;

    .line 1375
    .line 1376
    .line 1377
    move-result-object v2

    .line 1378
    invoke-direct/range {p0 .. p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getTpatSender()Lcom/vungle/ads/internal/network/TpatSender;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v3

    .line 1382
    const/4 v5, 0x2

    .line 1383
    const/4 v6, 0x0

    .line 1384
    invoke-static {v3, v2, v12, v5, v6}, Lcom/vungle/ads/internal/network/TpatSender;->sendTpat$default(Lcom/vungle/ads/internal/network/TpatSender;Lcom/vungle/ads/internal/network/TpatRequest;ZILjava/lang/Object;)V

    .line 1385
    .line 1386
    .line 1387
    goto :goto_11

    .line 1388
    :cond_34
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1389
    .line 1390
    :cond_35
    new-instance v0, Lcom/vungle/ads/internal/presenter/a;

    .line 1391
    .line 1392
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/presenter/a;-><init>(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;)V

    .line 1393
    .line 1394
    .line 1395
    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1396
    .line 1397
    .line 1398
    return v9

    .line 1399
    :sswitch_f
    const-string v2, "action"

    .line 1400
    .line 1401
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1402
    .line 1403
    .line 1404
    move-result v2

    .line 1405
    if-nez v2, :cond_36

    .line 1406
    .line 1407
    goto :goto_12

    .line 1408
    :cond_36
    return v9

    .line 1409
    :sswitch_10
    const-string v2, "successfulView"

    .line 1410
    .line 1411
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1412
    .line 1413
    .line 1414
    move-result v3

    .line 1415
    if-nez v3, :cond_37

    .line 1416
    .line 1417
    :goto_12
    new-instance v2, Lcom/vungle/ads/MraidJsError;

    .line 1418
    .line 1419
    sget-object v3, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->MRAID_JS_CALL_EMPTY:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 1420
    .line 1421
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1422
    .line 1423
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1424
    .line 1425
    .line 1426
    const-string v5, "Unknown MRAID Command: "

    .line 1427
    .line 1428
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1429
    .line 1430
    .line 1431
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1432
    .line 1433
    .line 1434
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v4

    .line 1438
    invoke-direct {v2, v3, v4}, Lcom/vungle/ads/MraidJsError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 1439
    .line 1440
    .line 1441
    invoke-direct/range {p0 .. p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/LogEntry;

    .line 1442
    .line 1443
    .line 1444
    move-result-object v3

    .line 1445
    invoke-virtual {v2, v3}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/LogEntry;)Lcom/vungle/ads/VungleError;

    .line 1446
    .line 1447
    .line 1448
    move-result-object v2

    .line 1449
    invoke-virtual {v2}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 1450
    .line 1451
    .line 1452
    sget-object v2, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    .line 1453
    .line 1454
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1455
    .line 1456
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1457
    .line 1458
    .line 1459
    const-string v4, "processCommand# Unknown MRAID Command: "

    .line 1460
    .line 1461
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1462
    .line 1463
    .line 1464
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1465
    .line 1466
    .line 1467
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1468
    .line 1469
    .line 1470
    move-result-object v0

    .line 1471
    invoke-virtual {v2, v14, v0}, Lcom/vungle/ads/internal/util/Logger$Companion;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    .line 1473
    .line 1474
    return v9

    .line 1475
    :cond_37
    iget-object v0, v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->bus:Lcom/vungle/ads/internal/presenter/AdEventListener;

    .line 1476
    .line 1477
    if-eqz v0, :cond_38

    .line 1478
    .line 1479
    iget-object v3, v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->placement:Lcom/vungle/ads/internal/model/Placement;

    .line 1480
    .line 1481
    invoke-virtual {v3}, Lcom/vungle/ads/internal/model/Placement;->getReferenceId()Ljava/lang/String;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v3

    .line 1485
    const/4 v4, 0x0

    .line 1486
    invoke-virtual {v0, v2, v4, v3}, Lcom/vungle/ads/internal/presenter/AdEventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    .line 1488
    .line 1489
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1490
    .line 1491
    :cond_38
    iget-object v0, v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->placement:Lcom/vungle/ads/internal/model/Placement;

    .line 1492
    .line 1493
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/Placement;->isRewardedVideo()Z

    .line 1494
    .line 1495
    .line 1496
    move-result v0

    .line 1497
    if-eqz v0, :cond_39

    .line 1498
    .line 1499
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    .line 1500
    .line 1501
    invoke-virtual {v0}, Lcom/vungle/ads/internal/ConfigManager;->isReportIncentivizedEnabled()Z

    .line 1502
    .line 1503
    .line 1504
    move-result v0

    .line 1505
    if-eqz v0, :cond_39

    .line 1506
    .line 1507
    iget-object v0, v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1508
    .line 1509
    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 1510
    .line 1511
    .line 1512
    move-result v0

    .line 1513
    if-nez v0, :cond_39

    .line 1514
    .line 1515
    iget-object v0, v1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->executor:Ljava/util/concurrent/Executor;

    .line 1516
    .line 1517
    new-instance v2, Lcom/vungle/ads/internal/presenter/b;

    .line 1518
    .line 1519
    invoke-direct {v2, v1}, Lcom/vungle/ads/internal/presenter/b;-><init>(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;)V

    .line 1520
    .line 1521
    .line 1522
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1523
    .line 1524
    .line 1525
    :cond_39
    return v9

    .line 1526
    nop

    .line 1527
    :sswitch_data_0
    .sparse-switch
        -0x71fc83a1 -> :sswitch_10
        -0x54d081ca -> :sswitch_f
        -0x2bd2454b -> :sswitch_e
        -0x2762d110 -> :sswitch_d
        -0x21db0163 -> :sswitch_c
        -0x1e7a3222 -> :sswitch_b
        -0x18f2f4ec -> :sswitch_a
        -0x14bf8370 -> :sswitch_9
        0x34264a -> :sswitch_8
        0x366baf -> :sswitch_7
        0x5a5ddf8 -> :sswitch_6
        0x5c4d208 -> :sswitch_5
        0x7f3dfe1 -> :sswitch_4
        0x234e01c2 -> :sswitch_3
        0x5931f696 -> :sswitch_2
        0x6037d900 -> :sswitch_1
        0x6e4b560d -> :sswitch_0
    .end sparse-switch
.end method

.method public final setAdStartTime$vungle_ads_release(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->adStartTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setAdVisibility(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->vungleWebClient:Lcom/vungle/ads/internal/ui/VungleWebClient;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/ui/VungleWebClient;->setAdVisibility(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setBackEnabled$vungle_ads_release(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->backEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setBus(Lcom/vungle/ads/internal/presenter/AdEventListener;)V
    .locals 0
    .param p1    # Lcom/vungle/ads/internal/presenter/AdEventListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->bus:Lcom/vungle/ads/internal/presenter/AdEventListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setEventListener(Lcom/vungle/ads/internal/presenter/AdEventListener;)V
    .locals 0
    .param p1    # Lcom/vungle/ads/internal/presenter/AdEventListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->bus:Lcom/vungle/ads/internal/presenter/AdEventListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setHeartbeatEnabled$vungle_ads_release(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->heartbeatEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setLastUserInteractionTimestamp$vungle_ads_release(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->lastUserInteractionTimestamp:J

    .line 2
    .line 3
    return-void
.end method

.method public final setPresenterDelegate$vungle_ads_release(Lcom/vungle/ads/internal/presenter/PresenterDelegate;)V
    .locals 0
    .param p1    # Lcom/vungle/ads/internal/presenter/PresenterDelegate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->presenterDelegate:Lcom/vungle/ads/internal/presenter/PresenterDelegate;

    .line 2
    .line 3
    return-void
.end method

.method public final setUserId$vungle_ads_release(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->userId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setVideoLength$vungle_ads_release(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->videoLength:J

    .line 2
    .line 3
    return-void
.end method

.method public final shouldBlockAutoRedirect$vungle_ads_release()Z
    .locals 8

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/vungle/ads/internal/ConfigManager;->allowAutoRedirects()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    iget-wide v3, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->lastUserInteractionTimestamp:J

    .line 11
    .line 12
    const-wide/16 v5, 0x0

    .line 13
    .line 14
    cmp-long v1, v3, v5

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    return v3

    .line 20
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    iget-wide v6, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->lastUserInteractionTimestamp:J

    .line 25
    .line 26
    sub-long/2addr v4, v6

    .line 27
    invoke-virtual {v0}, Lcom/vungle/ads/internal/ConfigManager;->afterClickDuration()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    cmp-long v0, v4, v0

    .line 32
    .line 33
    if-lez v0, :cond_1

    .line 34
    .line 35
    move v2, v3

    .line 36
    :cond_1
    return v2
.end method

.method public final start()V
    .locals 3

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    .line 2
    .line 3
    const-string v1, "MRAIDPresenter"

    .line 4
    .line 5
    const-string v2, "start()"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/util/Logger$Companion;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->adWidget:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->resumeWeb()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, v0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->setAdVisibility(Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    .line 2
    .line 3
    const-string v1, "MRAIDPresenter"

    .line 4
    .line 5
    const-string v2, "stop()"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/util/Logger$Companion;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->adWidget:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->pauseWeb()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->setAdVisibility(Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
