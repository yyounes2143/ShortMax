.class public final Lcom/moloco/sdk/internal/publisher/nativead/ui/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lat/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/internal/publisher/nativead/ui/b;
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
        "SMAP\nNativeVideoPlaybackControlUI.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeVideoPlaybackControlUI.kt\ncom/moloco/sdk/internal/publisher/nativead/ui/ComposableSingletons$NativeVideoPlaybackControlUIKt$lambda-1$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,43:1\n155#2:44\n1057#3,6:45\n*S KotlinDebug\n*F\n+ 1 NativeVideoPlaybackControlUI.kt\ncom/moloco/sdk/internal/publisher/nativead/ui/ComposableSingletons$NativeVideoPlaybackControlUIKt$lambda-1$1\n*L\n22#1:44\n23#1:45,6\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/moloco/sdk/internal/publisher/nativead/ui/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/publisher/nativead/ui/b$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/internal/publisher/nativead/ui/b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/internal/publisher/nativead/ui/b$a;->a:Lcom/moloco/sdk/internal/publisher/nativead/ui/b$a;

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

.method public static final a(Ljava/lang/String;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "$this$semantics"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setContentDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setTestTag(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method


# virtual methods
.method public final b(Landroidx/compose/foundation/layout/BoxScope;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 9
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
    const-string v3, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v3, "onClick"

    .line 7
    .line 8
    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    and-int/lit8 v3, p5, 0x6

    .line 12
    .line 13
    const/4 v5, 0x4

    .line 14
    if-nez v3, :cond_1

    .line 15
    .line 16
    invoke-interface {p4, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    move v3, v5

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v3, 0x2

    .line 25
    :goto_0
    or-int/2addr v3, p5

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v3, p5

    .line 28
    :goto_1
    and-int/lit8 v6, p5, 0x30

    .line 29
    .line 30
    if-nez v6, :cond_3

    .line 31
    .line 32
    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    if-eqz v7, :cond_2

    .line 37
    .line 38
    const/16 v7, 0x20

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    const/16 v7, 0x10

    .line 42
    .line 43
    :goto_2
    or-int/2addr v3, v7

    .line 44
    :cond_3
    and-int/lit16 v2, p5, 0x180

    .line 45
    .line 46
    if-nez v2, :cond_5

    .line 47
    .line 48
    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_4

    .line 53
    .line 54
    const/16 v2, 0x100

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_4
    const/16 v2, 0x80

    .line 58
    .line 59
    :goto_3
    or-int/2addr v3, v2

    .line 60
    :cond_5
    and-int/lit16 v2, v3, 0x493

    .line 61
    .line 62
    const/16 v7, 0x492

    .line 63
    .line 64
    if-ne v2, v7, :cond_7

    .line 65
    .line 66
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_6

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_6
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 74
    .line 75
    .line 76
    goto/16 :goto_5

    .line 77
    .line 78
    :cond_7
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_8

    .line 83
    .line 84
    const/4 v2, -0x1

    .line 85
    const-string v7, "com.moloco.sdk.internal.publisher.nativead.ui.ComposableSingletons$NativeVideoPlaybackControlUIKt.lambda-1.<anonymous> (NativeVideoPlaybackControlUI.kt:17)"

    .line 86
    .line 87
    const v8, 0x3cc4467a

    .line 88
    .line 89
    .line 90
    invoke-static {v8, v3, v2, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_8
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 94
    .line 95
    sget-object v7, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 96
    .line 97
    invoke-virtual {v7}, Landroidx/compose/ui/Alignment$Companion;->getBottomCenter()Landroidx/compose/ui/Alignment;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    invoke-interface {p1, v2, v7}, Landroidx/compose/foundation/layout/BoxScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    int-to-float v2, v5

    .line 106
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const v2, 0x10897413

    .line 115
    .line 116
    .line 117
    invoke-interface {p4, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 118
    .line 119
    .line 120
    const-string v2, "playback_control_button"

    .line 121
    .line 122
    invoke-interface {p4, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    if-nez v5, :cond_9

    .line 131
    .line 132
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 133
    .line 134
    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    if-ne v7, v5, :cond_a

    .line 139
    .line 140
    :cond_9
    new-instance v7, Lcom/moloco/sdk/internal/publisher/nativead/ui/a;

    .line 141
    .line 142
    invoke-direct {v7, v2}, Lcom/moloco/sdk/internal/publisher/nativead/ui/a;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-interface {p4, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :cond_a
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 149
    .line 150
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 151
    .line 152
    .line 153
    const/4 v2, 0x0

    .line 154
    const/4 v5, 0x0

    .line 155
    const/4 v8, 0x1

    .line 156
    invoke-static {v0, v5, v7, v8, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    new-instance v5, Lcom/moloco/sdk/internal/publisher/nativead/ui/b$a$a;

    .line 165
    .line 166
    invoke-direct {v5, p3}, Lcom/moloco/sdk/internal/publisher/nativead/ui/b$a$a;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 167
    .line 168
    .line 169
    const v1, 0x69e2c69a

    .line 170
    .line 171
    .line 172
    invoke-static {p4, v1, v8, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    shr-int/lit8 v1, v3, 0x3

    .line 177
    .line 178
    and-int/lit8 v1, v1, 0xe

    .line 179
    .line 180
    or-int/lit16 v6, v1, 0xc00

    .line 181
    .line 182
    const/4 v3, 0x0

    .line 183
    const/4 v7, 0x4

    .line 184
    move-object v1, v2

    .line 185
    move-object v2, v3

    .line 186
    move-object v3, v5

    .line 187
    move-object v4, p4

    .line 188
    move v5, v6

    .line 189
    move v6, v7

    .line 190
    invoke-static/range {v0 .. v6}, Landroidx/compose/animation/CrossfadeKt;->Crossfade(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lat/n;Landroidx/compose/runtime/Composer;II)V

    .line 191
    .line 192
    .line 193
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_b

    .line 198
    .line 199
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 200
    .line 201
    .line 202
    :cond_b
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
    invoke-virtual/range {v0 .. v5}, Lcom/moloco/sdk/internal/publisher/nativead/ui/b$a;->b(Landroidx/compose/foundation/layout/BoxScope;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 24
    .line 25
    .line 26
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p1
.end method
