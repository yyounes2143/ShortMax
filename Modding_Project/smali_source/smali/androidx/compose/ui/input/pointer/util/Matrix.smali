.class final Landroidx/compose/ui/input/pointer/util/Matrix;
.super Ljava/lang/Object;
.source "VelocityTracker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final elements:[Landroidx/compose/ui/input/pointer/util/Vector;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-array v0, p1, [Landroidx/compose/ui/input/pointer/util/Vector;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    if-ge v1, p1, :cond_0

    .line 8
    .line 9
    new-instance v2, Landroidx/compose/ui/input/pointer/util/Vector;

    .line 10
    .line 11
    invoke-direct {v2, p2}, Landroidx/compose/ui/input/pointer/util/Vector;-><init>(I)V

    .line 12
    .line 13
    .line 14
    aput-object v2, v0, v1

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput-object v0, p0, Landroidx/compose/ui/input/pointer/util/Matrix;->elements:[Landroidx/compose/ui/input/pointer/util/Vector;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final get(II)F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/util/Matrix;->elements:[Landroidx/compose/ui/input/pointer/util/Vector;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroidx/compose/ui/input/pointer/util/Vector;->get(I)F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final getRow(I)Landroidx/compose/ui/input/pointer/util/Vector;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/util/Matrix;->elements:[Landroidx/compose/ui/input/pointer/util/Vector;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    return-object p1
.end method

.method public final set(IIF)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/util/Matrix;->elements:[Landroidx/compose/ui/input/pointer/util/Vector;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    invoke-virtual {p1, p2, p3}, Landroidx/compose/ui/input/pointer/util/Vector;->set(IF)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
