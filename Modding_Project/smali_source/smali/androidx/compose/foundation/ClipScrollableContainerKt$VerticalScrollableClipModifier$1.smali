.class public final Landroidx/compose/foundation/ClipScrollableContainerKt$VerticalScrollableClipModifier$1;
.super Ljava/lang/Object;
.source "ClipScrollableContainer.kt"

# interfaces
.implements Landroidx/compose/ui/graphics/Shape;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/ClipScrollableContainerKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;
    .locals 3
    .param p3    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "layoutDirection"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "density"

    .line 7
    .line 8
    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroidx/compose/foundation/ClipScrollableContainerKt;->getMaxSupportedElevation()F

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    invoke-interface {p4, p3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    int-to-float p3, p3

    .line 20
    new-instance p4, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 21
    .line 22
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    .line 23
    .line 24
    neg-float v1, p3

    .line 25
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    add-float/2addr v2, p3

    .line 30
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const/4 p2, 0x0

    .line 35
    invoke-direct {v0, v1, p2, v2, p1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p4, v0}, Landroidx/compose/ui/graphics/Outline$Rectangle;-><init>(Landroidx/compose/ui/geometry/Rect;)V

    .line 39
    .line 40
    .line 41
    return-object p4
.end method
