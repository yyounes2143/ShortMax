.class public final Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
.source "DiscoverRankingAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter$a;,
        Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiscoverRankingAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverRankingAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,115:1\n1#2:116\n*E\n"
    }
.end annotation


# static fields
.field public static final u:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final v:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final o:I

.field private final p:I

.field private final q:F

.field private final r:I

.field private final s:I

.field private final t:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;->u:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter$a;

    .line 8
    .line 9
    sget v2, Lcom/startshorts/androidplayer/R$drawable;->ic_discover_popular_1:I

    .line 10
    .line 11
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->ic_discover_popular_2:I

    .line 12
    .line 13
    sget v4, Lcom/startshorts/androidplayer/R$drawable;->ic_discover_popular_3:I

    .line 14
    .line 15
    sget v5, Lcom/startshorts/androidplayer/R$drawable;->ic_discover_popular_4:I

    .line 16
    .line 17
    sget v6, Lcom/startshorts/androidplayer/R$drawable;->ic_discover_popular_5:I

    .line 18
    .line 19
    sget v7, Lcom/startshorts/androidplayer/R$drawable;->ic_discover_popular_6:I

    .line 20
    .line 21
    sget v8, Lcom/startshorts/androidplayer/R$drawable;->ic_discover_popular_7:I

    .line 22
    .line 23
    sget v9, Lcom/startshorts/androidplayer/R$drawable;->ic_discover_popular_8:I

    .line 24
    .line 25
    sget v10, Lcom/startshorts/androidplayer/R$drawable;->ic_discover_popular_9:I

    .line 26
    .line 27
    sget v11, Lcom/startshorts/androidplayer/R$drawable;->ic_discover_popular_10:I

    .line 28
    .line 29
    filled-new-array/range {v2 .. v11}, [I

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;->v:[I

    .line 34
    .line 35
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
    const/high16 v0, 0x42d40000    # 106.0f

    .line 9
    .line 10
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iput v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;->o:I

    .line 15
    .line 16
    const/high16 v1, 0x430d0000    # 141.0f

    .line 17
    .line 18
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;->p:I

    .line 23
    .line 24
    sget-object v1, Lfk/z;->a:Lfk/z;

    .line 25
    .line 26
    invoke-virtual {v1}, Lfk/z;->r()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    int-to-float v1, v1

    .line 31
    iput v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;->q:F

    .line 32
    .line 33
    const/high16 v1, 0x430f0000    # 143.0f

    .line 34
    .line 35
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iput v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;->r:I

    .line 40
    .line 41
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iput v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;->s:I

    .line 46
    .line 47
    new-instance v0, Lcom/startshorts/androidplayer/adapter/discover/b1;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/adapter/discover/b1;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;->t:Lms/i;

    .line 57
    .line 58
    return-void
.end method

.method public static synthetic E(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;->K(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic F(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;->q:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic G(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;->J()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic H(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;->p:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic I(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;->o:I

    .line 2
    .line 3
    return p0
.end method

.method private final J()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;->t:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final K(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;)Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    const/16 v2, 0xa

    .line 8
    .line 9
    if-ge v1, v2, :cond_2

    .line 10
    .line 11
    sget-object v3, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;->v:[I

    .line 12
    .line 13
    if-ltz v1, :cond_0

    .line 14
    .line 15
    array-length v4, v3

    .line 16
    if-ge v1, v4, :cond_0

    .line 17
    .line 18
    aget v3, v3, v1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->ic_discover_popular_1:I

    .line 22
    .line 23
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    if-ne v1, v2, :cond_1

    .line 30
    .line 31
    iget v2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;->r:I

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_1
    iget v2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;->s:I

    .line 35
    .line 36
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    new-instance v4, Lkotlin/Pair;

    .line 41
    .line 42
    invoke-direct {v4, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    return-object v0
.end method


# virtual methods
.method public L(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V
    .locals 12
    .param p1    # Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
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
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->d()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    move-object v2, v0

    .line 11
    check-cast v2, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    sget-object v1, Lag/a;->a:Lag/a;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/16 v10, 0xfc

    .line 22
    .line 23
    const/4 v11, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v8, 0x0

    .line 29
    const/4 v9, 0x0

    .line 30
    invoke-static/range {v1 .. v11}, Lag/a;->c(Lag/a;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;IILcom/startshorts/androidplayer/bean/discover/DiscoverTab;Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;->L(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V

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
    const-string v0, "DiscoverRankingAdapter"

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
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">.ViewHolder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter$b;

    .line 7
    .line 8
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_discover_ranking:I

    .line 9
    .line 10
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingBinding;

    .line 15
    .line 16
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter$b;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingBinding;)V

    .line 17
    .line 18
    .line 19
    return-object p2
.end method
