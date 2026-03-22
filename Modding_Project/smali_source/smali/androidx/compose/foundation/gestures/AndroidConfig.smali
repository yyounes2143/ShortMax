.class final Landroidx/compose/foundation/gestures/AndroidConfig;
.super Ljava/lang/Object;
.source "AndroidScrollable.android.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/ScrollConfig;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/gestures/AndroidConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/gestures/AndroidConfig;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/foundation/gestures/AndroidConfig;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/foundation/gestures/AndroidConfig;->INSTANCE:Landroidx/compose/foundation/gestures/AndroidConfig;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public calculateMouseWheelScroll-8xgXZGE(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/input/pointer/PointerEvent;J)J
    .locals 6
    .param p1    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/input/pointer/PointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p3, "$this$calculateMouseWheelScroll"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "event"

    .line 7
    .line 8
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    sget-object p3, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 16
    .line 17
    invoke-virtual {p3}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 18
    .line 19
    .line 20
    move-result-wide p3

    .line 21
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result p4

    .line 29
    const/4 v0, 0x0

    .line 30
    :goto_0
    if-ge v0, p4, :cond_0

    .line 31
    .line 32
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 37
    .line 38
    invoke-virtual {p3}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getScrollDelta-F1C5BW0()J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    .line 47
    .line 48
    .line 49
    move-result-wide v1

    .line 50
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p3}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    .line 58
    .line 59
    .line 60
    move-result-wide p2

    .line 61
    const/16 p4, 0x40

    .line 62
    .line 63
    int-to-float p4, p4

    .line 64
    invoke-static {p4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 65
    .line 66
    .line 67
    move-result p4

    .line 68
    invoke-interface {p1, p4}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    neg-float p1, p1

    .line 73
    invoke-static {p2, p3, p1}, Landroidx/compose/ui/geometry/Offset;->times-tuRUvjQ(JF)J

    .line 74
    .line 75
    .line 76
    move-result-wide p1

    .line 77
    return-wide p1
.end method
