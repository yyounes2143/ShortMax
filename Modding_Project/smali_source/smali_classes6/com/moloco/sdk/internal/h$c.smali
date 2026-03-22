.class public final Lcom/moloco/sdk/internal/h$c;
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
        "Lat/r<",
        "-",
        "Landroidx/compose/foundation/layout/BoxScope;",
        "-",
        "Ljava/lang/Boolean;",
        "-",
        "Ljava/lang/Boolean;",
        "-",
        "Lkotlin/jvm/functions/Function2<",
        "-",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
        "-",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;",
        "+",
        "Lkotlin/Unit;",
        ">;-",
        "Lkotlin/jvm/functions/Function1<",
        "-",
        "Ljava/lang/Boolean;",
        "+",
        "Lkotlin/Unit;",
        ">;-",
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
        "SMAP\nAggregatedOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AggregatedOptions.kt\ncom/moloco/sdk/internal/AggregatedOptionsKt$toVastOptions$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,283:1\n155#2:284\n155#2:286\n1#3:285\n*S KotlinDebug\n*F\n+ 1 AggregatedOptions.kt\ncom/moloco/sdk/internal/AggregatedOptionsKt$toVastOptions$1\n*L\n78#1:284\n82#1:286\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/moloco/sdk/internal/ortb/model/p;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/ortb/model/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/h$c;->a:Lcom/moloco/sdk/internal/ortb/model/p;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)Lat/r;
    .locals 18
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Lat/r<",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
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
    const v1, 0x3c60f857

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
    const-string v3, "com.moloco.sdk.internal.toVastOptions.<anonymous> (AggregatedOptions.kt:77)"

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
    iget-object v1, v0, Lcom/moloco/sdk/internal/h$c;->a:Lcom/moloco/sdk/internal/ortb/model/p;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ortb/model/p;->g()Lcom/moloco/sdk/internal/ortb/model/o;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ortb/model/o;->c()Lms/n;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1}, Lms/n;->g()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    int-to-float v1, v1

    .line 42
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-static {v1, v1}, Landroidx/compose/ui/unit/DpKt;->DpSize-YgX7TsA(FF)J

    .line 47
    .line 48
    .line 49
    move-result-wide v1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-static {}, Lcom/moloco/sdk/internal/h;->o()J

    .line 52
    .line 53
    .line 54
    move-result-wide v1

    .line 55
    :goto_0
    iget-object v3, v0, Lcom/moloco/sdk/internal/h$c;->a:Lcom/moloco/sdk/internal/ortb/model/p;

    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/ortb/model/p;->g()Lcom/moloco/sdk/internal/ortb/model/o;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/ortb/model/o;->e()Lcom/moloco/sdk/internal/ortb/model/l;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    iget-object v4, v0, Lcom/moloco/sdk/internal/h$c;->a:Lcom/moloco/sdk/internal/ortb/model/p;

    .line 66
    .line 67
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/ortb/model/p;->g()Lcom/moloco/sdk/internal/ortb/model/o;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/ortb/model/o;->h()Lcom/moloco/sdk/internal/ortb/model/v;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-static {v3, v4}, Lcom/moloco/sdk/internal/h;->a(Lcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;)Landroidx/compose/ui/Alignment;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    iget-object v3, v0, Lcom/moloco/sdk/internal/h$c;->a:Lcom/moloco/sdk/internal/ortb/model/p;

    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/ortb/model/p;->g()Lcom/moloco/sdk/internal/ortb/model/o;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/ortb/model/o;->g()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    int-to-float v3, v3

    .line 90
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    invoke-static {v3}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    const v3, 0x3f19999a    # 0.6f

    .line 99
    .line 100
    .line 101
    invoke-static {v1, v2, v3}, Landroidx/compose/ui/unit/DpSize;->times-Gh9hcWk(JF)J

    .line 102
    .line 103
    .line 104
    move-result-wide v3

    .line 105
    iget-object v5, v0, Lcom/moloco/sdk/internal/h$c;->a:Lcom/moloco/sdk/internal/ortb/model/p;

    .line 106
    .line 107
    invoke-virtual {v5}, Lcom/moloco/sdk/internal/ortb/model/p;->g()Lcom/moloco/sdk/internal/ortb/model/o;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {v5}, Lcom/moloco/sdk/internal/ortb/model/o;->d()J

    .line 112
    .line 113
    .line 114
    move-result-wide v10

    .line 115
    iget-object v5, v0, Lcom/moloco/sdk/internal/h$c;->a:Lcom/moloco/sdk/internal/ortb/model/p;

    .line 116
    .line 117
    invoke-virtual {v5}, Lcom/moloco/sdk/internal/ortb/model/p;->g()Lcom/moloco/sdk/internal/ortb/model/o;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v5}, Lcom/moloco/sdk/internal/ortb/model/o;->a()Landroidx/compose/ui/graphics/Color;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    if-eqz v5, :cond_2

    .line 126
    .line 127
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 128
    .line 129
    .line 130
    move-result-wide v5

    .line 131
    :goto_1
    move-wide v6, v5

    .line 132
    goto :goto_2

    .line 133
    :cond_2
    invoke-static {}, Lcom/moloco/sdk/internal/h;->n()J

    .line 134
    .line 135
    .line 136
    move-result-wide v5

    .line 137
    goto :goto_1

    .line 138
    :goto_2
    sget v5, Lcom/moloco/sdk/o;->l:I

    .line 139
    .line 140
    const/4 v13, 0x0

    .line 141
    invoke-static {v5, v15, v13}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    .line 142
    .line 143
    .line 144
    move-result-object v12

    .line 145
    sget v5, Lcom/moloco/sdk/o;->m:I

    .line 146
    .line 147
    invoke-static {v5, v15, v13}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    .line 148
    .line 149
    .line 150
    move-result-object v13

    .line 151
    const/16 v16, 0x0

    .line 152
    .line 153
    const/16 v17, 0x204

    .line 154
    .line 155
    const/4 v5, 0x0

    .line 156
    const/4 v14, 0x0

    .line 157
    move-object/from16 v15, p1

    .line 158
    .line 159
    invoke-static/range {v1 .. v17}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n;->c(JJLandroidx/compose/ui/graphics/Shape;JLandroidx/compose/ui/Alignment;Landroidx/compose/foundation/layout/PaddingValues;JLandroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Lat/r;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-eqz v2, :cond_3

    .line 168
    .line 169
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 170
    .line 171
    .line 172
    :cond_3
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 173
    .line 174
    .line 175
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/h$c;->a(Landroidx/compose/runtime/Composer;I)Lat/r;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
