.class public final Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;
.source "TagDrawerDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment<",
        "Lcom/startshorts/androidplayer/databinding/DialogFragmentTagDrawerListBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTagDrawerDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TagDrawerDialog.kt\ncom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,289:1\n1#2:290\n*E\n"
    }
.end annotation


# static fields
.field public static final w:Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private o:I

.field private p:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private q:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private r:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private s:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private t:Z

.field private final u:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final v:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->w:Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->o:I

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->p:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v0, Lyi/c;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lyi/c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->u:Lms/i;

    .line 21
    .line 22
    const-string v0, "TagDrawerDialog"

    .line 23
    .line 24
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->v:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic O(Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;)Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->c0(Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;)Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->d0(Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->Z(Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic R(Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;Lcom/startshorts/androidplayer/viewmodel/tag/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->e0(Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;Lcom/startshorts/androidplayer/viewmodel/tag/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic S(Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;Landroid/view/View;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->Y(Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;Landroid/view/View;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic T(Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;)Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->s:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic U(Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;)Lcom/startshorts/androidplayer/databinding/DialogFragmentTagDrawerListBinding;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/startshorts/androidplayer/databinding/DialogFragmentTagDrawerListBinding;

    .line 6
    .line 7
    return-object p0
.end method

.method private final V()Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->u:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final X()V
    .locals 5

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->s:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 7
    .line 8
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x3

    .line 15
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog$initAdapter$1;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog$initAdapter$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentTagDrawerListBinding;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentTagDrawerListBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentTagDrawerListBinding;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentTagDrawerListBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    .line 50
    .line 51
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const/high16 v3, 0x41400000    # 12.0f

    .line 61
    .line 62
    invoke-static {v1, v3}, Lfc/a;->a(Landroid/content/Context;F)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v1, v3}, Lfc/a;->a(Landroid/content/Context;F)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentTagDrawerListBinding;

    .line 85
    .line 86
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentTagDrawerListBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;

    .line 87
    .line 88
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentTagDrawerListBinding;

    .line 96
    .line 97
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentTagDrawerListBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;

    .line 98
    .line 99
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/discover/GridSpacingItemDecoration;

    .line 100
    .line 101
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    const/high16 v4, 0x41000000    # 8.0f

    .line 106
    .line 107
    invoke-static {v3, v4}, Lfc/a;->a(Landroid/content/Context;F)I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    const/4 v4, 0x1

    .line 112
    invoke-direct {v1, v2, v3, v4}, Lcom/startshorts/androidplayer/ui/view/discover/GridSpacingItemDecoration;-><init>(IIZ)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->s:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 119
    .line 120
    if-eqz v0, :cond_0

    .line 121
    .line 122
    new-instance v1, Lyi/a;

    .line 123
    .line 124
    invoke-direct {v1, p0}, Lyi/a;-><init>(Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->f(Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder$c;)V

    .line 128
    .line 129
    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentTagDrawerListBinding;

    .line 135
    .line 136
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentTagDrawerListBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;

    .line 137
    .line 138
    new-instance v1, Lyi/b;

    .line 139
    .line 140
    invoke-direct {v1, p0}, Lyi/b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;->setLoadMoreListener(Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView$b;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentTagDrawerListBinding;

    .line 151
    .line 152
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentTagDrawerListBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;

    .line 153
    .line 154
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->s:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 157
    .line 158
    .line 159
    return-void
.end method

.method private static final Y(Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;Landroid/view/View;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V
    .locals 11

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object p1, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->V0:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const-string v0, "requireContext(...)"

    .line 11
    .line 12
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "tag_drawer_page"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x1

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    move v2, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v2, 0x3

    .line 35
    :goto_0
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setEpisodeNum(I)V

    .line 49
    .line 50
    .line 51
    :cond_2
    new-instance v2, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 52
    .line 53
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getId()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsName(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setCover(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setUpack(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V

    .line 92
    .line 93
    .line 94
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 95
    .line 96
    invoke-virtual {p1, p2, v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;->a(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 97
    .line 98
    .line 99
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 100
    .line 101
    new-instance v6, Landroid/os/Bundle;

    .line 102
    .line 103
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string p1, "from"

    .line 107
    .line 108
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->p:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v6, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string p0, "reel_id"

    .line 114
    .line 115
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {v6, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const-string p0, "tab"

    .line 123
    .line 124
    invoke-virtual {v6, p0, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 125
    .line 126
    .line 127
    const-string p0, "type_id"

    .line 128
    .line 129
    invoke-virtual {v6, p0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const/4 v9, 0x4

    .line 133
    const/4 v10, 0x0

    .line 134
    const-string v5, "tag_page_click"

    .line 135
    .line 136
    const-wide/16 v7, 0x0

    .line 137
    .line 138
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method private static final Z(Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->b0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final a0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentTagDrawerListBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentTagDrawerListBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->r:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getLabelName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentTagDrawerListBinding;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentTagDrawerListBinding;->a:Landroid/widget/ImageView;

    .line 29
    .line 30
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog$b;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private static final c0(Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;)Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;
    .locals 5

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->o()Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-instance v3, Lyi/d;

    .line 23
    .line 24
    invoke-direct {v3, p0}, Lyi/d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;)V

    .line 25
    .line 26
    .line 27
    new-instance v4, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog$d;

    .line 28
    .line 29
    invoke-direct {v4, v3}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Lyi/e;

    .line 40
    .line 41
    invoke-direct {v2, p0}, Lyi/e;-><init>(Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;)V

    .line 42
    .line 43
    .line 44
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog$d;

    .line 45
    .line 46
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 50
    .line 51
    .line 52
    return-object v0
.end method

.method private static final d0(Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->D()V

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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->M()V

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
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->N(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method private static final e0(Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;Lcom/startshorts/androidplayer/viewmodel/tag/b;)Lkotlin/Unit;
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/tag/b$c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_e

    .line 6
    .line 7
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/tag/b$c;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/tag/b$c;->a()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_7

    .line 14
    .line 15
    iput v2, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->o:I

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->D()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->s:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->c()V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->s:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/tag/b$c;->b()Lcom/startshorts/androidplayer/bean/tag/TagFilterShortsListResult;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/tag/TagFilterShortsListResult;->getList()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :cond_1
    check-cast v1, Ljava/util/Collection;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->b(Ljava/util/Collection;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->s:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->g()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->K()V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->s:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 60
    .line 61
    if-eqz v0, :cond_5

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->n(Z)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->C()V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->s:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 71
    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/tag/b$c;->c()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->n(Z)V

    .line 79
    .line 80
    .line 81
    :cond_4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->s:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 82
    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/tag/b$c;->c()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->k(Z)V

    .line 90
    .line 91
    .line 92
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/tag/b$c;->c()Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_11

    .line 97
    .line 98
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->s:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 99
    .line 100
    if-eqz p1, :cond_6

    .line 101
    .line 102
    new-instance v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 103
    .line 104
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->setItemType(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->a(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_6
    iput-boolean v2, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->t:Z

    .line 114
    .line 115
    goto/16 :goto_2

    .line 116
    .line 117
    :cond_7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->D()V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->s:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 121
    .line 122
    if-eqz v0, :cond_9

    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/tag/b$c;->b()Lcom/startshorts/androidplayer/bean/tag/TagFilterShortsListResult;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    if-eqz v3, :cond_8

    .line 129
    .line 130
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/tag/TagFilterShortsListResult;->getList()Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    :cond_8
    check-cast v1, Ljava/util/Collection;

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->b(Ljava/util/Collection;)V

    .line 137
    .line 138
    .line 139
    :cond_9
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->s:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 140
    .line 141
    if-eqz v0, :cond_a

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->g()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-nez v0, :cond_a

    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->K()V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->s:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 153
    .line 154
    if-eqz v0, :cond_c

    .line 155
    .line 156
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->n(Z)V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_a
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->C()V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->s:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 164
    .line 165
    if-eqz v0, :cond_b

    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/tag/b$c;->c()Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->n(Z)V

    .line 172
    .line 173
    .line 174
    :cond_b
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->s:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 175
    .line 176
    if-eqz v0, :cond_c

    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/tag/b$c;->c()Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->k(Z)V

    .line 183
    .line 184
    .line 185
    :cond_c
    :goto_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/tag/b$c;->c()Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-eqz p1, :cond_11

    .line 190
    .line 191
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->s:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 192
    .line 193
    if-eqz p1, :cond_d

    .line 194
    .line 195
    new-instance v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 196
    .line 197
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->setItemType(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->a(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    :cond_d
    iput-boolean v2, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->t:Z

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_e
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/tag/b$a;

    .line 210
    .line 211
    if-eqz v0, :cond_11

    .line 212
    .line 213
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/tag/b$a;

    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/tag/b$a;->b()Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-nez v0, :cond_11

    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->D()V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/tag/b$a;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    if-eqz v0, :cond_f

    .line 229
    .line 230
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getState()I

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-ne v0, v2, :cond_f

    .line 235
    .line 236
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->M()V

    .line 237
    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_f
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/tag/b$a;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    if-eqz p1, :cond_10

    .line 245
    .line 246
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    :cond_10
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->N(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    :cond_11
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 254
    .line 255
    return-object p0
.end method


# virtual methods
.method public J()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->f0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final W(Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "shortsLabel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "episode"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "from"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->r:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->q:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 19
    .line 20
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->p:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method

.method public final b0()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->t:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->o:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    add-int/2addr v0, v1

    .line 10
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->o:I

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->V()Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/tag/a$a;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->r:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getId()Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    int-to-long v3, v3

    .line 33
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v3, 0x0

    .line 39
    :goto_0
    iget v4, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->o:I

    .line 40
    .line 41
    const/16 v5, 0xf

    .line 42
    .line 43
    invoke-direct {v2, v3, v1, v4, v5}, Lcom/startshorts/androidplayer/viewmodel/tag/a$a;-><init>(Ljava/lang/Long;III)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;->G(Lcom/startshorts/androidplayer/viewmodel/tag/a;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final f0()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->V()Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/tag/a$a;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->r:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getId()Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    int-to-long v2, v2

    .line 22
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v2, 0x0

    .line 28
    :goto_0
    const/16 v3, 0xf

    .line 29
    .line 30
    const/4 v4, 0x1

    .line 31
    invoke-direct {v1, v2, v4, v4, v3}, Lcom/startshorts/androidplayer/viewmodel/tag/a$a;-><init>(Ljava/lang/Long;III)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;->G(Lcom/startshorts/androidplayer/viewmodel/tag/a;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public l()F
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_tag_drawer_list:I

    .line 2
    .line 3
    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v0, v2

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    sget v1, Lcom/google/android/material/R$id;->design_bottom_sheet:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :cond_1
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, -0x1

    .line 32
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 33
    .line 34
    invoke-static {v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "from(...)"

    .line 39
    .line 40
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setFitToContents(Z)V

    .line 45
    .line 46
    .line 47
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->F()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    mul-int/lit8 v2, v2, 0x3

    .line 54
    .line 55
    div-int/lit8 v2, v2, 0x5

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setExpandedOffset(I)V

    .line 61
    .line 62
    .line 63
    const/4 v1, 0x4

    .line 64
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog$c;

    .line 68
    .line 69
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
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
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->a0()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->X()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->f0()V

    .line 16
    .line 17
    .line 18
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 19
    .line 20
    new-instance v3, Landroid/os/Bundle;

    .line 21
    .line 22
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string p1, "from"

    .line 26
    .line 27
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->p:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->r:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getId()Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    const-string p2, "tag_id"

    .line 47
    .line 48
    invoke-virtual {v3, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    :cond_0
    const-string p1, "type_id"

    .line 52
    .line 53
    const-string p2, "tag_drawer_page"

    .line 54
    .line 55
    invoke-virtual {v3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->q:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 59
    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    const-string p2, "reel_id"

    .line 67
    .line 68
    invoke-virtual {v3, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->q:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 72
    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    const-string p2, "episode"

    .line 80
    .line 81
    invoke-virtual {v3, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 85
    .line 86
    const/4 v6, 0x4

    .line 87
    const/4 v7, 0x0

    .line 88
    const-string v2, "tag_page_show"

    .line 89
    .line 90
    const-wide/16 v4, 0x0

    .line 91
    .line 92
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->v:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
