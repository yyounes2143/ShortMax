.class final Landroidx/compose/runtime/Invalidation;
.super Ljava/lang/Object;
.source "Composer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private instances:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private location:I

.field private final scope:Landroidx/compose/runtime/RecomposeScopeImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILjava/lang/Object;)V
    .locals 0
    .param p1    # Landroidx/compose/runtime/RecomposeScopeImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/Invalidation;->scope:Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/runtime/Invalidation;->location:I

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/runtime/Invalidation;->instances:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getInstances()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Invalidation;->instances:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLocation()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/Invalidation;->location:I

    .line 2
    .line 3
    return v0
.end method

.method public final getScope()Landroidx/compose/runtime/RecomposeScopeImpl;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Invalidation;->scope:Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isInvalid()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Invalidation;->scope:Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/runtime/Invalidation;->instances:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->isInvalidFor(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final setInstances(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/Invalidation;->instances:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public final setLocation(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/runtime/Invalidation;->location:I

    .line 2
    .line 3
    return-void
.end method
