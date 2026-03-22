.class public Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "StateDialogFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:Lcom/hades/aar/pagestate/StateViewGroup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final e()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->viewstub_download_empty:I

    .line 2
    .line 3
    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$string;->common_data_empty:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

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

.method protected final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;->a:Lcom/hades/aar/pagestate/StateViewGroup;

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

.method public h()V
    .locals 0

    .line 1
    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;->a:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/hades/aar/pagestate/StateViewGroup;->g()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;->a:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 10
    .line 11
    return-void
.end method

.method public j()V
    .locals 0

    .line 1
    return-void
.end method

.method public final k(Lcom/hades/aar/pagestate/StateViewGroup;)V
    .locals 2
    .param p1    # Lcom/hades/aar/pagestate/StateViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;->a:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 7
    .line 8
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment$a;

    .line 9
    .line 10
    invoke-direct {v0, p1, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment$a;-><init>(Lcom/hades/aar/pagestate/StateViewGroup;Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/hades/aar/pagestate/StateViewGroup;->setMOnInflatedListener(Lla/a;)V

    .line 14
    .line 15
    .line 16
    sget v0, Lcom/startshorts/androidplayer/R$layout;->viewstub_page_state_loading:I

    .line 17
    .line 18
    sget-object v1, Lcom/hades/aar/pagestate/State;->LOADING:Lcom/hades/aar/pagestate/State;

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/hades/aar/pagestate/StateViewGroup;->f(ILcom/hades/aar/pagestate/State;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;->e()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    sget-object v1, Lcom/hades/aar/pagestate/State;->EMPTY:Lcom/hades/aar/pagestate/State;

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Lcom/hades/aar/pagestate/StateViewGroup;->f(ILcom/hades/aar/pagestate/State;)V

    .line 30
    .line 31
    .line 32
    sget v0, Lcom/startshorts/androidplayer/R$layout;->viewstub_page_state_network_error:I

    .line 33
    .line 34
    sget-object v1, Lcom/hades/aar/pagestate/State;->NETWORK_ERROR:Lcom/hades/aar/pagestate/State;

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Lcom/hades/aar/pagestate/StateViewGroup;->f(ILcom/hades/aar/pagestate/State;)V

    .line 37
    .line 38
    .line 39
    sget v0, Lcom/startshorts/androidplayer/R$layout;->viewstub_page_state_other_error:I

    .line 40
    .line 41
    sget-object v1, Lcom/hades/aar/pagestate/State;->OTHER_ERROR:Lcom/hades/aar/pagestate/State;

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Lcom/hades/aar/pagestate/StateViewGroup;->f(ILcom/hades/aar/pagestate/State;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;->a:Lcom/hades/aar/pagestate/StateViewGroup;

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

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;->i()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;->a:Lcom/hades/aar/pagestate/StateViewGroup;

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

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;->a:Lcom/hades/aar/pagestate/StateViewGroup;

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
