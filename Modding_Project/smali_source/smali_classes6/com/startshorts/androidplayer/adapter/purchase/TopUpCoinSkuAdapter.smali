.class public final Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
.source "TopUpCoinSkuAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$a;,
        Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$b;,
        Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$c;,
        Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$d;,
        Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$e;,
        Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$f;,
        Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/purchase/CoinSku;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final s:Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private o:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private p:Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$c;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private q:Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private r:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;->s:Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$b;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    iput-object v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;->r:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic E(Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;->K(Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic F(Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;->J(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final J(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;->o:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lnd/b;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lnd/b;-><init>(Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Ljk/t;->b(Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/functions/Function0;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private static final K(Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)Lkotlin/Unit;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-static {p0, p1, v0, v1, v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->j(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method


# virtual methods
.method public final G()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public H(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/purchase/CoinSku;",
            ">.ViewHolder;)V"
        }
    .end annotation

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$c;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$c;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;->p:Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$c;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupExpansionBinding;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupExpansionBinding;->a:Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;->A()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$a;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    check-cast p1, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$a;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;->q:Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$a;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupBlackFridayBinding;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupBlackFridayBinding;->a:Lcom/startshorts/androidplayer/ui/view/purchase/BlackFridayCoinSkuView;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/purchase/BlackFridayCoinSkuView;->B()V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method public I(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/purchase/CoinSku;",
            ">.ViewHolder;)V"
        }
    .end annotation

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$c;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput-object v1, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;->p:Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$c;

    .line 12
    .line 13
    check-cast p1, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$c;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupExpansionBinding;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupExpansionBinding;->a:Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;->z()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$a;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iput-object v1, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;->q:Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$a;

    .line 30
    .line 31
    check-cast p1, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$a;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupBlackFridayBinding;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupBlackFridayBinding;->a:Lcom/startshorts/androidplayer/ui/view/purchase/BlackFridayCoinSkuView;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/purchase/BlackFridayCoinSkuView;->z()V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, -0x1

    .line 15
    :goto_0
    return p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;->o:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    return-void
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;->o:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    return-void
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;->H(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;->I(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public p()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "TopUpCoinSkuAdapter"

    .line 2
    .line 3
    return-object v0
.end method

.method public x(Landroid/view/ViewGroup;II)Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "II)",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/purchase/CoinSku;",
            ">.ViewHolder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p3, "parent"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_4

    .line 7
    .line 8
    const/4 p3, 0x7

    .line 9
    if-eq p2, p3, :cond_3

    .line 10
    .line 11
    const/16 p3, 0x8

    .line 12
    .line 13
    if-eq p2, p3, :cond_2

    .line 14
    .line 15
    const/16 p3, 0x3e7

    .line 16
    .line 17
    if-eq p2, p3, :cond_1

    .line 18
    .line 19
    const/16 p3, 0x3e8

    .line 20
    .line 21
    if-eq p2, p3, :cond_0

    .line 22
    .line 23
    new-instance p2, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$f;

    .line 24
    .line 25
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_coin_sku_topup_normal:I

    .line 26
    .line 27
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupNormalBinding;

    .line 32
    .line 33
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$f;-><init>(Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupNormalBinding;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance p2, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$d;

    .line 38
    .line 39
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_low_sku_template_notification:I

    .line 40
    .line 41
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemLowSkuTemplateNotificationBinding;

    .line 46
    .line 47
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$d;-><init>(Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;Lcom/startshorts/androidplayer/databinding/ItemLowSkuTemplateNotificationBinding;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    new-instance p2, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$g;

    .line 52
    .line 53
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_third_party_payment:I

    .line 54
    .line 55
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemThirdPartyPaymentBinding;

    .line 60
    .line 61
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$g;-><init>(Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;Lcom/startshorts/androidplayer/databinding/ItemThirdPartyPaymentBinding;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    new-instance p2, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$a;

    .line 66
    .line 67
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_coin_sku_topup_black_friday:I

    .line 68
    .line 69
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupBlackFridayBinding;

    .line 74
    .line 75
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$a;-><init>(Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupBlackFridayBinding;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    new-instance p2, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$c;

    .line 80
    .line 81
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_coin_sku_topup_expansion:I

    .line 82
    .line 83
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupExpansionBinding;

    .line 88
    .line 89
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$c;-><init>(Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupExpansionBinding;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    new-instance p2, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$e;

    .line 94
    .line 95
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_coin_sku_topup_main:I

    .line 96
    .line 97
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupMainBinding;

    .line 102
    .line 103
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$e;-><init>(Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupMainBinding;)V

    .line 104
    .line 105
    .line 106
    :goto_0
    return-object p2
.end method

.method public z()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->z()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;->p:Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$c;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupExpansionBinding;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupExpansionBinding;->a:Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;->z()V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;->q:Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$a;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupBlackFridayBinding;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupBlackFridayBinding;->a:Lcom/startshorts/androidplayer/ui/view/purchase/BlackFridayCoinSkuView;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/purchase/BlackFridayCoinSkuView;->z()V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method
