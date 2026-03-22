.class final Landroidx/compose/material/ripple/StateLayer;
.super Ljava/lang/Object;
.source "Ripple.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final animatedAlpha:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bounded:Z

.field private currentInteraction:Landroidx/compose/foundation/interaction/Interaction;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final interactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/interaction/Interaction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rippleAlpha:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/material/ripple/RippleAlpha;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLandroidx/compose/runtime/State;)V
    .locals 1
    .param p2    # Landroidx/compose/runtime/State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/material/ripple/RippleAlpha;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "rippleAlpha"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-boolean p1, p0, Landroidx/compose/material/ripple/StateLayer;->bounded:Z

    .line 10
    .line 11
    iput-object p2, p0, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Landroidx/compose/runtime/State;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    const/4 p2, 0x0

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {v0, v0, p1, p2}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Landroidx/compose/animation/core/Animatable;

    .line 21
    .line 22
    new-instance p1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/util/List;

    .line 28
    .line 29
    return-void
.end method

.method public static final synthetic access$getAnimatedAlpha$p(Landroidx/compose/material/ripple/StateLayer;)Landroidx/compose/animation/core/Animatable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Landroidx/compose/animation/core/Animatable;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final drawStateLayer-H2RKhps(Landroidx/compose/ui/graphics/drawscope/DrawScope;FJ)V
    .locals 16
    .param p1    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "$this$drawStateLayer"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-boolean v2, v0, Landroidx/compose/material/ripple/StateLayer;->bounded:Z

    .line 17
    .line 18
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/material/ripple/RippleAnimationKt;->getRippleEndRadius-cSwnlzA(Landroidx/compose/ui/unit/Density;ZJ)F

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    :goto_0
    move v4, v2

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-interface/range {p1 .. p2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    goto :goto_0

    .line 33
    :goto_1
    iget-object v2, v0, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Landroidx/compose/animation/core/Animatable;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/lang/Number;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    const/4 v2, 0x0

    .line 46
    cmpl-float v2, v7, v2

    .line 47
    .line 48
    if-lez v2, :cond_2

    .line 49
    .line 50
    const/16 v11, 0xe

    .line 51
    .line 52
    const/4 v12, 0x0

    .line 53
    const/4 v8, 0x0

    .line 54
    const/4 v9, 0x0

    .line 55
    const/4 v10, 0x0

    .line 56
    move-wide/from16 v5, p3

    .line 57
    .line 58
    invoke-static/range {v5 .. v12}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    iget-boolean v5, v0, Landroidx/compose/material/ripple/StateLayer;->bounded:Z

    .line 63
    .line 64
    if-eqz v5, :cond_1

    .line 65
    .line 66
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 67
    .line 68
    .line 69
    move-result-wide v5

    .line 70
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 75
    .line 76
    .line 77
    move-result-wide v5

    .line 78
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    sget-object v5, Landroidx/compose/ui/graphics/ClipOp;->Companion:Landroidx/compose/ui/graphics/ClipOp$Companion;

    .line 83
    .line 84
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/ClipOp$Companion;->getIntersect-rtfAjoo()I

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 89
    .line 90
    .line 91
    move-result-object v13

    .line 92
    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getSize-NH-jbRc()J

    .line 93
    .line 94
    .line 95
    move-result-wide v14

    .line 96
    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-interface {v5}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 101
    .line 102
    .line 103
    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    const/4 v8, 0x0

    .line 108
    const/4 v9, 0x0

    .line 109
    invoke-interface/range {v7 .. v12}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->clipRect-N_I0leg(FFFFI)V

    .line 110
    .line 111
    .line 112
    const/16 v11, 0x7c

    .line 113
    .line 114
    const/4 v12, 0x0

    .line 115
    const-wide/16 v5, 0x0

    .line 116
    .line 117
    const/4 v7, 0x0

    .line 118
    const/4 v8, 0x0

    .line 119
    const/4 v9, 0x0

    .line 120
    const/4 v10, 0x0

    .line 121
    move-object/from16 v1, p1

    .line 122
    .line 123
    invoke-static/range {v1 .. v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope$DefaultImpls;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 131
    .line 132
    .line 133
    invoke-interface {v13, v14, v15}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_1
    const/16 v11, 0x7c

    .line 138
    .line 139
    const/4 v12, 0x0

    .line 140
    const-wide/16 v5, 0x0

    .line 141
    .line 142
    const/4 v7, 0x0

    .line 143
    const/4 v8, 0x0

    .line 144
    const/4 v9, 0x0

    .line 145
    const/4 v10, 0x0

    .line 146
    move-object/from16 v1, p1

    .line 147
    .line 148
    invoke-static/range {v1 .. v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope$DefaultImpls;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    :cond_2
    :goto_2
    return-void
.end method

.method public final handleInteraction(Landroidx/compose/foundation/interaction/Interaction;Lgt/g0;)V
    .locals 9
    .param p1    # Landroidx/compose/foundation/interaction/Interaction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "interaction"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "scope"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    instance-of v0, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/util/List;

    .line 26
    .line 27
    move-object v2, p1

    .line 28
    check-cast v2, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;->getEnter()Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    instance-of v1, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    iget-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    instance-of v1, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    iget-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/util/List;

    .line 53
    .line 54
    move-object v2, p1

    .line 55
    check-cast v2, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 56
    .line 57
    invoke-virtual {v2}, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;->getFocus()Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    instance-of v1, p1, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 66
    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    iget-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/util/List;

    .line 70
    .line 71
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    instance-of v1, p1, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    .line 76
    .line 77
    if-eqz v1, :cond_5

    .line 78
    .line 79
    iget-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/util/List;

    .line 80
    .line 81
    move-object v2, p1

    .line 82
    check-cast v2, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    .line 83
    .line 84
    invoke-virtual {v2}, Landroidx/compose/foundation/interaction/DragInteraction$Stop;->getStart()Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_5
    instance-of v1, p1, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    .line 93
    .line 94
    if-eqz v1, :cond_a

    .line 95
    .line 96
    iget-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/util/List;

    .line 97
    .line 98
    move-object v2, p1

    .line 99
    check-cast v2, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    .line 100
    .line 101
    invoke-virtual {v2}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;->getStart()Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    :goto_0
    iget-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/util/List;

    .line 109
    .line 110
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->D0(Ljava/util/List;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Landroidx/compose/foundation/interaction/Interaction;

    .line 115
    .line 116
    iget-object v2, p0, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Landroidx/compose/foundation/interaction/Interaction;

    .line 117
    .line 118
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-nez v2, :cond_a

    .line 123
    .line 124
    const/4 v2, 0x0

    .line 125
    if-eqz v1, :cond_9

    .line 126
    .line 127
    if-eqz v0, :cond_6

    .line 128
    .line 129
    iget-object p1, p0, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Landroidx/compose/runtime/State;

    .line 130
    .line 131
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    check-cast p1, Landroidx/compose/material/ripple/RippleAlpha;

    .line 136
    .line 137
    invoke-virtual {p1}, Landroidx/compose/material/ripple/RippleAlpha;->getHoveredAlpha()F

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    goto :goto_1

    .line 142
    :cond_6
    instance-of v0, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 143
    .line 144
    if-eqz v0, :cond_7

    .line 145
    .line 146
    iget-object p1, p0, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Landroidx/compose/runtime/State;

    .line 147
    .line 148
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    check-cast p1, Landroidx/compose/material/ripple/RippleAlpha;

    .line 153
    .line 154
    invoke-virtual {p1}, Landroidx/compose/material/ripple/RippleAlpha;->getFocusedAlpha()F

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    goto :goto_1

    .line 159
    :cond_7
    instance-of p1, p1, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 160
    .line 161
    if-eqz p1, :cond_8

    .line 162
    .line 163
    iget-object p1, p0, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Landroidx/compose/runtime/State;

    .line 164
    .line 165
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    check-cast p1, Landroidx/compose/material/ripple/RippleAlpha;

    .line 170
    .line 171
    invoke-virtual {p1}, Landroidx/compose/material/ripple/RippleAlpha;->getDraggedAlpha()F

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    goto :goto_1

    .line 176
    :cond_8
    const/4 p1, 0x0

    .line 177
    :goto_1
    invoke-static {v1}, Landroidx/compose/material/ripple/RippleKt;->access$incomingStateLayerAnimationSpecFor(Landroidx/compose/foundation/interaction/Interaction;)Landroidx/compose/animation/core/AnimationSpec;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    new-instance v6, Landroidx/compose/material/ripple/StateLayer$handleInteraction$1;

    .line 182
    .line 183
    invoke-direct {v6, p0, p1, v0, v2}, Landroidx/compose/material/ripple/StateLayer$handleInteraction$1;-><init>(Landroidx/compose/material/ripple/StateLayer;FLandroidx/compose/animation/core/AnimationSpec;Lrs/c;)V

    .line 184
    .line 185
    .line 186
    const/4 v7, 0x3

    .line 187
    const/4 v8, 0x0

    .line 188
    const/4 v4, 0x0

    .line 189
    const/4 v5, 0x0

    .line 190
    move-object v3, p2

    .line 191
    invoke-static/range {v3 .. v8}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_9
    iget-object p1, p0, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Landroidx/compose/foundation/interaction/Interaction;

    .line 196
    .line 197
    invoke-static {p1}, Landroidx/compose/material/ripple/RippleKt;->access$outgoingStateLayerAnimationSpecFor(Landroidx/compose/foundation/interaction/Interaction;)Landroidx/compose/animation/core/AnimationSpec;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    new-instance v6, Landroidx/compose/material/ripple/StateLayer$handleInteraction$2;

    .line 202
    .line 203
    invoke-direct {v6, p0, p1, v2}, Landroidx/compose/material/ripple/StateLayer$handleInteraction$2;-><init>(Landroidx/compose/material/ripple/StateLayer;Landroidx/compose/animation/core/AnimationSpec;Lrs/c;)V

    .line 204
    .line 205
    .line 206
    const/4 v7, 0x3

    .line 207
    const/4 v8, 0x0

    .line 208
    const/4 v4, 0x0

    .line 209
    const/4 v5, 0x0

    .line 210
    move-object v3, p2

    .line 211
    invoke-static/range {v3 .. v8}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 212
    .line 213
    .line 214
    :goto_2
    iput-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Landroidx/compose/foundation/interaction/Interaction;

    .line 215
    .line 216
    :cond_a
    return-void
.end method
