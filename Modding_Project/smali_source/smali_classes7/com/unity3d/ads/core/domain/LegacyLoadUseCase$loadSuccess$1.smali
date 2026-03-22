.class final Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LegacyLoadUseCase.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->loadSuccess(Lcom/unity3d/ads/core/data/model/AdObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadSuccess$1;->this$0:Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadSuccess$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadSuccess$1;->this$0:Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->access$getListener$p(Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;)Lcom/unity3d/ads/IUnityAdsLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadSuccess$1;->this$0:Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;

    invoke-static {v1}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->access$getPlacement$p(Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unity3d/ads/IUnityAdsLoadListener;->onUnityAdsAdLoaded(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
