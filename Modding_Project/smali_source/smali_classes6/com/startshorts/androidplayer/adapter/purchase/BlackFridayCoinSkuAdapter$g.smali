.class final Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$g;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "BlackFridayCoinSkuAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemBlackFridayCoinSkuUnusedBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;Lcom/startshorts/androidplayer/databinding/ItemBlackFridayCoinSkuUnusedBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemBlackFridayCoinSkuUnusedBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$g;->h:Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$g;->g:Lcom/startshorts/androidplayer/databinding/ItemBlackFridayCoinSkuUnusedBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$g;->j()Lcom/startshorts/androidplayer/databinding/ItemBlackFridayCoinSkuUnusedBinding;

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$g;->k(ILcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemBlackFridayCoinSkuUnusedBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$g;->g:Lcom/startshorts/androidplayer/databinding/ItemBlackFridayCoinSkuUnusedBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;)V
    .locals 11
    .param p2    # Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;
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
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 10
    .line 11
    const/16 v9, 0x7c

    .line 12
    .line 13
    const/4 v10, 0x0

    .line 14
    const-string v2, "my_wallet_discount"

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v8, 0x0

    .line 21
    move-object v3, p2

    .line 22
    invoke-static/range {v1 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->O0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$g;->j()Lcom/startshorts/androidplayer/databinding/ItemBlackFridayCoinSkuUnusedBinding;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemBlackFridayCoinSkuUnusedBinding;->a:Lcom/startshorts/androidplayer/ui/view/purchase/BlackFridayCoinSkuView;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$g;->h:Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->w(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 34
    .line 35
    .line 36
    new-instance p2, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$g$a;

    .line 37
    .line 38
    invoke-direct {p2, v0}, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$g$a;-><init>(Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/purchase/BlackFridayCoinSkuView;->setMListener(Lcom/startshorts/androidplayer/ui/view/purchase/BlackFridayCoinSkuView$b;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
