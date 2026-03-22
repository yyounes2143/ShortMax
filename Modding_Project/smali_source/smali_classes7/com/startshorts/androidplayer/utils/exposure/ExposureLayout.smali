.class public final Lcom/startshorts/androidplayer/utils/exposure/ExposureLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "ExposureLayout.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lik/b;

    invoke-direct {p1, p0}, Lik/b;-><init>(Lcom/startshorts/androidplayer/utils/exposure/ExposureLayout;)V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    move-result-object p1

    iput-object p1, p0, Lcom/startshorts/androidplayer/utils/exposure/ExposureLayout;->a:Lms/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Lik/b;

    invoke-direct {p1, p0}, Lik/b;-><init>(Lcom/startshorts/androidplayer/utils/exposure/ExposureLayout;)V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    move-result-object p1

    iput-object p1, p0, Lcom/startshorts/androidplayer/utils/exposure/ExposureLayout;->a:Lms/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    new-instance p1, Lik/b;

    invoke-direct {p1, p0}, Lik/b;-><init>(Lcom/startshorts/androidplayer/utils/exposure/ExposureLayout;)V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    move-result-object p1

    iput-object p1, p0, Lcom/startshorts/androidplayer/utils/exposure/ExposureLayout;->a:Lms/i;

    return-void
.end method

.method private final getMExposureHandler()Lik/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/utils/exposure/ExposureLayout;->a:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lik/a;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic q(Lcom/startshorts/androidplayer/utils/exposure/ExposureLayout;)Lik/a;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/utils/exposure/ExposureLayout;->r(Lcom/startshorts/androidplayer/utils/exposure/ExposureLayout;)Lik/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final r(Lcom/startshorts/androidplayer/utils/exposure/ExposureLayout;)Lik/a;
    .locals 1

    .line 1
    new-instance v0, Lik/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lik/a;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/utils/exposure/ExposureLayout;->getMExposureHandler()Lik/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lik/a;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/utils/exposure/ExposureLayout;->getMExposureHandler()Lik/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lik/a;->b()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/utils/exposure/ExposureLayout;->getMExposureHandler()Lik/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lik/a;->c(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/utils/exposure/ExposureLayout;->getMExposureHandler()Lik/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lik/a;->d(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setExposureCallback(Lik/c;)V
    .locals 1
    .param p1    # Lik/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/utils/exposure/ExposureLayout;->getMExposureHandler()Lik/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lik/a;->e(Lik/c;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final setIsLog(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/utils/exposure/ExposureLayout;->getMExposureHandler()Lik/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lik/a;->f(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setShowRatio(F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/utils/exposure/ExposureLayout;->getMExposureHandler()Lik/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lik/a;->g(F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setTimeLimit(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/utils/exposure/ExposureLayout;->getMExposureHandler()Lik/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lik/a;->h(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
