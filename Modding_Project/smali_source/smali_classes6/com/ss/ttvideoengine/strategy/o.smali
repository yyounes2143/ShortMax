.class public final synthetic Lcom/ss/ttvideoengine/strategy/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ss/ttvideoengine/strategy/StrategyManager;

.field public final synthetic b:Lcom/ss/ttvideoengine/TTVideoEngine;


# direct methods
.method public synthetic constructor <init>(Lcom/ss/ttvideoengine/strategy/StrategyManager;Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/o;->a:Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/ss/ttvideoengine/strategy/o;->b:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/o;->a:Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/o;->b:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->m(Lcom/ss/ttvideoengine/strategy/StrategyManager;Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
