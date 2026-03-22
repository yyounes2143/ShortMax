.class final Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$c;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "TopUpCoinSkuAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
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
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupExpansionBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupExpansionBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupExpansionBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$c;->h:Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$c;->g:Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupExpansionBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupExpansionBinding;

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$c;->k(ILcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupExpansionBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$c;->g:Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupExpansionBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
    .locals 12
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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupExpansionBinding;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupExpansionBinding;->a:Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$c;->h:Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->w(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$c$a;

    .line 21
    .line 22
    invoke-direct {v1, v0, p2}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$c$a;-><init>(Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;->setMListener(Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView$a;)V

    .line 26
    .line 27
    .line 28
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 29
    .line 30
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$c;->h:Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;->G()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const/16 v10, 0x7c

    .line 37
    .line 38
    const/4 v11, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v7, 0x0

    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v9, 0x0

    .line 44
    move-object v4, p2

    .line 45
    invoke-static/range {v2 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->O0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
