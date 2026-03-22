.class public Landroidx/navigation/NavGraphBuilder;
.super Landroidx/navigation/NavDestinationBuilder;
.source "NavGraphBuilder.kt"


# annotations
.annotation runtime Landroidx/navigation/NavDestinationDsl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/NavDestinationBuilder<",
        "Landroidx/navigation/NavGraph;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final destinations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/navigation/NavDestination;",
            ">;"
        }
    .end annotation
.end field

.field private final provider:Landroidx/navigation/NavigatorProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private startDestination:I


# direct methods
.method public constructor <init>(Landroidx/navigation/NavigatorProvider;II)V
    .locals 2
    .param p1    # Landroidx/navigation/NavigatorProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    const-string v0, "provider"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroidx/navigation/NavGraphNavigator;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "getNavigator(clazz.java)"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0, p2}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;I)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Landroidx/navigation/NavGraphBuilder;->provider:Landroidx/navigation/NavigatorProvider;

    .line 21
    .line 22
    iput p3, p0, Landroidx/navigation/NavGraphBuilder;->startDestination:I

    .line 23
    .line 24
    new-instance p1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Landroidx/navigation/NavGraphBuilder;->destinations:Ljava/util/List;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final addDestination(Landroidx/navigation/NavDestination;)V
    .locals 1
    .param p1    # Landroidx/navigation/NavDestination;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "destination"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/navigation/NavGraphBuilder;->destinations:Ljava/util/List;

    .line 7
    .line 8
    check-cast v0, Ljava/util/Collection;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public bridge synthetic build()Landroidx/navigation/NavDestination;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/navigation/NavGraphBuilder;->build()Landroidx/navigation/NavGraph;

    move-result-object v0

    return-object v0
.end method

.method public build()Landroidx/navigation/NavGraph;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-super {p0}, Landroidx/navigation/NavDestinationBuilder;->build()Landroidx/navigation/NavDestination;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavGraph;

    .line 3
    iget-object v1, p0, Landroidx/navigation/NavGraphBuilder;->destinations:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Landroidx/navigation/NavGraph;->addDestinations(Ljava/util/Collection;)V

    .line 4
    iget v1, p0, Landroidx/navigation/NavGraphBuilder;->startDestination:I

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Landroidx/navigation/NavGraph;->setStartDestination(I)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must set a startDestination"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final destination(Landroidx/navigation/NavDestinationBuilder;)V
    .locals 1
    .param p1    # Landroidx/navigation/NavDestinationBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Landroidx/navigation/NavDestination;",
            ">(",
            "Landroidx/navigation/NavDestinationBuilder<",
            "+TD;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "navDestination"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/navigation/NavGraphBuilder;->destinations:Ljava/util/List;

    .line 7
    .line 8
    check-cast v0, Ljava/util/Collection;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/navigation/NavDestinationBuilder;->build()Landroidx/navigation/NavDestination;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final getProvider()Landroidx/navigation/NavigatorProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavGraphBuilder;->provider:Landroidx/navigation/NavigatorProvider;

    .line 2
    .line 3
    return-object v0
.end method

.method public final unaryPlus(Landroidx/navigation/NavDestination;)V
    .locals 1
    .param p1    # Landroidx/navigation/NavDestination;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "$this$unaryPlus"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/navigation/NavGraphBuilder;->addDestination(Landroidx/navigation/NavDestination;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
