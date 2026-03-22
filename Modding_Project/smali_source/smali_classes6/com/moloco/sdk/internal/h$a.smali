.class public final Lcom/moloco/sdk/internal/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/h;->h(ZLcom/moloco/sdk/internal/ortb/model/t;Lcom/moloco/sdk/internal/ortb/model/j;Lcom/moloco/sdk/internal/ortb/model/i;)Lkotlin/jvm/functions/Function2;
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
        "SMAP\nAggregatedOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AggregatedOptions.kt\ncom/moloco/sdk/internal/AggregatedOptionsKt$determineSkipCloseBehaviorFromDec$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 TextUnit.kt\nandroidx/compose/ui/unit/TextUnit\n*L\n1#1,283:1\n155#2:284\n155#2:286\n1#3:285\n128#4,2:287\n*S KotlinDebug\n*F\n+ 1 AggregatedOptions.kt\ncom/moloco/sdk/internal/AggregatedOptionsKt$determineSkipCloseBehaviorFromDec$1\n*L\n183#1:284\n186#1:286\n189#1:287,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/moloco/sdk/internal/ortb/model/t;

.field public final synthetic b:Lcom/moloco/sdk/internal/ortb/model/i;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/ortb/model/t;Lcom/moloco/sdk/internal/ortb/model/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/h$a;->a:Lcom/moloco/sdk/internal/ortb/model/t;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/h$a;->b:Lcom/moloco/sdk/internal/ortb/model/i;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)Lat/a;
    .locals 20
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
    const v1, -0x4d6fe5bc

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
    const-string v3, "com.moloco.sdk.internal.determineSkipCloseBehaviorFromDec.<anonymous> (AggregatedOptions.kt:182)"

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
    iget-object v1, v0, Lcom/moloco/sdk/internal/h$a;->a:Lcom/moloco/sdk/internal/ortb/model/t;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ortb/model/t;->c()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    int-to-float v1, v1

    .line 32
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-static {v1, v1}, Landroidx/compose/ui/unit/DpKt;->DpSize-YgX7TsA(FF)J

    .line 37
    .line 38
    .line 39
    move-result-wide v8

    .line 40
    iget-object v1, v0, Lcom/moloco/sdk/internal/h$a;->a:Lcom/moloco/sdk/internal/ortb/model/t;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ortb/model/t;->f()Lcom/moloco/sdk/internal/ortb/model/l;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v2, v0, Lcom/moloco/sdk/internal/h$a;->a:Lcom/moloco/sdk/internal/ortb/model/t;

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/ortb/model/t;->h()Lcom/moloco/sdk/internal/ortb/model/v;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v1, v2}, Lcom/moloco/sdk/internal/h;->a(Lcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;)Landroidx/compose/ui/Alignment;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object v2, v0, Lcom/moloco/sdk/internal/h$a;->a:Lcom/moloco/sdk/internal/ortb/model/t;

    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/ortb/model/t;->g()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    int-to-float v2, v2

    .line 63
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-static {v2}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    iget-object v2, v0, Lcom/moloco/sdk/internal/h$a;->a:Lcom/moloco/sdk/internal/ortb/model/t;

    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/ortb/model/t;->e()J

    .line 74
    .line 75
    .line 76
    move-result-wide v11

    .line 77
    iget-object v2, v0, Lcom/moloco/sdk/internal/h$a;->a:Lcom/moloco/sdk/internal/ortb/model/t;

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/ortb/model/t;->c()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    .line 84
    .line 85
    .line 86
    move-result-wide v2

    .line 87
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/TextUnitKt;->checkArithmetic--R2X_6o(J)V

    .line 88
    .line 89
    .line 90
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/TextUnit;->getRawType-impl(J)J

    .line 91
    .line 92
    .line 93
    move-result-wide v4

    .line 94
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    const/4 v3, 0x2

    .line 99
    int-to-float v3, v3

    .line 100
    div-float/2addr v2, v3

    .line 101
    invoke-static {v4, v5, v2}, Landroidx/compose/ui/unit/TextUnitKt;->pack(JF)J

    .line 102
    .line 103
    .line 104
    move-result-wide v13

    .line 105
    const v2, 0x3ecccccd    # 0.4f

    .line 106
    .line 107
    .line 108
    invoke-static {v8, v9, v2}, Landroidx/compose/ui/unit/DpSize;->times-Gh9hcWk(JF)J

    .line 109
    .line 110
    .line 111
    move-result-wide v2

    .line 112
    iget-object v4, v0, Lcom/moloco/sdk/internal/h$a;->a:Lcom/moloco/sdk/internal/ortb/model/t;

    .line 113
    .line 114
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/ortb/model/t;->a()Landroidx/compose/ui/graphics/Color;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    if-eqz v4, :cond_1

    .line 119
    .line 120
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 121
    .line 122
    .line 123
    move-result-wide v4

    .line 124
    goto :goto_0

    .line 125
    :cond_1
    invoke-static {}, Lcom/moloco/sdk/internal/h;->n()J

    .line 126
    .line 127
    .line 128
    move-result-wide v4

    .line 129
    :goto_0
    const/4 v7, 0x0

    .line 130
    move-object/from16 v6, p1

    .line 131
    .line 132
    invoke-static/range {v2 .. v7}, Lcom/moloco/sdk/internal/h;->e(JJLandroidx/compose/runtime/Composer;I)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;

    .line 133
    .line 134
    .line 135
    move-result-object v16

    .line 136
    iget-object v6, v0, Lcom/moloco/sdk/internal/h$a;->b:Lcom/moloco/sdk/internal/ortb/model/i;

    .line 137
    .line 138
    const/16 v17, 0x0

    .line 139
    .line 140
    const/16 v18, 0x40

    .line 141
    .line 142
    const/16 v19, 0x0

    .line 143
    .line 144
    move-object v2, v1

    .line 145
    move-object v3, v10

    .line 146
    move-wide v4, v11

    .line 147
    move-object v1, v6

    .line 148
    move-wide v6, v8

    .line 149
    move-wide v8, v13

    .line 150
    move-object/from16 v10, v16

    .line 151
    .line 152
    move-object/from16 v11, v19

    .line 153
    .line 154
    move-object v12, v1

    .line 155
    move-object/from16 v13, p1

    .line 156
    .line 157
    move/from16 v14, v17

    .line 158
    .line 159
    move/from16 v15, v18

    .line 160
    .line 161
    invoke-static/range {v2 .. v15}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/p;->a(Landroidx/compose/ui/Alignment;Landroidx/compose/foundation/layout/PaddingValues;JJJLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/internal/ortb/model/i;Landroidx/compose/runtime/Composer;II)Lat/a;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-eqz v2, :cond_2

    .line 170
    .line 171
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 172
    .line 173
    .line 174
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 175
    .line 176
    .line 177
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/h$a;->a(Landroidx/compose/runtime/Composer;I)Lat/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
