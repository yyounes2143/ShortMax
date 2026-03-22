.class public Lcom/ss/ttvideoengine/utils/Inspector;
.super Ljava/lang/Object;
.source "Inspector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/utils/Inspector$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Inspector"


# instance fields
.field private mHost:Ljava/lang/String;

.field private final mNetworkSession:Lcom/ss/ttvideoengine/net/TTHTTPNetwork;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/utils/Inspector;->mNetworkSession:Lcom/ss/ttvideoengine/net/TTHTTPNetwork;

    .line 10
    .line 11
    return-void
.end method

.method private static synthetic lambda$inspectEvent$0(Lorg/json/JSONObject;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "inspect event error:"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/utils/Error;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string p1, "Inspector"

    .line 23
    .line 24
    invoke-static {p1, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static share()Lcom/ss/ttvideoengine/utils/Inspector;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/utils/Inspector$Holder;->access$000()Lcom/ss/ttvideoengine/utils/Inspector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/Inspector;->mHost:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public inspectEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/utils/Inspector;->mHost:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->isRunning()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/16 v0, 0x79e7

    .line 22
    .line 23
    iget-object v1, p0, Lcom/ss/ttvideoengine/utils/Inspector;->mHost:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->businessEvent(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
