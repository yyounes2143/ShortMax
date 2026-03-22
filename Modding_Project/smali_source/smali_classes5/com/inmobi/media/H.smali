.class public final Lcom/inmobi/media/H;
.super Lcom/inmobi/media/Af;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/inmobi/media/I;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/I;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/H;->a:Lcom/inmobi/media/I;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/inmobi/media/Af;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/WindowInsets;)V
    .locals 12

    .line 1
    const-string v0, "insets"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/inmobi/media/L3;->A()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    invoke-static {p1, v0}, Lcom/google/android/material/bottomsheet/a;->a(Landroid/view/WindowInsets;I)Landroid/view/RoundedCorner;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-static {v1}, Lcom/applovin/impl/vc;->a(Landroid/view/RoundedCorner;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v1, v0

    .line 28
    :goto_0
    const/4 v2, 0x1

    .line 29
    invoke-static {p1, v2}, Lcom/google/android/material/bottomsheet/a;->a(Landroid/view/WindowInsets;I)Landroid/view/RoundedCorner;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    invoke-static {v3}, Lcom/applovin/impl/vc;->a(Landroid/view/RoundedCorner;)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move v3, v0

    .line 41
    :goto_1
    const/4 v4, 0x2

    .line 42
    invoke-static {p1, v4}, Lcom/google/android/material/bottomsheet/a;->a(Landroid/view/WindowInsets;I)Landroid/view/RoundedCorner;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    if-eqz v5, :cond_3

    .line 47
    .line 48
    invoke-static {v5}, Lcom/applovin/impl/vc;->a(Landroid/view/RoundedCorner;)I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    move v5, v0

    .line 54
    :goto_2
    const/4 v6, 0x3

    .line 55
    invoke-static {p1, v6}, Lcom/google/android/material/bottomsheet/a;->a(Landroid/view/WindowInsets;I)Landroid/view/RoundedCorner;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    if-eqz v7, :cond_4

    .line 60
    .line 61
    invoke-static {v7}, Lcom/applovin/impl/vc;->a(Landroid/view/RoundedCorner;)I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    goto :goto_3

    .line 66
    :cond_4
    move v7, v0

    .line 67
    :goto_3
    invoke-static {p1, v0}, Lcom/google/android/material/bottomsheet/a;->a(Landroid/view/WindowInsets;I)Landroid/view/RoundedCorner;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const/4 v8, 0x0

    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    invoke-static {v0}, Lub/i0;->a(Landroid/view/RoundedCorner;)Landroid/graphics/Point;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    goto :goto_4

    .line 79
    :cond_5
    move-object v0, v8

    .line 80
    :goto_4
    invoke-static {p1, v2}, Lcom/google/android/material/bottomsheet/a;->a(Landroid/view/WindowInsets;I)Landroid/view/RoundedCorner;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    if-eqz v2, :cond_6

    .line 85
    .line 86
    invoke-static {v2}, Lub/i0;->a(Landroid/view/RoundedCorner;)Landroid/graphics/Point;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    goto :goto_5

    .line 91
    :cond_6
    move-object v2, v8

    .line 92
    :goto_5
    invoke-static {p1, v4}, Lcom/google/android/material/bottomsheet/a;->a(Landroid/view/WindowInsets;I)Landroid/view/RoundedCorner;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    if-eqz v4, :cond_7

    .line 97
    .line 98
    invoke-static {v4}, Lub/i0;->a(Landroid/view/RoundedCorner;)Landroid/graphics/Point;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    goto :goto_6

    .line 103
    :cond_7
    move-object v4, v8

    .line 104
    :goto_6
    invoke-static {p1, v6}, Lcom/google/android/material/bottomsheet/a;->a(Landroid/view/WindowInsets;I)Landroid/view/RoundedCorner;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-eqz p1, :cond_8

    .line 109
    .line 110
    invoke-static {p1}, Lub/i0;->a(Landroid/view/RoundedCorner;)Landroid/graphics/Point;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    goto :goto_7

    .line 115
    :cond_8
    move-object p1, v8

    .line 116
    :goto_7
    if-lez v1, :cond_9

    .line 117
    .line 118
    if-eqz v0, :cond_9

    .line 119
    .line 120
    new-instance v6, Landroid/graphics/RectF;

    .line 121
    .line 122
    iget v9, v0, Landroid/graphics/Point;->x:I

    .line 123
    .line 124
    sub-int v10, v9, v1

    .line 125
    .line 126
    int-to-float v10, v10

    .line 127
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 128
    .line 129
    sub-int v11, v0, v1

    .line 130
    .line 131
    int-to-float v11, v11

    .line 132
    int-to-float v9, v9

    .line 133
    int-to-float v0, v0

    .line 134
    invoke-direct {v6, v10, v11, v9, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 135
    .line 136
    .line 137
    goto :goto_8

    .line 138
    :cond_9
    move-object v6, v8

    .line 139
    :goto_8
    if-lez v3, :cond_a

    .line 140
    .line 141
    if-eqz v2, :cond_a

    .line 142
    .line 143
    new-instance v0, Landroid/graphics/RectF;

    .line 144
    .line 145
    iget v9, v2, Landroid/graphics/Point;->x:I

    .line 146
    .line 147
    int-to-float v10, v9

    .line 148
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 149
    .line 150
    sub-int v1, v2, v1

    .line 151
    .line 152
    int-to-float v1, v1

    .line 153
    add-int/2addr v9, v3

    .line 154
    int-to-float v3, v9

    .line 155
    int-to-float v2, v2

    .line 156
    invoke-direct {v0, v10, v1, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 157
    .line 158
    .line 159
    goto :goto_9

    .line 160
    :cond_a
    move-object v0, v8

    .line 161
    :goto_9
    if-lez v7, :cond_b

    .line 162
    .line 163
    if-eqz p1, :cond_b

    .line 164
    .line 165
    new-instance v1, Landroid/graphics/RectF;

    .line 166
    .line 167
    iget v2, p1, Landroid/graphics/Point;->x:I

    .line 168
    .line 169
    sub-int v3, v2, v7

    .line 170
    .line 171
    int-to-float v3, v3

    .line 172
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 173
    .line 174
    int-to-float v9, p1

    .line 175
    int-to-float v2, v2

    .line 176
    add-int/2addr p1, v7

    .line 177
    int-to-float p1, p1

    .line 178
    invoke-direct {v1, v3, v9, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 179
    .line 180
    .line 181
    goto :goto_a

    .line 182
    :cond_b
    move-object v1, v8

    .line 183
    :goto_a
    if-lez v5, :cond_c

    .line 184
    .line 185
    if-eqz v4, :cond_c

    .line 186
    .line 187
    new-instance v8, Landroid/graphics/RectF;

    .line 188
    .line 189
    iget p1, v4, Landroid/graphics/Point;->x:I

    .line 190
    .line 191
    int-to-float v2, p1

    .line 192
    iget v3, v4, Landroid/graphics/Point;->y:I

    .line 193
    .line 194
    int-to-float v4, v3

    .line 195
    add-int/2addr p1, v5

    .line 196
    int-to-float p1, p1

    .line 197
    add-int/2addr v3, v5

    .line 198
    int-to-float v3, v3

    .line 199
    invoke-direct {v8, v2, v4, p1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 200
    .line 201
    .line 202
    :cond_c
    iget-object p1, p0, Lcom/inmobi/media/H;->a:Lcom/inmobi/media/I;

    .line 203
    .line 204
    new-instance v2, Lcom/inmobi/media/B;

    .line 205
    .line 206
    invoke-direct {v2, v6, v0, v1, v8}, Lcom/inmobi/media/B;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 207
    .line 208
    .line 209
    iput-object v2, p1, Lcom/inmobi/media/I;->g:Lcom/inmobi/media/B;

    .line 210
    .line 211
    return-void
.end method
