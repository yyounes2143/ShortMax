.class public final Lcom/drake/statelayout/StateUtilsKt$stateCreate$1;
.super Ljava/lang/Object;
.source "StateUtils.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/drake/statelayout/StateLayout;

.field final synthetic b:Landroidx/fragment/app/Fragment;


# virtual methods
.method public final removeState()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/drake/statelayout/StateUtilsKt$stateCreate$1;->a:Lcom/drake/statelayout/StateLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroid/view/ViewGroup;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/drake/statelayout/StateUtilsKt$stateCreate$1;->a:Lcom/drake/statelayout/StateLayout;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/drake/statelayout/StateUtilsKt$stateCreate$1;->b:Landroidx/fragment/app/Fragment;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 27
    .line 28
    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0
.end method
