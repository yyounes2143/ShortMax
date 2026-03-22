.class final Landroidx/compose/ui/input/pointer/util/Vector;
.super Ljava/lang/Object;
.source "VelocityTracker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final elements:[Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final length:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/ui/input/pointer/util/Vector;->length:I

    .line 5
    .line 6
    new-array v0, p1, [Ljava/lang/Float;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, p1, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    aput-object v2, v0, v1

    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput-object v0, p0, Landroidx/compose/ui/input/pointer/util/Vector;->elements:[Ljava/lang/Float;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final get(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/util/Vector;->elements:[Ljava/lang/Float;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final getElements()[Ljava/lang/Float;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/util/Vector;->elements:[Ljava/lang/Float;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLength()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/input/pointer/util/Vector;->length:I

    .line 2
    .line 3
    return v0
.end method

.method public final norm()F
    .locals 2

    .line 1
    invoke-virtual {p0, p0}, Landroidx/compose/ui/input/pointer/util/Vector;->times(Landroidx/compose/ui/input/pointer/util/Vector;)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    float-to-double v0, v0

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    double-to-float v0, v0

    .line 11
    return v0
.end method

.method public final set(IF)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/util/Vector;->elements:[Ljava/lang/Float;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    aput-object p2, v0, p1

    .line 8
    .line 9
    return-void
.end method

.method public final times(Landroidx/compose/ui/input/pointer/util/Vector;)F
    .locals 5
    .param p1    # Landroidx/compose/ui/input/pointer/util/Vector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "a"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroidx/compose/ui/input/pointer/util/Vector;->length:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Landroidx/compose/ui/input/pointer/util/Vector;->get(I)F

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-virtual {p1, v2}, Landroidx/compose/ui/input/pointer/util/Vector;->get(I)F

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    mul-float/2addr v3, v4

    .line 21
    add-float/2addr v1, v3

    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return v1
.end method
