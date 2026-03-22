.class Lcom/ss/ttvideoengine/strategy/StrategyManager$2;
.super Ljava/lang/Object;
.source "StrategyManager.java"

# interfaces
.implements Lcom/ss/ttvideoengine/strategy/utils/BufferCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/strategy/StrategyManager;->startBufferCheck()V
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
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager$2;->this$0:Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/ss/ttvideoengine/strategy/StrategyManager$2;Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategy/StrategyManager$2;->lambda$onCacheEnd$0(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/ss/ttvideoengine/strategy/StrategyManager$2;Lcom/ss/ttvideoengine/TTVideoEngine;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/ttvideoengine/strategy/StrategyManager$2;->lambda$onCacheSize$1(Lcom/ss/ttvideoengine/TTVideoEngine;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$onCacheEnd$0(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager$2;->this$0:Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->access$200(Lcom/ss/ttvideoengine/strategy/StrategyManager;)Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager$2;->this$0:Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->access$200(Lcom/ss/ttvideoengine/strategy/StrategyManager;)Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->onCacheEnd(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager$2;->this$0:Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->access$300(Lcom/ss/ttvideoengine/strategy/StrategyManager;)Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager$2;->this$0:Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->access$300(Lcom/ss/ttvideoengine/strategy/StrategyManager;)Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->onCacheEnd(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method private synthetic lambda$onCacheSize$1(Lcom/ss/ttvideoengine/TTVideoEngine;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager$2;->this$0:Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->access$200(Lcom/ss/ttvideoengine/strategy/StrategyManager;)Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager$2;->this$0:Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->access$200(Lcom/ss/ttvideoengine/strategy/StrategyManager;)Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->onCacheSize(Lcom/ss/ttvideoengine/TTVideoEngine;J)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager$2;->this$0:Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->access$300(Lcom/ss/ttvideoengine/strategy/StrategyManager;)Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager$2;->this$0:Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->access$300(Lcom/ss/ttvideoengine/strategy/StrategyManager;)Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->onCacheSize(Lcom/ss/ttvideoengine/TTVideoEngine;J)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method


# virtual methods
.method public onCacheEnd(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager$2;->this$0:Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 2
    .line 3
    new-instance v1, Lcom/ss/ttvideoengine/strategy/r;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/ss/ttvideoengine/strategy/r;-><init>(Lcom/ss/ttvideoengine/strategy/StrategyManager$2;Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->runOnWorkThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onCacheSize(Lcom/ss/ttvideoengine/TTVideoEngine;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager$2;->this$0:Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 2
    .line 3
    new-instance v1, Lcom/ss/ttvideoengine/strategy/q;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ss/ttvideoengine/strategy/q;-><init>(Lcom/ss/ttvideoengine/strategy/StrategyManager$2;Lcom/ss/ttvideoengine/TTVideoEngine;J)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->runOnWorkThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
