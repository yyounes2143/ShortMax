.class public final Landroidx/compose/animation/core/EasingKt;
.super Ljava/lang/Object;
.source "Easing.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final CubicErrorBound:F = 0.001f

.field private static final FastOutLinearInEasing:Landroidx/compose/animation/core/Easing;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FastOutSlowInEasing:Landroidx/compose/animation/core/Easing;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LinearEasing:Landroidx/compose/animation/core/Easing;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LinearOutSlowInEasing:Landroidx/compose/animation/core/Easing;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 2
    .line 3
    const v1, 0x3ecccccd    # 0.4f

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const v3, 0x3e4ccccd    # 0.2f

    .line 8
    .line 9
    .line 10
    const/high16 v4, 0x3f800000    # 1.0f

    .line 11
    .line 12
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroidx/compose/animation/core/EasingKt;->FastOutSlowInEasing:Landroidx/compose/animation/core/Easing;

    .line 16
    .line 17
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 18
    .line 19
    invoke-direct {v0, v2, v2, v3, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Landroidx/compose/animation/core/EasingKt;->LinearOutSlowInEasing:Landroidx/compose/animation/core/Easing;

    .line 23
    .line 24
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 25
    .line 26
    invoke-direct {v0, v1, v2, v4, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Landroidx/compose/animation/core/EasingKt;->FastOutLinearInEasing:Landroidx/compose/animation/core/Easing;

    .line 30
    .line 31
    sget-object v0, Landroidx/compose/animation/core/EasingKt$LinearEasing$1;->INSTANCE:Landroidx/compose/animation/core/EasingKt$LinearEasing$1;

    .line 32
    .line 33
    sput-object v0, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/compose/animation/core/Easing;

    .line 34
    .line 35
    return-void
.end method

.method public static final getFastOutLinearInEasing()Landroidx/compose/animation/core/Easing;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/animation/core/EasingKt;->FastOutLinearInEasing:Landroidx/compose/animation/core/Easing;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getFastOutSlowInEasing()Landroidx/compose/animation/core/Easing;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/animation/core/EasingKt;->FastOutSlowInEasing:Landroidx/compose/animation/core/Easing;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getLinearEasing()Landroidx/compose/animation/core/Easing;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/compose/animation/core/Easing;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getLinearOutSlowInEasing()Landroidx/compose/animation/core/Easing;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/animation/core/EasingKt;->LinearOutSlowInEasing:Landroidx/compose/animation/core/Easing;

    .line 2
    .line 3
    return-object v0
.end method
