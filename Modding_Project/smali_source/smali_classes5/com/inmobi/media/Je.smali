.class public abstract Lcom/inmobi/media/Je;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/inmobi/media/c9;Lcom/inmobi/media/d8;)Lcom/inmobi/media/Le;
    .locals 25

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "videoAsset"

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "asset"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/media/c9;->d()Lcom/inmobi/media/Ve;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v0, v0, Lcom/inmobi/media/d8;->d:Lcom/inmobi/media/e8;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/inmobi/media/e8;->a:Landroid/graphics/Point;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    check-cast v1, Lcom/inmobi/media/Ue;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/inmobi/media/Ue;->i:Ljava/util/ArrayList;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v1, v2

    .line 32
    :goto_0
    invoke-static {}, Lcom/inmobi/media/U3;->d()Lcom/inmobi/media/V3;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iget v3, v3, Lcom/inmobi/media/V3;->c:F

    .line 37
    .line 38
    iget v4, v0, Landroid/graphics/Point;->y:I

    .line 39
    .line 40
    int-to-float v4, v4

    .line 41
    div-float/2addr v4, v3

    .line 42
    float-to-double v4, v4

    .line 43
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 44
    .line 45
    int-to-float v0, v0

    .line 46
    div-float/2addr v0, v3

    .line 47
    float-to-double v6, v0

    .line 48
    div-double v8, v6, v4

    .line 49
    .line 50
    mul-double v10, v6, v4

    .line 51
    .line 52
    if-eqz v1, :cond_b

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    .line 59
    .line 60
    const-wide/16 v14, 0x0

    .line 61
    .line 62
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_a

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lcom/inmobi/media/Le;

    .line 73
    .line 74
    iget v3, v1, Lcom/inmobi/media/Le;->b:I

    .line 75
    .line 76
    move-object/from16 p0, v0

    .line 77
    .line 78
    iget v0, v1, Lcom/inmobi/media/Le;->a:I

    .line 79
    .line 80
    move-object/from16 p1, v1

    .line 81
    .line 82
    int-to-double v0, v0

    .line 83
    move-object/from16 v16, v2

    .line 84
    .line 85
    int-to-double v2, v3

    .line 86
    div-double v17, v0, v2

    .line 87
    .line 88
    cmpl-double v17, v8, v17

    .line 89
    .line 90
    if-lez v17, :cond_1

    .line 91
    .line 92
    div-double v17, v4, v2

    .line 93
    .line 94
    mul-double v17, v17, v0

    .line 95
    .line 96
    move-wide/from16 v19, v17

    .line 97
    .line 98
    move-wide/from16 v17, v4

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_1
    div-double v17, v6, v0

    .line 102
    .line 103
    mul-double v17, v17, v2

    .line 104
    .line 105
    move-wide/from16 v19, v6

    .line 106
    .line 107
    :goto_2
    const-wide v21, 0x3fd51eb851eb851fL    # 0.33

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    mul-double v23, v17, v21

    .line 113
    .line 114
    cmpg-double v23, v2, v23

    .line 115
    .line 116
    if-gez v23, :cond_3

    .line 117
    .line 118
    :cond_2
    :goto_3
    move-wide/from16 v17, v4

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_3
    mul-double v21, v21, v19

    .line 122
    .line 123
    cmpg-double v0, v0, v21

    .line 124
    .line 125
    if-gez v0, :cond_4

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_4
    mul-double v0, v19, v17

    .line 129
    .line 130
    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    .line 131
    .line 132
    mul-double v19, v19, v10

    .line 133
    .line 134
    cmpg-double v19, v0, v19

    .line 135
    .line 136
    if-gtz v19, :cond_5

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_5
    cmpl-double v19, v0, v12

    .line 140
    .line 141
    if-lez v19, :cond_6

    .line 142
    .line 143
    div-double v14, v2, v17

    .line 144
    .line 145
    move-object/from16 v2, p1

    .line 146
    .line 147
    move-wide v12, v0

    .line 148
    move-object/from16 v0, p0

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_6
    cmpg-double v0, v0, v12

    .line 152
    .line 153
    if-nez v0, :cond_2

    .line 154
    .line 155
    invoke-static {}, Lcom/inmobi/media/U3;->d()Lcom/inmobi/media/V3;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    iget v0, v0, Lcom/inmobi/media/V3;->c:F

    .line 160
    .line 161
    div-double v1, v2, v17

    .line 162
    .line 163
    cmpl-double v3, v1, v14

    .line 164
    .line 165
    move-wide/from16 v17, v4

    .line 166
    .line 167
    if-lez v3, :cond_7

    .line 168
    .line 169
    float-to-double v3, v0

    .line 170
    cmpg-double v3, v14, v3

    .line 171
    .line 172
    if-ltz v3, :cond_8

    .line 173
    .line 174
    :cond_7
    float-to-double v3, v0

    .line 175
    cmpl-double v0, v14, v3

    .line 176
    .line 177
    if-lez v0, :cond_9

    .line 178
    .line 179
    cmpg-double v0, v1, v14

    .line 180
    .line 181
    if-gez v0, :cond_9

    .line 182
    .line 183
    cmpl-double v0, v1, v3

    .line 184
    .line 185
    if-lez v0, :cond_9

    .line 186
    .line 187
    :cond_8
    move-object/from16 v0, p0

    .line 188
    .line 189
    move-wide v14, v1

    .line 190
    move-wide/from16 v4, v17

    .line 191
    .line 192
    move-object/from16 v2, p1

    .line 193
    .line 194
    goto/16 :goto_1

    .line 195
    .line 196
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    .line 197
    .line 198
    move-object/from16 v2, v16

    .line 199
    .line 200
    move-wide/from16 v4, v17

    .line 201
    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :cond_a
    move-object/from16 v16, v2

    .line 205
    .line 206
    :cond_b
    return-object v2
.end method
