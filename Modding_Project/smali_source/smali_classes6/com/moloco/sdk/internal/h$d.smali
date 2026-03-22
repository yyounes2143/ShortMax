.class public final Lcom/moloco/sdk/internal/h$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/h;->l(Lcom/moloco/sdk/internal/ortb/model/p;Z)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;
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
        "SMAP\nAggregatedOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AggregatedOptions.kt\ncom/moloco/sdk/internal/AggregatedOptionsKt$toVastOptions$2\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 TextUnit.kt\nandroidx/compose/ui/unit/TextUnit\n*L\n1#1,283:1\n155#2:284\n155#2:286\n1#3:285\n128#4,2:287\n*S KotlinDebug\n*F\n+ 1 AggregatedOptions.kt\ncom/moloco/sdk/internal/AggregatedOptionsKt$toVastOptions$2\n*L\n94#1:284\n98#1:286\n101#1:287,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/moloco/sdk/internal/ortb/model/p;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/ortb/model/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/h$d;->a:Lcom/moloco/sdk/internal/ortb/model/p;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)Lat/a;
    .locals 22
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
    const v1, -0xa0c118e

    .line 4
    .line 5
    .line 6
    move-object/from16 v15, p1

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
    const-string v3, "com.moloco.sdk.internal.toVastOptions.<anonymous> (AggregatedOptions.kt:92)"

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
    iget-object v1, v0, Lcom/moloco/sdk/internal/h$d;->a:Lcom/moloco/sdk/internal/ortb/model/p;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ortb/model/p;->i()Lcom/moloco/sdk/internal/ortb/model/t;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :cond_1
    iget-object v8, v0, Lcom/moloco/sdk/internal/h$d;->a:Lcom/moloco/sdk/internal/ortb/model/p;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ortb/model/t;->c()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    int-to-float v2, v2

    .line 43
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-static {v2, v2}, Landroidx/compose/ui/unit/DpKt;->DpSize-YgX7TsA(FF)J

    .line 48
    .line 49
    .line 50
    move-result-wide v9

    .line 51
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ortb/model/t;->f()Lcom/moloco/sdk/internal/ortb/model/l;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ortb/model/t;->h()Lcom/moloco/sdk/internal/ortb/model/v;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-static {v2, v3}, Lcom/moloco/sdk/internal/h;->a(Lcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;)Landroidx/compose/ui/Alignment;

    .line 60
    .line 61
    .line 62
    move-result-object v11

    .line 63
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ortb/model/t;->g()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    int-to-float v2, v2

    .line 68
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-static {v2}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    .line 73
    .line 74
    .line 75
    move-result-object v12

    .line 76
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ortb/model/t;->e()J

    .line 77
    .line 78
    .line 79
    move-result-wide v13

    .line 80
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ortb/model/t;->c()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    .line 85
    .line 86
    .line 87
    move-result-wide v2

    .line 88
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/TextUnitKt;->checkArithmetic--R2X_6o(J)V

    .line 89
    .line 90
    .line 91
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/TextUnit;->getRawType-impl(J)J

    .line 92
    .line 93
    .line 94
    move-result-wide v4

    .line 95
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    const/4 v3, 0x2

    .line 100
    int-to-float v3, v3

    .line 101
    div-float/2addr v2, v3

    .line 102
    invoke-static {v4, v5, v2}, Landroidx/compose/ui/unit/TextUnitKt;->pack(JF)J

    .line 103
    .line 104
    .line 105
    move-result-wide v16

    .line 106
    const v2, 0x3ecccccd    # 0.4f

    .line 107
    .line 108
    .line 109
    invoke-static {v9, v10, v2}, Landroidx/compose/ui/unit/DpSize;->times-Gh9hcWk(JF)J

    .line 110
    .line 111
    .line 112
    move-result-wide v2

    .line 113
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ortb/model/t;->a()Landroidx/compose/ui/graphics/Color;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    if-eqz v1, :cond_2

    .line 118
    .line 119
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 120
    .line 121
    .line 122
    move-result-wide v4

    .line 123
    goto :goto_0

    .line 124
    :cond_2
    invoke-static {}, Lcom/moloco/sdk/internal/h;->n()J

    .line 125
    .line 126
    .line 127
    move-result-wide v4

    .line 128
    :goto_0
    const/4 v7, 0x0

    .line 129
    move-object/from16 v6, p1

    .line 130
    .line 131
    invoke-static/range {v2 .. v7}, Lcom/moloco/sdk/internal/h;->e(JJLandroidx/compose/runtime/Composer;I)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v8}, Lcom/moloco/sdk/internal/ortb/model/p;->d()Lcom/moloco/sdk/internal/ortb/model/i;

    .line 136
    .line 137
    .line 138
    move-result-object v18

    .line 139
    const/16 v19, 0x0

    .line 140
    .line 141
    const/16 v20, 0x40

    .line 142
    .line 143
    const/16 v21, 0x0

    .line 144
    .line 145
    move-object v2, v11

    .line 146
    move-object v3, v12

    .line 147
    move-wide v4, v13

    .line 148
    move-wide v6, v9

    .line 149
    move-wide/from16 v8, v16

    .line 150
    .line 151
    move-object v10, v1

    .line 152
    move-object/from16 v11, v21

    .line 153
    .line 154
    move-object/from16 v12, v18

    .line 155
    .line 156
    move-object/from16 v13, p1

    .line 157
    .line 158
    move/from16 v14, v19

    .line 159
    .line 160
    move/from16 v15, v20

    .line 161
    .line 162
    invoke-static/range {v2 .. v15}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/p;->a(Landroidx/compose/ui/Alignment;Landroidx/compose/foundation/layout/PaddingValues;JJJLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/internal/ortb/model/i;Landroidx/compose/runtime/Composer;II)Lat/a;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-eqz v2, :cond_3

    .line 171
    .line 172
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 173
    .line 174
    .line 175
    :cond_3
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 176
    .line 177
    .line 178
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/h$d;->a(Landroidx/compose/runtime/Composer;I)Lat/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
