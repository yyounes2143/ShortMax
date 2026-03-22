.class public final synthetic Lcom/ss/ttvideoengine/strategy/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ss/ttvideoengine/strategy/StrategyManager;


# direct methods
.method public synthetic constructor <init>(Lcom/ss/ttvideoengine/strategy/StrategyManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/b;->a:Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/b;->a:Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->p(Lcom/ss/ttvideoengine/strategy/StrategyManager;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
