.class Lcom/ss/ttvideoengine/strategy/StrategyManager$1;
.super Ljava/lang/Object;
.source "StrategyManager.java"

# interfaces
.implements Lcom/ss/ttvideoengine/strategy/prerender/PreRenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/strategy/StrategyManager;->lambda$enable$3(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/strategy/StrategyManager;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/strategy/StrategyManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager$1;->this$0:Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public createPreRenderEngine(Lcom/ss/ttvideoengine/strategy/source/StrategySource;)Lcom/ss/ttvideoengine/TTVideoEngine;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager$1;->this$0:Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->access$400(Lcom/ss/ttvideoengine/strategy/StrategyManager;)Lcom/ss/ttvideoengine/strategy/EngineStrategyListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager$1;->this$0:Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->access$400(Lcom/ss/ttvideoengine/strategy/StrategyManager;)Lcom/ss/ttvideoengine/strategy/EngineStrategyListener;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/strategy/EngineStrategyListener;->createPreRenderEngine(Lcom/ss/ttvideoengine/strategy/source/StrategySource;)Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public onPreRenderEngineCreated(Lcom/ss/ttvideoengine/TTVideoEngine;Lcom/ss/ttvideoengine/strategy/source/StrategySource;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager$1;->this$0:Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->access$400(Lcom/ss/ttvideoengine/strategy/StrategyManager;)Lcom/ss/ttvideoengine/strategy/EngineStrategyListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager$1;->this$0:Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->access$400(Lcom/ss/ttvideoengine/strategy/StrategyManager;)Lcom/ss/ttvideoengine/strategy/EngineStrategyListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/strategy/EngineStrategyListener;->onPreRenderEngineCreated(Lcom/ss/ttvideoengine/TTVideoEngine;Lcom/ss/ttvideoengine/strategy/source/StrategySource;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
