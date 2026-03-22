.class final Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$g;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "TopUpCoinSkuAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/purchase/CoinSku;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemThirdPartyPaymentBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;Lcom/startshorts/androidplayer/databinding/ItemThirdPartyPaymentBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemThirdPartyPaymentBinding;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$g;->h:Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$g;->g:Lcom/startshorts/androidplayer/databinding/ItemThirdPartyPaymentBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$g;->j()Lcom/startshorts/androidplayer/databinding/ItemThirdPartyPaymentBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic f(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$g;->k(ILcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemThirdPartyPaymentBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$g;->g:Lcom/startshorts/androidplayer/databinding/ItemThirdPartyPaymentBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
    .locals 5
    .param p2    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->f(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    instance-of v0, p2, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentCoinSku;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    check-cast p2, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentCoinSku;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object p2, v1

    .line 18
    :goto_0
    if-eqz p2, :cond_5

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentCoinSku;->getResult()Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$g;->j()Lcom/startshorts/androidplayer/databinding/ItemThirdPartyPaymentBinding;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemThirdPartyPaymentBinding;->a:Lcom/startshorts/androidplayer/ui/view/purchase/ThirdPartyPaymentSkuView;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    instance-of v3, v2, Landroid/view/View;

    .line 38
    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    move-object v1, v2

    .line 42
    check-cast v1, Landroid/view/View;

    .line 43
    .line 44
    :cond_2
    const/4 v2, 0x0

    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    sget-object v3, Lfk/z;->a:Lfk/z;

    .line 48
    .line 49
    invoke-virtual {v3}, Lfk/z;->d()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    invoke-virtual {v3}, Lfk/z;->d()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {v1, v4, v2, v3, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 58
    .line 59
    .line 60
    :cond_3
    if-eqz p1, :cond_4

    .line 61
    .line 62
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v2}, Ljk/b0;->g(Landroid/view/View;I)V

    .line 66
    .line 67
    .line 68
    :cond_4
    invoke-virtual {v0, p2}, Lcom/startshorts/androidplayer/ui/view/purchase/ThirdPartyPaymentSkuView;->v(Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;)V

    .line 69
    .line 70
    .line 71
    :cond_5
    :goto_1
    return-void
.end method
