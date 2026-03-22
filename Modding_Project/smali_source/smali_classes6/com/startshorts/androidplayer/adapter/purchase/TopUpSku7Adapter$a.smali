.class final Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$a;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "TopUpSku7Adapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupBlackFriday7Binding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupBlackFriday7Binding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupBlackFriday7Binding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$a;->h:Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$a;->g:Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupBlackFriday7Binding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupBlackFriday7Binding;

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$a;->k(ILcom/startshorts/androidplayer/bean/adapter/SelectableItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupBlackFriday7Binding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$a;->g:Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupBlackFriday7Binding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/adapter/SelectableItem;)V
    .locals 12
    .param p2    # Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;
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
    instance-of v0, p2, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupBlackFriday7Binding;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupBlackFriday7Binding;->a:Lcom/startshorts/androidplayer/ui/view/purchase/BlackFridayCoinSkuView7;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$a;->h:Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->L()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-ne v2, p1, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/view/purchase/BlackFridayCoinSkuView7;->setSelect(Z)V

    .line 31
    .line 32
    .line 33
    move-object v4, p2

    .line 34
    check-cast v4, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 35
    .line 36
    invoke-virtual {v0, v4}, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->w(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 37
    .line 38
    .line 39
    new-instance p1, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$a$a;

    .line 40
    .line 41
    invoke-direct {p1, v1, p2}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$a$a;-><init>(Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/view/purchase/BlackFridayCoinSkuView;->setMListener(Lcom/startshorts/androidplayer/ui/view/purchase/BlackFridayCoinSkuView$b;)V

    .line 45
    .line 46
    .line 47
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 48
    .line 49
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$a;->h:Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->J()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    const/16 v10, 0x7c

    .line 56
    .line 57
    const/4 v11, 0x0

    .line 58
    const/4 v5, 0x0

    .line 59
    const/4 v6, 0x0

    .line 60
    const/4 v7, 0x0

    .line 61
    const/4 v8, 0x0

    .line 62
    const/4 v9, 0x0

    .line 63
    invoke-static/range {v2 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->O0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void
.end method
