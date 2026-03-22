.class final Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$c;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "BlackFridayCoinSkuAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
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
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemDiscountCoinSkuPurchasedBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;Lcom/startshorts/androidplayer/databinding/ItemDiscountCoinSkuPurchasedBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemDiscountCoinSkuPurchasedBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$c;->h:Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$c;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscountCoinSkuPurchasedBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscountCoinSkuPurchasedBinding;

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$c;->k(ILcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemDiscountCoinSkuPurchasedBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$c;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscountCoinSkuPurchasedBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;)V
    .locals 7
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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscountCoinSkuPurchasedBinding;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscountCoinSkuPurchasedBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSubscript()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscountCoinSkuPurchasedBinding;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscountCoinSkuPurchasedBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;->getShortPlayName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscountCoinSkuPurchasedBinding;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscountCoinSkuPurchasedBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 40
    .line 41
    sget-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;->getUseTime()J

    .line 44
    .line 45
    .line 46
    move-result-wide v1

    .line 47
    sget-object v3, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->e()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const/4 v5, 0x4

    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v4, 0x0

    .line 56
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/utils/TimeUtil;->e(Lcom/startshorts/androidplayer/utils/TimeUtil;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscountCoinSkuPurchasedBinding;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscountCoinSkuPurchasedBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getPriceText()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method
