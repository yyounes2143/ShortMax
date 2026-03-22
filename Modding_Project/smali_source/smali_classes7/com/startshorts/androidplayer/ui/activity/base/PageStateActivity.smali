.class public Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;
.super Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity;
.source "PageStateActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VDB:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity<",
        "TVDB;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final q:Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private p:Lcom/hades/aar/pagestate/StateViewGroup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->q:Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final init()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->p:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget v1, Lcom/startshorts/androidplayer/R$id;->page_state_view:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/hades/aar/pagestate/StateViewGroup;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->p:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity$b;

    .line 26
    .line 27
    invoke-direct {v1, v0, p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity$b;-><init>(Lcom/hades/aar/pagestate/StateViewGroup;Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/hades/aar/pagestate/StateViewGroup;->setMOnInflatedListener(Lla/a;)V

    .line 31
    .line 32
    .line 33
    sget v1, Lcom/startshorts/androidplayer/R$layout;->viewstub_page_state_loading:I

    .line 34
    .line 35
    sget-object v2, Lcom/hades/aar/pagestate/State;->LOADING:Lcom/hades/aar/pagestate/State;

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/hades/aar/pagestate/StateViewGroup;->f(ILcom/hades/aar/pagestate/State;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->K()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    sget-object v2, Lcom/hades/aar/pagestate/State;->EMPTY:Lcom/hades/aar/pagestate/State;

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/hades/aar/pagestate/StateViewGroup;->f(ILcom/hades/aar/pagestate/State;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->M()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    sget-object v2, Lcom/hades/aar/pagestate/State;->NETWORK_ERROR:Lcom/hades/aar/pagestate/State;

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/hades/aar/pagestate/StateViewGroup;->f(ILcom/hades/aar/pagestate/State;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->N()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    sget-object v2, Lcom/hades/aar/pagestate/State;->OTHER_ERROR:Lcom/hades/aar/pagestate/State;

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Lcom/hades/aar/pagestate/StateViewGroup;->f(ILcom/hades/aar/pagestate/State;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->U()V

    .line 68
    .line 69
    .line 70
    return-void
.end method


# virtual methods
.method public K()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->viewstub_page_state_empty:I

    .line 2
    .line 3
    return v0
.end method

.method public L()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$string;->common_data_empty:I

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

.method public M()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->viewstub_page_state_network_error:I

    .line 2
    .line 3
    return v0
.end method

.method public N()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->viewstub_page_state_other_error:I

    .line 2
    .line 3
    return v0
.end method

.method protected final O()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->p:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/hades/aar/pagestate/State;->EMPTY:Lcom/hades/aar/pagestate/State;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/hades/aar/pagestate/StateViewGroup;->c(Lcom/hades/aar/pagestate/State;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method protected final P()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->p:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/hades/aar/pagestate/State;->LOADING:Lcom/hades/aar/pagestate/State;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/hades/aar/pagestate/StateViewGroup;->c(Lcom/hades/aar/pagestate/State;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method protected final Q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->p:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/hades/aar/pagestate/State;->NETWORK_ERROR:Lcom/hades/aar/pagestate/State;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/hades/aar/pagestate/StateViewGroup;->c(Lcom/hades/aar/pagestate/State;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method protected final R()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->p:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/hades/aar/pagestate/State;->OTHER_ERROR:Lcom/hades/aar/pagestate/State;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/hades/aar/pagestate/StateViewGroup;->c(Lcom/hades/aar/pagestate/State;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public S()V
    .locals 0

    .line 1
    return-void
.end method

.method protected final T()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->p:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/hades/aar/pagestate/State;->EMPTY:Lcom/hades/aar/pagestate/State;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/hades/aar/pagestate/StateViewGroup;->h(Lcom/hades/aar/pagestate/State;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public U()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->p:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/hades/aar/pagestate/State;->LOADING:Lcom/hades/aar/pagestate/State;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/hades/aar/pagestate/StateViewGroup;->h(Lcom/hades/aar/pagestate/State;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method protected final V()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->p:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/hades/aar/pagestate/State;->NETWORK_ERROR:Lcom/hades/aar/pagestate/State;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/hades/aar/pagestate/StateViewGroup;->h(Lcom/hades/aar/pagestate/State;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method protected final W(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->p:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    sget-object v1, Lcom/hades/aar/pagestate/State;->OTHER_ERROR:Lcom/hades/aar/pagestate/State;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/hades/aar/pagestate/StateViewGroup;->h(Lcom/hades/aar/pagestate/State;)V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {v0, v1}, Lcom/hades/aar/pagestate/StateViewGroup;->a(Lcom/hades/aar/pagestate/State;)Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lla/b;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object v0, v1

    .line 34
    :goto_0
    instance-of v2, v0, Lcom/startshorts/androidplayer/ui/view/pagestate/SOtherErrorView;

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    move-object v1, v0

    .line 39
    check-cast v1, Lcom/startshorts/androidplayer/ui/view/pagestate/SOtherErrorView;

    .line 40
    .line 41
    :cond_2
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/ui/view/pagestate/SOtherErrorView;->w(Ljava/lang/String;)Lcom/startshorts/androidplayer/ui/view/pagestate/SOtherErrorView;

    .line 44
    .line 45
    .line 46
    :cond_3
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->init()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->p:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/hades/aar/pagestate/StateViewGroup;->d()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->p:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/hades/aar/pagestate/StateViewGroup;->e()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "PageStateActivity"

    .line 2
    .line 3
    return-object v0
.end method

.method public v()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->v()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->p:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/hades/aar/pagestate/StateViewGroup;->g()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->p:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 13
    .line 14
    return-void
.end method
