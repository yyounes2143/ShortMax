.class public final Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarFragment;
.source "TagFilterFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarFragment<",
        "Lcom/startshorts/androidplayer/databinding/FragmentTagFilterBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTagFilterFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TagFilterFragment.kt\ncom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,248:1\n1557#2:249\n1628#2,3:250\n*S KotlinDebug\n*F\n+ 1 TagFilterFragment.kt\ncom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment\n*L\n159#1:249\n159#1:250,3\n*E\n"
    }
.end annotation


# static fields
.field public static final v:Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private j:I

.field private k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private m:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

.field private n:Ljava/lang/String;

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/tab/TagFilterTab;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private q:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private r:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private s:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final t:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final u:Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$mOnPageChangeCallback$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->v:Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->o:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->p:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Lyi/f;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lyi/f;-><init>(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->t:Lms/i;

    .line 28
    .line 29
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$mOnPageChangeCallback$1;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$mOnPageChangeCallback$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->u:Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$mOnPageChangeCallback$1;

    .line 35
    .line 36
    return-void
.end method

.method public static synthetic G(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;)Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->X(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;)Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;Lcom/startshorts/androidplayer/viewmodel/tag/c;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->Y(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;Lcom/startshorts/androidplayer/viewmodel/tag/c;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic I(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic J(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;)Lcom/startshorts/androidplayer/databinding/FragmentTagFilterBinding;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/startshorts/androidplayer/databinding/FragmentTagFilterBinding;

    .line 6
    .line 7
    return-object p0
.end method

.method public static final synthetic K(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->o:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic L(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic M(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->j:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic N(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;)Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->m:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic O(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;)Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->l:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic P(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->p:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic Q(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->j:I

    .line 2
    .line 3
    return-void
.end method

.method private final R()Landroidx/viewpager2/adapter/FragmentStateAdapter;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->o:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->p:Ljava/util/List;

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Iterable;

    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    const/16 v2, 0xa

    .line 13
    .line 14
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/startshorts/androidplayer/bean/tab/TagFilterTab;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/tab/TagFilterTab;->getId()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    int-to-long v2, v2

    .line 46
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$createFragmentStateAdapter$1;

    .line 55
    .line 56
    invoke-direct {v0, p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$createFragmentStateAdapter$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;Ljava/util/List;)V

    .line 57
    .line 58
    .line 59
    return-object v0
.end method

.method private final S()Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->t:Lms/i;

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

.method private final T(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/tab/TagFilterTab;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->p:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->p:Ljava/util/List;

    .line 7
    .line 8
    check-cast p1, Ljava/util/Collection;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    new-instance p1, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;

    .line 14
    .line 15
    sget v0, Lcom/startshorts/androidplayer/R$layout;->item_tag_filter_tab:I

    .line 16
    .line 17
    invoke-direct {p1, v0}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->j:I

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->I(I)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->H(Z)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$b;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->J(Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/startshorts/androidplayer/databinding/FragmentTagFilterBinding;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/FragmentTagFilterBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->p:Ljava/util/List;

    .line 46
    .line 47
    new-instance v3, Lcom/startshorts/androidplayer/ui/view/base/CatchExceptionLinearLayoutManager;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const-string v5, "requireActivity(...)"

    .line 54
    .line 55
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {v3, v4, v0, v0}, Lcom/startshorts/androidplayer/ui/view/base/CatchExceptionLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 59
    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/startshorts/androidplayer/ui/view/base/TabView;->a(Ljava/util/List;Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentTagFilterBinding;

    .line 70
    .line 71
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentTagFilterBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 72
    .line 73
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->j:I

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/ui/view/base/TabView;->setSelectedIndex(I)V

    .line 76
    .line 77
    .line 78
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->V()V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method private final U()V
    .locals 8

    .line 1
    sget-object v0, Led/a;->a:Led/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "requireActivity(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v0, v1, v2}, Led/a;->b(Landroid/app/Activity;Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget v1, Lcom/startshorts/androidplayer/R$id;->toolbar_view:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->q:Landroid/view/View;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move-object v0, v1

    .line 37
    :goto_0
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    move-object v1, v0

    .line 42
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 43
    .line 44
    :cond_1
    if-eqz v1, :cond_2

    .line 45
    .line 46
    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 47
    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->s:Ljava/lang/Integer;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->q:Landroid/view/View;

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->J()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    const/16 v6, 0xd

    .line 65
    .line 66
    const/4 v7, 0x0

    .line 67
    const/4 v2, 0x0

    .line 68
    const/4 v4, 0x0

    .line 69
    const/4 v5, 0x0

    .line 70
    invoke-static/range {v1 .. v7}, Ljk/b0;->i(Landroid/view/View;IIIIILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    new-instance v0, Landroid/widget/ImageView;

    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 80
    .line 81
    .line 82
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 83
    .line 84
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->J()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    const/4 v3, -0x1

    .line 91
    invoke-direct {v1, v3, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 92
    .line 93
    .line 94
    const/4 v2, 0x0

    .line 95
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    .line 99
    .line 100
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 103
    .line 104
    .line 105
    sget v1, Lcom/startshorts/androidplayer/R$color;->color_common_page_bg:I

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 108
    .line 109
    .line 110
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->r:Landroid/view/View;

    .line 111
    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    sget v1, Lcom/startshorts/androidplayer/R$id;->root_layout:I

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Landroid/view/ViewGroup;

    .line 123
    .line 124
    if-eqz v0, :cond_3

    .line 125
    .line 126
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->r:Landroid/view/View;

    .line 127
    .line 128
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 129
    .line 130
    .line 131
    :cond_3
    return-void
.end method

.method private final V()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentTagFilterBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentTagFilterBinding;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->R()Landroidx/viewpager2/adapter/FragmentStateAdapter;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {v0, v2}, Lkd/d;->a(Landroidx/viewpager2/widget/ViewPager2;Z)V

    .line 21
    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    invoke-static {v0, v3}, Lkd/d;->b(Landroidx/viewpager2/widget/ViewPager2;I)V

    .line 25
    .line 26
    .line 27
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->u:Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$mOnPageChangeCallback$1;

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->j:I

    .line 33
    .line 34
    if-ltz v0, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-ge v0, v1, :cond_0

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentTagFilterBinding;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentTagFilterBinding;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 49
    .line 50
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->j:I

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method

.method private final W()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v2, "shorts_label_param"

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-class v2, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 17
    .line 18
    invoke-static {v0, v2}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v0, v1

    .line 26
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    const-string v3, "episode_param"

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    const-class v3, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 41
    .line 42
    invoke-static {v2, v3}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move-object v2, v1

    .line 50
    :goto_1
    iput-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    const-string v3, "shorts_param"

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    const-class v1, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 67
    .line 68
    invoke-static {v2, v1}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 73
    .line 74
    :cond_2
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->l:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 75
    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    const-string v2, "from"

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-nez v1, :cond_4

    .line 89
    .line 90
    :cond_3
    const-string v1, ""

    .line 91
    .line 92
    :cond_4
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->n:Ljava/lang/String;

    .line 93
    .line 94
    if-nez v0, :cond_5

    .line 95
    .line 96
    const-string v0, "shortLabel is null"

    .line 97
    .line 98
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->g(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->h()V

    .line 102
    .line 103
    .line 104
    const/4 v0, 0x0

    .line 105
    return v0

    .line 106
    :cond_5
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->m:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 107
    .line 108
    const/4 v0, 0x1

    .line 109
    return v0
.end method

.method private static final X(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;)Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;
    .locals 4

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
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lyi/g;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lyi/g;-><init>(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$c;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method private static final Y(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;Lcom/startshorts/androidplayer/viewmodel/tag/c;)Lkotlin/Unit;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/tag/c$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/tag/c$a;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/tag/c$a;->a()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->T(Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 18
    .line 19
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 20
    .line 21
    .line 22
    throw p0
.end method


# virtual methods
.method public l()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_tag_filter:I

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

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->W()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->U()V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->m:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    const-string p1, "mShortLabel"

    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getLabelName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarFragment;->F(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->S()Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance p2, Lcom/startshorts/androidplayer/viewmodel/tag/d$a;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "requireContext(...)"

    .line 49
    .line 50
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->j:I

    .line 54
    .line 55
    invoke-direct {p2, v0, v1}, Lcom/startshorts/androidplayer/viewmodel/tag/d$a;-><init>(Landroid/content/Context;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;->H(Lcom/startshorts/androidplayer/viewmodel/tag/d;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "TagFilterFragment"

    .line 2
    .line 3
    return-object v0
.end method

.method public v()V
    .locals 9

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->v()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->r:Landroid/view/View;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    check-cast v2, Landroid/view/ViewGroup;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v2, v1

    .line 21
    :goto_0
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->r:Landroid/view/View;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->s:Ljava/lang/Integer;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->q:Landroid/view/View;

    .line 37
    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    const/16 v7, 0xd

    .line 41
    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v3, 0x0

    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v6, 0x0

    .line 46
    invoke-static/range {v2 .. v8}, Ljk/b0;->i(Landroid/view/View;IIIIILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->q:Landroid/view/View;

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->B()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentTagFilterBinding;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentTagFilterBinding;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->u:Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$mOnPageChangeCallback$1;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->o:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76
    .line 77
    .line 78
    return-void
.end method
