.class public final Lcom/moloco/sdk/internal/publisher/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/publisher/InterstitialAdShowListener;
.implements Lcom/moloco/sdk/publisher/AdShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/publisher/h;->c(Lcom/moloco/sdk/publisher/InterstitialAdShowListener;)Lcom/moloco/sdk/publisher/InterstitialAdShowListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/moloco/sdk/publisher/AdShowListener;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/publisher/InterstitialAdShowListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/moloco/sdk/internal/publisher/d0;->a(Lcom/moloco/sdk/publisher/AdShowListener;)Lcom/moloco/sdk/publisher/AdShowListener;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/h$a;->a:Lcom/moloco/sdk/publisher/AdShowListener;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/moloco/sdk/publisher/MolocoAd;)V
    .locals 1

    .line 1
    const-string v0, "molocoAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/h$a;->a:Lcom/moloco/sdk/publisher/AdShowListener;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/moloco/sdk/publisher/AdShowListener;->onAdClicked(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onAdHidden(Lcom/moloco/sdk/publisher/MolocoAd;)V
    .locals 1

    .line 1
    const-string v0, "molocoAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/h$a;->a:Lcom/moloco/sdk/publisher/AdShowListener;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/moloco/sdk/publisher/AdShowListener;->onAdHidden(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onAdShowFailed(Lcom/moloco/sdk/publisher/MolocoAdError;)V
    .locals 1

    .line 1
    const-string v0, "molocoAdError"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/h$a;->a:Lcom/moloco/sdk/publisher/AdShowListener;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/moloco/sdk/publisher/AdShowListener;->onAdShowFailed(Lcom/moloco/sdk/publisher/MolocoAdError;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onAdShowSuccess(Lcom/moloco/sdk/publisher/MolocoAd;)V
    .locals 1

    .line 1
    const-string v0, "molocoAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/h$a;->a:Lcom/moloco/sdk/publisher/AdShowListener;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/moloco/sdk/publisher/AdShowListener;->onAdShowSuccess(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
