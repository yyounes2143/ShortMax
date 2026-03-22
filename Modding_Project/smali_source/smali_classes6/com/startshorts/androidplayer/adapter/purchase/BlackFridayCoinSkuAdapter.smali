.class public final Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
.source "BlackFridayCoinSkuAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$a;,
        Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$b;,
        Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$c;,
        Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$d;,
        Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$e;,
        Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$f;,
        Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBlackFridayCoinSkuAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlackFridayCoinSkuAdapter.kt\ncom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,198:1\n1863#2,2:199\n*S KotlinDebug\n*F\n+ 1 BlackFridayCoinSkuAdapter.kt\ncom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter\n*L\n187#1:199,2\n*E\n"
    }
.end annotation


# static fields
.field public static final q:Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final o:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private p:Lcom/startshorts/androidplayer/ui/view/purchase/BlackFridayCoinSkuView$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;->q:Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$b;

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
    new-instance v0, Lnd/a;

    .line 9
    .line 10
    invoke-direct {v0}, Lnd/a;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;->o:Lms/i;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic E()Ljava/util/HashMap;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;->H()Ljava/util/HashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final G()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$g;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;->o:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/HashMap;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final H()Ljava/util/HashMap;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final F()Lcom/startshorts/androidplayer/ui/view/purchase/BlackFridayCoinSkuView$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;->p:Lcom/startshorts/androidplayer/ui/view/purchase/BlackFridayCoinSkuView$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public I(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V
    .locals 4
    .param p1    # Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;",
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
    instance-of v0, p1, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$g;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;->G()Ljava/util/HashMap;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    move-object v1, p1

    .line 15
    check-cast v1, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$g;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->e()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$g;->j()Lcom/startshorts/androidplayer/databinding/ItemBlackFridayCoinSkuUnusedBinding;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemBlackFridayCoinSkuUnusedBinding;->a:Lcom/startshorts/androidplayer/ui/view/purchase/BlackFridayCoinSkuView;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/purchase/BlackFridayCoinSkuView;->B()V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public J(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;",
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
    instance-of v0, p1, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$g;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;->G()Ljava/util/HashMap;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast p1, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$g;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->e()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$g;->j()Lcom/startshorts/androidplayer/databinding/ItemBlackFridayCoinSkuUnusedBinding;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemBlackFridayCoinSkuUnusedBinding;->a:Lcom/startshorts/androidplayer/ui/view/purchase/BlackFridayCoinSkuView;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/purchase/BlackFridayCoinSkuView;->z()V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final K(Lcom/startshorts/androidplayer/ui/view/purchase/BlackFridayCoinSkuView$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/purchase/BlackFridayCoinSkuView$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;->p:Lcom/startshorts/androidplayer/ui/view/purchase/BlackFridayCoinSkuView$b;

    .line 2
    .line 3
    return-void
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;

    .line 6
    .line 7
    const/4 v0, 0x5

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuProductId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;->getRecordType()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x1

    .line 28
    if-ne v1, v2, :cond_4

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;->isExpiration()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;->isConsume()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    const/4 v0, 0x2

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    move v0, v2

    .line 46
    goto :goto_0

    .line 47
    :cond_4
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;->getStatus()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    const/4 v0, 0x3

    .line 52
    if-ne p1, v0, :cond_5

    .line 53
    .line 54
    const/4 v0, 0x4

    .line 55
    :cond_5
    :goto_0
    return v0
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;->I(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V

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
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;->J(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V

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
    const-string v0, "BlackFridayCoinSkuAdapter"

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
            "Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;",
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
    const/4 p3, 0x1

    .line 9
    if-eq p2, p3, :cond_3

    .line 10
    .line 11
    const/4 p3, 0x2

    .line 12
    if-eq p2, p3, :cond_2

    .line 13
    .line 14
    const/4 p3, 0x3

    .line 15
    if-eq p2, p3, :cond_1

    .line 16
    .line 17
    const/4 p3, 0x4

    .line 18
    if-eq p2, p3, :cond_0

    .line 19
    .line 20
    new-instance p2, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$e;

    .line 21
    .line 22
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_black_friday_coin_sku_expired:I

    .line 23
    .line 24
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemBlackFridayCoinSkuExpiredBinding;

    .line 29
    .line 30
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$e;-><init>(Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;Lcom/startshorts/androidplayer/databinding/ItemBlackFridayCoinSkuExpiredBinding;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p2, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$d;

    .line 35
    .line 36
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_discount_coin_sku_refund:I

    .line 37
    .line 38
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemDiscountCoinSkuRefundBinding;

    .line 43
    .line 44
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$d;-><init>(Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;Lcom/startshorts/androidplayer/databinding/ItemDiscountCoinSkuRefundBinding;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance p2, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$c;

    .line 49
    .line 50
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_discount_coin_sku_purchased:I

    .line 51
    .line 52
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemDiscountCoinSkuPurchasedBinding;

    .line 57
    .line 58
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$c;-><init>(Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;Lcom/startshorts/androidplayer/databinding/ItemDiscountCoinSkuPurchasedBinding;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    new-instance p2, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$a;

    .line 63
    .line 64
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_black_friday_coin_sku_used:I

    .line 65
    .line 66
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemBlackFridayCoinSkuUsedBinding;

    .line 71
    .line 72
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$a;-><init>(Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;Lcom/startshorts/androidplayer/databinding/ItemBlackFridayCoinSkuUsedBinding;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    new-instance p2, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$g;

    .line 77
    .line 78
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_black_friday_coin_sku_unused:I

    .line 79
    .line 80
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemBlackFridayCoinSkuUnusedBinding;

    .line 85
    .line 86
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$g;-><init>(Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;Lcom/startshorts/androidplayer/databinding/ItemBlackFridayCoinSkuUnusedBinding;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    new-instance p2, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$f;

    .line 91
    .line 92
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_black_friday_coin_sku_title:I

    .line 93
    .line 94
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemBlackFridayCoinSkuTitleBinding;

    .line 99
    .line 100
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$f;-><init>(Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;Lcom/startshorts/androidplayer/databinding/ItemBlackFridayCoinSkuTitleBinding;)V

    .line 101
    .line 102
    .line 103
    :goto_0
    return-object p2
.end method

.method public z()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->z()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;->G()Ljava/util/HashMap;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "<get-values>(...)"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    check-cast v0, Ljava/lang/Iterable;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$g;

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$g;->j()Lcom/startshorts/androidplayer/databinding/ItemBlackFridayCoinSkuUnusedBinding;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemBlackFridayCoinSkuUnusedBinding;->a:Lcom/startshorts/androidplayer/ui/view/purchase/BlackFridayCoinSkuView;

    .line 52
    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/view/purchase/BlackFridayCoinSkuView;->z()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;->G()Ljava/util/HashMap;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 68
    .line 69
    .line 70
    return-void
.end method
