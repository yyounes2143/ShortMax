.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lat/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n;->b(Landroidx/compose/ui/Alignment;Landroidx/compose/foundation/layout/PaddingValues;JLandroidx/compose/runtime/Composer;II)Lat/p;
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
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/compose/ui/Alignment;

.field public final synthetic b:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic c:J


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Alignment;Landroidx/compose/foundation/layout/PaddingValues;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$g;->a:Landroidx/compose/ui/Alignment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$g;->b:Landroidx/compose/foundation/layout/PaddingValues;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$g;->c:J

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/layout/BoxScope;ZLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;Landroidx/compose/runtime/Composer;I)V
    .locals 10
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "progress"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    and-int/lit8 v0, p5, 0x6

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p4, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x2

    .line 24
    :goto_0
    or-int/2addr v0, p5

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move v0, p5

    .line 27
    :goto_1
    and-int/lit8 v1, p5, 0x30

    .line 28
    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    const/16 v1, 0x20

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const/16 v1, 0x10

    .line 41
    .line 42
    :goto_2
    or-int/2addr v0, v1

    .line 43
    :cond_3
    and-int/lit16 p5, p5, 0x180

    .line 44
    .line 45
    if-nez p5, :cond_5

    .line 46
    .line 47
    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p5

    .line 51
    if-eqz p5, :cond_4

    .line 52
    .line 53
    const/16 p5, 0x100

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_4
    const/16 p5, 0x80

    .line 57
    .line 58
    :goto_3
    or-int/2addr v0, p5

    .line 59
    :cond_5
    and-int/lit16 p5, v0, 0x493

    .line 60
    .line 61
    const/16 v1, 0x492

    .line 62
    .line 63
    if-ne p5, v1, :cond_7

    .line 64
    .line 65
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 66
    .line 67
    .line 68
    move-result p5

    .line 69
    if-nez p5, :cond_6

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_6
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 73
    .line 74
    .line 75
    goto :goto_7

    .line 76
    :cond_7
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 77
    .line 78
    .line 79
    move-result p5

    .line 80
    if-eqz p5, :cond_8

    .line 81
    .line 82
    const/4 p5, -0x1

    .line 83
    const-string v1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.defaultProgressBar.<anonymous> (VastRenderer.kt:370)"

    .line 84
    .line 85
    const v2, 0x753f526e

    .line 86
    .line 87
    .line 88
    invoke-static {v2, v0, p5, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_8
    const/4 p5, 0x1

    .line 92
    if-nez p2, :cond_a

    .line 93
    .line 94
    instance-of v0, p3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i$c;

    .line 95
    .line 96
    if-eqz v0, :cond_9

    .line 97
    .line 98
    move-object v0, p3

    .line 99
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i$c;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i$c;->a()J

    .line 102
    .line 103
    .line 104
    move-result-wide v0

    .line 105
    const-wide/16 v2, 0x0

    .line 106
    .line 107
    cmp-long v0, v0, v2

    .line 108
    .line 109
    if-lez v0, :cond_9

    .line 110
    .line 111
    goto :goto_5

    .line 112
    :cond_9
    const/4 v0, 0x0

    .line 113
    move v1, v0

    .line 114
    goto :goto_6

    .line 115
    :cond_a
    :goto_5
    move v1, p5

    .line 116
    :goto_6
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 117
    .line 118
    const/4 v2, 0x0

    .line 119
    const/4 v3, 0x0

    .line 120
    invoke-static {v0, v2, p5, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$g;->a:Landroidx/compose/ui/Alignment;

    .line 125
    .line 126
    invoke-interface {p1, v0, v2}, Landroidx/compose/foundation/layout/BoxScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$g;->b:Landroidx/compose/foundation/layout/PaddingValues;

    .line 131
    .line 132
    invoke-static {p1, v0}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$g$a;

    .line 137
    .line 138
    iget-wide v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$g;->c:J

    .line 139
    .line 140
    invoke-direct {p1, p2, p3, v3, v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$g$a;-><init>(ZLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;J)V

    .line 141
    .line 142
    .line 143
    const p2, -0x5590556a

    .line 144
    .line 145
    .line 146
    invoke-static {p4, p2, p5, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    const/high16 v8, 0x30000

    .line 151
    .line 152
    const/16 v9, 0x1c

    .line 153
    .line 154
    const/4 v3, 0x0

    .line 155
    const/4 v4, 0x0

    .line 156
    const/4 v5, 0x0

    .line 157
    move-object v7, p4

    .line 158
    invoke-static/range {v1 .. v9}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lat/n;Landroidx/compose/runtime/Composer;II)V

    .line 159
    .line 160
    .line 161
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-eqz p1, :cond_b

    .line 166
    .line 167
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 168
    .line 169
    .line 170
    :cond_b
    :goto_7
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
    check-cast v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;

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
    invoke-virtual/range {v0 .. v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$g;->a(Landroidx/compose/foundation/layout/BoxScope;ZLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;Landroidx/compose/runtime/Composer;I)V

    .line 24
    .line 25
    .line 26
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p1
.end method
