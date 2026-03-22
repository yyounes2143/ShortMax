.class public final Landroidx/compose/foundation/text/selection/SelectionHandlesKt;
.super Ljava/lang/Object;
.source "SelectionHandles.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final HandleHeight:F

.field private static final HandleWidth:F

.field private static final SelectionHandleInfoKey:Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/semantics/SemanticsPropertyKey<",
            "Landroidx/compose/foundation/text/selection/SelectionHandleInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0x19

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    sput v1, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->HandleWidth:F

    .line 9
    .line 10
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sput v0, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->HandleHeight:F

    .line 15
    .line 16
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x2

    .line 20
    const-string v3, "SelectionHandleInfo"

    .line 21
    .line 22
    invoke-direct {v0, v3, v1, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->SelectionHandleInfoKey:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 26
    .line 27
    return-void
.end method

.method public static final getAdjustedCoordinates-k-4lQ0M(J)J
    .locals 1

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/high16 p1, 0x3f800000    # 1.0f

    .line 10
    .line 11
    sub-float/2addr p0, p1

    .line 12
    invoke-static {v0, p0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 13
    .line 14
    .line 15
    move-result-wide p0

    .line 16
    return-wide p0
.end method

.method public static final getHandleHeight()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->HandleHeight:F

    .line 2
    .line 3
    return v0
.end method

.method public static final getHandleWidth()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->HandleWidth:F

    .line 2
    .line 3
    return v0
.end method

.method public static final getSelectionHandleInfoKey()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/semantics/SemanticsPropertyKey<",
            "Landroidx/compose/foundation/text/selection/SelectionHandleInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->SelectionHandleInfoKey:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2
    .line 3
    return-object v0
.end method
