.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lat/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lat/p<",
        "Landroidx/compose/foundation/layout/BoxScope;",
        "Ljava/lang/Boolean;",
        "Lkotlin/jvm/functions/Function0<",
        "+",
        "Lkotlin/Unit;",
        ">;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPlaybackControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlaybackControl.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/ComposableSingletons$PlaybackControlKt$lambda-1$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,60:1\n155#2:61\n*S KotlinDebug\n*F\n+ 1 PlaybackControl.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/ComposableSingletons$PlaybackControlKt$lambda-1$1\n*L\n52#1:61\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/i$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/i$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/i$a;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/i$a;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/layout/BoxScope;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 8
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onClick"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    and-int/lit8 v0, p5, 0x6

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-interface {p4, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    move v0, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x2

    .line 25
    :goto_0
    or-int/2addr v0, p5

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v0, p5

    .line 28
    :goto_1
    and-int/lit8 v2, p5, 0x30

    .line 29
    .line 30
    if-nez v2, :cond_3

    .line 31
    .line 32
    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    const/16 v2, 0x20

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    const/16 v2, 0x10

    .line 42
    .line 43
    :goto_2
    or-int/2addr v0, v2

    .line 44
    :cond_3
    and-int/lit16 p5, p5, 0x180

    .line 45
    .line 46
    if-nez p5, :cond_5

    .line 47
    .line 48
    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p5

    .line 52
    if-eqz p5, :cond_4

    .line 53
    .line 54
    const/16 p5, 0x100

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_4
    const/16 p5, 0x80

    .line 58
    .line 59
    :goto_3
    or-int/2addr v0, p5

    .line 60
    :cond_5
    and-int/lit16 p5, v0, 0x493

    .line 61
    .line 62
    const/16 v2, 0x492

    .line 63
    .line 64
    if-ne p5, v2, :cond_7

    .line 65
    .line 66
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 67
    .line 68
    .line 69
    move-result p5

    .line 70
    if-nez p5, :cond_6

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_6
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 74
    .line 75
    .line 76
    goto :goto_5

    .line 77
    :cond_7
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 78
    .line 79
    .line 80
    move-result p5

    .line 81
    if-eqz p5, :cond_8

    .line 82
    .line 83
    const/4 p5, -0x1

    .line 84
    const-string v2, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.ComposableSingletons$PlaybackControlKt.lambda-1.<anonymous> (PlaybackControl.kt:48)"

    .line 85
    .line 86
    const v3, -0x75789014

    .line 87
    .line 88
    .line 89
    invoke-static {v3, v0, p5, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_8
    sget-object p5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 93
    .line 94
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 95
    .line 96
    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getBottomCenter()Landroidx/compose/ui/Alignment;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-interface {p1, p5, v2}, Landroidx/compose/foundation/layout/BoxScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    int-to-float p5, v1

    .line 105
    invoke-static {p5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 106
    .line 107
    .line 108
    move-result p5

    .line 109
    invoke-static {p1, p5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/i$a$a;

    .line 118
    .line 119
    invoke-direct {p1, p3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/i$a$a;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 120
    .line 121
    .line 122
    const p2, 0xa3043cc

    .line 123
    .line 124
    .line 125
    const/4 p3, 0x1

    .line 126
    invoke-static {p4, p2, p3, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    shr-int/lit8 p1, v0, 0x3

    .line 131
    .line 132
    and-int/lit8 p1, p1, 0xe

    .line 133
    .line 134
    or-int/lit16 v6, p1, 0xc00

    .line 135
    .line 136
    const/4 v3, 0x0

    .line 137
    const/4 v7, 0x4

    .line 138
    move-object v5, p4

    .line 139
    invoke-static/range {v1 .. v7}, Landroidx/compose/animation/CrossfadeKt;->Crossfade(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lat/n;Landroidx/compose/runtime/Composer;II)V

    .line 140
    .line 141
    .line 142
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-eqz p1, :cond_9

    .line 147
    .line 148
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 149
    .line 150
    .line 151
    :cond_9
    :goto_5
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    move-object v1, p1

    .line 2
    check-cast v1, Landroidx/compose/foundation/layout/BoxScope;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    move-object v3, p3

    .line 11
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    move-object v4, p4

    .line 14
    check-cast v4, Landroidx/compose/runtime/Composer;

    .line 15
    .line 16
    check-cast p5, Ljava/lang/Number;

    .line 17
    .line 18
    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    move-object v0, p0

    .line 23
    invoke-virtual/range {v0 .. v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/i$a;->a(Landroidx/compose/foundation/layout/BoxScope;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 24
    .line 25
    .line 26
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p1
.end method
