.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lat/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/h;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Lat/p;
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
        "Lkotlin/jvm/functions/Function1<",
        "-",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
        "+",
        "Lkotlin/Unit;",
        ">;",
        "Lkt/i<",
        "+",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;",
        ">;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAdBadge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdBadge.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/AdBadgeKt$defaultVastAdBadge$2\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,173:1\n76#2:174\n*S KotlinDebug\n*F\n+ 1 AdBadge.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/AdBadgeKt$defaultVastAdBadge$2\n*L\n83#1:174\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/compose/ui/Modifier;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/h$a;->a:Landroidx/compose/ui/Modifier;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/h$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/h$a;->c:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static final a(Landroidx/compose/runtime/State;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;",
            ">;)",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;

    .line 6
    .line 7
    return-object p0
.end method


# virtual methods
.method public final b(Landroidx/compose/foundation/layout/BoxScope;Lkotlin/jvm/functions/Function1;Lkt/i;Landroidx/compose/runtime/Composer;I)V
    .locals 11
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "Lkotlin/Unit;",
            ">;",
            "Lkt/i<",
            "+",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p3

    .line 3
    move-object v8, p4

    .line 4
    move/from16 v2, p5

    .line 5
    .line 6
    const-string v3, "<this>"

    .line 7
    .line 8
    move-object v4, p1

    .line 9
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "onButtonRendered"

    .line 13
    .line 14
    move-object v4, p2

    .line 15
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    const/4 v3, -0x1

    .line 25
    const-string v5, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.defaultVastAdBadge.<anonymous> (AdBadge.kt:81)"

    .line 26
    .line 27
    const v6, 0x2e93aa00

    .line 28
    .line 29
    .line 30
    invoke-static {v6, v2, v3, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    if-nez v1, :cond_1

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_1
    iget-object v3, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/h$a;->a:Landroidx/compose/ui/Modifier;

    .line 38
    .line 39
    iget-object v5, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/h$a;->b:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v6, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/h$a;->c:Lkotlin/jvm/functions/Function1;

    .line 42
    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v9, 0x0

    .line 45
    const/4 v10, 0x1

    .line 46
    invoke-static {p3, v7, p4, v9, v10}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkt/i;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/h$a;->a(Landroidx/compose/runtime/State;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    instance-of v7, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a$c;

    .line 55
    .line 56
    if-eqz v7, :cond_2

    .line 57
    .line 58
    const v1, -0x2ec84805

    .line 59
    .line 60
    .line 61
    invoke-interface {p4, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 62
    .line 63
    .line 64
    sget-object v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;

    .line 65
    .line 66
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/h$a$a;

    .line 67
    .line 68
    invoke-direct {v1, v3, v5, v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/h$a$a;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 69
    .line 70
    .line 71
    const v3, 0x71576b52

    .line 72
    .line 73
    .line 74
    invoke-static {p4, v3, v10, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    shl-int/lit8 v1, v2, 0x3

    .line 79
    .line 80
    and-int/lit16 v1, v1, 0x380

    .line 81
    .line 82
    or-int/lit16 v6, v1, 0xc30

    .line 83
    .line 84
    const/4 v1, 0x0

    .line 85
    const/4 v9, 0x1

    .line 86
    move-object v2, v7

    .line 87
    move-object v3, p2

    .line 88
    move-object v4, v5

    .line 89
    move-object v5, p4

    .line 90
    move v7, v9

    .line 91
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/k0;->e(Landroidx/compose/ui/Modifier;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;Lkotlin/jvm/functions/Function1;Lat/n;Landroidx/compose/runtime/Composer;II)V

    .line 92
    .line 93
    .line 94
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    instance-of v7, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a$a;

    .line 99
    .line 100
    if-eqz v7, :cond_3

    .line 101
    .line 102
    const v1, -0x2ec17465

    .line 103
    .line 104
    .line 105
    invoke-interface {p4, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 106
    .line 107
    .line 108
    sget-object v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;

    .line 109
    .line 110
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/h$a$b;

    .line 111
    .line 112
    invoke-direct {v1, v3, v5, v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/h$a$b;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 113
    .line 114
    .line 115
    const v3, 0x447dd23b

    .line 116
    .line 117
    .line 118
    invoke-static {p4, v3, v10, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    shl-int/lit8 v1, v2, 0x3

    .line 123
    .line 124
    and-int/lit16 v1, v1, 0x380

    .line 125
    .line 126
    or-int/lit16 v6, v1, 0xc30

    .line 127
    .line 128
    const/4 v1, 0x0

    .line 129
    const/4 v9, 0x1

    .line 130
    move-object v2, v7

    .line 131
    move-object v3, p2

    .line 132
    move-object v4, v5

    .line 133
    move-object v5, p4

    .line 134
    move v7, v9

    .line 135
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/k0;->e(Landroidx/compose/ui/Modifier;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;Lkotlin/jvm/functions/Function1;Lat/n;Landroidx/compose/runtime/Composer;II)V

    .line 136
    .line 137
    .line 138
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_3
    instance-of v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a$b;

    .line 143
    .line 144
    if-eqz v2, :cond_4

    .line 145
    .line 146
    const v1, -0x2ebae720

    .line 147
    .line 148
    .line 149
    invoke-interface {p4, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 150
    .line 151
    .line 152
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_4
    instance-of v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a$d;

    .line 157
    .line 158
    if-eqz v2, :cond_5

    .line 159
    .line 160
    const v1, -0x2eba0660

    .line 161
    .line 162
    .line 163
    invoke-interface {p4, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 164
    .line 165
    .line 166
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 167
    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_5
    if-nez v1, :cond_7

    .line 171
    .line 172
    const v1, -0x2eb97ec0

    .line 173
    .line 174
    .line 175
    invoke-interface {p4, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 176
    .line 177
    .line 178
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 179
    .line 180
    .line 181
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_6

    .line 186
    .line 187
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 188
    .line 189
    .line 190
    :cond_6
    return-void

    .line 191
    :cond_7
    const v1, -0x649b20d4

    .line 192
    .line 193
    .line 194
    invoke-interface {p4, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 195
    .line 196
    .line 197
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 198
    .line 199
    .line 200
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    .line 201
    .line 202
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 203
    .line 204
    .line 205
    throw v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    move-object v1, p1

    .line 2
    check-cast v1, Landroidx/compose/foundation/layout/BoxScope;

    .line 3
    .line 4
    move-object v2, p2

    .line 5
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    move-object v3, p3

    .line 8
    check-cast v3, Lkt/i;

    .line 9
    .line 10
    move-object v4, p4

    .line 11
    check-cast v4, Landroidx/compose/runtime/Composer;

    .line 12
    .line 13
    check-cast p5, Ljava/lang/Number;

    .line 14
    .line 15
    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    move-object v0, p0

    .line 20
    invoke-virtual/range {v0 .. v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/h$a;->b(Landroidx/compose/foundation/layout/BoxScope;Lkotlin/jvm/functions/Function1;Lkt/i;Landroidx/compose/runtime/Composer;I)V

    .line 21
    .line 22
    .line 23
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p1
.end method
