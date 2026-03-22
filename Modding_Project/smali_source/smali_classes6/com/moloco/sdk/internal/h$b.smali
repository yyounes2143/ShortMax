.class public final Lcom/moloco/sdk/internal/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/h;->f(Lcom/moloco/sdk/internal/ortb/model/t;ZLcom/moloco/sdk/internal/ortb/model/i;)Lkotlin/jvm/functions/Function2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lat/a<",
        "-",
        "Landroidx/compose/foundation/layout/BoxScope;",
        "-",
        "Ljava/lang/Boolean;",
        "-",
        "Ljava/lang/Boolean;",
        "-",
        "Lkotlin/jvm/functions/Function0<",
        "+",
        "Lkotlin/Unit;",
        ">;-",
        "Lkotlin/jvm/functions/Function1<",
        "-",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
        "+",
        "Lkotlin/Unit;",
        ">;-",
        "Ljava/lang/Boolean;",
        "-",
        "Lms/n;",
        "-",
        "Lms/n;",
        "-",
        "Landroidx/compose/runtime/Composer;",
        "-",
        "Ljava/lang/Integer;",
        "+",
        "Lkotlin/Unit;",
        ">;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAggregatedOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AggregatedOptions.kt\ncom/moloco/sdk/internal/AggregatedOptionsKt$toCloseButton$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 TextUnit.kt\nandroidx/compose/ui/unit/TextUnit\n*L\n1#1,283:1\n155#2:284\n155#2:286\n1#3:285\n128#4,2:287\n*S KotlinDebug\n*F\n+ 1 AggregatedOptions.kt\ncom/moloco/sdk/internal/AggregatedOptionsKt$toCloseButton$1\n*L\n205#1:284\n209#1:286\n212#1:287,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/moloco/sdk/internal/ortb/model/t;

.field public final synthetic c:Lcom/moloco/sdk/internal/ortb/model/i;


# direct methods
.method public constructor <init>(ZLcom/moloco/sdk/internal/ortb/model/t;Lcom/moloco/sdk/internal/ortb/model/i;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/moloco/sdk/internal/h$b;->a:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/h$b;->b:Lcom/moloco/sdk/internal/ortb/model/t;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/internal/h$b;->c:Lcom/moloco/sdk/internal/ortb/model/i;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)Lat/a;
    .locals 23
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Lat/a<",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Boolean;",
            "Lms/n;",
            "Lms/n;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v15, p1

    .line 4
    .line 5
    const v1, 0x7ada6171

    .line 6
    .line 7
    .line 8
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    const-string v3, "com.moloco.sdk.internal.toCloseButton.<anonymous> (AggregatedOptions.kt:200)"

    .line 19
    .line 20
    move/from16 v4, p2

    .line 21
    .line 22
    invoke-static {v1, v4, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-boolean v1, v0, Lcom/moloco/sdk/internal/h$b;->a:Z

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :cond_1
    iget-object v1, v0, Lcom/moloco/sdk/internal/h$b;->b:Lcom/moloco/sdk/internal/ortb/model/t;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ortb/model/t;->c()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    int-to-float v1, v1

    .line 39
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-static {v1, v1}, Landroidx/compose/ui/unit/DpKt;->DpSize-YgX7TsA(FF)J

    .line 44
    .line 45
    .line 46
    move-result-wide v10

    .line 47
    iget-object v1, v0, Lcom/moloco/sdk/internal/h$b;->b:Lcom/moloco/sdk/internal/ortb/model/t;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ortb/model/t;->f()Lcom/moloco/sdk/internal/ortb/model/l;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v2, v0, Lcom/moloco/sdk/internal/h$b;->b:Lcom/moloco/sdk/internal/ortb/model/t;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/ortb/model/t;->h()Lcom/moloco/sdk/internal/ortb/model/v;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v1, v2}, Lcom/moloco/sdk/internal/h;->a(Lcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;)Landroidx/compose/ui/Alignment;

    .line 60
    .line 61
    .line 62
    move-result-object v12

    .line 63
    iget-object v1, v0, Lcom/moloco/sdk/internal/h$b;->b:Lcom/moloco/sdk/internal/ortb/model/t;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ortb/model/t;->g()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    int-to-float v1, v1

    .line 70
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-static {v1}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    .line 75
    .line 76
    .line 77
    move-result-object v13

    .line 78
    iget-object v1, v0, Lcom/moloco/sdk/internal/h$b;->b:Lcom/moloco/sdk/internal/ortb/model/t;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ortb/model/t;->e()J

    .line 81
    .line 82
    .line 83
    move-result-wide v16

    .line 84
    iget-object v1, v0, Lcom/moloco/sdk/internal/h$b;->b:Lcom/moloco/sdk/internal/ortb/model/t;

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ortb/model/t;->c()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-static {v1}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    .line 91
    .line 92
    .line 93
    move-result-wide v1

    .line 94
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnitKt;->checkArithmetic--R2X_6o(J)V

    .line 95
    .line 96
    .line 97
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnit;->getRawType-impl(J)J

    .line 98
    .line 99
    .line 100
    move-result-wide v3

    .line 101
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    const/4 v2, 0x2

    .line 106
    int-to-float v2, v2

    .line 107
    div-float/2addr v1, v2

    .line 108
    invoke-static {v3, v4, v1}, Landroidx/compose/ui/unit/TextUnitKt;->pack(JF)J

    .line 109
    .line 110
    .line 111
    move-result-wide v18

    .line 112
    sget v1, Lcom/moloco/sdk/o;->f:I

    .line 113
    .line 114
    const/4 v2, 0x0

    .line 115
    invoke-static {v1, v15, v2}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    const v2, 0x3ee66666    # 0.45f

    .line 120
    .line 121
    .line 122
    invoke-static {v10, v11, v2}, Landroidx/compose/ui/unit/DpSize;->times-Gh9hcWk(JF)J

    .line 123
    .line 124
    .line 125
    move-result-wide v2

    .line 126
    iget-object v4, v0, Lcom/moloco/sdk/internal/h$b;->b:Lcom/moloco/sdk/internal/ortb/model/t;

    .line 127
    .line 128
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/ortb/model/t;->a()Landroidx/compose/ui/graphics/Color;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    if-eqz v4, :cond_2

    .line 133
    .line 134
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 135
    .line 136
    .line 137
    move-result-wide v4

    .line 138
    :goto_0
    move-wide v5, v4

    .line 139
    goto :goto_1

    .line 140
    :cond_2
    invoke-static {}, Lcom/moloco/sdk/internal/h;->n()J

    .line 141
    .line 142
    .line 143
    move-result-wide v4

    .line 144
    goto :goto_0

    .line 145
    :goto_1
    const/4 v8, 0x0

    .line 146
    const/4 v9, 0x4

    .line 147
    const/4 v4, 0x0

    .line 148
    move-object/from16 v7, p1

    .line 149
    .line 150
    invoke-static/range {v1 .. v9}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/c0;->b(Landroidx/compose/ui/graphics/painter/Painter;JLandroidx/compose/ui/graphics/Shape;JLandroidx/compose/runtime/Composer;II)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    iget-object v14, v0, Lcom/moloco/sdk/internal/h$b;->c:Lcom/moloco/sdk/internal/ortb/model/i;

    .line 155
    .line 156
    const/16 v20, 0x0

    .line 157
    .line 158
    const/16 v21, 0x40

    .line 159
    .line 160
    const/16 v22, 0x0

    .line 161
    .line 162
    move-object v1, v12

    .line 163
    move-object v2, v13

    .line 164
    move-wide/from16 v3, v16

    .line 165
    .line 166
    move-wide v5, v10

    .line 167
    move-wide/from16 v7, v18

    .line 168
    .line 169
    move-object/from16 v10, v22

    .line 170
    .line 171
    move-object v11, v14

    .line 172
    move-object/from16 v12, p1

    .line 173
    .line 174
    move/from16 v13, v20

    .line 175
    .line 176
    move/from16 v14, v21

    .line 177
    .line 178
    invoke-static/range {v1 .. v14}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/c0;->a(Landroidx/compose/ui/Alignment;Landroidx/compose/foundation/layout/PaddingValues;JJJLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/internal/ortb/model/i;Landroidx/compose/runtime/Composer;II)Lat/a;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-eqz v2, :cond_3

    .line 187
    .line 188
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 189
    .line 190
    .line 191
    :cond_3
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 192
    .line 193
    .line 194
    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Number;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/h$b;->a(Landroidx/compose/runtime/Composer;I)Lat/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
