.class Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$3;
.super Ljava/lang/Object;
.source "StrategyHelper.java"

# interfaces
.implements Lcom/ss/ttvideoengine/TTNetworkStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->_netStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$3;->this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAccessChanged(III)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$3;->this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/16 p2, 0x4b2

    .line 11
    .line 12
    invoke-static {p3}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->access$200(I)I

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    invoke-virtual {p1, p2, p3}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->businessEvent(II)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method
