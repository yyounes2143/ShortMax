.class public final Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;
.super Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;
.source "RegionSelectActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity<",
        "Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRegionSelectActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RegionSelectActivity.kt\ncom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,168:1\n1863#2,2:169\n*S KotlinDebug\n*F\n+ 1 RegionSelectActivity.kt\ncom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity\n*L\n60#1:169,2\n*E\n"
    }
.end annotation


# static fields
.field public static final v:Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final r:I

.field private final s:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private t:Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final u:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->v:Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/startshorts/androidplayer/R$layout;->activity_region_select:I

    .line 5
    .line 6
    iput v0, p0, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->r:I

    .line 7
    .line 8
    const-string v0, "RegionSelectActivity"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->s:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->t:Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;

    .line 18
    .line 19
    new-instance v0, Lai/a;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lai/a;-><init>(Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->u:Lms/i;

    .line 29
    .line 30
    return-void
.end method

.method public static synthetic X(Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->j0(Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Y(Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;Landroidx/recyclerview/widget/LinearLayoutManager;ILjava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->h0(Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;Landroidx/recyclerview/widget/LinearLayoutManager;ILjava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Z(Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->k0(Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic a0(Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;)Lcom/startshorts/androidplayer/viewmodel/region/RegionSelectViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->i0(Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;)Lcom/startshorts/androidplayer/viewmodel/region/RegionSelectViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b0(Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;Lcom/startshorts/androidplayer/viewmodel/region/RegionSelectViewModel$a$a;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->l0(Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;Lcom/startshorts/androidplayer/viewmodel/region/RegionSelectViewModel$a$a;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c0(Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;)Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->t:Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d0(Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;)Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;

    .line 6
    .line 7
    return-object p0
.end method

.method private final e0()Lcom/startshorts/androidplayer/viewmodel/region/RegionSelectViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->u:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/region/RegionSelectViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final f0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->S()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final g0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;->b:Landroid/widget/ImageView;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity$b;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity$b;-><init>(Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lfk/v;->a:Lfk/v;

    .line 18
    .line 19
    invoke-virtual {v0}, Lfk/v;->b()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 32
    .line 33
    const v1, 0x800015

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 47
    .line 48
    const v1, 0x800013

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 52
    .line 53
    .line 54
    :goto_0
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 55
    .line 56
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;

    .line 64
    .line 65
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;

    .line 75
    .line 76
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 77
    .line 78
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->t:Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;

    .line 88
    .line 89
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 90
    .line 91
    new-instance v2, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity$initView$2;

    .line 92
    .line 93
    invoke-direct {v2, v0, p0}, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity$initView$2;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 97
    .line 98
    .line 99
    const/high16 v1, 0x41400000    # 12.0f

    .line 100
    .line 101
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    neg-int v1, v1

    .line 106
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;

    .line 111
    .line 112
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;->d:Lcom/startshorts/androidplayer/ui/view/region/QuickBarView;

    .line 113
    .line 114
    new-instance v3, Lai/b;

    .line 115
    .line 116
    invoke-direct {v3, p0, v0, v1}, Lai/b;-><init>(Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;Landroidx/recyclerview/widget/LinearLayoutManager;I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/ui/view/region/QuickBarView;->setLetterChanged(Lkotlin/jvm/functions/Function1;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method private static final h0(Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;Landroidx/recyclerview/widget/LinearLayoutManager;ILjava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->t:Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;

    .line 7
    .line 8
    invoke-virtual {v0, p3}, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;->d(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    const/4 v0, -0x1

    .line 13
    if-eq v0, p3, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 27
    .line 28
    .line 29
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p0
.end method

.method private static final i0(Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;)Lcom/startshorts/androidplayer/viewmodel/region/RegionSelectViewModel;
    .locals 4

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/region/RegionSelectViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/region/RegionSelectViewModel;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->o()Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lai/c;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lai/c;-><init>(Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity$c;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/region/RegionSelectViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v2, Lai/d;

    .line 36
    .line 37
    invoke-direct {v2, p0}, Lai/d;-><init>(Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;)V

    .line 38
    .line 39
    .line 40
    new-instance v3, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity$c;

    .line 41
    .line 42
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/region/RegionSelectViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    new-instance v2, Lai/e;

    .line 53
    .line 54
    invoke-direct {v2, p0}, Lai/e;-><init>(Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;)V

    .line 55
    .line 56
    .line 57
    new-instance v3, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity$c;

    .line 58
    .line 59
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 63
    .line 64
    .line 65
    return-object v0
.end method

.method private static final j0(Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->t:Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;->getItemCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getState()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->V()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->W(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 34
    .line 35
    const/16 p1, 0x8

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0
.end method

.method private static final k0(Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->U()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->P()V

    .line 12
    .line 13
    .line 14
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method private static final l0(Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;Lcom/startshorts/androidplayer/viewmodel/region/RegionSelectViewModel$a$a;)Lkotlin/Unit;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    if-eqz p1, :cond_3

    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->t:Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/region/RegionSelectViewModel$a$a;->a()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    sget-object v3, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->v:Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity$a;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const-string v5, "getIntent(...)"

    .line 28
    .line 29
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity$a;->b(Landroid/content/Intent;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v6}, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity$a;->a(Landroid/content/Intent;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v0, v2, v4, v3}, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;->e(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/region/RegionSelectViewModel$a$a;->a()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Ljava/lang/Iterable;

    .line 60
    .line 61
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Lcom/startshorts/androidplayer/bean/region/RegionGroup;

    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/region/RegionGroup;->getFirstCode()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    const-string v4, "Hot"

    .line 82
    .line 83
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_0

    .line 88
    .line 89
    const-string v2, "#"

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/region/RegionGroup;->getFirstCode()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;

    .line 108
    .line 109
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;->d:Lcom/startshorts/androidplayer/ui/view/region/QuickBarView;

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/ui/view/region/QuickBarView;->setCharSet(Ljava/util/List;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    check-cast p0, Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;

    .line 119
    .line 120
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;->d:Lcom/startshorts/androidplayer/ui/view/region/QuickBarView;

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-lez p1, :cond_2

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_2
    const/16 v1, 0x8

    .line 130
    .line 131
    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 135
    .line 136
    return-object p0
.end method


# virtual methods
.method public S()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->e0()Lcom/startshorts/androidplayer/viewmodel/region/RegionSelectViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/region/RegionSelectViewModel;->F()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public finish()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->t:Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;->b()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, ""

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    move-object v1, v2

    .line 17
    :cond_0
    const-string v3, "areaCode"

    .line 18
    .line 19
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->t:Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;->c()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-object v2, v1

    .line 32
    :goto_0
    const-string v1, "countryName"

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    const/4 v1, -0x1

    .line 38
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 39
    .line 40
    .line 41
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->r:I

    .line 2
    .line 3
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Led/a;->a:Led/a;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, p0, v0}, Led/a;->b(Landroid/app/Activity;Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;->h:Landroid/view/View;

    .line 17
    .line 18
    const-string v0, "toolbarView"

    .line 19
    .line 20
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->J()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {p1, v0}, Ljk/b0;->g(Landroid/view/View;I)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->g0()V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->f0()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
