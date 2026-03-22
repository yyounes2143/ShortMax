.class public final Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
.source "TopUpSku7Adapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$a;,
        Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$b;,
        Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$c;,
        Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$d;,
        Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$e;,
        Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$f;,
        Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$g;,
        Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$h;,
        Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final x:Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private o:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private p:Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$c;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private q:Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private r:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private s:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private t:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private u:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private v:I

.field private w:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->x:Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$b;

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
    iput-object v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->r:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->s:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->u:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic E(Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->P(Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic F(Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->O(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final O(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->o:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lnd/c;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lnd/c;-><init>(Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

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

.method private static final P(Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)Lkotlin/Unit;
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
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final H()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->t:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final I()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final J()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final K()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->w:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final L()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->v:I

    .line 2
    .line 3
    return v0
.end method

.method public M(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;",
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
    instance-of v0, p1, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$c;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$c;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->p:Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$c;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupExpansion7Binding;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupExpansion7Binding;->a:Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView7;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;->A()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$a;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    check-cast p1, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$a;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->q:Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$a;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupBlackFriday7Binding;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupBlackFriday7Binding;->a:Lcom/startshorts/androidplayer/ui/view/purchase/BlackFridayCoinSkuView7;

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

.method public N(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;",
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
    instance-of v0, p1, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$c;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput-object v1, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->p:Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$c;

    .line 12
    .line 13
    check-cast p1, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$c;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupExpansion7Binding;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupExpansion7Binding;->a:Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView7;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;->z()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$a;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iput-object v1, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->q:Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$a;

    .line 30
    .line 31
    check-cast p1, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$a;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupBlackFriday7Binding;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupBlackFriday7Binding;->a:Lcom/startshorts/androidplayer/ui/view/purchase/BlackFridayCoinSkuView7;

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

.method public final Q(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->s:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final R(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->r:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final S(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->w:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public final T(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->v:I

    .line 2
    .line 3
    return-void
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;

    .line 6
    .line 7
    instance-of v0, p1, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    check-cast p1, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isPro()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/16 p1, 0x458

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/16 p1, 0x457

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    instance-of v0, p1, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    check-cast p1, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 p1, -0x1

    .line 37
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->o:Landroidx/recyclerview/widget/RecyclerView;

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->o:Landroidx/recyclerview/widget/RecyclerView;

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
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->M(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V

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
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->N(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V

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
    const-string v0, "TopUpSku7Adapter"

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
            "Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;",
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
    if-eqz p2, :cond_6

    .line 7
    .line 8
    const/4 p3, 0x7

    .line 9
    if-eq p2, p3, :cond_5

    .line 10
    .line 11
    const/16 p3, 0x8

    .line 12
    .line 13
    if-eq p2, p3, :cond_4

    .line 14
    .line 15
    const/16 p3, 0x3e7

    .line 16
    .line 17
    if-eq p2, p3, :cond_3

    .line 18
    .line 19
    const/16 p3, 0x3e8

    .line 20
    .line 21
    if-eq p2, p3, :cond_2

    .line 22
    .line 23
    const/16 p3, 0x457

    .line 24
    .line 25
    if-eq p2, p3, :cond_1

    .line 26
    .line 27
    const/16 p3, 0x458

    .line 28
    .line 29
    if-eq p2, p3, :cond_0

    .line 30
    .line 31
    new-instance p2, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$f;

    .line 32
    .line 33
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_coin_sku_topup_normal_7:I

    .line 34
    .line 35
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupNormal7Binding;

    .line 40
    .line 41
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$f;-><init>(Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupNormal7Binding;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance p2, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$h;

    .line 46
    .line 47
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_subs_type_pro_7:I

    .line 48
    .line 49
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemSubsTypePro7Binding;

    .line 54
    .line 55
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$h;-><init>(Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;Lcom/startshorts/androidplayer/databinding/ItemSubsTypePro7Binding;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    new-instance p2, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$g;

    .line 60
    .line 61
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_subs_type_normal_7:I

    .line 62
    .line 63
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemSubsTypeNormal7Binding;

    .line 68
    .line 69
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$g;-><init>(Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;Lcom/startshorts/androidplayer/databinding/ItemSubsTypeNormal7Binding;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    new-instance p2, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$d;

    .line 74
    .line 75
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_low_sku_template_notification:I

    .line 76
    .line 77
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemLowSkuTemplateNotificationBinding;

    .line 82
    .line 83
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$d;-><init>(Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;Lcom/startshorts/androidplayer/databinding/ItemLowSkuTemplateNotificationBinding;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    new-instance p2, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$i;

    .line 88
    .line 89
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_third_party_payment:I

    .line 90
    .line 91
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemThirdPartyPaymentBinding;

    .line 96
    .line 97
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$i;-><init>(Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;Lcom/startshorts/androidplayer/databinding/ItemThirdPartyPaymentBinding;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    new-instance p2, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$a;

    .line 102
    .line 103
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_coin_sku_topup_black_friday_7:I

    .line 104
    .line 105
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupBlackFriday7Binding;

    .line 110
    .line 111
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$a;-><init>(Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupBlackFriday7Binding;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_5
    new-instance p2, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$c;

    .line 116
    .line 117
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_coin_sku_topup_expansion_7:I

    .line 118
    .line 119
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupExpansion7Binding;

    .line 124
    .line 125
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$c;-><init>(Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupExpansion7Binding;)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_6
    new-instance p2, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$e;

    .line 130
    .line 131
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_coin_sku_topup_main_7:I

    .line 132
    .line 133
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupMain7Binding;

    .line 138
    .line 139
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$e;-><init>(Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupMain7Binding;)V

    .line 140
    .line 141
    .line 142
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
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->p:Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$c;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupExpansion7Binding;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupExpansion7Binding;->a:Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView7;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->q:Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$a;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupBlackFriday7Binding;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupBlackFriday7Binding;->a:Lcom/startshorts/androidplayer/ui/view/purchase/BlackFridayCoinSkuView7;

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
