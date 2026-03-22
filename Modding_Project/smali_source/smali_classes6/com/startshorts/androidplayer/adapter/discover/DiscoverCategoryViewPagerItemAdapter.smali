.class public final Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;
.super Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;
.source "DiscoverCategoryViewPagerItemAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a;,
        Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$b;,
        Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter<",
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiscoverCategoryViewPagerItemAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverCategoryViewPagerItemAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,475:1\n295#2,2:476\n1#3:478\n*S KotlinDebug\n*F\n+ 1 DiscoverCategoryViewPagerItemAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter\n*L\n178#1:476,2\n*E\n"
    }
.end annotation


# static fields
.field private static final A:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final B:I

.field private static final C:I

.field private static final D:F

.field private static final E:I

.field public static final t:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final u:I

.field private static final v:I

.field private static final w:F

.field private static final x:F

.field private static final y:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final z:F


# instance fields
.field private final l:I

.field private final m:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final n:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final o:Landroidx/lifecycle/Lifecycle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final p:Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private q:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final r:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->t:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$b;

    .line 8
    .line 9
    const/high16 v0, 0x43340000    # 180.0f

    .line 10
    .line 11
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->u:I

    .line 16
    .line 17
    const/high16 v1, 0x43070000    # 135.0f

    .line 18
    .line 19
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    sput v1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->v:I

    .line 24
    .line 25
    sget-object v2, Lfk/z;->a:Lfk/z;

    .line 26
    .line 27
    invoke-virtual {v2}, Lfk/z;->d()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    int-to-float v3, v3

    .line 32
    sput v3, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->w:F

    .line 33
    .line 34
    invoke-virtual {v2}, Lfk/z;->a()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    int-to-float v4, v4

    .line 39
    sput v4, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->x:F

    .line 40
    .line 41
    new-instance v4, Lcom/startshorts/androidplayer/adapter/discover/d;

    .line 42
    .line 43
    invoke-direct {v4}, Lcom/startshorts/androidplayer/adapter/discover/d;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-static {v4}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    sput-object v4, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->y:Lms/i;

    .line 51
    .line 52
    sput v3, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->z:F

    .line 53
    .line 54
    new-instance v3, Lcom/startshorts/androidplayer/adapter/discover/e;

    .line 55
    .line 56
    invoke-direct {v3}, Lcom/startshorts/androidplayer/adapter/discover/e;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-static {v3}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    sput-object v3, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->A:Lms/i;

    .line 64
    .line 65
    sput v1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->B:I

    .line 66
    .line 67
    sput v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->C:I

    .line 68
    .line 69
    invoke-virtual {v2}, Lfk/z;->r()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    int-to-float v0, v0

    .line 74
    sput v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->D:F

    .line 75
    .line 76
    invoke-virtual {v2}, Lfk/z;->n()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    sput v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->E:I

    .line 81
    .line 82
    return-void
.end method

.method public constructor <init>(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;Landroidx/lifecycle/Lifecycle;Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;)V
    .locals 1
    .param p2    # Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/lifecycle/Lifecycle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "module"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mBinding"

    .line 7
    .line 8
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;-><init>()V

    .line 12
    .line 13
    .line 14
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->l:I

    .line 15
    .line 16
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->m:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->n:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;

    .line 19
    .line 20
    iput-object p4, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->o:Landroidx/lifecycle/Lifecycle;

    .line 21
    .line 22
    iput-object p5, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->p:Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;

    .line 23
    .line 24
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 25
    .line 26
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->r:Landroidx/lifecycle/MutableLiveData;

    .line 30
    .line 31
    return-void
.end method

.method public static final synthetic A()Lms/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->A:Lms/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic B(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;)Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->p:Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic C(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->r:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic D(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;)Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->m:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic E(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->s:Z

    .line 2
    .line 3
    return-void
.end method

.method private final G()V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->s:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->P()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v7

    .line 8
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v8

    .line 12
    if-nez v8, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 15
    .line 16
    const-string v1, "DiscoverCategoryViewPagerItemAdapter"

    .line 17
    .line 18
    const-string v2, "createBannerViewPager ignore -> shorts is empty"

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->d()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 32
    .line 33
    .line 34
    new-instance v9, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->p:Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v9, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    new-instance v10, Lcom/startshorts/androidplayer/adapter/discover/f;

    .line 50
    .line 51
    invoke-direct {v10, v9}, Lcom/startshorts/androidplayer/adapter/discover/f;-><init>(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;)V

    .line 52
    .line 53
    .line 54
    sget v1, Lcom/startshorts/androidplayer/R$id;->view_pager:I

    .line 55
    .line 56
    invoke-virtual {v9, v1}, Landroid/view/View;->setId(I)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->p:Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;

    .line 60
    .line 61
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->p:Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;

    .line 67
    .line 68
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 69
    .line 70
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 71
    .line 72
    const/4 v3, -0x1

    .line 73
    sget v4, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->u:I

    .line 74
    .line 75
    invoke-direct {v2, v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    .line 80
    .line 81
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 82
    .line 83
    invoke-virtual {v9, v11}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->setResetCurrentItemWhenCanLoop(Ljava/lang/Boolean;)V

    .line 84
    .line 85
    .line 86
    const/4 v12, 0x1

    .line 87
    invoke-virtual {v9, v12}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->I(I)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v9, p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->D(Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v9, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->M(I)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v9, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->F(Z)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 97
    .line 98
    .line 99
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    sget v2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->v:I

    .line 106
    .line 107
    sub-int/2addr v1, v2

    .line 108
    invoke-virtual {v9, v0, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->Q(II)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v9, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->E(Z)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->o:Landroidx/lifecycle/Lifecycle;

    .line 115
    .line 116
    invoke-virtual {v9, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->A(Landroidx/lifecycle/Lifecycle;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 117
    .line 118
    .line 119
    new-instance v0, Lcom/startshorts/androidplayer/adapter/discover/g;

    .line 120
    .line 121
    move-object v1, v0

    .line 122
    move-object v2, v9

    .line 123
    move-object v3, p0

    .line 124
    move-object v4, v7

    .line 125
    move v5, v8

    .line 126
    move-object v6, v10

    .line 127
    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/adapter/discover/g;-><init>(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;Ljava/util/List;ILkotlin/jvm/functions/Function2;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v9, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->J(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$c;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 131
    .line 132
    .line 133
    new-instance v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$e;

    .line 134
    .line 135
    move-object v1, v0

    .line 136
    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$e;-><init>(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;Ljava/util/List;ILkotlin/jvm/functions/Function2;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v9, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->B(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$b;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 140
    .line 141
    .line 142
    move-object v0, v7

    .line 143
    check-cast v0, Ljava/lang/Iterable;

    .line 144
    .line 145
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->d1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v9, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->g(Ljava/util/List;)V

    .line 150
    .line 151
    .line 152
    new-instance v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$c;

    .line 153
    .line 154
    const/4 v1, 0x0

    .line 155
    const/4 v2, 0x0

    .line 156
    invoke-direct {v0, p0, v1, v12, v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$c;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v9, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->f(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 160
    .line 161
    .line 162
    invoke-direct {p0, v7}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->O(Ljava/util/List;)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    if-eqz v0, :cond_1

    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-interface {v10, v1, v11}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    invoke-static {v7, v0}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    check-cast v1, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 184
    .line 185
    invoke-static {p0, v7, v0, v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->J(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;Ljava/util/List;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 186
    .line 187
    .line 188
    :cond_1
    return-void
.end method

.method private static final H(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;IZ)Lkotlin/Unit;
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$id;->vp_main:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method private static final I(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;Ljava/util/List;ILkotlin/jvm/functions/Function2;Landroid/view/View;I)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->getCurrentItem()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne p6, v0, :cond_6

    .line 6
    .line 7
    iget-object v1, p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->n:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {p2, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    move-object v3, p0

    .line 16
    check-cast v3, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;

    .line 17
    .line 18
    iget-object v5, p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->m:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 19
    .line 20
    const/16 v7, 0x10

    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    const-string v4, "category_filtering"

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    move v2, p6

    .line 27
    invoke-static/range {v1 .. v8}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n$a;->a(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;ILcom/startshorts/androidplayer/bean/shorts/BaseShorts;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    sget p0, Lcom/startshorts/androidplayer/R$id;->video_preview:I

    .line 31
    .line 32
    invoke-virtual {p5, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 37
    .line 38
    if-eqz p0, :cond_8

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-nez p0, :cond_8

    .line 45
    .line 46
    invoke-virtual {p5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    instance-of p3, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 51
    .line 52
    const/4 p4, 0x0

    .line 53
    if-eqz p3, :cond_1

    .line 54
    .line 55
    check-cast p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    move-object p0, p4

    .line 59
    :goto_0
    if-eqz p0, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->f0()Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    if-eqz p0, :cond_2

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->H0()Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 68
    .line 69
    .line 70
    move-result-object p4

    .line 71
    :cond_2
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 72
    .line 73
    invoke-virtual {v0, p4}, Lcom/startshorts/androidplayer/manager/event/EventManager;->B(Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)Landroid/os/Bundle;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-interface {p2, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    check-cast p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategoryShorts;

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    const-string p2, ""

    .line 88
    .line 89
    if-nez p0, :cond_3

    .line 90
    .line 91
    move-object p0, p2

    .line 92
    :cond_3
    const-string p3, "reel_id"

    .line 93
    .line 94
    invoke-virtual {v2, p3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string p0, "scene"

    .line 98
    .line 99
    const-string p3, "discover"

    .line 100
    .line 101
    invoke-virtual {v2, p0, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object p0, p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->m:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getTitle()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    const-string p3, "module_name"

    .line 111
    .line 112
    invoke-virtual {v2, p3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object p0, p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->m:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getBannerId()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    const-string p3, "module_id"

    .line 122
    .line 123
    invoke-virtual {v2, p3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    add-int/lit8 p6, p6, 0x1

    .line 127
    .line 128
    const-string p0, "position_id"

    .line 129
    .line 130
    invoke-virtual {v2, p0, p6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 131
    .line 132
    .line 133
    iget-object p0, p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->m:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRecommendId()Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    if-eqz p0, :cond_5

    .line 140
    .line 141
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    if-nez p0, :cond_4

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_4
    move-object p2, p0

    .line 149
    :cond_5
    :goto_1
    const-string p0, "audiences_recommend_id"

    .line 150
    .line 151
    invoke-virtual {v2, p0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 155
    .line 156
    const/4 v5, 0x4

    .line 157
    const/4 v6, 0x0

    .line 158
    const-string v1, "reel_video_preview_click"

    .line 159
    .line 160
    const-wide/16 v3, 0x0

    .line 161
    .line 162
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_6
    rem-int/2addr p6, p3

    .line 167
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->getCurrentItem()I

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    if-ge p6, p0, :cond_7

    .line 172
    .line 173
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 174
    .line 175
    .line 176
    move-result p0

    .line 177
    add-int/2addr p6, p0

    .line 178
    :cond_7
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 183
    .line 184
    invoke-interface {p4, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    :cond_8
    :goto_2
    return-void
.end method

.method private static final J(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;Ljava/util/List;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverCategoryShorts;",
            ">;I",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->p:Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v2, v1

    .line 17
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->p:Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 23
    .line 24
    if-eqz p3, :cond_1

    .line 25
    .line 26
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getSummary()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    move-object v1, v2

    .line 33
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->p:Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;->d:Landroid/view/View;

    .line 39
    .line 40
    new-instance v1, Lcom/startshorts/androidplayer/adapter/discover/h;

    .line 41
    .line 42
    invoke-direct {v1, p0, p2, p3}, Lcom/startshorts/androidplayer/adapter/discover/h;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    if-eqz p3, :cond_2

    .line 49
    .line 50
    invoke-direct {p0, p2, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->X(ILjava/util/List;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    return-void
.end method

.method private static final K(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->n:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v4, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->m:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 6
    .line 7
    const/16 v6, 0x10

    .line 8
    .line 9
    const/4 v7, 0x0

    .line 10
    const-string v3, "category_filtering"

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    move v1, p1

    .line 14
    move-object v2, p2

    .line 15
    invoke-static/range {v0 .. v7}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n$a;->a(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;ILcom/startshorts/androidplayer/bean/shorts/BaseShorts;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private final L()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverCategoryShorts;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->m:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getCategoryConfigItemVOList()Ljava/util/List;

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
    check-cast v2, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverCategory;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverCategory;->getCategoryId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->N()Ljava/lang/String;

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
    check-cast v1, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverCategory;

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverCategory;->getShortPlayResponseList()Ljava/util/List;

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

.method private final M()Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->r:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a;

    .line 8
    .line 9
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$b;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$b;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$b;->a()Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$c;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    check-cast v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$c;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$c;->a()Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$a;

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    check-cast v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$a;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$a;->a()Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;

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

.method private final N()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->M()Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;->getId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :cond_0
    const-string v0, ""

    .line 14
    .line 15
    :cond_1
    return-object v0
.end method

.method private final O(Ljava/util/List;)Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->N()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->m:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getCategoryTabPosMap()Ljava/util/HashMap;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/Integer;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    add-int/lit8 p1, p1, -0x1

    .line 43
    .line 44
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1
.end method

.method private final P()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverCategoryShorts;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->r:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a;

    .line 8
    .line 9
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$c;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$c;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$c;->b()Ljava/util/List;

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

.method private final R(Lcom/hades/aar/pagestate/StateViewGroup;Lkotlin/jvm/functions/Function0;)V
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
    new-instance v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$f;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$f;-><init>(Lcom/hades/aar/pagestate/StateViewGroup;Lkotlin/jvm/functions/Function0;)V

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

.method private final S(Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a;)V
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;->b:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 2
    .line 3
    const-string v1, "categoryStateView"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    instance-of v1, p2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$b;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->L()Ljava/util/List;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->r:Landroidx/lifecycle/MutableLiveData;

    .line 27
    .line 28
    new-instance v1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$c;

    .line 29
    .line 30
    check-cast p2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$b;

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$b;->a()Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-direct {v1, p2, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$c;-><init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;Ljava/util/List;)V

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->q:Lkotlinx/coroutines/r;

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
    new-instance v6, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1;

    .line 64
    .line 65
    invoke-direct {v6, p0, p2, v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a;Lrs/c;)V

    .line 66
    .line 67
    .line 68
    const/4 v7, 0x2

    .line 69
    const/4 v8, 0x0

    .line 70
    const-string v4, "fetchDiscoverModulesCategoryMore"

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->q:Lkotlinx/coroutines/r;

    .line 78
    .line 79
    goto/16 :goto_3

    .line 80
    .line 81
    :cond_2
    instance-of v1, p2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$c;

    .line 82
    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    check-cast p2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$c;

    .line 86
    .line 87
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$c;->b()Ljava/util/List;

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->G()V

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
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->T(Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;)V

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
    instance-of v1, p2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$a;

    .line 125
    .line 126
    const-string v3, "DiscoverCategoryViewPagerItemAdapter"

    .line 127
    .line 128
    if-eqz v1, :cond_c

    .line 129
    .line 130
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->T(Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;)V

    .line 131
    .line 132
    .line 133
    check-cast p2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$a;

    .line 134
    .line 135
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$a;->b()Lcom/startshorts/androidplayer/bean/exception/ResponseException;

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
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->E:I

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
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$a;->b()Lcom/startshorts/androidplayer/bean/exception/ResponseException;

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
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->E:I

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
    const-string v1, "CategoryFailed -> "

    .line 241
    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$a;->a()Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;->getName()Ljava/lang/String;

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
    const-string v1, "CategoryChangeState -> "

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

.method private final T(Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final V(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->p:Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->S(Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private static final W(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->M()Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->r:Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$b;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$b;-><init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;)V

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

.method private final X(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->N()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    add-int/lit8 p2, p2, -0x1

    .line 10
    .line 11
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->m:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getCategoryTabPosMap()Ljava/util/HashMap;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public static synthetic n(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->W(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->V(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;Ljava/util/List;ILkotlin/jvm/functions/Function2;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->I(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;Ljava/util/List;ILkotlin/jvm/functions/Function2;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic q(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->K(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic r(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;IZ)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->H(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;IZ)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s()F
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->u()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static synthetic t()F
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->v()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private static final u()F
    .locals 1

    .line 1
    const v0, 0x3f638e39

    .line 2
    .line 3
    .line 4
    return v0
.end method

.method private static final v()F
    .locals 3

    .line 1
    sget v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->v:I

    .line 2
    .line 3
    neg-int v0, v0

    .line 4
    int-to-float v0, v0

    .line 5
    const/4 v1, 0x1

    .line 6
    int-to-float v1, v1

    .line 7
    sget-object v2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->t:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$b;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$b;->a(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$b;)F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sub-float/2addr v1, v2

    .line 14
    mul-float/2addr v0, v1

    .line 15
    sget v1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->x:F

    .line 16
    .line 17
    add-float/2addr v0, v1

    .line 18
    return v0
.end method

.method public static final synthetic w(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;Ljava/util/List;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->J(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;Ljava/util/List;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic x()F
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->z:F

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic y(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;)Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->M()Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic z()Lms/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->y:Lms/i;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method protected F(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;III)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            "III)V"
        }
    .end annotation

    .line 1
    const-string p4, "holder"

    .line 2
    .line 3
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p4, "data"

    .line 7
    .line 8
    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget p4, Lcom/startshorts/androidplayer/R$id;->exposure_layout:I

    .line 12
    .line 13
    invoke-virtual {p1, p4}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p4

    .line 17
    check-cast p4, Lcom/startshorts/androidplayer/utils/exposure/ExposureLayout;

    .line 18
    .line 19
    const/4 p5, 0x0

    .line 20
    invoke-virtual {p4, p5}, Lcom/startshorts/androidplayer/utils/exposure/ExposureLayout;->setShowRatio(F)V

    .line 21
    .line 22
    .line 23
    const/4 p5, 0x0

    .line 24
    invoke-virtual {p4, p5}, Lcom/startshorts/androidplayer/utils/exposure/ExposureLayout;->setTimeLimit(I)V

    .line 25
    .line 26
    .line 27
    new-instance p5, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$d;

    .line 28
    .line 29
    invoke-direct {p5, p0, p2, p3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$d;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p4, p5}, Lcom/startshorts/androidplayer/utils/exposure/ExposureLayout;->setExposureCallback(Lik/c;)V

    .line 33
    .line 34
    .line 35
    sget p4, Lcom/startshorts/androidplayer/R$id;->shorts_name_tv:I

    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p5

    .line 41
    invoke-virtual {p1, p4, p5}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    sget p4, Lcom/startshorts/androidplayer/R$id;->cover_iv:I

    .line 45
    .line 46
    invoke-virtual {p1, p4}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p4

    .line 50
    check-cast p4, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 51
    .line 52
    new-instance p5, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const/16 v0, 0x20

    .line 65
    .line 66
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getId()I

    .line 76
    .line 77
    .line 78
    move-result p3

    .line 79
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    invoke-virtual {p4, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    sget-object p3, Lkk/f;->a:Lkk/f;

    .line 90
    .line 91
    new-instance p5, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 92
    .line 93
    invoke-direct {p5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p5, v0}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    sget v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->B:I

    .line 104
    .line 105
    invoke-virtual {p5, v0}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 106
    .line 107
    .line 108
    sget v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->C:I

    .line 109
    .line 110
    invoke-virtual {p5, v0}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 111
    .line 112
    .line 113
    sget v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->v:I

    .line 114
    .line 115
    invoke-virtual {p5, v0}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 116
    .line 117
    .line 118
    sget v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->u:I

    .line 119
    .line 120
    invoke-virtual {p5, v0}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 121
    .line 122
    .line 123
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_banner_placeholder:I

    .line 124
    .line 125
    invoke-virtual {p5, v0}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 126
    .line 127
    .line 128
    const/4 v0, 0x1

    .line 129
    invoke-virtual {p5, v0}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 130
    .line 131
    .line 132
    sget v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->D:F

    .line 133
    .line 134
    invoke-virtual {p5, v0}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 135
    .line 136
    .line 137
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 138
    .line 139
    invoke-virtual {p3, p4, p5}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 140
    .line 141
    .line 142
    sget p3, Lcom/startshorts/androidplayer/R$id;->tvPlayCount:I

    .line 143
    .line 144
    invoke-virtual {p1, p3}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object p3

    .line 148
    check-cast p3, Landroid/widget/TextView;

    .line 149
    .line 150
    sget-object p4, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->C:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;

    .line 151
    .line 152
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPlayNum()Ljava/lang/Long;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-virtual {p4, p3, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->i(Landroid/widget/TextView;Ljava/lang/Long;)V

    .line 157
    .line 158
    .line 159
    sget p2, Lcom/startshorts/androidplayer/R$id;->video_preview:I

    .line 160
    .line 161
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->findViewById(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 166
    .line 167
    if-eqz p1, :cond_0

    .line 168
    .line 169
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->setCornerRadius(Ljava/lang/Float;)V

    .line 174
    .line 175
    .line 176
    :cond_0
    return-void
.end method

.method public final Q()Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;
    .locals 13
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->P()Ljava/util/List;

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
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-object v2

    .line 13
    :cond_0
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->O(Ljava/util/List;)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->p:Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    sget v4, Lcom/startshorts/androidplayer/R$id;->vp_main:I

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Landroidx/viewpager2/widget/ViewPager2;

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    sget-object v4, Lfk/i0;->a:Lfk/i0;

    .line 40
    .line 41
    invoke-virtual {v4, v3}, Lfk/i0;->b(Landroidx/viewpager2/widget/ViewPager2;)Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    sget v4, Lcom/startshorts/androidplayer/R$id;->video_preview:I

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    move-object v5, v3

    .line 66
    check-cast v5, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 67
    .line 68
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategoryShorts;

    .line 73
    .line 74
    const/16 v4, 0x1e0

    .line 75
    .line 76
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->parseVideoUrl(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    if-nez v3, :cond_1

    .line 81
    .line 82
    const-string v3, ""

    .line 83
    .line 84
    :cond_1
    move-object v7, v3

    .line 85
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategoryShorts;

    .line 90
    .line 91
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getNeedDecrypt()Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-eqz v5, :cond_2

    .line 96
    .line 97
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-lez v3, :cond_2

    .line 102
    .line 103
    new-instance v2, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

    .line 104
    .line 105
    iget-object v8, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->m:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 106
    .line 107
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    move-object v9, v0

    .line 112
    check-cast v9, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 113
    .line 114
    const/4 v11, 0x2

    .line 115
    const/4 v12, 0x0

    .line 116
    const/4 v10, 0x1

    .line 117
    move-object v4, v2

    .line 118
    invoke-direct/range {v4 .. v12}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;-><init>(Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;ZLjava/lang/String;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;ZIZ)V

    .line 119
    .line 120
    .line 121
    :cond_2
    return-object v2
.end method

.method public final U()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->o:Landroidx/lifecycle/Lifecycle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->m:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getCategoryVOList()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    iget v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->l:I

    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->m:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getCategoryTabPosMap()Ljava/util/HashMap;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->m:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 34
    .line 35
    new-instance v2, Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->setCategoryTabPosMap(Ljava/util/HashMap;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->p:Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;

    .line 44
    .line 45
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;->b:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 46
    .line 47
    const-string v2, "categoryStateView"

    .line 48
    .line 49
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v2, Lcom/startshorts/androidplayer/adapter/discover/b;

    .line 53
    .line 54
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/adapter/discover/b;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, v1, v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->R(Lcom/hades/aar/pagestate/StateViewGroup;Lkotlin/jvm/functions/Function0;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->r:Landroidx/lifecycle/MutableLiveData;

    .line 61
    .line 62
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->o:Landroidx/lifecycle/Lifecycle;

    .line 63
    .line 64
    invoke-static {v2}, Lcom/startshorts/androidplayer/utils/ext/LifeCycleExtKt;->a(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleOwner;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    new-instance v3, Lcom/startshorts/androidplayer/adapter/discover/c;

    .line 69
    .line 70
    invoke-direct {v3, p0}, Lcom/startshorts/androidplayer/adapter/discover/c;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;)V

    .line 71
    .line 72
    .line 73
    new-instance v4, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$g;

    .line 74
    .line 75
    invoke-direct {v4, v3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$g;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->r:Landroidx/lifecycle/MutableLiveData;

    .line 82
    .line 83
    new-instance v2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$b;

    .line 84
    .line 85
    invoke-direct {v2, v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$b;-><init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v1, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic b(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Ljava/lang/Object;III)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->F(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;III)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(I)I
    .locals 0

    .line 1
    sget p1, Lcom/startshorts/androidplayer/R$layout;->item_discover_category_banner_item:I

    .line 2
    .line 3
    return p1
.end method
