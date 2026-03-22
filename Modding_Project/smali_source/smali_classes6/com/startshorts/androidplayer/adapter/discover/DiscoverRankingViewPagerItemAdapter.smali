.class public final Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
.source "DiscoverRankingViewPagerItemAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$a;,
        Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b;,
        Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c;
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
        "SMAP\nDiscoverRankingViewPagerItemAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverRankingViewPagerItemAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,348:1\n295#2,2:349\n1#3:351\n*S KotlinDebug\n*F\n+ 1 DiscoverRankingViewPagerItemAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter\n*L\n159#1:349,2\n*E\n"
    }
.end annotation


# static fields
.field public static final u:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final v:I

.field private static final w:I

.field private static final x:F

.field private static final y:I


# instance fields
.field private final o:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final p:I

.field private final q:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final r:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private s:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final t:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->u:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$a;

    .line 8
    .line 9
    const/high16 v0, 0x42a00000    # 80.0f

    .line 10
    .line 11
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->v:I

    .line 16
    .line 17
    const/high16 v0, 0x42d40000    # 106.0f

    .line 18
    .line 19
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->w:I

    .line 24
    .line 25
    const/high16 v0, 0x40800000    # 4.0f

    .line 26
    .line 27
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    int-to-float v0, v0

    .line 32
    sput v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->x:F

    .line 33
    .line 34
    sget-object v0, Lfk/z;->a:Lfk/z;

    .line 35
    .line 36
    invoke-virtual {v0}, Lfk/z;->n()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    sput v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->y:I

    .line 41
    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBinding;ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;)V
    .locals 4
    .param p1    # Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "mBinding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "module"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    const/4 v1, 0x0

    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->o:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBinding;

    .line 19
    .line 20
    iput p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->p:I

    .line 21
    .line 22
    iput-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->q:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 23
    .line 24
    iput-object p4, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->r:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;

    .line 25
    .line 26
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 27
    .line 28
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->t:Landroidx/lifecycle/MutableLiveData;

    .line 32
    .line 33
    return-void
.end method

.method public static synthetic E(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->X(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic F(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->Y(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic G(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;)Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBinding;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->o:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBinding;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic H()F
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->x:F

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic I()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->w:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic J()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->v:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic K(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->t:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic L(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;)Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->q:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic M(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;)Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->Q()Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final N(Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBinding;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->S()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 12
    .line 13
    const-string v0, "DiscoverRankingViewPagerItemAdapter"

    .line 14
    .line 15
    const-string v1, "createBannerViewPager ignore -> shorts is empty"

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 29
    .line 30
    .line 31
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    sget v2, Lcom/startshorts/androidplayer/R$id;->recycler_view:I

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 47
    .line 48
    .line 49
    iget-object v2, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBinding;->a:Lcom/startshorts/androidplayer/utils/scroll/NestedScrollableHost;

    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 52
    .line 53
    .line 54
    iget-object v2, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBinding;->a:Lcom/startshorts/androidplayer/utils/scroll/NestedScrollableHost;

    .line 55
    .line 56
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 57
    .line 58
    const/4 v4, -0x1

    .line 59
    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 70
    .line 71
    .line 72
    const/4 v3, 0x2

    .line 73
    invoke-virtual {v1, v3}, Landroid/view/View;->setOverScrollMode(I)V

    .line 74
    .line 75
    .line 76
    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const/4 v5, 0x3

    .line 87
    invoke-direct {v4, p1, v5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-nez p1, :cond_1

    .line 101
    .line 102
    new-instance p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$createRecyclerView$1$2;

    .line 103
    .line 104
    invoke-direct {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$createRecyclerView$1$2;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 108
    .line 109
    .line 110
    :cond_1
    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 114
    .line 115
    .line 116
    const/4 p1, 0x0

    .line 117
    invoke-static {p0, v0, v2, v3, p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->D(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Ljava/util/List;ZILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method private final O()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->q:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRankingResponseList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    check-cast v0, Ljava/lang/Iterable;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    move-object v2, v1

    .line 26
    check-cast v2, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;->getRankingId()Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->R()Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v1, 0x0

    .line 44
    :goto_0
    check-cast v1, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;->getShortPlayResponseList()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    :cond_3
    return-object v0
.end method

.method private final Q()Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->t:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b;

    .line 8
    .line 9
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$b;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$b;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$b;->a()Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$c;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    check-cast v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$c;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$c;->a()Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$a;

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    check-cast v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$a;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$a;->a()Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0
.end method

.method private final R()Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->Q()Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;->getId()Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method private final S()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->t:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b;

    .line 8
    .line 9
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$c;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$c;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$c;->b()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-object v0
.end method

.method private final T(Lcom/hades/aar/pagestate/StateViewGroup;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hades/aar/pagestate/StateViewGroup;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$d;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$d;-><init>(Lcom/hades/aar/pagestate/StateViewGroup;Lkotlin/jvm/functions/Function0;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/hades/aar/pagestate/StateViewGroup;->setMOnInflatedListener(Lla/a;)V

    .line 7
    .line 8
    .line 9
    sget p2, Lcom/startshorts/androidplayer/R$layout;->viewstub_page_state_gray_loading:I

    .line 10
    .line 11
    sget-object v0, Lcom/hades/aar/pagestate/State;->LOADING:Lcom/hades/aar/pagestate/State;

    .line 12
    .line 13
    invoke-virtual {p1, p2, v0}, Lcom/hades/aar/pagestate/StateViewGroup;->f(ILcom/hades/aar/pagestate/State;)V

    .line 14
    .line 15
    .line 16
    sget p2, Lcom/startshorts/androidplayer/R$layout;->viewstub_page_state_empty:I

    .line 17
    .line 18
    sget-object v0, Lcom/hades/aar/pagestate/State;->EMPTY:Lcom/hades/aar/pagestate/State;

    .line 19
    .line 20
    invoke-virtual {p1, p2, v0}, Lcom/hades/aar/pagestate/StateViewGroup;->f(ILcom/hades/aar/pagestate/State;)V

    .line 21
    .line 22
    .line 23
    sget p2, Lcom/startshorts/androidplayer/R$layout;->viewstub_page_state_network_error:I

    .line 24
    .line 25
    sget-object v0, Lcom/hades/aar/pagestate/State;->NETWORK_ERROR:Lcom/hades/aar/pagestate/State;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v0}, Lcom/hades/aar/pagestate/StateViewGroup;->f(ILcom/hades/aar/pagestate/State;)V

    .line 28
    .line 29
    .line 30
    sget p2, Lcom/startshorts/androidplayer/R$layout;->viewstub_page_state_other_error:I

    .line 31
    .line 32
    sget-object v0, Lcom/hades/aar/pagestate/State;->OTHER_ERROR:Lcom/hades/aar/pagestate/State;

    .line 33
    .line 34
    invoke-virtual {p1, p2, v0}, Lcom/hades/aar/pagestate/StateViewGroup;->f(ILcom/hades/aar/pagestate/State;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private final U(Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBinding;Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b;)V
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBinding;->b:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 2
    .line 3
    const-string v1, "pageStateView"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    instance-of v1, p2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$b;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->O()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    move-object v1, p1

    .line 18
    check-cast v1, Ljava/util/Collection;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->t:Landroidx/lifecycle/MutableLiveData;

    .line 27
    .line 28
    new-instance v1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$c;

    .line 29
    .line 30
    check-cast p2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$b;

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$b;->a()Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-direct {v1, p2, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$c;-><init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_3

    .line 43
    .line 44
    :cond_0
    sget-object p1, Lcom/hades/aar/pagestate/State;->LOADING:Lcom/hades/aar/pagestate/State;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lcom/hades/aar/pagestate/StateViewGroup;->h(Lcom/hades/aar/pagestate/State;)V

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->s:Lkotlinx/coroutines/r;

    .line 54
    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    invoke-static {p1, v2, v0, v2}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    sget-object v3, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 62
    .line 63
    new-instance v6, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1;

    .line 64
    .line 65
    invoke-direct {v6, p0, p2, v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b;Lrs/c;)V

    .line 66
    .line 67
    .line 68
    const/4 v7, 0x2

    .line 69
    const/4 v8, 0x0

    .line 70
    const-string v4, "fetchDiscoverRankingBanner"

    .line 71
    .line 72
    const/4 v5, 0x0

    .line 73
    invoke-static/range {v3 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->s:Lkotlinx/coroutines/r;

    .line 78
    .line 79
    goto/16 :goto_3

    .line 80
    .line 81
    :cond_2
    instance-of v1, p2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$c;

    .line 82
    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    check-cast p2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$c;

    .line 86
    .line 87
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$c;->b()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    check-cast p2, Ljava/util/Collection;

    .line 92
    .line 93
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    if-nez p2, :cond_3

    .line 98
    .line 99
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->N(Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBinding;)V

    .line 100
    .line 101
    .line 102
    sget-object p1, Lcom/hades/aar/pagestate/State;->LOADING:Lcom/hades/aar/pagestate/State;

    .line 103
    .line 104
    invoke-virtual {v0, p1}, Lcom/hades/aar/pagestate/StateViewGroup;->c(Lcom/hades/aar/pagestate/State;)V

    .line 105
    .line 106
    .line 107
    const/16 p1, 0x8

    .line 108
    .line 109
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_3

    .line 113
    .line 114
    :cond_3
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->V(Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBinding;)V

    .line 115
    .line 116
    .line 117
    sget-object p1, Lcom/hades/aar/pagestate/State;->EMPTY:Lcom/hades/aar/pagestate/State;

    .line 118
    .line 119
    invoke-virtual {v0, p1}, Lcom/hades/aar/pagestate/StateViewGroup;->h(Lcom/hades/aar/pagestate/State;)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_3

    .line 123
    .line 124
    :cond_4
    instance-of v1, p2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$a;

    .line 125
    .line 126
    const-string v3, "DiscoverRankingViewPagerItemAdapter"

    .line 127
    .line 128
    if-eqz v1, :cond_c

    .line 129
    .line 130
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->V(Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBinding;)V

    .line 131
    .line 132
    .line 133
    check-cast p2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$a;

    .line 134
    .line 135
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$a;->b()Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->isNetworkError()Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-eqz p1, :cond_7

    .line 144
    .line 145
    sget-object p1, Lcom/hades/aar/pagestate/State;->NETWORK_ERROR:Lcom/hades/aar/pagestate/State;

    .line 146
    .line 147
    invoke-virtual {v0, p1}, Lcom/hades/aar/pagestate/StateViewGroup;->h(Lcom/hades/aar/pagestate/State;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, p1}, Lcom/hades/aar/pagestate/StateViewGroup;->a(Lcom/hades/aar/pagestate/State;)Ljava/lang/ref/WeakReference;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    if-eqz p1, :cond_5

    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    check-cast p1, Lla/b;

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_5
    move-object p1, v2

    .line 164
    :goto_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/view/pagestate/SNetworkErrorView;

    .line 165
    .line 166
    if-eqz v0, :cond_6

    .line 167
    .line 168
    move-object v2, p1

    .line 169
    check-cast v2, Lcom/startshorts/androidplayer/ui/view/pagestate/SNetworkErrorView;

    .line 170
    .line 171
    :cond_6
    if-eqz v2, :cond_b

    .line 172
    .line 173
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/ui/view/pagestate/SNetworkErrorView;->v()V

    .line 174
    .line 175
    .line 176
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->y:I

    .line 177
    .line 178
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/ui/view/pagestate/SNetworkErrorView;->w(I)V

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_7
    sget-object p1, Lcom/hades/aar/pagestate/State;->OTHER_ERROR:Lcom/hades/aar/pagestate/State;

    .line 183
    .line 184
    invoke-virtual {v0, p1}, Lcom/hades/aar/pagestate/StateViewGroup;->h(Lcom/hades/aar/pagestate/State;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, p1}, Lcom/hades/aar/pagestate/StateViewGroup;->a(Lcom/hades/aar/pagestate/State;)Ljava/lang/ref/WeakReference;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    if-eqz p1, :cond_8

    .line 192
    .line 193
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    check-cast p1, Lla/b;

    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_8
    move-object p1, v2

    .line 201
    :goto_1
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/view/pagestate/SOtherErrorView;

    .line 202
    .line 203
    if-eqz v0, :cond_9

    .line 204
    .line 205
    move-object v2, p1

    .line 206
    check-cast v2, Lcom/startshorts/androidplayer/ui/view/pagestate/SOtherErrorView;

    .line 207
    .line 208
    :cond_9
    if-eqz v2, :cond_b

    .line 209
    .line 210
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/ui/view/pagestate/SOtherErrorView;->v()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$a;->b()Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->getMessage()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    if-nez p1, :cond_a

    .line 222
    .line 223
    const-string p1, ""

    .line 224
    .line 225
    :cond_a
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/ui/view/pagestate/SOtherErrorView;->w(Ljava/lang/String;)Lcom/startshorts/androidplayer/ui/view/pagestate/SOtherErrorView;

    .line 226
    .line 227
    .line 228
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->y:I

    .line 229
    .line 230
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/ui/view/pagestate/SOtherErrorView;->x(I)V

    .line 231
    .line 232
    .line 233
    :cond_b
    :goto_2
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 234
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    const-string v1, "RankingFailed -> "

    .line 241
    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$a;->a()Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;->getName()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p2

    .line 253
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p2

    .line 260
    invoke-virtual {p1, v3, p2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    goto :goto_3

    .line 264
    :cond_c
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 265
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    const-string v1, "RankingChangeState -> "

    .line 272
    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p2

    .line 283
    invoke-virtual {p1, v3, p2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    :goto_3
    return-void
.end method

.method private final V(Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBinding;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBinding;->a:Lcom/startshorts/androidplayer/utils/scroll/NestedScrollableHost;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final X(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->Q()Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->t:Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$b;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$b;-><init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method private static final Y(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->o:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBinding;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->U(Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBinding;Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method


# virtual methods
.method public final P()Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->r:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;

    .line 2
    .line 3
    return-object v0
.end method

.method public final W(Landroidx/lifecycle/Lifecycle;)V
    .locals 4
    .param p1    # Landroidx/lifecycle/Lifecycle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->q:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRankingNameList()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    iget v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->p:I

    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->q:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getCategoryTabPosMap()Ljava/util/HashMap;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->q:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 32
    .line 33
    new-instance v2, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->setCategoryTabPosMap(Ljava/util/HashMap;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->o:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBinding;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBinding;->b:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 44
    .line 45
    const-string v2, "pageStateView"

    .line 46
    .line 47
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v2, Lcom/startshorts/androidplayer/adapter/discover/e1;

    .line 51
    .line 52
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/adapter/discover/e1;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, v1, v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->T(Lcom/hades/aar/pagestate/StateViewGroup;Lkotlin/jvm/functions/Function0;)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$e;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$e;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->B(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->t:Landroidx/lifecycle/MutableLiveData;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/startshorts/androidplayer/utils/ext/LifeCycleExtKt;->a(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleOwner;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance v2, Lcom/startshorts/androidplayer/adapter/discover/f1;

    .line 73
    .line 74
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/adapter/discover/f1;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;)V

    .line 75
    .line 76
    .line 77
    new-instance v3, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$f;

    .line 78
    .line 79
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$f;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, p1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->t:Landroidx/lifecycle/MutableLiveData;

    .line 86
    .line 87
    new-instance v1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$b;

    .line 88
    .line 89
    invoke-direct {v1, v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$b;-><init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;)V

    .line 90
    .line 91
    .line 92
    invoke-static {p1, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    :goto_0
    return-void
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
    new-instance p2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c;

    .line 7
    .line 8
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_discover_ranking_mul_tag:I

    .line 9
    .line 10
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;

    .line 15
    .line 16
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;)V

    .line 17
    .line 18
    .line 19
    return-object p2
.end method
