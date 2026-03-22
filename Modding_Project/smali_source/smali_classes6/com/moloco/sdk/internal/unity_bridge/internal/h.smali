.class public final synthetic Lcom/moloco/sdk/internal/unity_bridge/internal/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityShowCallback;

.field public final synthetic b:Lcom/moloco/sdk/publisher/MolocoAd;


# direct methods
.method public synthetic constructor <init>(Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityShowCallback;Lcom/moloco/sdk/publisher/MolocoAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/h;->a:Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityShowCallback;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/h;->b:Lcom/moloco/sdk/publisher/MolocoAd;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/h;->a:Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityShowCallback;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/h;->b:Lcom/moloco/sdk/publisher/MolocoAd;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/moloco/sdk/internal/unity_bridge/internal/g$b;->c(Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityShowCallback;Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
