.class public interface abstract Lcom/ss/ttvideoengine/strategy/EngineStrategyListener;
.super Ljava/lang/Object;
.source "EngineStrategyListener.java"


# virtual methods
.method public createPreRenderEngine(Lcom/ss/ttvideoengine/strategy/source/StrategySource;)Lcom/ss/ttvideoengine/TTVideoEngine;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public onPreRenderEngineCreated(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPreRenderEngineCreated(Lcom/ss/ttvideoengine/TTVideoEngine;Lcom/ss/ttvideoengine/strategy/source/StrategySource;)V
    .locals 0

    .line 2
    invoke-interface {p0, p1}, Lcom/ss/ttvideoengine/strategy/EngineStrategyListener;->onPreRenderEngineCreated(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    return-void
.end method
