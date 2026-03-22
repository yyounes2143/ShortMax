.class public final synthetic Lcom/moloco/sdk/internal/unity_bridge/internal/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Landroid/os/Handler;

.field public final synthetic b:Lcom/moloco/sdk/internal/unity_bridge/internal/g;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;Lcom/moloco/sdk/internal/unity_bridge/internal/g;Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/a;->a:Landroid/os/Handler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/a;->b:Lcom/moloco/sdk/internal/unity_bridge/internal/g;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/a;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/a;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/a;->e:Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/a;->b:Lcom/moloco/sdk/internal/unity_bridge/internal/g;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/a;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/a;->d:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/a;->e:Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    check-cast v5, Lcom/moloco/sdk/publisher/InterstitialAd;

    .line 13
    .line 14
    move-object v6, p2

    .line 15
    check-cast v6, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

    .line 16
    .line 17
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/unity_bridge/internal/g;->c(Landroid/os/Handler;Lcom/moloco/sdk/internal/unity_bridge/internal/g;Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;Lcom/moloco/sdk/publisher/InterstitialAd;Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;)Lkotlin/Unit;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
