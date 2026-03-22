.class public final Landroidx/compose/runtime/OffsetApplier;
.super Ljava/lang/Object;
.source "Applier.kt"

# interfaces
.implements Landroidx/compose/runtime/Applier;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/Applier<",
        "TN;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nApplier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Applier.kt\nandroidx/compose/runtime/OffsetApplier\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,297:1\n4788#2,4:298\n*S KotlinDebug\n*F\n+ 1 Applier.kt\nandroidx/compose/runtime/OffsetApplier\n*L\n263#1:298,4\n*E\n"
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final applier:Landroidx/compose/runtime/Applier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/Applier<",
            "TN;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private nesting:I

.field private final offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/Applier;I)V
    .locals 0
    .param p1    # Landroidx/compose/runtime/Applier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Applier<",
            "TN;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Landroidx/compose/runtime/Applier;

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/runtime/OffsetApplier;->offset:I

    .line 7
    .line 8
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
    iget-object v0, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Landroidx/compose/runtime/Applier;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroidx/compose/runtime/Applier;->apply(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    const-string v0, "Clear is not valid on OffsetApplier"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public down(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Landroidx/compose/runtime/Applier;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroidx/compose/runtime/Applier;->down(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public getCurrent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Landroidx/compose/runtime/Applier;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/Applier;->getCurrent()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public insertBottomUp(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITN;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Landroidx/compose/runtime/Applier;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget v1, p0, Landroidx/compose/runtime/OffsetApplier;->offset:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    add-int/2addr p1, v1

    .line 12
    invoke-interface {v0, p1, p2}, Landroidx/compose/runtime/Applier;->insertBottomUp(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public insertTopDown(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITN;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Landroidx/compose/runtime/Applier;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget v1, p0, Landroidx/compose/runtime/OffsetApplier;->offset:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    add-int/2addr p1, v1

    .line 12
    invoke-interface {v0, p1, p2}, Landroidx/compose/runtime/Applier;->insertTopDown(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public move(III)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroidx/compose/runtime/OffsetApplier;->offset:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v1, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Landroidx/compose/runtime/Applier;

    .line 10
    .line 11
    add-int/2addr p1, v0

    .line 12
    add-int/2addr p2, v0

    .line 13
    invoke-interface {v1, p1, p2, p3}, Landroidx/compose/runtime/Applier;->move(III)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public remove(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Landroidx/compose/runtime/Applier;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget v1, p0, Landroidx/compose/runtime/OffsetApplier;->offset:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    add-int/2addr p1, v1

    .line 12
    invoke-interface {v0, p1, p2}, Landroidx/compose/runtime/Applier;->remove(II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public reuse()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Landroidx/compose/runtime/Applier;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/Applier;->reuse()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public up()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-nez v0, :cond_1

    .line 9
    .line 10
    const-string v0, "OffsetApplier up called with no corresponding down"

    .line 11
    .line 12
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget v0, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    .line 16
    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    iput v0, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Landroidx/compose/runtime/Applier;

    .line 22
    .line 23
    invoke-interface {v0}, Landroidx/compose/runtime/Applier;->up()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
