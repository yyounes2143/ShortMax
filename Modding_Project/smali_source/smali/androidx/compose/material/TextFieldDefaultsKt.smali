.class public final Landroidx/compose/material/TextFieldDefaultsKt;
.super Ljava/lang/Object;
.source "TextFieldDefaults.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final synthetic access$animateBorderStrokeAsState-NuRrP5Q(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/TextFieldColors;FFLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Landroidx/compose/material/TextFieldDefaultsKt;->animateBorderStrokeAsState-NuRrP5Q(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/TextFieldColors;FFLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final animateBorderStrokeAsState-NuRrP5Q(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/TextFieldColors;FFLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 7
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Landroidx/compose/material/TextFieldColors;",
            "FF",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/BorderStroke;",
            ">;"
        }
    .end annotation

    .line 1
    const v0, 0x41709f90

    .line 2
    .line 3
    .line 4
    invoke-interface {p6, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    shr-int/lit8 v0, p7, 0x6

    .line 8
    .line 9
    and-int/lit8 v0, v0, 0xe

    .line 10
    .line 11
    invoke-static {p2, p6, v0}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    and-int/lit16 v6, p7, 0x1ffe

    .line 16
    .line 17
    move-object v1, p3

    .line 18
    move v2, p0

    .line 19
    move v3, p1

    .line 20
    move-object v4, p2

    .line 21
    move-object v5, p6

    .line 22
    invoke-interface/range {v1 .. v6}, Landroidx/compose/material/TextFieldColors;->indicatorColor(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {v0}, Landroidx/compose/material/TextFieldDefaultsKt;->animateBorderStrokeAsState_NuRrP5Q$lambda-0(Landroidx/compose/runtime/State;)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    move v0, p4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v0, p5

    .line 35
    :goto_0
    const/4 p2, 0x0

    .line 36
    const/4 p3, 0x0

    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    const p0, 0x6479eca5

    .line 40
    .line 41
    .line 42
    invoke-interface {p6, p0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 43
    .line 44
    .line 45
    const/16 p0, 0x96

    .line 46
    .line 47
    const/4 p4, 0x6

    .line 48
    invoke-static {p0, p2, p3, p4, p3}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const/16 v4, 0x30

    .line 53
    .line 54
    const/4 v5, 0x4

    .line 55
    const/4 v2, 0x0

    .line 56
    move-object v3, p6

    .line 57
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateDpAsState-Kz89ssw(FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const p0, 0x6479ed07

    .line 66
    .line 67
    .line 68
    invoke-interface {p6, p0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 69
    .line 70
    .line 71
    invoke-static {p5}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    shr-int/lit8 p4, p7, 0xf

    .line 76
    .line 77
    and-int/lit8 p4, p4, 0xe

    .line 78
    .line 79
    invoke-static {p0, p6, p4}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 84
    .line 85
    .line 86
    :goto_1
    new-instance p4, Landroidx/compose/foundation/BorderStroke;

    .line 87
    .line 88
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    check-cast p0, Landroidx/compose/ui/unit/Dp;

    .line 93
    .line 94
    invoke-virtual {p0}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    new-instance p5, Landroidx/compose/ui/graphics/SolidColor;

    .line 99
    .line 100
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Landroidx/compose/ui/graphics/Color;

    .line 105
    .line 106
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 107
    .line 108
    .line 109
    move-result-wide v0

    .line 110
    invoke-direct {p5, v0, v1, p3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 111
    .line 112
    .line 113
    invoke-direct {p4, p0, p5, p3}, Landroidx/compose/foundation/BorderStroke;-><init>(FLandroidx/compose/ui/graphics/Brush;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 114
    .line 115
    .line 116
    invoke-static {p4, p6, p2}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 121
    .line 122
    .line 123
    return-object p0
.end method

.method private static final animateBorderStrokeAsState_NuRrP5Q$lambda-0(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method
