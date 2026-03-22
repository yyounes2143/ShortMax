.class public final synthetic Lcom/moloco/sdk/internal/unity_bridge/internal/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/moloco/sdk/publisher/MolocoAdError;


# direct methods
.method public synthetic constructor <init>(Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;Ljava/lang/String;Lcom/moloco/sdk/publisher/MolocoAdError;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/e;->a:Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/e;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/e;->c:Lcom/moloco/sdk/publisher/MolocoAdError;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/e;->a:Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/e;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/e;->c:Lcom/moloco/sdk/publisher/MolocoAdError;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/moloco/sdk/internal/unity_bridge/internal/g$a;->b(Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;Ljava/lang/String;Lcom/moloco/sdk/publisher/MolocoAdError;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
