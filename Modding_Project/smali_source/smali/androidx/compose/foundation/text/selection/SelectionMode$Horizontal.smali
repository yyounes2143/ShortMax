.class final Landroidx/compose/foundation/text/selection/SelectionMode$Horizontal;
.super Landroidx/compose/foundation/text/selection/SelectionMode;
.source "SelectionMode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/text/selection/SelectionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Horizontal"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/foundation/text/selection/SelectionMode;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public compare-3MmeM6k$foundation_release(JLandroidx/compose/ui/geometry/Rect;)I
    .locals 3
    .param p3    # Landroidx/compose/ui/geometry/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bounds"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, p1, p2}, Landroidx/compose/ui/geometry/Rect;->contains-k-4lQ0M(J)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p3}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    cmpg-float v0, v0, v1

    .line 23
    .line 24
    const/4 v1, -0x1

    .line 25
    if-gez v0, :cond_1

    .line 26
    .line 27
    return v1

    .line 28
    :cond_1
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p3}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    cmpg-float v0, v0, v2

    .line 37
    .line 38
    if-gez v0, :cond_2

    .line 39
    .line 40
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-virtual {p3}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    cmpg-float p1, p1, p2

    .line 49
    .line 50
    if-gez p1, :cond_2

    .line 51
    .line 52
    return v1

    .line 53
    :cond_2
    const/4 p1, 0x1

    .line 54
    return p1
.end method
