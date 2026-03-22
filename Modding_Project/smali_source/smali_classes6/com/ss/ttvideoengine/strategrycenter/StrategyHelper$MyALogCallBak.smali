.class Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$MyALogCallBak;
.super Ljava/lang/Object;
.source "StrategyHelper.java"

# interfaces
.implements Lcom/bytedance/vcloud/strategy/ILogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyALogCallBak"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "VCStrategy"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
