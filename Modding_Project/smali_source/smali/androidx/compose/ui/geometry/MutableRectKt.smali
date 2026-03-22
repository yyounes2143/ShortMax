.class public final Landroidx/compose/ui/geometry/MutableRectKt;
.super Ljava/lang/Object;
.source "MutableRect.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final toRect(Landroidx/compose/ui/geometry/MutableRect;)Landroidx/compose/ui/geometry/Rect;
    .locals 4
    .param p0    # Landroidx/compose/ui/geometry/MutableRect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/MutableRect;->getLeft()F

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/MutableRect;->getTop()F

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/MutableRect;->getRight()F

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/MutableRect;->getBottom()F

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method
