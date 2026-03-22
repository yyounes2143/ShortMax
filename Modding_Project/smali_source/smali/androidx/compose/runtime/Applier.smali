.class public interface abstract Landroidx/compose/runtime/Applier;
.super Ljava/lang/Object;
.source "Applier.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/Applier$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static synthetic access$apply$jd(Landroidx/compose/runtime/Applier;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/compose/runtime/Applier;->apply(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$onBeginChanges$jd(Landroidx/compose/runtime/Applier;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/compose/runtime/Applier;->onBeginChanges()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$onEndChanges$jd(Landroidx/compose/runtime/Applier;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/compose/runtime/Applier;->onEndChanges()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$reuse$jd(Landroidx/compose/runtime/Applier;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/compose/runtime/Applier;->reuse()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public apply(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-TN;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/Applier;->getCurrent()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1, v0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public abstract clear()V
.end method

.method public abstract down(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation
.end method

.method public abstract getCurrent()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation
.end method

.method public abstract insertBottomUp(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITN;)V"
        }
    .end annotation
.end method

.method public abstract insertTopDown(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITN;)V"
        }
    .end annotation
.end method

.method public abstract move(III)V
.end method

.method public onBeginChanges()V
    .locals 0

    .line 1
    return-void
.end method

.method public onEndChanges()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract remove(II)V
.end method

.method public reuse()V
    .locals 2

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/Applier;->getCurrent()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;->onReuse()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public abstract up()V
.end method
