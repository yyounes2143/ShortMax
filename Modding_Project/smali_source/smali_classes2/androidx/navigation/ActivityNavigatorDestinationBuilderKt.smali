.class public final Landroidx/navigation/ActivityNavigatorDestinationBuilderKt;
.super Ljava/lang/Object;
.source "ActivityNavigatorDestinationBuilder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final activity(Landroidx/navigation/NavGraphBuilder;ILkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p0    # Landroidx/navigation/NavGraphBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
            "(",
            "Landroidx/navigation/NavGraphBuilder;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/ActivityNavigatorDestinationBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "$this$activity"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "builder"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/navigation/NavGraphBuilder;->getProvider()Landroidx/navigation/NavigatorProvider;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-class v1, Landroidx/navigation/ActivityNavigator;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "getNavigator(clazz.java)"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    check-cast v0, Landroidx/navigation/ActivityNavigator;

    .line 27
    .line 28
    new-instance v1, Landroidx/navigation/ActivityNavigatorDestinationBuilder;

    .line 29
    .line 30
    invoke-direct {v1, v0, p1}, Landroidx/navigation/ActivityNavigatorDestinationBuilder;-><init>(Landroidx/navigation/ActivityNavigator;I)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Landroidx/navigation/NavGraphBuilder;->destination(Landroidx/navigation/NavDestinationBuilder;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
