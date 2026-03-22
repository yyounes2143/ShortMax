.class final Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TabRow.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TabRowKt$ScrollableTabRow$2;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $divider:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $edgePadding:F

.field final synthetic $indicator:Lat/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/n<",
            "Ljava/util/List<",
            "Landroidx/compose/material/TabPosition;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scrollableTabData:Landroidx/compose/material/ScrollableTabData;

.field final synthetic $selectedTabIndex:I

.field final synthetic $tabs:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(FLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material/ScrollableTabData;ILat/n;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/material/ScrollableTabData;",
            "I",
            "Lat/n<",
            "-",
            "Ljava/util/List<",
            "Landroidx/compose/material/TabPosition;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$edgePadding:F

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$tabs:Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$divider:Lkotlin/jvm/functions/Function2;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$scrollableTabData:Landroidx/compose/material/ScrollableTabData;

    .line 8
    .line 9
    iput p5, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$selectedTabIndex:I

    .line 10
    .line 11
    iput-object p6, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$indicator:Lat/n;

    .line 12
    .line 13
    iput p7, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$$dirty:I

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/ui/unit/Constraints;

    .line 4
    .line 5
    invoke-virtual {p2}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->invoke-0kLqBqw(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final invoke-0kLqBqw(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 19
    .param p1    # Landroidx/compose/ui/layout/SubcomposeMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v14, p1

    .line 4
    .line 5
    const-string v1, "$this$SubcomposeLayout"

    .line 6
    .line 7
    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroidx/compose/material/TabRowKt;->access$getScrollableTabRowMinimumTabWidth$p()F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-interface {v14, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    iget v1, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$edgePadding:F

    .line 19
    .line 20
    invoke-interface {v14, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 21
    .line 22
    .line 23
    move-result v10

    .line 24
    const/16 v8, 0xe

    .line 25
    .line 26
    const/4 v9, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v7, 0x0

    .line 30
    move-wide/from16 v2, p2

    .line 31
    .line 32
    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    sget-object v3, Landroidx/compose/material/TabSlots;->Tabs:Landroidx/compose/material/TabSlots;

    .line 37
    .line 38
    iget-object v4, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$tabs:Lkotlin/jvm/functions/Function2;

    .line 39
    .line 40
    invoke-interface {v14, v3, v4}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Ljava/lang/Iterable;

    .line 45
    .line 46
    new-instance v4, Ljava/util/ArrayList;

    .line 47
    .line 48
    const/16 v5, 0xa

    .line 49
    .line 50
    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_0

    .line 66
    .line 67
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    .line 72
    .line 73
    invoke-interface {v5, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    new-instance v11, Lkotlin/jvm/internal/Ref$IntRef;

    .line 82
    .line 83
    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 84
    .line 85
    .line 86
    mul-int/lit8 v1, v10, 0x2

    .line 87
    .line 88
    iput v1, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 89
    .line 90
    new-instance v12, Lkotlin/jvm/internal/Ref$IntRef;

    .line 91
    .line 92
    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_1

    .line 104
    .line 105
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Landroidx/compose/ui/layout/Placeable;

    .line 110
    .line 111
    iget v3, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 112
    .line 113
    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    add-int/2addr v3, v5

    .line 118
    iput v3, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 119
    .line 120
    iget v3, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 121
    .line 122
    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    iput v2, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_1
    iget v15, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 134
    .line 135
    iget v13, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 136
    .line 137
    new-instance v16, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;

    .line 138
    .line 139
    iget-object v5, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$divider:Lkotlin/jvm/functions/Function2;

    .line 140
    .line 141
    iget-object v6, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$scrollableTabData:Landroidx/compose/material/ScrollableTabData;

    .line 142
    .line 143
    iget v7, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$selectedTabIndex:I

    .line 144
    .line 145
    iget-object v8, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$indicator:Lat/n;

    .line 146
    .line 147
    iget v9, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$$dirty:I

    .line 148
    .line 149
    move-object/from16 v1, v16

    .line 150
    .line 151
    move v2, v10

    .line 152
    move-object v3, v4

    .line 153
    move-object/from16 v4, p1

    .line 154
    .line 155
    move-object/from16 v17, v8

    .line 156
    .line 157
    move/from16 v18, v9

    .line 158
    .line 159
    move-wide/from16 v8, p2

    .line 160
    .line 161
    move-object v10, v11

    .line 162
    move-object v11, v12

    .line 163
    move-object/from16 v12, v17

    .line 164
    .line 165
    move/from16 v17, v13

    .line 166
    .line 167
    move/from16 v13, v18

    .line 168
    .line 169
    invoke-direct/range {v1 .. v13}, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;-><init>(ILjava/util/List;Landroidx/compose/ui/layout/SubcomposeMeasureScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/material/ScrollableTabData;IJLkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lat/n;I)V

    .line 170
    .line 171
    .line 172
    const/4 v6, 0x4

    .line 173
    const/4 v7, 0x0

    .line 174
    const/4 v4, 0x0

    .line 175
    move-object/from16 v1, p1

    .line 176
    .line 177
    move v2, v15

    .line 178
    move/from16 v3, v17

    .line 179
    .line 180
    move-object/from16 v5, v16

    .line 181
    .line 182
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    return-object v1
.end method
