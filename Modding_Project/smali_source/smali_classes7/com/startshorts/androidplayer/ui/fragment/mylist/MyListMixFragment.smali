.class public final Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;
.source "MyListMixFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment<",
        "Lcom/startshorts/androidplayer/bean/mylist/MyCollection;",
        "Lcom/startshorts/androidplayer/databinding/FragmentMylistMixBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMyListMixFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MyListMixFragment.kt\ncom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,688:1\n2318#2,14:689\n1863#2,2:703\n1#3:705\n*S KotlinDebug\n*F\n+ 1 MyListMixFragment.kt\ncom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment\n*L\n353#1:689,14\n385#1:703,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Q:Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final F:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final G:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private H:Z

.field private I:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private J:Lcom/startshorts/androidplayer/ui/view/act/ActBanner;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private K:Lcom/startshorts/androidplayer/ui/view/mylist/SubscribeEntranceView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final L:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private M:Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private N:Z

.field private O:Landroid/widget/LinearLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private P:Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->Q:Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/x;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/x;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->F:Lms/i;

    .line 14
    .line 15
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/y;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/y;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->G:Lms/i;

    .line 25
    .line 26
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/z;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/z;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->L:Lms/i;

    .line 36
    .line 37
    return-void
.end method

.method private final A1(Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->isCollect()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->B1()Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getShortPlayId()I

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getDramaId()I

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    const/4 v4, 0x1

    .line 25
    const/4 v5, 0x1

    .line 26
    invoke-virtual/range {v2 .. v7}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->H(Landroid/content/Context;IIII)Lkotlinx/coroutines/r;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->B1()Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getShortPlayId()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->I(Landroid/content/Context;III)Lkotlinx/coroutines/r;

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method private final B1()Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->G:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final C1()Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->F:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final D1()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->L:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    .line 9
    return-object v0
.end method

.method private final E1()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v2

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->b()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->e(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iput-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->J:Lcom/startshorts/androidplayer/ui/view/act/ActBanner;

    .line 29
    .line 30
    return-void
.end method

.method private final F1()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v2

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->b()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->e(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iput-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->K:Lcom/startshorts/androidplayer/ui/view/mylist/SubscribeEntranceView;

    .line 29
    .line 30
    return-void
.end method

.method private final G1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->P:Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->P:Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$initHeaderRecyclerView$1;

    .line 31
    .line 32
    invoke-direct {v1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$initHeaderRecyclerView$1;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;

    .line 39
    .line 40
    invoke-direct {v0}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/mylist/t;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/t;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;->L(Lkotlin/jvm/functions/Function1;)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$b;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->B(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->M:Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->P:Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    return-void
.end method

.method private static final H1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->A1(Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private final I1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->P:Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;->d:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$c;

    .line 10
    .line 11
    invoke-direct {v1, v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$c;-><init>(Lcom/hades/aar/pagestate/StateViewGroup;Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/hades/aar/pagestate/StateViewGroup;->setMOnInflatedListener(Lla/a;)V

    .line 15
    .line 16
    .line 17
    sget v1, Lcom/startshorts/androidplayer/R$layout;->viewstub_page_state_loading:I

    .line 18
    .line 19
    sget-object v2, Lcom/hades/aar/pagestate/State;->LOADING:Lcom/hades/aar/pagestate/State;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/hades/aar/pagestate/StateViewGroup;->f(ILcom/hades/aar/pagestate/State;)V

    .line 22
    .line 23
    .line 24
    sget v1, Lcom/startshorts/androidplayer/R$layout;->viewstub_my_list_empty_recently_container:I

    .line 25
    .line 26
    sget-object v2, Lcom/hades/aar/pagestate/State;->EMPTY:Lcom/hades/aar/pagestate/State;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/hades/aar/pagestate/StateViewGroup;->f(ILcom/hades/aar/pagestate/State;)V

    .line 29
    .line 30
    .line 31
    sget v1, Lcom/startshorts/androidplayer/R$layout;->viewstub_page_state_network_error:I

    .line 32
    .line 33
    sget-object v2, Lcom/hades/aar/pagestate/State;->NETWORK_ERROR:Lcom/hades/aar/pagestate/State;

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Lcom/hades/aar/pagestate/StateViewGroup;->f(ILcom/hades/aar/pagestate/State;)V

    .line 36
    .line 37
    .line 38
    sget v1, Lcom/startshorts/androidplayer/R$layout;->viewstub_page_state_other_error:I

    .line 39
    .line 40
    sget-object v2, Lcom/hades/aar/pagestate/State;->OTHER_ERROR:Lcom/hades/aar/pagestate/State;

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/hades/aar/pagestate/StateViewGroup;->f(ILcom/hades/aar/pagestate/State;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method private static final J1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;
    .locals 5

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->o()Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/mylist/r;

    .line 23
    .line 24
    invoke-direct {v3, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/r;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V

    .line 25
    .line 26
    .line 27
    new-instance v4, Lcom/startshorts/androidplayer/ui/fragment/mylist/e0$a;

    .line 28
    .line 29
    invoke-direct {v4, v3}, Lcom/startshorts/androidplayer/ui/fragment/mylist/e0$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->L()Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/mylist/s;

    .line 44
    .line 45
    invoke-direct {v3, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/s;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V

    .line 46
    .line 47
    .line 48
    new-instance p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/e0$a;

    .line 49
    .line 50
    invoke-direct {p0, v3}, Lcom/startshorts/androidplayer/ui/fragment/mylist/e0$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method

.method private static final K1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0, v1, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->R0(Ljava/util/List;ZLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->P:Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;->h:Lcom/startshorts/androidplayer/ui/view/pagestate/MyListMyCollectionEmptyView;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->V1(Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    const-wide/16 v0, -0x1

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->v0()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-direct {p0, v0, v1, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->R1(JI)V

    .line 39
    .line 40
    .line 41
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 42
    .line 43
    return-object p0
.end method

.method private static final L1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;Lcom/startshorts/androidplayer/viewmodel/mylist/b;)Lkotlin/Unit;
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/mylist/b$c;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->P:Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;->h:Lcom/startshorts/androidplayer/ui/view/pagestate/MyListMyCollectionEmptyView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->P:Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/mylist/b$c;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/b$c;->a()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->V1(Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    const-wide/16 v0, -0x1

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->v0()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-direct {p0, v0, v1, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->R1(JI)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/mylist/b$b;

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->v0()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-virtual {p0, v1, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->U0(II)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    instance-of p1, p1, Lcom/startshorts/androidplayer/viewmodel/mylist/b$a;

    .line 60
    .line 61
    if-eqz p1, :cond_5

    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/e0;->a(Landroid/content/Context;)V

    .line 70
    .line 71
    .line 72
    :cond_4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->v0()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    invoke-virtual {p0, v1, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->U0(II)V

    .line 77
    .line 78
    .line 79
    :cond_5
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 80
    .line 81
    return-object p0
.end method

.method private static final M1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;
    .locals 5

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->o()Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/mylist/b0;

    .line 23
    .line 24
    invoke-direct {v3, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/b0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V

    .line 25
    .line 26
    .line 27
    new-instance v4, Lcom/startshorts/androidplayer/ui/fragment/mylist/e0$a;

    .line 28
    .line 29
    invoke-direct {v4, v3}, Lcom/startshorts/androidplayer/ui/fragment/mylist/e0$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;->G()Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/mylist/c0;

    .line 44
    .line 45
    invoke-direct {v3, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/c0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V

    .line 46
    .line 47
    .line 48
    new-instance p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/e0$a;

    .line 49
    .line 50
    invoke-direct {p0, v3}, Lcom/startshorts/androidplayer/ui/fragment/mylist/e0$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method

.method private static final N1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->I1()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->P:Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;->d:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    sget-object v0, Lcom/hades/aar/pagestate/State;->EMPTY:Lcom/hades/aar/pagestate/State;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/hades/aar/pagestate/StateViewGroup;->h(Lcom/hades/aar/pagestate/State;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->P:Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;->d:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->P:Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->M:Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->f()V

    .line 44
    .line 45
    .line 46
    :cond_3
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->M:Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;

    .line 47
    .line 48
    if-eqz p0, :cond_4

    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 51
    .line 52
    .line 53
    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 54
    .line 55
    return-object p0
.end method

.method private static final O1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;Lcom/startshorts/androidplayer/viewmodel/mylist/e;)Lkotlin/Unit;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/mylist/e$b;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/mylist/e$b;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/e$b;->a()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/util/Collection;

    .line 12
    .line 13
    if-eqz v0, :cond_5

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/e$b;->a()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->M:Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->f()V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->M:Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->e(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->M:Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;

    .line 41
    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->P:Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;

    .line 48
    .line 49
    if-eqz p1, :cond_4

    .line 50
    .line 51
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;->d:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 52
    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    :cond_4
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->P:Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;

    .line 59
    .line 60
    if-eqz p0, :cond_b

    .line 61
    .line 62
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 63
    .line 64
    if-eqz p0, :cond_b

    .line 65
    .line 66
    invoke-static {p0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->I1()V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->P:Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;

    .line 74
    .line 75
    if-eqz p1, :cond_6

    .line 76
    .line 77
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;->d:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 78
    .line 79
    if-eqz p1, :cond_6

    .line 80
    .line 81
    sget-object v0, Lcom/hades/aar/pagestate/State;->EMPTY:Lcom/hades/aar/pagestate/State;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lcom/hades/aar/pagestate/StateViewGroup;->h(Lcom/hades/aar/pagestate/State;)V

    .line 84
    .line 85
    .line 86
    :cond_6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->P:Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;

    .line 87
    .line 88
    if-eqz p1, :cond_7

    .line 89
    .line 90
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;->d:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 91
    .line 92
    if-eqz p1, :cond_7

    .line 93
    .line 94
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 95
    .line 96
    .line 97
    :cond_7
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->M:Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;

    .line 98
    .line 99
    if-eqz p1, :cond_8

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->f()V

    .line 102
    .line 103
    .line 104
    :cond_8
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->M:Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;

    .line 105
    .line 106
    if-eqz p1, :cond_9

    .line 107
    .line 108
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 109
    .line 110
    .line 111
    :cond_9
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->P:Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;

    .line 112
    .line 113
    if-eqz p0, :cond_b

    .line 114
    .line 115
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 116
    .line 117
    if-eqz p0, :cond_b

    .line 118
    .line 119
    invoke-static {p0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_a
    instance-of p0, p1, Lcom/startshorts/androidplayer/viewmodel/mylist/e$a;

    .line 124
    .line 125
    if-eqz p0, :cond_c

    .line 126
    .line 127
    :cond_b
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 128
    .line 129
    return-object p0

    .line 130
    :cond_c
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 131
    .line 132
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 133
    .line 134
    .line 135
    throw p0
.end method

.method private static final P1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)Landroid/view/View;
    .locals 1

    .line 1
    new-instance v0, Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private final Q1(JII)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->B1()Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v8, Lcom/startshorts/androidplayer/viewmodel/mylist/a$f;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    filled-new-array {v1}, [Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    const/4 v5, 0x1

    .line 21
    move-object v1, v8

    .line 22
    move-wide v2, p1

    .line 23
    move v4, p3

    .line 24
    move v7, p4

    .line 25
    invoke-direct/range {v1 .. v7}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$f;-><init>(JIILjava/util/List;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v8}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->P(Lcom/startshorts/androidplayer/viewmodel/mylist/a;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private final R1(JI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->C1()Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/mylist/d$c;

    .line 6
    .line 7
    invoke-direct {v1, p1, p2, p3}, Lcom/startshorts/androidplayer/viewmodel/mylist/d$c;-><init>(JI)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;->J(Lcom/startshorts/androidplayer/viewmodel/mylist/d;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final S1(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "showActBanner"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "requireContext(...)"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    sget-object v1, Lud/b;->a:Lud/b;

    .line 21
    .line 22
    invoke-virtual {v1}, Lud/b;->d1()Lcom/startshorts/androidplayer/bean/act/ResourceIndex;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v12, 0x0

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    new-instance v2, Lcom/startshorts/androidplayer/bean/act/ResourceIndex;

    .line 30
    .line 31
    sget-object v3, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    invoke-direct {v2, v12, v3, v4}, Lcom/startshorts/androidplayer/bean/act/ResourceIndex;-><init>(IJ)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lud/b;->q4(Lcom/startshorts/androidplayer/bean/act/ResourceIndex;)V

    .line 41
    .line 42
    .line 43
    move v5, v12

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/act/ResourceIndex;->getIndex()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/act/ResourceIndex;->getTime()J

    .line 50
    .line 51
    .line 52
    move-result-wide v4

    .line 53
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 56
    .line 57
    .line 58
    move-result-wide v6

    .line 59
    sget-object v3, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 60
    .line 61
    const/4 v8, 0x1

    .line 62
    invoke-virtual/range {v3 .. v8}, Lcom/startshorts/androidplayer/utils/TimeUtil;->n(JJI)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    move v1, v12

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    rem-int/2addr v1, v2

    .line 77
    :goto_0
    move v5, v1

    .line 78
    :goto_1
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 79
    .line 80
    sget-object v2, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->q:Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter$a;

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter$a;->a()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    const/4 v3, -0x1

    .line 87
    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .line 92
    .line 93
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 94
    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    sget-object v1, Lfk/z;->a:Lfk/z;

    .line 103
    .line 104
    invoke-virtual {v1}, Lfk/z;->m()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    int-to-float v4, v1

    .line 109
    new-instance v6, Lcom/startshorts/androidplayer/ui/fragment/mylist/o;

    .line 110
    .line 111
    invoke-direct {v6}, Lcom/startshorts/androidplayer/ui/fragment/mylist/o;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    const/16 v10, 0x80

    .line 119
    .line 120
    const/4 v11, 0x0

    .line 121
    const-string v3, "mylist_banner"

    .line 122
    .line 123
    const/4 v9, 0x0

    .line 124
    move-object v1, v0

    .line 125
    move-object v8, p1

    .line 126
    invoke-static/range {v1 .. v11}, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->B(Lcom/startshorts/androidplayer/ui/view/act/ActBanner;Ljava/lang/ref/WeakReference;Ljava/lang/String;FILkotlin/jvm/functions/Function1;Landroidx/lifecycle/Lifecycle;Ljava/util/List;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;ILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->J:Lcom/startshorts/androidplayer/ui/view/act/ActBanner;

    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    instance-of v0, p1, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 136
    .line 137
    const/4 v1, 0x0

    .line 138
    if-eqz v0, :cond_2

    .line 139
    .line 140
    check-cast p1, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_2
    move-object p1, v1

    .line 144
    :goto_2
    if-eqz p1, :cond_4

    .line 145
    .line 146
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->J:Lcom/startshorts/androidplayer/ui/view/act/ActBanner;

    .line 147
    .line 148
    if-eqz v0, :cond_3

    .line 149
    .line 150
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->x1(Landroid/view/View;)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    :cond_3
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->e(Landroid/view/View;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v12}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->g0()Landroidx/recyclerview/widget/RecyclerView;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    if-eqz p1, :cond_4

    .line 165
    .line 166
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/u;

    .line 167
    .line 168
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/u;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 172
    .line 173
    .line 174
    :cond_4
    return-void
.end method

.method private static final T1(I)Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    new-instance v1, Lcom/startshorts/androidplayer/bean/act/ResourceIndex;

    .line 4
    .line 5
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-direct {v1, p0, v2, v3}, Lcom/startshorts/androidplayer/bean/act/ResourceIndex;-><init>(IJ)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lud/b;->q4(Lcom/startshorts/androidplayer/bean/act/ResourceIndex;)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method private static final U1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->g0()Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private final V1(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/mylist/MyCollection;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->P0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->z1()Lkotlinx/coroutines/r;

    .line 8
    .line 9
    .line 10
    move-object v0, p1

    .line 11
    check-cast v0, Ljava/util/Collection;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->P:Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;->h:Lcom/startshorts/androidplayer/ui/view/pagestate/MyListMyCollectionEmptyView;

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->P:Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;->h:Lcom/startshorts/androidplayer/ui/view/pagestate/MyListMyCollectionEmptyView;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->P:Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    :goto_1
    move-object v0, p1

    .line 57
    check-cast v0, Ljava/util/Collection;

    .line 58
    .line 59
    if-eqz v0, :cond_6

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_4
    sget-object v0, Lud/b;->a:Lud/b;

    .line 69
    .line 70
    invoke-virtual {v0}, Lud/b;->e1()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-nez v0, :cond_5

    .line 75
    .line 76
    new-instance v0, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    :cond_5
    move-object v1, p1

    .line 82
    check-cast v1, Ljava/lang/Iterable;

    .line 83
    .line 84
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_6

    .line 93
    .line 94
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 99
    .line 100
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getShortPlayId()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->setShowRedPoint(Z)V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_6
    :goto_3
    if-nez p1, :cond_7

    .line 117
    .line 118
    new-instance p1, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .line 122
    .line 123
    :cond_7
    move-object v1, p1

    .line 124
    const/4 v4, 0x6

    .line 125
    const/4 v5, 0x0

    .line 126
    const/4 v2, 0x0

    .line 127
    const/4 v3, 0x0

    .line 128
    move-object v0, p0

    .line 129
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->S0(Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;Ljava/util/List;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->P0()Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-nez p1, :cond_9

    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->d0()Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, Ljava/util/Collection;

    .line 143
    .line 144
    if-eqz p1, :cond_8

    .line 145
    .line 146
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_9

    .line 151
    .line 152
    :cond_8
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->S()V

    .line 153
    .line 154
    .line 155
    :cond_9
    return-void
.end method

.method private final W1()V
    .locals 11

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_3

    .line 10
    .line 11
    const-string v0, "showSubscribeEntrance"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->K:Lcom/startshorts/androidplayer/ui/view/mylist/SubscribeEntranceView;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/mylist/SubscribeEntranceView;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const-string v4, "requireContext(...)"

    .line 27
    .line 28
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v3}, Lcom/startshorts/androidplayer/ui/view/mylist/SubscribeEntranceView;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->K:Lcom/startshorts/androidplayer/ui/view/mylist/SubscribeEntranceView;

    .line 35
    .line 36
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$e;

    .line 37
    .line 38
    invoke-direct {v3, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$e;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/ui/view/mylist/SubscribeEntranceView;->setMListener(Lcom/startshorts/androidplayer/ui/view/mylist/SubscribeEntranceView$a;)V

    .line 42
    .line 43
    .line 44
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 45
    .line 46
    const/16 v9, 0xc

    .line 47
    .line 48
    const/4 v10, 0x0

    .line 49
    const-string v5, "recently"

    .line 50
    .line 51
    const-string v6, "sub_portal"

    .line 52
    .line 53
    const/4 v7, 0x0

    .line 54
    const/4 v8, 0x0

    .line 55
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->k0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    instance-of v3, v0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 63
    .line 64
    if-eqz v3, :cond_1

    .line 65
    .line 66
    check-cast v0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    move-object v0, v2

    .line 70
    :goto_0
    if-eqz v0, :cond_5

    .line 71
    .line 72
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->K:Lcom/startshorts/androidplayer/ui/view/mylist/SubscribeEntranceView;

    .line 73
    .line 74
    if-eqz v3, :cond_2

    .line 75
    .line 76
    invoke-direct {p0, v3}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->x1(Landroid/view/View;)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    :cond_2
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->e(Landroid/view/View;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->g0()Landroidx/recyclerview/widget/RecyclerView;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/mylist/v;

    .line 93
    .line 94
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/v;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->F1()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_5

    .line 109
    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    if-eqz v0, :cond_5

    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    instance-of v3, v0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 121
    .line 122
    if-eqz v3, :cond_4

    .line 123
    .line 124
    move-object v2, v0

    .line 125
    check-cast v2, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 126
    .line 127
    :cond_4
    if-eqz v2, :cond_5

    .line 128
    .line 129
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->D1()Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->x1(Landroid/view/View;)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v2, v0}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->e(Landroid/view/View;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->g0()Landroidx/recyclerview/widget/RecyclerView;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    if-eqz v0, :cond_5

    .line 148
    .line 149
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/mylist/w;

    .line 150
    .line 151
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/w;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 155
    .line 156
    .line 157
    :cond_5
    :goto_1
    return-void
.end method

.method private static final X1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->g0()Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private static final Y1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->g0()Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private final Z1()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->y1()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 5
    .line 6
    new-instance v4, Lcom/startshorts/androidplayer/ui/fragment/mylist/a0;

    .line 7
    .line 8
    invoke-direct {v4, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/a0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V

    .line 9
    .line 10
    .line 11
    const/4 v5, 0x2

    .line 12
    const/4 v6, 0x0

    .line 13
    const-wide/16 v1, 0x1f4

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->g(Lcom/startshorts/androidplayer/utils/CoroutineUtil;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->I:Lkotlinx/coroutines/r;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic a1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->K1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final a2(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->y1()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->R()V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method public static synthetic b1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->X1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->P1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d1(I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->T1(I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;Lcom/startshorts/androidplayer/viewmodel/mylist/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->L1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;Lcom/startshorts/androidplayer/viewmodel/mylist/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;Lcom/startshorts/androidplayer/viewmodel/mylist/e;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->O1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;Lcom/startshorts/androidplayer/viewmodel/mylist/e;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->J1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->U1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->a2(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->M1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->N1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->w1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->H1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->Y1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->v1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic p1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->E1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic q1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->F1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic r1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->N:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic s1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->S1(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic t1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->W1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final u1()Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;->b(Landroid/view/LayoutInflater;)Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->P:Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/mylist/p;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/p;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->P:Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/mylist/q;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/q;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->I1()V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->G1()V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->P:Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    :cond_2
    new-instance v0, Landroid/view/View;

    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    return-object v0
.end method

.method private static final v1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/startshorts/androidplayer/ui/activity/history/WatchedRecentlyActivity;->p:Lcom/startshorts/androidplayer/ui/activity/history/WatchedRecentlyActivity$a;

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/ui/activity/history/WatchedRecentlyActivity$a;->a(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private static final w1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/startshorts/androidplayer/ui/activity/history/CollectionListActivity;->p:Lcom/startshorts/androidplayer/ui/activity/history/CollectionListActivity$a;

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/ui/activity/history/CollectionListActivity$a;->a(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private final x1(Landroid/view/View;)Landroid/view/View;
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    instance-of v0, p1, Landroid/view/View;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast p1, Landroid/view/View;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    return-object p1

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->O:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-le v3, v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {v0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->u1()Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v3, Landroid/widget/LinearLayout;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    sget-object v4, Lfk/z;->a:Lfk/z;

    .line 53
    .line 54
    invoke-virtual {v4}, Lfk/z;->b()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-virtual {v3, v2, v4, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 62
    .line 63
    .line 64
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 65
    .line 66
    const/4 v4, -0x1

    .line 67
    const/4 v5, -0x2

    .line 68
    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    .line 76
    .line 77
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 78
    .line 79
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 86
    .line 87
    .line 88
    iput-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->O:Landroid/widget/LinearLayout;

    .line 89
    .line 90
    :goto_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->O:Landroid/widget/LinearLayout;

    .line 91
    .line 92
    return-object p1
.end method

.method private final y1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->I:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->I:Lkotlinx/coroutines/r;

    .line 11
    .line 12
    return-void
.end method

.method private final z1()Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$checkActBannerVisible$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$checkActBannerVisible$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "checkActBannerVisible"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method


# virtual methods
.method public G()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->viewstub_my_list_empty:I

    .line 2
    .line 3
    return v0
.end method

.method public H0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public T0(II)V
    .locals 9

    .line 1
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->T0(II)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->d0()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Ljava/util/Collection;

    .line 9
    .line 10
    const-wide/16 v0, -0x1

    .line 11
    .line 12
    if-eqz p1, :cond_5

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->d0()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_5

    .line 26
    .line 27
    check-cast p1, Ljava/lang/Iterable;

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_4

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move-object v3, v2

    .line 51
    check-cast v3, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getCollectTime()J

    .line 54
    .line 55
    .line 56
    move-result-wide v3

    .line 57
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    move-object v6, v5

    .line 62
    check-cast v6, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 63
    .line 64
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getCollectTime()J

    .line 65
    .line 66
    .line 67
    move-result-wide v6

    .line 68
    cmp-long v8, v3, v6

    .line 69
    .line 70
    if-lez v8, :cond_3

    .line 71
    .line 72
    move-object v2, v5

    .line 73
    move-wide v3, v6

    .line 74
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-nez v5, :cond_2

    .line 79
    .line 80
    :goto_0
    check-cast v2, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 81
    .line 82
    if-eqz v2, :cond_5

    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getCollectTime()J

    .line 85
    .line 86
    .line 87
    move-result-wide v0

    .line 88
    goto :goto_1

    .line 89
    :cond_4
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 90
    .line 91
    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    .line 92
    .line 93
    .line 94
    throw p1

    .line 95
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->d0()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-eqz p1, :cond_6

    .line 100
    .line 101
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    goto :goto_2

    .line 106
    :cond_6
    const/4 p1, 0x0

    .line 107
    :goto_2
    invoke-direct {p0, v0, v1, p2, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->Q1(JII)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public U0(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->U0(II)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, v0, v1, p2, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->Q1(JII)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public i0()V
    .locals 3

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$initRecyclerView$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$initRecyclerView$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->m0(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x3

    .line 16
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$initRecyclerView$2$1;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$initRecyclerView$2$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->n0(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;

    .line 31
    .line 32
    const-string v1, "mylist_recommended"

    .line 33
    .line 34
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$d;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->B(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 46
    .line 47
    invoke-direct {v1}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->d(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->k0(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 54
    .line 55
    .line 56
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->i0()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_mylist_mix:I

    .line 2
    .line 3
    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->J:Lcom/startshorts/androidplayer/ui/view/act/ActBanner;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->F()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "onResume -> mDataDirty("

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->H:Z

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x29

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->H:Z

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->H:Z

    .line 37
    .line 38
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->I:Lkotlinx/coroutines/r;

    .line 39
    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->Z1()V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->z1()Lkotlinx/coroutines/r;

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->J:Lcom/startshorts/androidplayer/ui/view/act/ActBanner;

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->H()V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->N:Z

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->N:Z

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->T()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->R()V

    .line 71
    .line 72
    .line 73
    :cond_3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->W0(Z)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->Z1()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string p2, "getViewLifecycleOwner(...)"

    .line 21
    .line 22
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$onViewCreated$1;

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    invoke-direct {v3, p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$onViewCreated$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;Lrs/c;)V

    .line 33
    .line 34
    .line 35
    const/4 v4, 0x3

    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v1, 0x0

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "MyListMixFragment"

    .line 2
    .line 3
    return-object v0
.end method

.method public final receiveRefreshAccountEvent(Lcom/startshorts/androidplayer/bean/eventbus/RefreshAccountEvent;)V
    .locals 6
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/RefreshAccountEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "receiveRefreshAccountEvent"

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->B1()Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->w()V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->w0()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->X0()V

    .line 27
    .line 28
    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x6

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v3, 0x0

    .line 38
    move-object v0, p0

    .line 39
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->S0(Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;Ljava/util/List;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->v0()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/4 v0, 0x0

    .line 48
    const-wide/16 v1, -0x1

    .line 49
    .line 50
    invoke-direct {p0, v1, v2, p1, v0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->Q1(JII)V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method

.method public final receiveRefreshEpisodeNumEvent(Lcom/startshorts/androidplayer/bean/eventbus/RefreshEpisodeNumEvent;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/RefreshEpisodeNumEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public s0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public v()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;->v()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->y1()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public v0()I
    .locals 1

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    return v0
.end method
