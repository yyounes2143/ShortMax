.class Landroidx/browser/customtabs/CustomTabsSession$1;
.super Landroid/support/customtabs/IEngagementSignalsCallback$Stub;
.source "CustomTabsSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsSession;->createEngagementSignalsCallbackWrapper(Landroidx/browser/customtabs/EngagementSignalsCallback;)Landroid/support/customtabs/IEngagementSignalsCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroidx/browser/customtabs/CustomTabsSession;

.field final synthetic val$callback:Landroidx/browser/customtabs/EngagementSignalsCallback;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/CustomTabsSession;Landroidx/browser/customtabs/EngagementSignalsCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsSession$1;->this$0:Landroidx/browser/customtabs/CustomTabsSession;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsSession$1;->val$callback:Landroidx/browser/customtabs/EngagementSignalsCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/support/customtabs/IEngagementSignalsCallback$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsSession$1;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic i(Landroidx/browser/customtabs/EngagementSignalsCallback;ZLandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsSession$1;->lambda$onVerticalScrollEvent$0(Landroidx/browser/customtabs/EngagementSignalsCallback;ZLandroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Landroidx/browser/customtabs/EngagementSignalsCallback;ZLandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsSession$1;->lambda$onSessionEnded$2(Landroidx/browser/customtabs/EngagementSignalsCallback;ZLandroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k(Landroidx/browser/customtabs/EngagementSignalsCallback;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsSession$1;->lambda$onGreatestScrollPercentageIncreased$1(Landroidx/browser/customtabs/EngagementSignalsCallback;ILandroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$onGreatestScrollPercentageIncreased$1(Landroidx/browser/customtabs/EngagementSignalsCallback;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2}, Landroidx/browser/customtabs/EngagementSignalsCallback;->onGreatestScrollPercentageIncreased(ILandroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$onSessionEnded$2(Landroidx/browser/customtabs/EngagementSignalsCallback;ZLandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2}, Landroidx/browser/customtabs/EngagementSignalsCallback;->onSessionEnded(ZLandroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$onVerticalScrollEvent$0(Landroidx/browser/customtabs/EngagementSignalsCallback;ZLandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2}, Landroidx/browser/customtabs/EngagementSignalsCallback;->onVerticalScrollEvent(ZLandroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onGreatestScrollPercentageIncreased(ILandroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSession$1;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsSession$1;->val$callback:Landroidx/browser/customtabs/EngagementSignalsCallback;

    .line 4
    .line 5
    new-instance v2, Landroidx/browser/customtabs/c;

    .line 6
    .line 7
    invoke-direct {v2, v1, p1, p2}, Landroidx/browser/customtabs/c;-><init>(Landroidx/browser/customtabs/EngagementSignalsCallback;ILandroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onSessionEnded(ZLandroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSession$1;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsSession$1;->val$callback:Landroidx/browser/customtabs/EngagementSignalsCallback;

    .line 4
    .line 5
    new-instance v2, Landroidx/browser/customtabs/b;

    .line 6
    .line 7
    invoke-direct {v2, v1, p1, p2}, Landroidx/browser/customtabs/b;-><init>(Landroidx/browser/customtabs/EngagementSignalsCallback;ZLandroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onVerticalScrollEvent(ZLandroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSession$1;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsSession$1;->val$callback:Landroidx/browser/customtabs/EngagementSignalsCallback;

    .line 4
    .line 5
    new-instance v2, Landroidx/browser/customtabs/d;

    .line 6
    .line 7
    invoke-direct {v2, v1, p1, p2}, Landroidx/browser/customtabs/d;-><init>(Landroidx/browser/customtabs/EngagementSignalsCallback;ZLandroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
