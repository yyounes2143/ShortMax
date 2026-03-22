.class public final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarFragment;
.source "DiscoverMoreCategoryFilterFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarFragment<",
        "Lcom/startshorts/androidplayer/databinding/FragmentDiscoverMoreCategoryFilterBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiscoverMoreCategoryFilterFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverMoreCategoryFilterFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,214:1\n1872#2,3:215\n1557#2:218\n1628#2,3:219\n*S KotlinDebug\n*F\n+ 1 DiscoverMoreCategoryFilterFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment\n*L\n95#1:215,3\n133#1:218\n133#1:219,3\n*E\n"
    }
.end annotation


# static fields
.field public static final p:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private j:I

.field private k:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;

.field private final n:Ljava/util/List;
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

.field private final o:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment$mOnPageChangeCallback$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->p:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment$a;

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
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->n:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment$mOnPageChangeCallback$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment$mOnPageChangeCallback$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->o:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment$mOnPageChangeCallback$1;

    .line 17
    .line 18
    return-void
.end method

.method public static final synthetic G(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;)Lcom/startshorts/androidplayer/databinding/FragmentDiscoverMoreCategoryFilterBinding;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverMoreCategoryFilterBinding;

    .line 6
    .line 7
    return-object p0
.end method

.method public static final synthetic H(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->l:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic I(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->n:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic J(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic K(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;)Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->k:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic L(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->j:I

    .line 2
    .line 3
    return-void
.end method

.method private final M()Landroidx/viewpager2/adapter/FragmentStateAdapter;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->n:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->l:Ljava/util/List;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "mCategoryVOList"

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    const/16 v2, 0xa

    .line 21
    .line 22
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;->getId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    int-to-long v2, v2

    .line 54
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment$createFragmentStateAdapter$1;

    .line 63
    .line 64
    invoke-direct {v0, p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment$createFragmentStateAdapter$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;Ljava/util/List;)V

    .line 65
    .line 66
    .line 67
    return-object v0
.end method

.method private final N()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->l:Ljava/util/List;

    .line 2
    .line 3
    const-string v1, "mCategoryVOList"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v2

    .line 12
    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v3, 0x0

    .line 19
    move v4, v3

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_3

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    add-int/lit8 v6, v4, 0x1

    .line 31
    .line 32
    if-gez v4, :cond_1

    .line 33
    .line 34
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 35
    .line 36
    .line 37
    :cond_1
    check-cast v5, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;

    .line 38
    .line 39
    const/4 v7, 0x1

    .line 40
    invoke-virtual {v5, v7}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setClickable(Z)V

    .line 41
    .line 42
    .line 43
    iget v8, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->j:I

    .line 44
    .line 45
    if-ne v4, v8, :cond_2

    .line 46
    .line 47
    invoke-virtual {v5, v7}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setSelected(Z)V

    .line 48
    .line 49
    .line 50
    :cond_2
    move v4, v6

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    new-instance v0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;

    .line 53
    .line 54
    sget v4, Lcom/startshorts/androidplayer/R$layout;->item_discover_more_category_filter:I

    .line 55
    .line 56
    invoke-direct {v0, v4}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;-><init>(I)V

    .line 57
    .line 58
    .line 59
    new-instance v4, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment$b;

    .line 60
    .line 61
    invoke-direct {v4, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v4}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->J(Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverMoreCategoryFilterBinding;

    .line 72
    .line 73
    iget-object v4, v4, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverMoreCategoryFilterBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 74
    .line 75
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->l:Ljava/util/List;

    .line 76
    .line 77
    if-nez v5, :cond_4

    .line 78
    .line 79
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    move-object v5, v2

    .line 83
    :cond_4
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/base/CatchExceptionLinearLayoutManager;

    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    const-string v7, "requireActivity(...)"

    .line 90
    .line 91
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-direct {v1, v6, v3, v3}, Lcom/startshorts/androidplayer/ui/view/base/CatchExceptionLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v5, v0, v2, v1}, Lcom/startshorts/androidplayer/ui/view/base/TabView;->a(Ljava/util/List;Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverMoreCategoryFilterBinding;

    .line 105
    .line 106
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverMoreCategoryFilterBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 107
    .line 108
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->j:I

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/base/TabView;->setSelectedIndex(I)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method private final O()V
    .locals 9

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
    new-instance v0, Landroid/widget/ImageView;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 26
    .line 27
    const/4 v2, -0x1

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 30
    .line 31
    .line 32
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    .line 36
    .line 37
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 40
    .line 41
    .line 42
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->bg_discover_2_top_mask:I

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    sget v2, Lcom/startshorts/androidplayer/R$id;->root_layout:I

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 58
    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sget v1, Lcom/startshorts/androidplayer/R$id;->toolbar_view:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-eqz v2, :cond_1

    .line 75
    .line 76
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->J()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    const/16 v7, 0xd

    .line 83
    .line 84
    const/4 v8, 0x0

    .line 85
    const/4 v3, 0x0

    .line 86
    const/4 v5, 0x0

    .line 87
    const/4 v6, 0x0

    .line 88
    invoke-static/range {v2 .. v8}, Ljk/b0;->i(Landroid/view/View;IIIIILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    return-void
.end method

.method private final P()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverMoreCategoryFilterBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverMoreCategoryFilterBinding;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->M()Landroidx/viewpager2/adapter/FragmentStateAdapter;

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
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->o:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment$mOnPageChangeCallback$1;

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->j:I

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
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverMoreCategoryFilterBinding;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverMoreCategoryFilterBinding;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 49
    .line 50
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->j:I

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method

.method private final Q()Z
    .locals 5

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
    const-string v2, "module_info_param"

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
    const-class v2, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 17
    .line 18
    invoke-static {v0, v2}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

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
    const-string v3, "category_list_param"

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
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment$c;

    .line 41
    .line 42
    invoke-direct {v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment$c;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v3, "getType(...)"

    .line 50
    .line 51
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v2, v1}, Ljk/l;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Ljava/util/List;

    .line 59
    .line 60
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    const-string v3, "from"

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    if-nez v2, :cond_3

    .line 73
    .line 74
    :cond_2
    const-string v2, ""

    .line 75
    .line 76
    :cond_3
    const/4 v3, 0x0

    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    if-nez v1, :cond_4

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    iput-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->m:Ljava/lang/String;

    .line 83
    .line 84
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->k:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 85
    .line 86
    new-instance v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;

    .line 87
    .line 88
    sget v2, Lcom/startshorts/androidplayer/R$string;->discover_more_category_filter_fragment_all:I

    .line 89
    .line 90
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    const-string v4, "getString(...)"

    .line 95
    .line 96
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string v4, "-1"

    .line 100
    .line 101
    invoke-direct {v0, v4, v2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->l:Ljava/util/List;

    .line 108
    .line 109
    const/4 v0, 0x1

    .line 110
    return v0

    .line 111
    :cond_5
    :goto_1
    const-string v0, "data or categoryList is null"

    .line 112
    .line 113
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->g(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->h()V

    .line 117
    .line 118
    .line 119
    return v3
.end method


# virtual methods
.method public l()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_discover_more_category_filter:I

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->Q()Z

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->O()V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->k:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    const-string v0, "mModuleInfo"

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    move-object p1, p2

    .line 30
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getModuleName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarFragment;->F(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->N()V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->P()V

    .line 41
    .line 42
    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v1, "onCreate -> ModuleInfo="

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->k:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 54
    .line 55
    if-nez v1, :cond_2

    .line 56
    .line 57
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    move-object p2, v1

    .line 62
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "DiscoverMoreCategoryFilterFragment"

    .line 2
    .line 3
    return-object v0
.end method

.method public v()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->v()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->B()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverMoreCategoryFilterBinding;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverMoreCategoryFilterBinding;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->o:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment$mOnPageChangeCallback$1;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->n:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 30
    .line 31
    .line 32
    return-void
.end method
