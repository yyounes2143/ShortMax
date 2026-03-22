.class final Landroidx/compose/material/TabRowKt$TabRow$2$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TabRow.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TabRowKt$TabRow$2;->invoke(Landroidx/compose/runtime/Composer;I)V
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
.method constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lat/n;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    iput-object p1, p0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1;->$tabs:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1;->$divider:Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1;->$indicator:Lat/n;

    .line 6
    .line 7
    iput p4, p0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1;->$$dirty:I

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 11
    .line 12
    .line 13
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
    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/material/TabRowKt$TabRow$2$1$1;->invoke-0kLqBqw(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final invoke-0kLqBqw(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 17
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
    move-object/from16 v13, p1

    .line 4
    .line 5
    const-string v1, "$this$SubcomposeLayout"

    .line 6
    .line 7
    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 11
    .line 12
    .line 13
    move-result v14

    .line 14
    sget-object v1, Landroidx/compose/material/TabSlots;->Tabs:Landroidx/compose/material/TabSlots;

    .line 15
    .line 16
    iget-object v2, v0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1;->$tabs:Lkotlin/jvm/functions/Function2;

    .line 17
    .line 18
    invoke-interface {v13, v1, v2}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    div-int v11, v14, v2

    .line 27
    .line 28
    check-cast v1, Ljava/lang/Iterable;

    .line 29
    .line 30
    new-instance v12, Ljava/util/ArrayList;

    .line 31
    .line 32
    const/16 v3, 0xa

    .line 33
    .line 34
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    move-object v15, v3

    .line 56
    check-cast v15, Landroidx/compose/ui/layout/Measurable;

    .line 57
    .line 58
    const/16 v9, 0xc

    .line 59
    .line 60
    const/4 v10, 0x0

    .line 61
    const/4 v7, 0x0

    .line 62
    const/4 v8, 0x0

    .line 63
    move-wide/from16 v3, p2

    .line 64
    .line 65
    move v5, v11

    .line 66
    move v6, v11

    .line 67
    invoke-static/range {v3 .. v10}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v3

    .line 71
    invoke-interface {v15, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-interface {v12, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    const/4 v4, 0x0

    .line 88
    if-nez v3, :cond_1

    .line 89
    .line 90
    move-object v3, v4

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-nez v5, :cond_2

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    move-object v5, v3

    .line 104
    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    .line 105
    .line 106
    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    move-object v7, v6

    .line 115
    check-cast v7, Landroidx/compose/ui/layout/Placeable;

    .line 116
    .line 117
    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    if-ge v5, v7, :cond_4

    .line 122
    .line 123
    move-object v3, v6

    .line 124
    move v5, v7

    .line 125
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-nez v6, :cond_3

    .line 130
    .line 131
    :goto_1
    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    .line 132
    .line 133
    const/4 v1, 0x0

    .line 134
    if-eqz v3, :cond_5

    .line 135
    .line 136
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    move v15, v3

    .line 141
    goto :goto_2

    .line 142
    :cond_5
    move v15, v1

    .line 143
    :goto_2
    new-instance v10, Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 146
    .line 147
    .line 148
    :goto_3
    if-ge v1, v2, :cond_6

    .line 149
    .line 150
    new-instance v3, Landroidx/compose/material/TabPosition;

    .line 151
    .line 152
    invoke-interface {v13, v11}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    int-to-float v6, v1

    .line 157
    mul-float/2addr v5, v6

    .line 158
    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    invoke-interface {v13, v11}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    invoke-direct {v3, v5, v6, v4}, Landroidx/compose/material/TabPosition;-><init>(FFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    add-int/lit8 v1, v1, 0x1

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_6
    new-instance v16, Landroidx/compose/material/TabRowKt$TabRow$2$1$1$1;

    .line 176
    .line 177
    iget-object v4, v0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1;->$divider:Lkotlin/jvm/functions/Function2;

    .line 178
    .line 179
    iget-object v9, v0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1;->$indicator:Lat/n;

    .line 180
    .line 181
    iget v8, v0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1;->$$dirty:I

    .line 182
    .line 183
    move-object/from16 v1, v16

    .line 184
    .line 185
    move-object v2, v12

    .line 186
    move-object/from16 v3, p1

    .line 187
    .line 188
    move v5, v11

    .line 189
    move-wide/from16 v6, p2

    .line 190
    .line 191
    move v11, v8

    .line 192
    move v8, v15

    .line 193
    move v12, v14

    .line 194
    invoke-direct/range {v1 .. v12}, Landroidx/compose/material/TabRowKt$TabRow$2$1$1$1;-><init>(Ljava/util/List;Landroidx/compose/ui/layout/SubcomposeMeasureScope;Lkotlin/jvm/functions/Function2;IJILat/n;Ljava/util/List;II)V

    .line 195
    .line 196
    .line 197
    const/4 v6, 0x4

    .line 198
    const/4 v7, 0x0

    .line 199
    const/4 v4, 0x0

    .line 200
    move-object/from16 v1, p1

    .line 201
    .line 202
    move v2, v14

    .line 203
    move v3, v15

    .line 204
    move-object/from16 v5, v16

    .line 205
    .line 206
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    return-object v1
.end method
