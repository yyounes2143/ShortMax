.class public Lcom/facebook/imagepipeline/producers/i;
.super Ljava/lang/Object;
.source "BitmapMemoryCacheProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/b1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/b1<",
        "Lo2/a<",
        "Ly3/e;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lr3/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr3/w<",
            "Lf2/a;",
            "Ly3/e;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lr3/j;

.field private final c:Lcom/facebook/imagepipeline/producers/b1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Lo2/a<",
            "Ly3/e;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr3/w;Lr3/j;Lcom/facebook/imagepipeline/producers/b1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr3/w<",
            "Lf2/a;",
            "Ly3/e;",
            ">;",
            "Lr3/j;",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Lo2/a<",
            "Ly3/e;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/i;->a:Lr3/w;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/i;->b:Lr3/j;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/i;->c:Lcom/facebook/imagepipeline/producers/b1;

    .line 9
    .line 10
    return-void
.end method

.method static bridge synthetic c(Lcom/facebook/imagepipeline/producers/i;)Lr3/w;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/i;->a:Lr3/w;

    .line 2
    .line 3
    return-object p0
.end method

.method private static f(Ly3/l;Lcom/facebook/imagepipeline/producers/c1;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Ly3/l;->getExtras()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p1, p0}, Lcom/facebook/fresco/middleware/HasExtraData;->putExtras(Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public b(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/n<",
            "Lo2/a<",
            "Ly3/e;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/c1;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lf4/b;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "BitmapMemoryCacheProducer#produceResults"

    .line 8
    .line 9
    invoke-static {v0}, Lf4/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :cond_0
    :goto_0
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/c1;->l()Lcom/facebook/imagepipeline/producers/e1;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/i;->e()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v0, p2, v1}, Lcom/facebook/imagepipeline/producers/e1;->b(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/c1;->o()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/c1;->d()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/i;->b:Lr3/j;

    .line 36
    .line 37
    invoke-interface {v3, v1, v2}, Lr3/j;->c(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lf2/a;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/c1;->o()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const/4 v3, 0x1

    .line 46
    invoke-virtual {v2, v3}, Lcom/facebook/imagepipeline/request/ImageRequest;->z(I)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/4 v4, 0x0

    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/i;->a:Lr3/w;

    .line 54
    .line 55
    invoke-interface {v2, v1}, Lr3/w;->get(Ljava/lang/Object;)Lo2/a;

    .line 56
    .line 57
    .line 58
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move-object v2, v4

    .line 61
    :goto_1
    const-string v5, "memory_bitmap"

    .line 62
    .line 63
    const-string v6, "cached_value_found"

    .line 64
    .line 65
    if-eqz v2, :cond_5

    .line 66
    .line 67
    :try_start_1
    invoke-virtual {v2}, Lo2/a;->s()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    check-cast v7, Ly3/l;

    .line 72
    .line 73
    invoke-static {v7, p2}, Lcom/facebook/imagepipeline/producers/i;->f(Ly3/l;Lcom/facebook/imagepipeline/producers/c1;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Lo2/a;->s()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    check-cast v7, Ly3/e;

    .line 81
    .line 82
    invoke-interface {v7}, Ly3/e;->x0()Ly3/p;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    invoke-interface {v7}, Ly3/p;->a()Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-eqz v7, :cond_3

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/i;->e()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/i;->e()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    invoke-interface {v0, p2, v9}, Lcom/facebook/imagepipeline/producers/e1;->f(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    if-eqz v9, :cond_2

    .line 105
    .line 106
    const-string v9, "true"

    .line 107
    .line 108
    invoke-static {v6, v9}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    goto :goto_2

    .line 113
    :cond_2
    move-object v9, v4

    .line 114
    :goto_2
    invoke-interface {v0, p2, v8, v9}, Lcom/facebook/imagepipeline/producers/e1;->j(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;Ljava/util/Map;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/i;->e()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    invoke-interface {v0, p2, v8, v3}, Lcom/facebook/imagepipeline/producers/e1;->a(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;Z)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/i;->d()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    invoke-interface {p2, v5, v8}, Lcom/facebook/imagepipeline/producers/c1;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const/high16 v8, 0x3f800000    # 1.0f

    .line 132
    .line 133
    invoke-interface {p1, v8}, Lcom/facebook/imagepipeline/producers/n;->c(F)V

    .line 134
    .line 135
    .line 136
    :cond_3
    invoke-static {v7}, Lcom/facebook/imagepipeline/producers/c;->k(Z)I

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    invoke-interface {p1, v2, v8}, Lcom/facebook/imagepipeline/producers/n;->b(Ljava/lang/Object;I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Lo2/a;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    .line 145
    .line 146
    if-eqz v7, :cond_5

    .line 147
    .line 148
    invoke-static {}, Lf4/b;->d()Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-eqz p1, :cond_4

    .line 153
    .line 154
    invoke-static {}, Lf4/b;->b()V

    .line 155
    .line 156
    .line 157
    :cond_4
    return-void

    .line 158
    :cond_5
    :try_start_2
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/c1;->v()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    sget-object v7, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->BITMAP_MEMORY_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 167
    .line 168
    invoke-virtual {v7}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    .line 169
    .line 170
    .line 171
    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    const-string v8, "false"

    .line 173
    .line 174
    if-lt v2, v7, :cond_8

    .line 175
    .line 176
    :try_start_3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/i;->e()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/i;->e()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-interface {v0, p2, v2}, Lcom/facebook/imagepipeline/producers/e1;->f(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;)Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-eqz v2, :cond_6

    .line 189
    .line 190
    invoke-static {v6, v8}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    goto :goto_3

    .line 195
    :cond_6
    move-object v2, v4

    .line 196
    :goto_3
    invoke-interface {v0, p2, v1, v2}, Lcom/facebook/imagepipeline/producers/e1;->j(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;Ljava/util/Map;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/i;->e()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    const/4 v2, 0x0

    .line 204
    invoke-interface {v0, p2, v1, v2}, Lcom/facebook/imagepipeline/producers/e1;->a(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;Z)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/i;->d()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-interface {p2, v5, v0}, Lcom/facebook/imagepipeline/producers/c1;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-interface {p1, v4, v3}, Lcom/facebook/imagepipeline/producers/n;->b(Ljava/lang/Object;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 215
    .line 216
    .line 217
    invoke-static {}, Lf4/b;->d()Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-eqz p1, :cond_7

    .line 222
    .line 223
    invoke-static {}, Lf4/b;->b()V

    .line 224
    .line 225
    .line 226
    :cond_7
    return-void

    .line 227
    :cond_8
    :try_start_4
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/c1;->o()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    const/4 v3, 0x2

    .line 232
    invoke-virtual {v2, v3}, Lcom/facebook/imagepipeline/request/ImageRequest;->z(I)Z

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    invoke-virtual {p0, p1, v1, v2}, Lcom/facebook/imagepipeline/producers/i;->g(Lcom/facebook/imagepipeline/producers/n;Lf2/a;Z)Lcom/facebook/imagepipeline/producers/n;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/i;->e()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/i;->e()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-interface {v0, p2, v2}, Lcom/facebook/imagepipeline/producers/e1;->f(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;)Z

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    if-eqz v2, :cond_9

    .line 253
    .line 254
    invoke-static {v6, v8}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    :cond_9
    invoke-interface {v0, p2, v1, v4}, Lcom/facebook/imagepipeline/producers/e1;->j(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;Ljava/util/Map;)V

    .line 259
    .line 260
    .line 261
    invoke-static {}, Lf4/b;->d()Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-eqz v0, :cond_a

    .line 266
    .line 267
    const-string v0, "mInputProducer.produceResult"

    .line 268
    .line 269
    invoke-static {v0}, Lf4/b;->a(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    :cond_a
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/i;->c:Lcom/facebook/imagepipeline/producers/b1;

    .line 273
    .line 274
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/b1;->b(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;)V

    .line 275
    .line 276
    .line 277
    invoke-static {}, Lf4/b;->d()Z

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    if-eqz p1, :cond_b

    .line 282
    .line 283
    invoke-static {}, Lf4/b;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 284
    .line 285
    .line 286
    :cond_b
    invoke-static {}, Lf4/b;->d()Z

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    if-eqz p1, :cond_c

    .line 291
    .line 292
    invoke-static {}, Lf4/b;->b()V

    .line 293
    .line 294
    .line 295
    :cond_c
    return-void

    .line 296
    :goto_4
    invoke-static {}, Lf4/b;->d()Z

    .line 297
    .line 298
    .line 299
    move-result p2

    .line 300
    if-eqz p2, :cond_d

    .line 301
    .line 302
    invoke-static {}, Lf4/b;->b()V

    .line 303
    .line 304
    .line 305
    :cond_d
    throw p1
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "pipe_bg"

    .line 2
    .line 3
    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "BitmapMemoryCacheProducer"

    .line 2
    .line 3
    return-object v0
.end method

.method protected g(Lcom/facebook/imagepipeline/producers/n;Lf2/a;Z)Lcom/facebook/imagepipeline/producers/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/n<",
            "Lo2/a<",
            "Ly3/e;",
            ">;>;",
            "Lf2/a;",
            "Z)",
            "Lcom/facebook/imagepipeline/producers/n<",
            "Lo2/a<",
            "Ly3/e;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/i$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/i$a;-><init>(Lcom/facebook/imagepipeline/producers/i;Lcom/facebook/imagepipeline/producers/n;Lf2/a;Z)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
