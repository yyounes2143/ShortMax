.class final Lcom/unity3d/ads/core/domain/CommonInitAwaitingGetHeaderBiddingToken$tokenSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CommonInitAwaitingGetHeaderBiddingToken.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/CommonInitAwaitingGetHeaderBiddingToken;->tokenSuccess(ILjava/lang/String;)V
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
.field final synthetic $token:Ljava/lang/String;

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/CommonInitAwaitingGetHeaderBiddingToken;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/domain/CommonInitAwaitingGetHeaderBiddingToken;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/CommonInitAwaitingGetHeaderBiddingToken$tokenSuccess$1;->this$0:Lcom/unity3d/ads/core/domain/CommonInitAwaitingGetHeaderBiddingToken;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/CommonInitAwaitingGetHeaderBiddingToken$tokenSuccess$1;->$token:Ljava/lang/String;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/unity3d/ads/core/domain/CommonInitAwaitingGetHeaderBiddingToken$tokenSuccess$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/CommonInitAwaitingGetHeaderBiddingToken$tokenSuccess$1;->this$0:Lcom/unity3d/ads/core/domain/CommonInitAwaitingGetHeaderBiddingToken;

    invoke-virtual {v0}, Lcom/unity3d/ads/core/domain/CommonInitAwaitingGetHeaderBiddingToken;->getListener()Lcom/unity3d/ads/IUnityAdsTokenListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/CommonInitAwaitingGetHeaderBiddingToken$tokenSuccess$1;->$token:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/unity3d/ads/IUnityAdsTokenListener;->onUnityAdsTokenReady(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
