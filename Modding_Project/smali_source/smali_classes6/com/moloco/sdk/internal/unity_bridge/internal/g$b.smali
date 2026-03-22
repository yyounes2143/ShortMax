.class public final Lcom/moloco/sdk/internal/unity_bridge/internal/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/publisher/InterstitialAdShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/unity_bridge/internal/g;->h(Ljava/lang/String;Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityShowCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/os/Handler;

.field public final synthetic b:Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityShowCallback;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityShowCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/g$b;->a:Landroid/os/Handler;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/g$b;->b:Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityShowCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final a(Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityShowCallback;Lcom/moloco/sdk/publisher/MolocoAd;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/moloco/sdk/publisher/MolocoAd;->getAdUnitId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityShowCallback;->onAdClicked(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final b(Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityShowCallback;Lcom/moloco/sdk/publisher/MolocoAdError;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/moloco/sdk/publisher/MolocoAdError;->getAdUnitId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/moloco/sdk/publisher/MolocoAdError;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p0, v0, p1}, Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityShowCallback;->onAdShowFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static final c(Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityShowCallback;Lcom/moloco/sdk/publisher/MolocoAd;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/moloco/sdk/publisher/MolocoAd;->getAdUnitId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityShowCallback;->onAdHidden(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final d(Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityShowCallback;Lcom/moloco/sdk/publisher/MolocoAd;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/moloco/sdk/publisher/MolocoAd;->getAdUnitId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityShowCallback;->onAdShowSuccess(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/moloco/sdk/publisher/MolocoAd;)V
    .locals 3

    .line 1
    const-string v0, "molocoAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/g$b;->a:Landroid/os/Handler;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/g$b;->b:Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityShowCallback;

    .line 9
    .line 10
    new-instance v2, Lcom/moloco/sdk/internal/unity_bridge/internal/j;

    .line 11
    .line 12
    invoke-direct {v2, v1, p1}, Lcom/moloco/sdk/internal/unity_bridge/internal/j;-><init>(Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityShowCallback;Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onAdHidden(Lcom/moloco/sdk/publisher/MolocoAd;)V
    .locals 3

    .line 1
    const-string v0, "molocoAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/g$b;->a:Landroid/os/Handler;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/g$b;->b:Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityShowCallback;

    .line 9
    .line 10
    new-instance v2, Lcom/moloco/sdk/internal/unity_bridge/internal/h;

    .line 11
    .line 12
    invoke-direct {v2, v1, p1}, Lcom/moloco/sdk/internal/unity_bridge/internal/h;-><init>(Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityShowCallback;Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onAdShowFailed(Lcom/moloco/sdk/publisher/MolocoAdError;)V
    .locals 3

    .line 1
    const-string v0, "molocoAdError"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/g$b;->a:Landroid/os/Handler;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/g$b;->b:Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityShowCallback;

    .line 9
    .line 10
    new-instance v2, Lcom/moloco/sdk/internal/unity_bridge/internal/i;

    .line 11
    .line 12
    invoke-direct {v2, v1, p1}, Lcom/moloco/sdk/internal/unity_bridge/internal/i;-><init>(Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityShowCallback;Lcom/moloco/sdk/publisher/MolocoAdError;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onAdShowSuccess(Lcom/moloco/sdk/publisher/MolocoAd;)V
    .locals 3

    .line 1
    const-string v0, "molocoAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/g$b;->a:Landroid/os/Handler;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/g$b;->b:Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityShowCallback;

    .line 9
    .line 10
    new-instance v2, Lcom/moloco/sdk/internal/unity_bridge/internal/k;

    .line 11
    .line 12
    invoke-direct {v2, v1, p1}, Lcom/moloco/sdk/internal/unity_bridge/internal/k;-><init>(Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityShowCallback;Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method
