.class public final Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;
.super Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;
.source "DownloadingDramaActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity<",
        "Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final w:Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private r:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final s:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private t:Z

.field private u:I

.field private v:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->w:Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$a;

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
    new-instance v0, Luh/c1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Luh/c1;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->s:Lms/i;

    .line 14
    .line 15
    return-void
.end method

.method private static final A0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->t:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->E0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private static final B0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->r:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget p0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->u:I

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;->m0(Z)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method private static final C0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->u:I

    .line 2
    .line 3
    if-lez p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lgi/b;

    .line 6
    .line 7
    sget v0, Lcom/startshorts/androidplayer/R$string;->download_delete_tip:I

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "getString(...)"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, p0, v0}, Lgi/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Luh/d1;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Luh/d1;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lgi/b;->y(Lkotlin/jvm/functions/Function0;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lfi/a;->show()V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method private static final D0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;)Lkotlin/Unit;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->r:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;->e0()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->p0()Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;->C()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->t:Z

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->E0()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->T()V

    .line 29
    .line 30
    .line 31
    :cond_1
    sget-object p0, Lfk/u;->a:Lfk/u;

    .line 32
    .line 33
    sget v0, Lcom/startshorts/androidplayer/R$string;->download_delete_success:I

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static {p0, v0, v1, v2, v3}, Lfk/u;->j(Lfk/u;IIILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0
.end method

.method public static synthetic X(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;Lcom/startshorts/androidplayer/ui/activity/download/h;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->o0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;Lcom/startshorts/androidplayer/ui/activity/download/h;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Y(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->x0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Z(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->u0(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic a0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->A0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->C0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;)Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->n0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;)Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d0(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->w0(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;Ljava/lang/Long;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->s0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;Ljava/lang/Long;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->D0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->z0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h0(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->v0(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->B0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic j0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;)Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->r:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic k0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;)Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;

    .line 6
    .line 7
    return-object p0
.end method

.method public static final synthetic l0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->P()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic m0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->T()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final n0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;)Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;
    .locals 4

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;->D()Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Luh/g1;

    .line 19
    .line 20
    invoke-direct {v2, p0, v0}, Luh/g1;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$c;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method private static final o0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;Lcom/startshorts/androidplayer/ui/activity/download/h;)Lkotlin/Unit;
    .locals 7

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/ui/activity/download/h$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v4, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$downloadViewModel$2$1$1$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p0, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$downloadViewModel$2$1$1$1;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;Lcom/startshorts/androidplayer/ui/activity/download/h;Lrs/c;)V

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x3

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    instance-of p1, p2, Lcom/startshorts/androidplayer/ui/activity/download/h$a;

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    check-cast p2, Lcom/startshorts/androidplayer/ui/activity/download/h$a;

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/ui/activity/download/h$a;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getState()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/4 v0, 0x1

    .line 38
    if-ne p1, v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->V()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/ui/activity/download/h$a;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->W(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 56
    .line 57
    return-object p0
.end method

.method private final p0()Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->s:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final q0()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->p0()Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/download/g$a;

    .line 6
    .line 7
    iget v2, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->v:I

    .line 8
    .line 9
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/ui/activity/download/g$a;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;->H(Lcom/startshorts/androidplayer/ui/activity/download/g;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final r0()V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a:Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->M()Landroidx/lifecycle/MutableLiveData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Luh/v0;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Luh/v0;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$c;

    .line 13
    .line 14
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private static final s0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;Ljava/lang/Long;)Lkotlin/Unit;
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Luh/s;->e(J)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget v0, Lcom/startshorts/androidplayer/R$string;->download_remain_size:I

    .line 12
    .line 13
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "getString(...)"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Landroid/text/SpannableString;

    .line 27
    .line 28
    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 32
    .line 33
    sget v2, Lcom/startshorts/androidplayer/R$color;->download_storage_remain:I

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    const/16 v2, 0x21

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-virtual {v1, v0, v3, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;

    .line 57
    .line 58
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;->k:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 59
    .line 60
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 64
    .line 65
    return-object p0
.end method

.method private static final u0(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;I)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string p2, "info"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;->getDownloadInfo()Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDownloadState()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    if-eq p2, v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    if-eq p2, v0, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x3

    .line 23
    if-eq p2, v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x5

    .line 26
    if-eq p2, v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    sget-object p2, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a:Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;

    .line 30
    .line 31
    filled-new-array {p1}, [Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance v0, Luh/x0;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Luh/x0;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p1, v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->W(Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    sget-object p2, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a:Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;

    .line 49
    .line 50
    filled-new-array {p1}, [Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    new-instance v0, Luh/w0;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Luh/w0;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, p1, v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->Q(Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 67
    .line 68
    return-object p0
.end method

.method private static final v0(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;->f0()Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;->B()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method private static final w0(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;->f0()Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;->B()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method private static final x0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;I)Lkotlin/Unit;
    .locals 3

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->u:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 10
    .line 11
    if-lez p1, :cond_0

    .line 12
    .line 13
    sget v1, Lcom/startshorts/androidplayer/R$string;->download_deselect_all:I

    .line 14
    .line 15
    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    sget v1, Lcom/startshorts/androidplayer/R$string;->download_select_all:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;->j:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 33
    .line 34
    if-lez p1, :cond_1

    .line 35
    .line 36
    sget v1, Lcom/startshorts/androidplayer/R$string;->download_delete_num:I

    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    sget v1, Lcom/startshorts/androidplayer/R$string;->download_delete:I

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;->j:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 67
    .line 68
    if-lez p1, :cond_2

    .line 69
    .line 70
    sget p1, Lcom/startshorts/androidplayer/R$color;->download_delete_btn:I

    .line 71
    .line 72
    :goto_3
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    goto :goto_4

    .line 77
    :cond_2
    sget p1, Lcom/startshorts/androidplayer/R$color;->download_divider:I

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :goto_4
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    .line 82
    .line 83
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 84
    .line 85
    return-object p0
.end method

.method private final y0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;->h:Landroid/view/View;

    .line 8
    .line 9
    const-string v1, "toolbarView"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->J()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v0, v1}, Ljk/b0;->g(Landroid/view/View;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;->d:Landroid/widget/ImageView;

    .line 30
    .line 31
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$b;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$b;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;

    .line 44
    .line 45
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;->c:Landroid/widget/ImageView;

    .line 46
    .line 47
    new-instance v2, Luh/y0;

    .line 48
    .line 49
    invoke-direct {v2, p0}, Luh/y0;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;->i:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 56
    .line 57
    new-instance v2, Luh/z0;

    .line 58
    .line 59
    invoke-direct {v2, p0}, Luh/z0;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 66
    .line 67
    new-instance v2, Luh/a1;

    .line 68
    .line 69
    invoke-direct {v2, p0}, Luh/a1;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;->j:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 76
    .line 77
    new-instance v1, Luh/b1;

    .line 78
    .line 79
    invoke-direct {v1, p0}, Luh/b1;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->t0()V

    .line 86
    .line 87
    .line 88
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a:Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->f0()V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method private static final z0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->t:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->E0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final E0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;->c:Landroid/widget/ImageView;

    .line 8
    .line 9
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->t:Z

    .line 10
    .line 11
    const/16 v3, 0x8

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-nez v2, :cond_2

    .line 15
    .line 16
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->r:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/drake/brv/BindingAdapter;->getItemCount()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v2, v4

    .line 26
    :goto_0
    if-nez v2, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v2, v4

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    :goto_1
    move v2, v3

    .line 32
    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;->i:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 36
    .line 37
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->t:Z

    .line 38
    .line 39
    if-eqz v2, :cond_4

    .line 40
    .line 41
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->r:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;

    .line 42
    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/drake/brv/BindingAdapter;->getItemCount()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    goto :goto_3

    .line 50
    :cond_3
    move v2, v4

    .line 51
    :goto_3
    if-lez v2, :cond_4

    .line 52
    .line 53
    move v2, v4

    .line 54
    goto :goto_4

    .line 55
    :cond_4
    move v2, v3

    .line 56
    :goto_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;->j:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 60
    .line 61
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->t:Z

    .line 62
    .line 63
    if-eqz v2, :cond_6

    .line 64
    .line 65
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->r:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;

    .line 66
    .line 67
    if-eqz v2, :cond_5

    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/drake/brv/BindingAdapter;->getItemCount()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    goto :goto_5

    .line 74
    :cond_5
    move v2, v4

    .line 75
    :goto_5
    if-lez v2, :cond_6

    .line 76
    .line 77
    move v2, v4

    .line 78
    goto :goto_6

    .line 79
    :cond_6
    move v2, v3

    .line 80
    :goto_6
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 84
    .line 85
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->t:Z

    .line 86
    .line 87
    if-eqz v2, :cond_8

    .line 88
    .line 89
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->r:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;

    .line 90
    .line 91
    if-eqz v2, :cond_7

    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/drake/brv/BindingAdapter;->getItemCount()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    goto :goto_7

    .line 98
    :cond_7
    move v2, v4

    .line 99
    :goto_7
    if-lez v2, :cond_8

    .line 100
    .line 101
    move v2, v4

    .line 102
    goto :goto_8

    .line 103
    :cond_8
    move v2, v3

    .line 104
    :goto_8
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;->b:Landroid/view/View;

    .line 108
    .line 109
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->t:Z

    .line 110
    .line 111
    if-eqz v1, :cond_a

    .line 112
    .line 113
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->r:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;

    .line 114
    .line 115
    if-eqz v1, :cond_9

    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/drake/brv/BindingAdapter;->getItemCount()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    goto :goto_9

    .line 122
    :cond_9
    move v1, v4

    .line 123
    :goto_9
    if-lez v1, :cond_a

    .line 124
    .line 125
    move v3, v4

    .line 126
    :cond_a
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->r:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;

    .line 130
    .line 131
    if-eqz v0, :cond_b

    .line 132
    .line 133
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->t:Z

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;->d0(Z)V

    .line 136
    .line 137
    .line 138
    :cond_b
    return-void
.end method

.method public K()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->viewstub_download_empty:I

    .line 2
    .line 3
    return v0
.end method

.method public L()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$string;->download_empty:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getString(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final handleDownloadStateEvent(Lcom/startshorts/androidplayer/ui/activity/download/b;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/ui/activity/download/b;
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
    instance-of p1, p1, Lcom/startshorts/androidplayer/ui/activity/download/b$b;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public o()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->activity_download_manage:I

    .line 2
    .line 3
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
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
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "DRAMA_ID"

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->v:I

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->y0()V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->q0()V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->r0()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->r:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;->l0()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public q()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public r()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "DownloadDramaActivity"

    .line 2
    .line 3
    return-object v0
.end method

.method public final t0()V
    .locals 8

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->p0()Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;-><init>(Landroidx/lifecycle/LifecycleOwner;Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Luh/e1;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Luh/e1;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;->n0(Lkotlin/jvm/functions/Function2;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Luh/f1;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Luh/f1;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;->o0(Lkotlin/jvm/functions/Function1;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->r:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;

    .line 45
    .line 46
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 47
    .line 48
    const-string v0, "recyclerView"

    .line 49
    .line 50
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/16 v6, 0xf

    .line 54
    .line 55
    const/4 v7, 0x0

    .line 56
    const/4 v2, 0x0

    .line 57
    const/4 v3, 0x0

    .line 58
    const/4 v4, 0x0

    .line 59
    const/4 v5, 0x0

    .line 60
    invoke-static/range {v1 .. v7}, Lo1/b;->e(Landroidx/recyclerview/widget/RecyclerView;IZZZILjava/lang/Object;)Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->r:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
