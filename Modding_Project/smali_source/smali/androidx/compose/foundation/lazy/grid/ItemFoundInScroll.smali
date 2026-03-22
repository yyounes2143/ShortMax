.class final Landroidx/compose/foundation/lazy/grid/ItemFoundInScroll;
.super Ljava/util/concurrent/CancellationException;
.source "LazyGridScrolling.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final item:Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final previousAnimation:Landroidx/compose/animation/core/AnimationState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationState<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Landroidx/compose/animation/core/AnimationState;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/animation/core/AnimationState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;",
            "Landroidx/compose/animation/core/AnimationState<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "previousAnimation"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/util/concurrent/CancellationException;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/ItemFoundInScroll;->item:Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 15
    .line 16
    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/ItemFoundInScroll;->previousAnimation:Landroidx/compose/animation/core/AnimationState;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getItem()Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/ItemFoundInScroll;->item:Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPreviousAnimation()Landroidx/compose/animation/core/AnimationState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/AnimationState<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/ItemFoundInScroll;->previousAnimation:Landroidx/compose/animation/core/AnimationState;

    .line 2
    .line 3
    return-object v0
.end method
