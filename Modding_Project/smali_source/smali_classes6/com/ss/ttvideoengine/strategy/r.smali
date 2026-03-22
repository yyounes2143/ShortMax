.class public final synthetic Lcom/ss/ttvideoengine/strategy/r;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ss/ttvideoengine/strategy/StrategyManager$2;

.field public final synthetic b:Lcom/ss/ttvideoengine/TTVideoEngine;


# direct methods
.method public synthetic constructor <init>(Lcom/ss/ttvideoengine/strategy/StrategyManager$2;Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/r;->a:Lcom/ss/ttvideoengine/strategy/StrategyManager$2;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/ss/ttvideoengine/strategy/r;->b:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/r;->a:Lcom/ss/ttvideoengine/strategy/StrategyManager$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/r;->b:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/strategy/StrategyManager$2;->a(Lcom/ss/ttvideoengine/strategy/StrategyManager$2;Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
