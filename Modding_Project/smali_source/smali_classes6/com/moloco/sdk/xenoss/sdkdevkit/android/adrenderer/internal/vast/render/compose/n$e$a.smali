.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lat/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$e;->b(Landroidx/compose/foundation/layout/BoxScope;ZLkt/i;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lat/n<",
        "Landroidx/compose/animation/AnimatedVisibilityScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:J

.field public final synthetic f:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/State;Ljava/lang/String;Ljava/lang/String;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$e$a;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$e$a;->b:Landroidx/compose/runtime/State;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$e$a;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$e$a;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-wide p5, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$e$a;->e:J

    .line 10
    .line 11
    iput-object p7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$e$a;->f:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    iput-object p8, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$e$a;->g:Lkotlin/jvm/functions/Function0;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/runtime/Composer;I)V
    .locals 11
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .line 1
    const-string v0, "$this$AnimatedVisibility"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 p1, -0x1

    .line 13
    const-string v0, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.defaultCTAButton.<anonymous>.<anonymous> (VastRenderer.kt:314)"

    .line 14
    .line 15
    const v1, 0x3bdcec9c

    .line 16
    .line 17
    .line 18
    invoke-static {v1, p3, p1, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$e$a;->b:Landroidx/compose/runtime/State;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$e;->a(Landroidx/compose/runtime/State;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    instance-of p3, p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a$a;

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    if-eqz p3, :cond_1

    .line 31
    .line 32
    const p1, 0x47bd26f3

    .line 33
    .line 34
    .line 35
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 36
    .line 37
    .line 38
    sget-object v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;->g:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$e$a;->a:Lkotlin/jvm/functions/Function1;

    .line 41
    .line 42
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$e$a$a;

    .line 43
    .line 44
    iget-object v5, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$e$a;->c:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v6, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$e$a;->d:Ljava/lang/String;

    .line 47
    .line 48
    iget-wide v7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$e$a;->e:J

    .line 49
    .line 50
    iget-object v9, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$e$a;->f:Lkotlin/jvm/functions/Function0;

    .line 51
    .line 52
    iget-object v10, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$e$a;->g:Lkotlin/jvm/functions/Function0;

    .line 53
    .line 54
    move-object v4, p1

    .line 55
    invoke-direct/range {v4 .. v10}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$e$a$a;-><init>(Ljava/lang/String;Ljava/lang/String;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 56
    .line 57
    .line 58
    const p3, -0x319bec8c

    .line 59
    .line 60
    .line 61
    invoke-static {p2, p3, v0, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    const/16 v6, 0xc30

    .line 66
    .line 67
    const/4 v7, 0x1

    .line 68
    const/4 v1, 0x0

    .line 69
    move-object v5, p2

    .line 70
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/k0;->e(Landroidx/compose/ui/Modifier;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;Lkotlin/jvm/functions/Function1;Lat/n;Landroidx/compose/runtime/Composer;II)V

    .line 71
    .line 72
    .line 73
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    instance-of p3, p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a$c;

    .line 78
    .line 79
    if-eqz p3, :cond_2

    .line 80
    .line 81
    const p1, 0x47c62c73

    .line 82
    .line 83
    .line 84
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 85
    .line 86
    .line 87
    sget-object v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;->g:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;

    .line 88
    .line 89
    iget-object v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$e$a;->a:Lkotlin/jvm/functions/Function1;

    .line 90
    .line 91
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$e$a$b;

    .line 92
    .line 93
    iget-object v5, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$e$a;->c:Ljava/lang/String;

    .line 94
    .line 95
    iget-object v6, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$e$a;->d:Ljava/lang/String;

    .line 96
    .line 97
    iget-wide v7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$e$a;->e:J

    .line 98
    .line 99
    iget-object v9, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$e$a;->f:Lkotlin/jvm/functions/Function0;

    .line 100
    .line 101
    iget-object v10, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$e$a;->g:Lkotlin/jvm/functions/Function0;

    .line 102
    .line 103
    move-object v4, p1

    .line 104
    invoke-direct/range {v4 .. v10}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$e$a$b;-><init>(Ljava/lang/String;Ljava/lang/String;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 105
    .line 106
    .line 107
    const p3, 0x5a729c1d

    .line 108
    .line 109
    .line 110
    invoke-static {p2, p3, v0, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    const/16 v6, 0xc30

    .line 115
    .line 116
    const/4 v7, 0x1

    .line 117
    const/4 v1, 0x0

    .line 118
    move-object v5, p2

    .line 119
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/k0;->e(Landroidx/compose/ui/Modifier;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;Lkotlin/jvm/functions/Function1;Lat/n;Landroidx/compose/runtime/Composer;II)V

    .line 120
    .line 121
    .line 122
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_2
    instance-of p3, p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a$b;

    .line 127
    .line 128
    if-eqz p3, :cond_3

    .line 129
    .line 130
    const p1, 0x47ceecaf

    .line 131
    .line 132
    .line 133
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 134
    .line 135
    .line 136
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_3
    instance-of p3, p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a$d;

    .line 141
    .line 142
    if-eqz p3, :cond_4

    .line 143
    .line 144
    const p1, 0x47d03a4c

    .line 145
    .line 146
    .line 147
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 148
    .line 149
    .line 150
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_4
    if-nez p1, :cond_6

    .line 155
    .line 156
    const p1, 0x47d0c20b

    .line 157
    .line 158
    .line 159
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 160
    .line 161
    .line 162
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 163
    .line 164
    .line 165
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-eqz p1, :cond_5

    .line 170
    .line 171
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 172
    .line 173
    .line 174
    :cond_5
    return-void

    .line 175
    :cond_6
    const p1, -0x58864e79

    .line 176
    .line 177
    .line 178
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 179
    .line 180
    .line 181
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 182
    .line 183
    .line 184
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 185
    .line 186
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 187
    .line 188
    .line 189
    throw p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/animation/AnimatedVisibilityScope;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$e$a;->a(Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    .line 14
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p1
.end method
