.class final Landroidx/compose/foundation/text/selection/ClicksCounter;
.super Ljava/lang/Object;
.source "TextSelectionMouseDetector.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private clicks:I

.field private prevClick:Landroidx/compose/ui/input/pointer/PointerInputChange;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/ViewConfiguration;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/platform/ViewConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "viewConfiguration"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/ClicksCounter;->viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getClicks()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/text/selection/ClicksCounter;->clicks:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPrevClick()Landroidx/compose/ui/input/pointer/PointerInputChange;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/ClicksCounter;->prevClick:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 2
    .line 3
    return-object v0
.end method

.method public final positionIsTolerable(Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/input/pointer/PointerInputChange;)Z
    .locals 2
    .param p1    # Landroidx/compose/ui/input/pointer/PointerInputChange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/input/pointer/PointerInputChange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "prevClick"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "newClick"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    float-to-double p1, p1

    .line 28
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 29
    .line 30
    cmpg-double p1, p1, v0

    .line 31
    .line 32
    if-gez p1, :cond_0

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    :goto_0
    return p1
.end method

.method public final setClicks(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/foundation/text/selection/ClicksCounter;->clicks:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPrevClick(Landroidx/compose/ui/input/pointer/PointerInputChange;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/input/pointer/PointerInputChange;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/ClicksCounter;->prevClick:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 2
    .line 3
    return-void
.end method

.method public final timeIsTolerable(Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/input/pointer/PointerInputChange;)Z
    .locals 2
    .param p1    # Landroidx/compose/ui/input/pointer/PointerInputChange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/input/pointer/PointerInputChange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "prevClick"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "newClick"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getUptimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getUptimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    sub-long/2addr v0, p1

    .line 20
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/ClicksCounter;->viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    .line 21
    .line 22
    invoke-interface {p1}, Landroidx/compose/ui/platform/ViewConfiguration;->getDoubleTapTimeoutMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    cmp-long p1, v0, p1

    .line 27
    .line 28
    if-gez p1, :cond_0

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    :goto_0
    return p1
.end method

.method public final update(Landroidx/compose/ui/input/pointer/PointerEvent;)V
    .locals 3
    .param p1    # Landroidx/compose/ui/input/pointer/PointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/ClicksCounter;->prevClick:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, v0, p1}, Landroidx/compose/foundation/text/selection/ClicksCounter;->timeIsTolerable(Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0, v0, p1}, Landroidx/compose/foundation/text/selection/ClicksCounter;->positionIsTolerable(Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget v0, p0, Landroidx/compose/foundation/text/selection/ClicksCounter;->clicks:I

    .line 35
    .line 36
    add-int/2addr v0, v1

    .line 37
    iput v0, p0, Landroidx/compose/foundation/text/selection/ClicksCounter;->clicks:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iput v1, p0, Landroidx/compose/foundation/text/selection/ClicksCounter;->clicks:I

    .line 41
    .line 42
    :goto_0
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/ClicksCounter;->prevClick:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 43
    .line 44
    return-void
.end method
