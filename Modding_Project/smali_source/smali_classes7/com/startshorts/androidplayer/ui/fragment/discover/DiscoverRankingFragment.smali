.class public final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;
.source "DiscoverRankingFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment<",
        "Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final D:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final A:I

.field private final B:I

.field private final C:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private o:I

.field private p:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private q:I

.field private r:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private s:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private t:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private u:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private v:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private w:Z

.field private x:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final y:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->D:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter;

    .line 5
    .line 6
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/discover/m0;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/m0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->v:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter;

    .line 15
    .line 16
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/n0;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/n0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->y:Lms/i;

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->z:Z

    .line 29
    .line 30
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_discover_ranking:I

    .line 31
    .line 32
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->A:I

    .line 33
    .line 34
    sget v0, Lcom/startshorts/androidplayer/R$layout;->viewstub_page_state_empty_lib:I

    .line 35
    .line 36
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->B:I

    .line 37
    .line 38
    const-string v0, "DiscoverRankingFragment"

    .line 39
    .line 40
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->C:Ljava/lang/String;

    .line 41
    .line 42
    return-void
.end method

.method public static synthetic W(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->e0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic X(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;Lcom/startshorts/androidplayer/viewmodel/ranking/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->n0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;Lcom/startshorts/androidplayer/viewmodel/ranking/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Y(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->m0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Z(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;)Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->l0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;)Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic a0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;Landroid/view/View;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->j0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;Landroid/view/View;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;)Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->x:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->w:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic d0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->w:Z

    .line 2
    .line 3
    return-void
.end method

.method private static final e0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;)Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->o:I

    .line 7
    .line 8
    const-string v2, "ranking_list_zi_id"

    .line 9
    .line 10
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string v1, "ranking_list_zi_name"

    .line 14
    .line 15
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->p:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method private final f0(Landroidx/fragment/app/Fragment;)Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->f0(Landroidx/fragment/app/Fragment;)Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :goto_0
    return-object p1
.end method

.method private final g0()Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->y:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final h0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->R()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final i0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->v:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter;

    .line 2
    .line 3
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/discover/o0;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/o0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->f(Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder$c;)V

    .line 9
    .line 10
    .line 11
    const/high16 v0, 0x41000000    # 8.0f

    .line 12
    .line 13
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingBinding;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingBinding;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    .line 25
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment$initView$2;

    .line 26
    .line 27
    invoke-direct {v2, v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment$initView$2;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingBinding;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingBinding;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 40
    .line 41
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingBinding;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingBinding;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->v:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingBinding;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingBinding;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    .line 74
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->clearOnScrollListeners()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingBinding;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingBinding;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 84
    .line 85
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment$initView$3;

    .line 86
    .line 87
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment$initView$3;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method private static final j0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;Landroid/view/View;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 7
    .line 8
    new-instance v3, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    iget v2, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->o:I

    .line 14
    .line 15
    const-string v4, "ranking_list_zi_id"

    .line 16
    .line 17
    invoke-virtual {v3, v4, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    const-string v2, "ranking_list_zi_name"

    .line 21
    .line 22
    iget-object v4, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->p:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v3, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v2, "module_name"

    .line 28
    .line 29
    iget-object v4, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->u:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v3, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v2, "module_id"

    .line 35
    .line 36
    iget-object v4, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->t:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v3, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 v8, 0x1

    .line 42
    add-int/lit8 v13, p2, 0x1

    .line 43
    .line 44
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string v4, "position_id"

    .line 49
    .line 50
    invoke-virtual {v3, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v2, "module_type"

    .line 54
    .line 55
    iget-object v4, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->s:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v3, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v2, "type"

    .line 61
    .line 62
    const-string v4, "positive"

    .line 63
    .line 64
    invoke-virtual {v3, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v2, "reel_id"

    .line 68
    .line 69
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v3, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-nez v2, :cond_1

    .line 85
    .line 86
    const-string v2, "upack"

    .line 87
    .line 88
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v3, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_1
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 96
    .line 97
    const/4 v6, 0x4

    .line 98
    const/4 v7, 0x0

    .line 99
    const-string v2, "discover_module_click"

    .line 100
    .line 101
    const-wide/16 v4, 0x0

    .line 102
    .line 103
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    sget-object v1, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->V0:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;

    .line 107
    .line 108
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    const-string v3, "requireContext(...)"

    .line 113
    .line 114
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    new-instance v3, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 118
    .line 119
    invoke-direct {v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v4, "discover_more"

    .line 123
    .line 124
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-eqz v4, :cond_2

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_2
    const/4 v8, 0x3

    .line 135
    :goto_0
    invoke-virtual {v3, v8}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-eqz v4, :cond_3

    .line 143
    .line 144
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setEpisodeNum(I)V

    .line 149
    .line 150
    .line 151
    :cond_3
    new-instance v4, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 152
    .line 153
    invoke-direct {v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getId()I

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsName(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setCover(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setUpack(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V

    .line 192
    .line 193
    .line 194
    sget-object v9, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->Companion:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo$Companion;

    .line 195
    .line 196
    iget-object v10, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->s:Ljava/lang/String;

    .line 197
    .line 198
    iget-object v11, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->t:Ljava/lang/String;

    .line 199
    .line 200
    iget-object v12, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->u:Ljava/lang/String;

    .line 201
    .line 202
    new-instance v14, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 203
    .line 204
    iget v4, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->o:I

    .line 205
    .line 206
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    iget-object v5, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->p:Ljava/lang/String;

    .line 211
    .line 212
    invoke-direct {v14, v4, v5}, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    new-instance v4, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 216
    .line 217
    iget v5, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->q:I

    .line 218
    .line 219
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object v16

    .line 223
    iget-object v0, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->r:Ljava/lang/String;

    .line 224
    .line 225
    const/16 v22, 0x3a

    .line 226
    .line 227
    const/16 v23, 0x0

    .line 228
    .line 229
    const/16 v17, 0x0

    .line 230
    .line 231
    const/16 v19, 0x0

    .line 232
    .line 233
    const/16 v20, 0x0

    .line 234
    .line 235
    const/16 v21, 0x0

    .line 236
    .line 237
    move-object v15, v4

    .line 238
    move-object/from16 v18, v0

    .line 239
    .line 240
    invoke-direct/range {v15 .. v23}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v16

    .line 247
    const/16 v19, 0x180

    .line 248
    .line 249
    const/16 v18, 0x0

    .line 250
    .line 251
    invoke-static/range {v9 .. v20}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo$Companion;->create$default(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {v3, v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setModuleInfo(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;->a(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 259
    .line 260
    .line 261
    return-void
.end method

.method private final k0(II)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->g0()Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;->C()Lfk/x;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, p1, v1}, Lfk/x;->a(IZ)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    if-nez p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->T()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->v:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->c()V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    instance-of v2, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    check-cast v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    move-object v0, v3

    .line 40
    :goto_0
    if-eqz v0, :cond_3

    .line 41
    .line 42
    iget v2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->o:I

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->a0(I)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    move-object v0, v3

    .line 50
    :goto_1
    if-eqz v0, :cond_4

    .line 51
    .line 52
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->g0()Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;->C()Lfk/x;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p2, v0, v1}, Lfk/x;->g(Ljava/util/List;I)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->g0()Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;->C()Lfk/x;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p2}, Lfk/x;->f()V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->g0()Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/ranking/b$b;

    .line 83
    .line 84
    invoke-direct {v2, p1, v0, v1}, Lcom/startshorts/androidplayer/viewmodel/ranking/b$b;-><init>(ILjava/util/List;Z)V

    .line 85
    .line 86
    .line 87
    invoke-static {p2, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->g0()Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/ranking/a$a;

    .line 96
    .line 97
    iget v2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->o:I

    .line 98
    .line 99
    invoke-direct {v1, v2, v3, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/ranking/a$a;-><init>(ILjava/lang/Integer;II)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;->D(Lcom/startshorts/androidplayer/viewmodel/ranking/a;)V

    .line 103
    .line 104
    .line 105
    :goto_2
    return-void
.end method

.method private static final l0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;)Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;
    .locals 4

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->o()Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/discover/p0;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/p0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment$b;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/discover/q0;

    .line 36
    .line 37
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/q0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;)V

    .line 38
    .line 39
    .line 40
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment$b;

    .line 41
    .line 42
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 46
    .line 47
    .line 48
    return-object v0
.end method

.method private static final m0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->K()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getState()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->U()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->V(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method private static final n0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;Lcom/startshorts/androidplayer/viewmodel/ranking/b;)Lkotlin/Unit;
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/ranking/b$b;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->K()V

    .line 7
    .line 8
    .line 9
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/ranking/b$b;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/ranking/b$b;->b()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/ranking/b$b;->b()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->v:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->c()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->v:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/ranking/b$b;->a()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/util/Collection;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->b(Ljava/util/Collection;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->v:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->g()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->S()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->J()V

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    instance-of v1, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;

    .line 59
    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    check-cast v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    const/4 v0, 0x0

    .line 66
    :goto_1
    if-eqz v0, :cond_6

    .line 67
    .line 68
    iget p0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->o:I

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/ranking/b$b;->a()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {v0, p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->f0(ILjava/util/List;)V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/ranking/b$a;

    .line 79
    .line 80
    if-eqz v0, :cond_7

    .line 81
    .line 82
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/ranking/b$a;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/ranking/b$a;->b()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_6

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->K()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/ranking/b$a;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getState()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-ne v0, v1, :cond_5

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->U()V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_5
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/ranking/b$a;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->V(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_6
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 119
    .line 120
    return-object p0

    .line 121
    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 122
    .line 123
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 124
    .line 125
    .line 126
    throw p0
.end method


# virtual methods
.method public G()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->B:I

    .line 2
    .line 3
    return v0
.end method

.method public R()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->T()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->k0(II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->A:I

    .line 2
    .line 3
    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->f0(Landroidx/fragment/app/Fragment;)Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->C0()Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->x:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;

    .line 26
    .line 27
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
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
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string p2, "tabId"

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    iput p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->o:I

    .line 22
    .line 23
    const-string p2, "tabName"

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->p:Ljava/lang/String;

    .line 30
    .line 31
    const-string p2, "parentTabId"

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    iput p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->q:I

    .line 38
    .line 39
    const-string p2, "parentTabName"

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->r:Ljava/lang/String;

    .line 46
    .line 47
    const-string p2, "moduleType"

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->s:Ljava/lang/String;

    .line 54
    .line 55
    const-string p2, "moduleId"

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->t:Ljava/lang/String;

    .line 62
    .line 63
    const-string p2, "moduleName"

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->u:Ljava/lang/String;

    .line 70
    .line 71
    :cond_0
    return-void
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->z:Z

    .line 2
    .line 3
    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->C:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->t()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->i0()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->h0()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
