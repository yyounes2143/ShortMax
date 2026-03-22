.class public final Lcom/moloco/sdk/internal/unity_bridge/internal/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/publisher/AdLoad$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/unity_bridge/internal/g;->g(Lcom/moloco/sdk/publisher/InterstitialAd;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/moloco/sdk/internal/unity_bridge/internal/g;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/moloco/sdk/publisher/InterstitialAd;

.field public final synthetic d:Landroid/os/Handler;

.field public final synthetic e:Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/unity_bridge/internal/g;Ljava/lang/String;Lcom/moloco/sdk/publisher/InterstitialAd;Landroid/os/Handler;Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/g$a;->a:Lcom/moloco/sdk/internal/unity_bridge/internal/g;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/g$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/g$a;->c:Lcom/moloco/sdk/publisher/InterstitialAd;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/g$a;->d:Landroid/os/Handler;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/g$a;->e:Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static final a(Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;->onAdLoadSuccess(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final b(Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;Ljava/lang/String;Lcom/moloco/sdk/publisher/MolocoAdError;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/moloco/sdk/publisher/MolocoAdError;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p0, p1, p2}, Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;->onAdLoadFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdLoadFailed(Lcom/moloco/sdk/publisher/MolocoAdError;)V
    .locals 4

    .line 1
    const-string v0, "molocoAdError"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/g$a;->d:Landroid/os/Handler;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/g$a;->e:Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/g$a;->b:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v3, Lcom/moloco/sdk/internal/unity_bridge/internal/e;

    .line 13
    .line 14
    invoke-direct {v3, v1, v2, p1}, Lcom/moloco/sdk/internal/unity_bridge/internal/e;-><init>(Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;Ljava/lang/String;Lcom/moloco/sdk/publisher/MolocoAdError;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onAdLoadSuccess(Lcom/moloco/sdk/publisher/MolocoAd;)V
    .locals 3

    .line 1
    const-string v0, "molocoAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/g$a;->a:Lcom/moloco/sdk/internal/unity_bridge/internal/g;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/moloco/sdk/internal/unity_bridge/internal/g;->b(Lcom/moloco/sdk/internal/unity_bridge/internal/g;)Las/a;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/g$a;->b:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/g$a;->c:Lcom/moloco/sdk/publisher/InterstitialAd;

    .line 15
    .line 16
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/g$a;->d:Landroid/os/Handler;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/g$a;->e:Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/g$a;->b:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v2, Lcom/moloco/sdk/internal/unity_bridge/internal/f;

    .line 26
    .line 27
    invoke-direct {v2, v0, v1}, Lcom/moloco/sdk/internal/unity_bridge/internal/f;-><init>(Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method
