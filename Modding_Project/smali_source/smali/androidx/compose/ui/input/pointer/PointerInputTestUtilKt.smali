.class public final Landroidx/compose/ui/input/pointer/PointerInputTestUtilKt;
.super Ljava/lang/Object;
.source "PointerInputTestUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final down(JJFF)Landroidx/compose/ui/input/pointer/PointerInputChange;
    .locals 20
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-wide/from16 v3, p2

    .line 2
    .line 3
    move-wide/from16 v8, p2

    .line 4
    .line 5
    new-instance v19, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 6
    .line 7
    move-object/from16 v0, v19

    .line 8
    .line 9
    invoke-static/range {p0 .. p1}, Landroidx/compose/ui/input/pointer/PointerId;->constructor-impl(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 14
    .line 15
    .line 16
    move-result-wide v5

    .line 17
    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 18
    .line 19
    .line 20
    move-result-wide v10

    .line 21
    const/16 v17, 0x300

    .line 22
    .line 23
    const/16 v18, 0x0

    .line 24
    .line 25
    const/4 v7, 0x1

    .line 26
    const/4 v12, 0x0

    .line 27
    const/4 v13, 0x0

    .line 28
    const/4 v14, 0x0

    .line 29
    const-wide/16 v15, 0x0

    .line 30
    .line 31
    invoke-direct/range {v0 .. v18}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZJJZZIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 32
    .line 33
    .line 34
    return-object v19
.end method

.method public static synthetic down$default(JJFFILjava/lang/Object;)Landroidx/compose/ui/input/pointer/PointerInputChange;
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x2

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const-wide/16 p2, 0x0

    .line 6
    .line 7
    :cond_0
    move-wide v2, p2

    .line 8
    and-int/lit8 p2, p6, 0x4

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    move v4, p3

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    move v4, p4

    .line 16
    :goto_0
    and-int/lit8 p2, p6, 0x8

    .line 17
    .line 18
    if-eqz p2, :cond_2

    .line 19
    .line 20
    move v5, p3

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    move v5, p5

    .line 23
    :goto_1
    move-wide v0, p0

    .line 24
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/input/pointer/PointerInputTestUtilKt;->down(JJFF)Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static final invokeOverAllPasses-H0pRuoY(Lat/n;Landroidx/compose/ui/input/pointer/PointerEvent;J)V
    .locals 3
    .param p0    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/input/pointer/PointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lat/n<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerEvent;",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerEventPass;",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/input/pointer/PointerEvent;",
            "J)V"
        }
    .end annotation

    .line 1
    const-string v0, "$this$invokeOverAllPasses"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pointerEvent"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 12
    .line 13
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 14
    .line 15
    sget-object v2, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 16
    .line 17
    filled-new-array {v0, v1, v2}, [Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {p0, p1, v0, p2, p3}, Landroidx/compose/ui/input/pointer/PointerInputTestUtilKt;->invokeOverPasses-hUlJWOE(Lat/n;Landroidx/compose/ui/input/pointer/PointerEvent;Ljava/util/List;J)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static synthetic invokeOverAllPasses-H0pRuoY$default(Lat/n;Landroidx/compose/ui/input/pointer/PointerEvent;JILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const p2, 0x7fffffff

    .line 6
    .line 7
    .line 8
    invoke-static {p2, p2}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    .line 9
    .line 10
    .line 11
    move-result-wide p2

    .line 12
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/input/pointer/PointerInputTestUtilKt;->invokeOverAllPasses-H0pRuoY(Lat/n;Landroidx/compose/ui/input/pointer/PointerEvent;J)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final invokeOverPass-hUlJWOE(Lat/n;Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 1
    .param p0    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/input/pointer/PointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/input/pointer/PointerEventPass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lat/n<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerEvent;",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerEventPass;",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/input/pointer/PointerEvent;",
            "Landroidx/compose/ui/input/pointer/PointerEventPass;",
            "J)V"
        }
    .end annotation

    .line 1
    const-string v0, "$this$invokeOverPass"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pointerEvent"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "pointerEventPass"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/PointerInputTestUtilKt;->invokeOverPasses-hUlJWOE(Lat/n;Landroidx/compose/ui/input/pointer/PointerEvent;Ljava/util/List;J)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static synthetic invokeOverPass-hUlJWOE$default(Lat/n;Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;JILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x4

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const p3, 0x7fffffff

    .line 6
    .line 7
    .line 8
    invoke-static {p3, p3}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    .line 9
    .line 10
    .line 11
    move-result-wide p3

    .line 12
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/PointerInputTestUtilKt;->invokeOverPass-hUlJWOE(Lat/n;Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final invokeOverPasses-hUlJWOE(Lat/n;Landroidx/compose/ui/input/pointer/PointerEvent;Ljava/util/List;J)V
    .locals 4
    .param p0    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/input/pointer/PointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lat/n<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerEvent;",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerEventPass;",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/input/pointer/PointerEvent;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/input/pointer/PointerEventPass;",
            ">;J)V"
        }
    .end annotation

    const-string v0, "$this$invokeOverPasses"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pointerEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pointerEventPasses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const-string v1, "Failed requirement."

    if-nez v0, :cond_2

    .line 3
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 7
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v3

    invoke-interface {p0, p1, v2, v3}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final invokeOverPasses-hUlJWOE(Lat/n;Landroidx/compose/ui/input/pointer/PointerEvent;[Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 1
    .param p0    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/input/pointer/PointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Landroidx/compose/ui/input/pointer/PointerEventPass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lat/n<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerEvent;",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerEventPass;",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/input/pointer/PointerEvent;",
            "[",
            "Landroidx/compose/ui/input/pointer/PointerEventPass;",
            "J)V"
        }
    .end annotation

    const-string v0, "$this$invokeOverPasses"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pointerEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pointerEventPasses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Lkotlin/collections/n;->x1([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/PointerInputTestUtilKt;->invokeOverPasses-hUlJWOE(Lat/n;Landroidx/compose/ui/input/pointer/PointerEvent;Ljava/util/List;J)V

    return-void
.end method

.method public static synthetic invokeOverPasses-hUlJWOE$default(Lat/n;Landroidx/compose/ui/input/pointer/PointerEvent;Ljava/util/List;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const p3, 0x7fffffff

    .line 3
    invoke-static {p3, p3}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide p3

    .line 4
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/PointerInputTestUtilKt;->invokeOverPasses-hUlJWOE(Lat/n;Landroidx/compose/ui/input/pointer/PointerEvent;Ljava/util/List;J)V

    return-void
.end method

.method public static synthetic invokeOverPasses-hUlJWOE$default(Lat/n;Landroidx/compose/ui/input/pointer/PointerEvent;[Landroidx/compose/ui/input/pointer/PointerEventPass;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const p3, 0x7fffffff

    .line 1
    invoke-static {p3, p3}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide p3

    .line 2
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/PointerInputTestUtilKt;->invokeOverPasses-hUlJWOE(Lat/n;Landroidx/compose/ui/input/pointer/PointerEvent;[Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    return-void
.end method

.method public static final moveBy(Landroidx/compose/ui/input/pointer/PointerInputChange;JFF)Landroidx/compose/ui/input/pointer/PointerInputChange;
    .locals 21
    .param p0    # Landroidx/compose/ui/input/pointer/PointerInputChange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getUptimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v10

    .line 16
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    .line 17
    .line 18
    .line 19
    move-result v14

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    .line 21
    .line 22
    .line 23
    move-result-wide v12

    .line 24
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getUptimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    add-long v5, v5, p1

    .line 29
    .line 30
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    .line 31
    .line 32
    .line 33
    move-result-wide v7

    .line 34
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    add-float v0, v0, p3

    .line 39
    .line 40
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    add-float v1, v1, p4

    .line 49
    .line 50
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 51
    .line 52
    .line 53
    move-result-wide v7

    .line 54
    new-instance v0, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 55
    .line 56
    move-object v2, v0

    .line 57
    const/16 v19, 0x300

    .line 58
    .line 59
    const/16 v20, 0x0

    .line 60
    .line 61
    const/4 v9, 0x1

    .line 62
    const/4 v15, 0x0

    .line 63
    const/16 v16, 0x0

    .line 64
    .line 65
    const-wide/16 v17, 0x0

    .line 66
    .line 67
    invoke-direct/range {v2 .. v20}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZJJZZIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 68
    .line 69
    .line 70
    return-object v0
.end method

.method public static synthetic moveBy$default(Landroidx/compose/ui/input/pointer/PointerInputChange;JFFILjava/lang/Object;)Landroidx/compose/ui/input/pointer/PointerInputChange;
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    move p3, v0

    .line 7
    :cond_0
    and-int/lit8 p5, p5, 0x4

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    move p4, v0

    .line 12
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/PointerInputTestUtilKt;->moveBy(Landroidx/compose/ui/input/pointer/PointerInputChange;JFF)Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static final moveTo(Landroidx/compose/ui/input/pointer/PointerInputChange;JFF)Landroidx/compose/ui/input/pointer/PointerInputChange;
    .locals 20
    .param p0    # Landroidx/compose/ui/input/pointer/PointerInputChange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-wide/from16 v3, p1

    .line 2
    .line 3
    const-string v0, "<this>"

    .line 4
    .line 5
    move-object/from16 v5, p0

    .line 6
    .line 7
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getUptimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v8

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    .line 19
    .line 20
    .line 21
    move-result v12

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    .line 23
    .line 24
    .line 25
    move-result-wide v10

    .line 26
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    new-instance v19, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 31
    .line 32
    move-object/from16 v0, v19

    .line 33
    .line 34
    const/16 v17, 0x300

    .line 35
    .line 36
    const/16 v18, 0x0

    .line 37
    .line 38
    const/4 v7, 0x1

    .line 39
    const/4 v13, 0x0

    .line 40
    const/4 v14, 0x0

    .line 41
    const-wide/16 v15, 0x0

    .line 42
    .line 43
    invoke-direct/range {v0 .. v18}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZJJZZIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 44
    .line 45
    .line 46
    return-object v19
.end method

.method public static synthetic moveTo$default(Landroidx/compose/ui/input/pointer/PointerInputChange;JFFILjava/lang/Object;)Landroidx/compose/ui/input/pointer/PointerInputChange;
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    move p3, v0

    .line 7
    :cond_0
    and-int/lit8 p5, p5, 0x4

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    move p4, v0

    .line 12
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/PointerInputTestUtilKt;->moveTo(Landroidx/compose/ui/input/pointer/PointerInputChange;JFF)Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static final up(Landroidx/compose/ui/input/pointer/PointerInputChange;J)Landroidx/compose/ui/input/pointer/PointerInputChange;
    .locals 20
    .param p0    # Landroidx/compose/ui/input/pointer/PointerInputChange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-wide/from16 v3, p1

    .line 2
    .line 3
    const-string v0, "<this>"

    .line 4
    .line 5
    move-object/from16 v5, p0

    .line 6
    .line 7
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getUptimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v8

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    .line 19
    .line 20
    .line 21
    move-result v12

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    .line 23
    .line 24
    .line 25
    move-result-wide v10

    .line 26
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    new-instance v19, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 31
    .line 32
    move-object/from16 v0, v19

    .line 33
    .line 34
    const/16 v17, 0x300

    .line 35
    .line 36
    const/16 v18, 0x0

    .line 37
    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v13, 0x0

    .line 40
    const/4 v14, 0x0

    .line 41
    const-wide/16 v15, 0x0

    .line 42
    .line 43
    invoke-direct/range {v0 .. v18}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZJJZZIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 44
    .line 45
    .line 46
    return-object v19
.end method
