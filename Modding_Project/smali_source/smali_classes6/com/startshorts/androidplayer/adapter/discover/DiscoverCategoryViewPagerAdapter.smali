.class public final Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
.source "DiscoverCategoryViewPagerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$a;,
        Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiscoverCategoryViewPagerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverCategoryViewPagerAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,136:1\n1863#2,2:137\n1872#2,3:139\n*S KotlinDebug\n*F\n+ 1 DiscoverCategoryViewPagerAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter\n*L\n60#1:137,2\n62#1:139,3\n*E\n"
    }
.end annotation


# static fields
.field public static final t:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final o:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final p:Landroidx/lifecycle/Lifecycle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final q:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final r:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final s:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->t:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;Landroidx/lifecycle/Lifecycle;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;)V
    .locals 4
    .param p1    # Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Lifecycle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->o:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->p:Landroidx/lifecycle/Lifecycle;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->q:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 23
    .line 24
    iput-object p4, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->r:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;

    .line 25
    .line 26
    new-instance p1, Lcom/startshorts/androidplayer/adapter/discover/a;

    .line 27
    .line 28
    invoke-direct {p1, p0}, Lcom/startshorts/androidplayer/adapter/discover/a;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->s:Lms/i;

    .line 36
    .line 37
    return-void
.end method

.method public static synthetic E(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;)Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$mOnPageChangeCallback$2$1;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->P(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;)Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$mOnPageChangeCallback$2$1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic F(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;)Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->o:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic G(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;)Landroidx/lifecycle/Lifecycle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->p:Landroidx/lifecycle/Lifecycle;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic H(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;)Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->q:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 2
    .line 3
    return-object p0
.end method

.method private final I()Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;
    .locals 2

    .line 1
    sget-object v0, Lfk/i0;->a:Lfk/i0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->o:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lfk/i0;->b(Landroidx/viewpager2/widget/ViewPager2;)Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    return-object v0

    .line 15
    :cond_0
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->J(Landroidx/recyclerview/widget/RecyclerView;)Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method private final J(Landroidx/recyclerview/widget/RecyclerView;)Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->q:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getCategoryTabSelectedPos()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    instance-of v0, p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$b;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    check-cast p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$b;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object p1, v1

    .line 20
    :goto_0
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$b;->k()Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_1
    return-object v1
.end method

.method private final L()Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->s:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 8
    .line 9
    return-object v0
.end method

.method private final N(Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    move-object v0, p2

    .line 5
    check-cast v0, Ljava/lang/Iterable;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setClickable(Z)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x0

    .line 33
    move v2, v1

    .line 34
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_4

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    add-int/lit8 v5, v2, 0x1

    .line 45
    .line 46
    if-gez v2, :cond_2

    .line 47
    .line 48
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 49
    .line 50
    .line 51
    :cond_2
    check-cast v4, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;

    .line 52
    .line 53
    iget-object v6, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->q:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 54
    .line 55
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getCategoryTabSelectedPos()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-ne v6, v2, :cond_3

    .line 60
    .line 61
    move v2, v3

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    move v2, v1

    .line 64
    :goto_2
    invoke-virtual {v4, v2}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setSelected(Z)V

    .line 65
    .line 66
    .line 67
    move v2, v5

    .line 68
    goto :goto_1

    .line 69
    :cond_4
    new-instance v0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;

    .line 70
    .line 71
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_module_category_tab:I

    .line 72
    .line 73
    invoke-direct {v0, v2}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;-><init>(I)V

    .line 74
    .line 75
    .line 76
    new-instance v2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$c;

    .line 77
    .line 78
    invoke-direct {v2, p1, p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$c;-><init>(Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->J(Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d;)V

    .line 82
    .line 83
    .line 84
    iget-object v2, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 85
    .line 86
    new-instance v3, Lcom/startshorts/androidplayer/ui/view/base/CatchExceptionLinearLayoutManager;

    .line 87
    .line 88
    iget-object v4, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 89
    .line 90
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    const-string v5, "getContext(...)"

    .line 95
    .line 96
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-direct {v3, v4, v1, v1}, Lcom/startshorts/androidplayer/ui/view/base/CatchExceptionLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 100
    .line 101
    .line 102
    const/4 v1, 0x0

    .line 103
    invoke-virtual {v2, p2, v0, v1, v3}, Lcom/startshorts/androidplayer/ui/view/base/TabView;->a(Ljava/util/List;Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 107
    .line 108
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->q:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 109
    .line 110
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getCategoryTabSelectedPos()I

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/base/TabView;->setSelectedIndex(I)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method private final O(Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    const-string/jumbo v1, "viewPager"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v2}, Lkd/d;->a(Landroidx/viewpager2/widget/ViewPager2;Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    invoke-static {v0, v1}, Lkd/d;->b(Landroidx/viewpager2/widget/ViewPager2;I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->q:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getCategoryVOList()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    :cond_0
    const/4 v3, 0x0

    .line 41
    invoke-static {p0, v0, v2, v1, v3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->D(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Ljava/util/List;ZILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 45
    .line 46
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->L()Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->q:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getCategoryTabSelectedPos()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-virtual {p1, v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private static final P(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;)Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$mOnPageChangeCallback$2$1;
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$mOnPageChangeCallback$2$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$mOnPageChangeCallback$2$1;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final K()Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->r:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;

    .line 2
    .line 3
    return-object v0
.end method

.method public final M()Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->I()Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->Q()Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

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

.method public final Q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->p:Landroidx/lifecycle/Lifecycle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->q:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getCategoryVOList()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->o:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;

    .line 16
    .line 17
    check-cast v0, Ljava/util/Collection;

    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p0, v1, v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->N(Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->o:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;

    .line 27
    .line 28
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->O(Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->y(Landroid/view/ViewGroup;I)Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
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
    const-string v0, "DiscoverCategoryViewPagerAdapter"

    .line 2
    .line 3
    return-object v0
.end method

.method public y(Landroid/view/ViewGroup;I)Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;",
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
    new-instance p2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$b;

    .line 7
    .line 8
    sget v0, Lcom/startshorts/androidplayer/R$layout;->item_discover_category_page_item:I

    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;

    .line 15
    .line 16
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$b;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;)V

    .line 17
    .line 18
    .line 19
    return-object p2
.end method

.method public z()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->z()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->o:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->L()Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
