.class public final Landroidx/navigation/NavOptionsBuilder;
.super Ljava/lang/Object;
.source "NavOptionsBuilder.kt"


# annotations
.annotation runtime Landroidx/navigation/NavOptionsDsl;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final builder:Landroidx/navigation/NavOptions$Builder;

.field private inclusive:Z

.field private launchSingleTop:Z

.field private popUpTo:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/navigation/NavOptions$Builder;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/navigation/NavOptions$Builder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/navigation/NavOptionsBuilder;->builder:Landroidx/navigation/NavOptions$Builder;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Landroidx/navigation/NavOptionsBuilder;->popUpTo:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final anim(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/AnimBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "animBuilder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/navigation/AnimBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/navigation/AnimBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Landroidx/navigation/NavOptionsBuilder;->builder:Landroidx/navigation/NavOptions$Builder;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/navigation/AnimBuilder;->getEnter()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1, v1}, Landroidx/navigation/NavOptions$Builder;->setEnterAnim(I)Landroidx/navigation/NavOptions$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0}, Landroidx/navigation/AnimBuilder;->getExit()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {p1, v1}, Landroidx/navigation/NavOptions$Builder;->setExitAnim(I)Landroidx/navigation/NavOptions$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0}, Landroidx/navigation/AnimBuilder;->getPopEnter()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {p1, v1}, Landroidx/navigation/NavOptions$Builder;->setPopEnterAnim(I)Landroidx/navigation/NavOptions$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v0}, Landroidx/navigation/AnimBuilder;->getPopExit()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-virtual {p1, v0}, Landroidx/navigation/NavOptions$Builder;->setPopExitAnim(I)Landroidx/navigation/NavOptions$Builder;

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final build$navigation_common_ktx_release()Landroidx/navigation/NavOptions;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavOptionsBuilder;->builder:Landroidx/navigation/NavOptions$Builder;

    .line 2
    .line 3
    iget-boolean v1, p0, Landroidx/navigation/NavOptionsBuilder;->launchSingleTop:Z

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/navigation/NavOptions$Builder;->setLaunchSingleTop(Z)Landroidx/navigation/NavOptions$Builder;

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroidx/navigation/NavOptionsBuilder;->popUpTo:I

    .line 9
    .line 10
    iget-boolean v2, p0, Landroidx/navigation/NavOptionsBuilder;->inclusive:Z

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroidx/navigation/NavOptions$Builder;->setPopUpTo(IZ)Landroidx/navigation/NavOptions$Builder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/navigation/NavOptions$Builder;->build()Landroidx/navigation/NavOptions;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "builder.apply {\n        \u2026 inclusive)\n    }.build()"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public final getLaunchSingleTop()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/navigation/NavOptionsBuilder;->launchSingleTop:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getPopUpTo()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/navigation/NavOptionsBuilder;->popUpTo:I

    .line 2
    .line 3
    return v0
.end method

.method public final popUpTo(ILkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/PopUpToBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "popUpToBuilder"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/navigation/NavOptionsBuilder;->setPopUpTo(I)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Landroidx/navigation/PopUpToBuilder;

    .line 10
    .line 11
    invoke-direct {p1}, Landroidx/navigation/PopUpToBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/navigation/PopUpToBuilder;->getInclusive()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput-boolean p1, p0, Landroidx/navigation/NavOptionsBuilder;->inclusive:Z

    .line 22
    .line 23
    return-void
.end method

.method public final setLaunchSingleTop(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/navigation/NavOptionsBuilder;->launchSingleTop:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setPopUpTo(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/navigation/NavOptionsBuilder;->popUpTo:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroidx/navigation/NavOptionsBuilder;->inclusive:Z

    .line 5
    .line 6
    return-void
.end method
