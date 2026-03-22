.class public final Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;
.super Ljava/lang/Object;
.source "AndroidCursorHandle.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final CursorHandleHeight:F

.field private static final CursorHandleWidth:F

.field private static final Sqrt2:F = 1.4142135f


# direct methods
.method static constructor <clinit>()V
    .locals 2

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
    move-result v0

    .line 8
    sput v0, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->CursorHandleHeight:F

    .line 9
    .line 10
    const/high16 v1, 0x40000000    # 2.0f

    .line 11
    .line 12
    mul-float/2addr v0, v1

    .line 13
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const v1, 0x401a827a

    .line 18
    .line 19
    .line 20
    div-float/2addr v0, v1

    .line 21
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sput v0, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->CursorHandleWidth:F

    .line 26
    .line 27
    return-void
.end method

.method public static final CursorHandle-ULxng0E(JLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 7
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    const-string v0, "modifier"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const v0, -0x4f21cb

    .line 7
    .line 8
    .line 9
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    and-int/lit8 v0, p5, 0xe

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p4, p0, p1}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x2

    .line 26
    :goto_0
    or-int/2addr v0, p5

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v0, p5

    .line 29
    :goto_1
    and-int/lit8 v1, p5, 0x70

    .line 30
    .line 31
    if-nez v1, :cond_3

    .line 32
    .line 33
    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    const/16 v1, 0x20

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    const/16 v1, 0x10

    .line 43
    .line 44
    :goto_2
    or-int/2addr v0, v1

    .line 45
    :cond_3
    and-int/lit16 v1, p5, 0x380

    .line 46
    .line 47
    if-nez v1, :cond_5

    .line 48
    .line 49
    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    const/16 v1, 0x100

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_4
    const/16 v1, 0x80

    .line 59
    .line 60
    :goto_3
    or-int/2addr v0, v1

    .line 61
    :cond_5
    and-int/lit16 v1, v0, 0x2db

    .line 62
    .line 63
    const/16 v2, 0x92

    .line 64
    .line 65
    if-ne v1, v2, :cond_7

    .line 66
    .line 67
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_6

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_6
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 75
    .line 76
    .line 77
    goto :goto_5

    .line 78
    :cond_7
    :goto_4
    sget-object v3, Landroidx/compose/foundation/text/selection/HandleReferencePoint;->TopMiddle:Landroidx/compose/foundation/text/selection/HandleReferencePoint;

    .line 79
    .line 80
    new-instance v1, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt$CursorHandle$1;

    .line 81
    .line 82
    invoke-direct {v1, p3, p2, v0}, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt$CursorHandle$1;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;I)V

    .line 83
    .line 84
    .line 85
    const v2, -0x56eea462

    .line 86
    .line 87
    .line 88
    const/4 v4, 0x1

    .line 89
    invoke-static {p4, v2, v4, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    and-int/lit8 v0, v0, 0xe

    .line 94
    .line 95
    or-int/lit16 v6, v0, 0x1b0

    .line 96
    .line 97
    move-wide v1, p0

    .line 98
    move-object v5, p4

    .line 99
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->HandlePopup-ULxng0E(JLandroidx/compose/foundation/text/selection/HandleReferencePoint;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 100
    .line 101
    .line 102
    :goto_5
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 103
    .line 104
    .line 105
    move-result-object p4

    .line 106
    if-nez p4, :cond_8

    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_8
    new-instance v6, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt$CursorHandle$2;

    .line 110
    .line 111
    move-object v0, v6

    .line 112
    move-wide v1, p0

    .line 113
    move-object v3, p2

    .line 114
    move-object v4, p3

    .line 115
    move v5, p5

    .line 116
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt$CursorHandle$2;-><init>(JLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;I)V

    .line 117
    .line 118
    .line 119
    invoke-interface {p4, v6}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 120
    .line 121
    .line 122
    :goto_6
    return-void
.end method

.method public static final DefaultCursorHandle(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 2
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .line 1
    const-string v0, "modifier"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x29616e63

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    and-int/lit8 v0, p2, 0xe

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v0, v1

    .line 27
    :goto_0
    or-int/2addr v0, p2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v0, p2

    .line 30
    :goto_1
    and-int/lit8 v0, v0, 0xb

    .line 31
    .line 32
    if-ne v0, v1, :cond_3

    .line 33
    .line 34
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 42
    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_3
    :goto_2
    sget v0, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->CursorHandleWidth:F

    .line 46
    .line 47
    sget v1, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->CursorHandleHeight:F

    .line 48
    .line 49
    invoke-static {p0, v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->drawCursorHandle(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-static {v0, p1, v1}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 59
    .line 60
    .line 61
    :goto_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-nez p1, :cond_4

    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_4
    new-instance v0, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt$DefaultCursorHandle$1;

    .line 69
    .line 70
    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt$DefaultCursorHandle$1;-><init>(Landroidx/compose/ui/Modifier;I)V

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 74
    .line 75
    .line 76
    :goto_4
    return-void
.end method

.method public static final drawCursorHandle(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 3
    .param p0    # Landroidx/compose/ui/Modifier;
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
    sget-object v0, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt$drawCursorHandle$1;->INSTANCE:Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt$drawCursorHandle$1;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {p0, v2, v0, v1, v2}, Landroidx/compose/ui/ComposedModifierKt;->composed$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lat/n;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static final getCursorHandleHeight()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->CursorHandleHeight:F

    .line 2
    .line 3
    return v0
.end method

.method public static final getCursorHandleWidth()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->CursorHandleWidth:F

    .line 2
    .line 3
    return v0
.end method
