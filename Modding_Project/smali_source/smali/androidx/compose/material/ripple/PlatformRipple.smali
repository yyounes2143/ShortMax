.class public final Landroidx/compose/material/ripple/PlatformRipple;
.super Landroidx/compose/material/ripple/Ripple;
.source "Ripple.android.kt"


# annotations
.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>(ZFLandroidx/compose/runtime/State;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZF",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material/ripple/Ripple;-><init>(ZFLandroidx/compose/runtime/State;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ZFLandroidx/compose/runtime/State;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material/ripple/PlatformRipple;-><init>(ZFLandroidx/compose/runtime/State;)V

    return-void
.end method

.method private final findNearestViewGroup(Landroidx/compose/runtime/Composer;I)Landroid/view/ViewGroup;
    .locals 2
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .line 1
    const p2, -0x67961d31

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalView()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    move-object v0, p2

    .line 20
    check-cast v0, Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    instance-of v1, v0, Landroid/view/View;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const-string p2, "parent"

    .line 31
    .line 32
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    move-object p2, v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v0, "Couldn\'t find a valid parent for "

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p2, ". Are you overriding LocalView and providing a View that is not attached to the view hierarchy?"

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p2

    .line 69
    :cond_1
    check-cast p2, Landroid/view/ViewGroup;

    .line 70
    .line 71
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 72
    .line 73
    .line 74
    return-object p2
.end method


# virtual methods
.method public rememberUpdatedRippleInstance-942rkJo(Landroidx/compose/foundation/interaction/InteractionSource;ZFLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/ripple/RippleIndicationInstance;
    .locals 11
    .param p1    # Landroidx/compose/foundation/interaction/InteractionSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/runtime/State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "ZF",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/material/ripple/RippleAlpha;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/material/ripple/RippleIndicationInstance;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object/from16 v2, p6

    .line 4
    .line 5
    const-string v3, "interactionSource"

    .line 6
    .line 7
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v3, "color"

    .line 11
    .line 12
    move-object v7, p4

    .line 13
    invoke-static {p4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v3, "rippleAlpha"

    .line 17
    .line 18
    move-object/from16 v8, p5

    .line 19
    .line 20
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const v3, 0x13be9e37

    .line 24
    .line 25
    .line 26
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 27
    .line 28
    .line 29
    shr-int/lit8 v3, p7, 0xf

    .line 30
    .line 31
    and-int/lit8 v3, v3, 0xe

    .line 32
    .line 33
    invoke-direct {p0, v2, v3}, Landroidx/compose/material/ripple/PlatformRipple;->findNearestViewGroup(Landroidx/compose/runtime/Composer;I)Landroid/view/ViewGroup;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const v4, 0x61f244d6

    .line 38
    .line 39
    .line 40
    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Landroid/view/View;->isInEditMode()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    const v3, -0x384098

    .line 50
    .line 51
    .line 52
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-interface {v2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    or-int/2addr v1, v3

    .line 64
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-nez v1, :cond_0

    .line 69
    .line 70
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 71
    .line 72
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-ne v3, v1, :cond_1

    .line 77
    .line 78
    :cond_0
    new-instance v3, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;

    .line 79
    .line 80
    const/4 v9, 0x0

    .line 81
    move-object v4, v3

    .line 82
    move v5, p2

    .line 83
    move v6, p3

    .line 84
    move-object v7, p4

    .line 85
    move-object/from16 v8, p5

    .line 86
    .line 87
    invoke-direct/range {v4 .. v9}, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;-><init>(ZFLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 88
    .line 89
    .line 90
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_1
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 94
    .line 95
    .line 96
    check-cast v3, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;

    .line 97
    .line 98
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 99
    .line 100
    .line 101
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 102
    .line 103
    .line 104
    return-object v3

    .line 105
    :cond_2
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    const/4 v5, 0x0

    .line 113
    :goto_0
    if-ge v5, v4, :cond_4

    .line 114
    .line 115
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    instance-of v9, v6, Landroidx/compose/material/ripple/RippleContainer;

    .line 120
    .line 121
    if-eqz v9, :cond_3

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_4
    const/4 v6, 0x0

    .line 128
    :goto_1
    if-nez v6, :cond_5

    .line 129
    .line 130
    new-instance v6, Landroidx/compose/material/ripple/RippleContainer;

    .line 131
    .line 132
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    const-string v5, "view.context"

    .line 137
    .line 138
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-direct {v6, v4}, Landroidx/compose/material/ripple/RippleContainer;-><init>(Landroid/content/Context;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 145
    .line 146
    .line 147
    :cond_5
    const v3, -0x383ecf

    .line 148
    .line 149
    .line 150
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 151
    .line 152
    .line 153
    invoke-interface {v2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    invoke-interface {v2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    or-int/2addr v1, v3

    .line 162
    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    or-int/2addr v1, v3

    .line 167
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    if-nez v1, :cond_6

    .line 172
    .line 173
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 174
    .line 175
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    if-ne v3, v1, :cond_7

    .line 180
    .line 181
    :cond_6
    new-instance v3, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;

    .line 182
    .line 183
    move-object v9, v6

    .line 184
    check-cast v9, Landroidx/compose/material/ripple/RippleContainer;

    .line 185
    .line 186
    const/4 v10, 0x0

    .line 187
    move-object v4, v3

    .line 188
    move v5, p2

    .line 189
    move v6, p3

    .line 190
    move-object v7, p4

    .line 191
    move-object/from16 v8, p5

    .line 192
    .line 193
    invoke-direct/range {v4 .. v10}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;-><init>(ZFLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/material/ripple/RippleContainer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 194
    .line 195
    .line 196
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    :cond_7
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 200
    .line 201
    .line 202
    check-cast v3, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;

    .line 203
    .line 204
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 205
    .line 206
    .line 207
    return-object v3
.end method
