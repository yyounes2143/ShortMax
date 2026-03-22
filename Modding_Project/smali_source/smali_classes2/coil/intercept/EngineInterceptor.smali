.class public final Lcoil/intercept/EngineInterceptor;
.super Ljava/lang/Object;
.source "EngineInterceptor.kt"

# interfaces
.implements Lh0/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/intercept/EngineInterceptor$b;,
        Lcoil/intercept/EngineInterceptor$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final d:Lcoil/intercept/EngineInterceptor$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lcoil/ImageLoader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lm0/l;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lk0/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcoil/intercept/EngineInterceptor$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcoil/intercept/EngineInterceptor$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcoil/intercept/EngineInterceptor;->d:Lcoil/intercept/EngineInterceptor$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcoil/ImageLoader;Lm0/l;Lr0/q;)V
    .locals 1
    .param p1    # Lcoil/ImageLoader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lm0/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lr0/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil/intercept/EngineInterceptor;->a:Lcoil/ImageLoader;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil/intercept/EngineInterceptor;->b:Lm0/l;

    .line 7
    .line 8
    new-instance p3, Lk0/c;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {p3, p1, p2, v0}, Lk0/c;-><init>(Lcoil/ImageLoader;Lm0/l;Lr0/q;)V

    .line 12
    .line 13
    .line 14
    iput-object p3, p0, Lcoil/intercept/EngineInterceptor;->c:Lk0/c;

    .line 15
    .line 16
    return-void
.end method

.method public static final synthetic b(Lcoil/intercept/EngineInterceptor;Landroid/graphics/drawable/Drawable;Lm0/j;Ljava/util/List;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcoil/intercept/EngineInterceptor;->g(Landroid/graphics/drawable/Drawable;Lm0/j;Ljava/util/List;)Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Lcoil/intercept/EngineInterceptor;Lg0/l;La0/b;Lm0/f;Ljava/lang/Object;Lm0/j;La0/c;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcoil/intercept/EngineInterceptor;->h(Lg0/l;La0/b;Lm0/f;Ljava/lang/Object;Lm0/j;La0/c;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lcoil/intercept/EngineInterceptor;Lm0/f;Ljava/lang/Object;Lm0/j;La0/c;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcoil/intercept/EngineInterceptor;->i(Lm0/f;Ljava/lang/Object;Lm0/j;La0/c;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Lcoil/intercept/EngineInterceptor;La0/b;Lm0/f;Ljava/lang/Object;Lm0/j;La0/c;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcoil/intercept/EngineInterceptor;->j(La0/b;Lm0/f;Ljava/lang/Object;Lm0/j;La0/c;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lcoil/intercept/EngineInterceptor;)Lk0/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil/intercept/EngineInterceptor;->c:Lk0/c;

    .line 2
    .line 3
    return-object p0
.end method

.method private final g(Landroid/graphics/drawable/Drawable;Lm0/j;Ljava/util/List;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lm0/j;",
            "Ljava/util/List<",
            "+",
            "Lp0/a;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 1
    instance-of p3, p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    move-object p3, p1

    .line 6
    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    .line 7
    .line 8
    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    invoke-static {p3}, Lr0/a;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {}, Lr0/i;->o()[Landroid/graphics/Bitmap$Config;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1, v0}, Lkotlin/collections/n;->f0([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    return-object p3

    .line 27
    :cond_0
    sget-object v1, Lr0/k;->a:Lr0/k;

    .line 28
    .line 29
    invoke-virtual {p2}, Lm0/j;->f()Landroid/graphics/Bitmap$Config;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {p2}, Lm0/j;->n()Ln0/g;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {p2}, Lm0/j;->m()Lcoil/size/Scale;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {p2}, Lm0/j;->c()Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    move-object v2, p1

    .line 46
    invoke-virtual/range {v1 .. v6}, Lr0/k;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Ln0/g;Lcoil/size/Scale;Z)Landroid/graphics/Bitmap;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1
.end method

.method private final h(Lg0/l;La0/b;Lm0/f;Ljava/lang/Object;Lm0/j;La0/c;Lrs/c;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg0/l;",
            "La0/b;",
            "Lm0/f;",
            "Ljava/lang/Object;",
            "Lm0/j;",
            "La0/c;",
            "Lrs/c<",
            "-",
            "Lcoil/intercept/EngineInterceptor$b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p7

    .line 2
    .line 3
    instance-of v1, v0, Lcoil/intercept/EngineInterceptor$decode$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcoil/intercept/EngineInterceptor$decode$1;

    .line 9
    .line 10
    iget v2, v1, Lcoil/intercept/EngineInterceptor$decode$1;->s:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcoil/intercept/EngineInterceptor$decode$1;->s:I

    .line 20
    .line 21
    move-object/from16 v2, p0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lcoil/intercept/EngineInterceptor$decode$1;

    .line 25
    .line 26
    move-object/from16 v2, p0

    .line 27
    .line 28
    invoke-direct {v1, v2, v0}, Lcoil/intercept/EngineInterceptor$decode$1;-><init>(Lcoil/intercept/EngineInterceptor;Lrs/c;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v1, Lcoil/intercept/EngineInterceptor$decode$1;->q:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget v4, v1, Lcoil/intercept/EngineInterceptor$decode$1;->s:I

    .line 38
    .line 39
    const/4 v5, 0x1

    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    if-ne v4, v5, :cond_1

    .line 43
    .line 44
    iget v4, v1, Lcoil/intercept/EngineInterceptor$decode$1;->p:I

    .line 45
    .line 46
    iget-object v6, v1, Lcoil/intercept/EngineInterceptor$decode$1;->o:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v6, Ld0/g;

    .line 49
    .line 50
    iget-object v7, v1, Lcoil/intercept/EngineInterceptor$decode$1;->n:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v7, La0/c;

    .line 53
    .line 54
    iget-object v8, v1, Lcoil/intercept/EngineInterceptor$decode$1;->m:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v8, Lm0/j;

    .line 57
    .line 58
    iget-object v9, v1, Lcoil/intercept/EngineInterceptor$decode$1;->l:Ljava/lang/Object;

    .line 59
    .line 60
    iget-object v10, v1, Lcoil/intercept/EngineInterceptor$decode$1;->k:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v10, Lm0/f;

    .line 63
    .line 64
    iget-object v11, v1, Lcoil/intercept/EngineInterceptor$decode$1;->j:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v11, La0/b;

    .line 67
    .line 68
    iget-object v12, v1, Lcoil/intercept/EngineInterceptor$decode$1;->i:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v12, Lg0/l;

    .line 71
    .line 72
    iget-object v13, v1, Lcoil/intercept/EngineInterceptor$decode$1;->h:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v13, Lcoil/intercept/EngineInterceptor;

    .line 75
    .line 76
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    move-object v14, v11

    .line 80
    move-object v11, v1

    .line 81
    move-object v1, v14

    .line 82
    move-object v15, v10

    .line 83
    move v10, v4

    .line 84
    move-object v4, v15

    .line 85
    move-object/from16 v16, v8

    .line 86
    .line 87
    move-object v8, v7

    .line 88
    move-object/from16 v7, v16

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 92
    .line 93
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 94
    .line 95
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw v0

    .line 99
    :cond_2
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    const/4 v0, 0x0

    .line 103
    move-object/from16 v4, p3

    .line 104
    .line 105
    move-object/from16 v6, p4

    .line 106
    .line 107
    move-object/from16 v7, p5

    .line 108
    .line 109
    move-object/from16 v8, p6

    .line 110
    .line 111
    move v9, v0

    .line 112
    move-object v10, v1

    .line 113
    move-object v13, v2

    .line 114
    move-object/from16 v0, p1

    .line 115
    .line 116
    move-object/from16 v1, p2

    .line 117
    .line 118
    :goto_1
    iget-object v11, v13, Lcoil/intercept/EngineInterceptor;->a:Lcoil/ImageLoader;

    .line 119
    .line 120
    invoke-virtual {v1, v0, v7, v11, v9}, La0/b;->i(Lg0/l;Lm0/j;Lcoil/ImageLoader;I)Lkotlin/Pair;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    if-eqz v9, :cond_7

    .line 125
    .line 126
    invoke-virtual {v9}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v11

    .line 130
    check-cast v11, Ld0/g;

    .line 131
    .line 132
    invoke-virtual {v9}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    check-cast v9, Ljava/lang/Number;

    .line 137
    .line 138
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    add-int/2addr v9, v5

    .line 143
    invoke-interface {v8, v4, v11, v7}, La0/c;->n(Lm0/f;Ld0/g;Lm0/j;)V

    .line 144
    .line 145
    .line 146
    iput-object v13, v10, Lcoil/intercept/EngineInterceptor$decode$1;->h:Ljava/lang/Object;

    .line 147
    .line 148
    iput-object v0, v10, Lcoil/intercept/EngineInterceptor$decode$1;->i:Ljava/lang/Object;

    .line 149
    .line 150
    iput-object v1, v10, Lcoil/intercept/EngineInterceptor$decode$1;->j:Ljava/lang/Object;

    .line 151
    .line 152
    iput-object v4, v10, Lcoil/intercept/EngineInterceptor$decode$1;->k:Ljava/lang/Object;

    .line 153
    .line 154
    iput-object v6, v10, Lcoil/intercept/EngineInterceptor$decode$1;->l:Ljava/lang/Object;

    .line 155
    .line 156
    iput-object v7, v10, Lcoil/intercept/EngineInterceptor$decode$1;->m:Ljava/lang/Object;

    .line 157
    .line 158
    iput-object v8, v10, Lcoil/intercept/EngineInterceptor$decode$1;->n:Ljava/lang/Object;

    .line 159
    .line 160
    iput-object v11, v10, Lcoil/intercept/EngineInterceptor$decode$1;->o:Ljava/lang/Object;

    .line 161
    .line 162
    iput v9, v10, Lcoil/intercept/EngineInterceptor$decode$1;->p:I

    .line 163
    .line 164
    iput v5, v10, Lcoil/intercept/EngineInterceptor$decode$1;->s:I

    .line 165
    .line 166
    invoke-interface {v11, v10}, Ld0/g;->a(Lrs/c;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v12

    .line 170
    if-ne v12, v3, :cond_3

    .line 171
    .line 172
    return-object v3

    .line 173
    :cond_3
    move-object v14, v12

    .line 174
    move-object v12, v0

    .line 175
    move-object v0, v14

    .line 176
    move v15, v9

    .line 177
    move-object v9, v6

    .line 178
    move-object v6, v11

    .line 179
    move-object v11, v10

    .line 180
    move v10, v15

    .line 181
    :goto_2
    check-cast v0, Ld0/e;

    .line 182
    .line 183
    invoke-interface {v8, v4, v6, v7, v0}, La0/c;->r(Lm0/f;Ld0/g;Lm0/j;Ld0/e;)V

    .line 184
    .line 185
    .line 186
    if-eqz v0, :cond_6

    .line 187
    .line 188
    new-instance v1, Lcoil/intercept/EngineInterceptor$b;

    .line 189
    .line 190
    invoke-virtual {v0}, Ld0/e;->a()Landroid/graphics/drawable/Drawable;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-virtual {v0}, Ld0/e;->b()Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    invoke-virtual {v12}, Lg0/l;->a()Lcoil/decode/DataSource;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    invoke-virtual {v12}, Lg0/l;->b()Ld0/m;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    instance-of v6, v5, Ld0/l;

    .line 207
    .line 208
    const/4 v7, 0x0

    .line 209
    if-eqz v6, :cond_4

    .line 210
    .line 211
    check-cast v5, Ld0/l;

    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_4
    move-object v5, v7

    .line 215
    :goto_3
    if-eqz v5, :cond_5

    .line 216
    .line 217
    invoke-virtual {v5}, Ld0/l;->m()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    :cond_5
    invoke-direct {v1, v3, v0, v4, v7}, Lcoil/intercept/EngineInterceptor$b;-><init>(Landroid/graphics/drawable/Drawable;ZLcoil/decode/DataSource;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    return-object v1

    .line 225
    :cond_6
    move-object v6, v9

    .line 226
    move v9, v10

    .line 227
    move-object v10, v11

    .line 228
    move-object v0, v12

    .line 229
    goto :goto_1

    .line 230
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    const-string v1, "Unable to create a decoder that supports: "

    .line 236
    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 248
    .line 249
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw v1
.end method

.method private final i(Lm0/f;Ljava/lang/Object;Lm0/j;La0/c;Lrs/c;)Ljava/lang/Object;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm0/f;",
            "Ljava/lang/Object;",
            "Lm0/j;",
            "La0/c;",
            "Lrs/c<",
            "-",
            "Lcoil/intercept/EngineInterceptor$b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p5

    instance-of v1, v0, Lcoil/intercept/EngineInterceptor$execute$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcoil/intercept/EngineInterceptor$execute$1;

    iget v2, v1, Lcoil/intercept/EngineInterceptor$execute$1;->r:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcoil/intercept/EngineInterceptor$execute$1;->r:I

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_0
    new-instance v1, Lcoil/intercept/EngineInterceptor$execute$1;

    invoke-direct {v1, v8, v0}, Lcoil/intercept/EngineInterceptor$execute$1;-><init>(Lcoil/intercept/EngineInterceptor;Lrs/c;)V

    goto :goto_0

    :goto_1
    iget-object v1, v0, Lcoil/intercept/EngineInterceptor$execute$1;->p:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    move-result-object v9

    .line 1
    iget v2, v0, Lcoil/intercept/EngineInterceptor$execute$1;->r:I

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v3, 0x1

    const/4 v12, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v3, :cond_3

    if-eq v2, v11, :cond_2

    if-ne v2, v10, :cond_1

    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-object v2, v0, Lcoil/intercept/EngineInterceptor$execute$1;->l:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v0, Lcoil/intercept/EngineInterceptor$execute$1;->k:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v0, Lcoil/intercept/EngineInterceptor$execute$1;->j:Ljava/lang/Object;

    check-cast v4, La0/c;

    iget-object v5, v0, Lcoil/intercept/EngineInterceptor$execute$1;->i:Ljava/lang/Object;

    check-cast v5, Lm0/f;

    iget-object v6, v0, Lcoil/intercept/EngineInterceptor$execute$1;->h:Ljava/lang/Object;

    check-cast v6, Lcoil/intercept/EngineInterceptor;

    :try_start_0
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_3
    iget-object v2, v0, Lcoil/intercept/EngineInterceptor$execute$1;->o:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v0, Lcoil/intercept/EngineInterceptor$execute$1;->n:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v0, Lcoil/intercept/EngineInterceptor$execute$1;->m:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v0, Lcoil/intercept/EngineInterceptor$execute$1;->l:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v0, Lcoil/intercept/EngineInterceptor$execute$1;->k:Ljava/lang/Object;

    check-cast v6, La0/c;

    iget-object v7, v0, Lcoil/intercept/EngineInterceptor$execute$1;->j:Ljava/lang/Object;

    iget-object v13, v0, Lcoil/intercept/EngineInterceptor$execute$1;->i:Ljava/lang/Object;

    check-cast v13, Lm0/f;

    iget-object v14, v0, Lcoil/intercept/EngineInterceptor$execute$1;->h:Ljava/lang/Object;

    check-cast v14, Lcoil/intercept/EngineInterceptor;

    :try_start_1
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v15, v3

    move-object/from16 v19, v4

    move-object v3, v5

    move-object/from16 v21, v7

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v3

    goto/16 :goto_8

    :cond_4
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 4
    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object/from16 v1, p3

    iput-object v1, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 5
    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v1, v8, Lcoil/intercept/EngineInterceptor;->a:Lcoil/ImageLoader;

    invoke-interface {v1}, Lcoil/ImageLoader;->getComponents()La0/b;

    move-result-object v1

    iput-object v1, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 6
    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 7
    :try_start_2
    iget-object v1, v8, Lcoil/intercept/EngineInterceptor;->b:Lm0/l;

    iget-object v2, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lm0/j;

    invoke-virtual {v1, v2}, Lm0/l;->a(Lm0/j;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 8
    iget-object v1, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lm0/j;

    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v32, 0x7ffd

    const/16 v33, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-static/range {v16 .. v33}, Lm0/j;->b(Lm0/j;Landroid/content/Context;Landroid/graphics/Bitmap$Config;Landroid/graphics/ColorSpace;Ln0/g;Lcoil/size/Scale;ZZZLjava/lang/String;Lokhttp3/Headers;Lm0/n;Lm0/k;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;ILjava/lang/Object;)Lm0/j;

    move-result-object v1

    iput-object v1, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v2, v15

    goto/16 :goto_8

    .line 9
    :cond_5
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lm0/f;->w()Lkotlin/Pair;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-virtual/range {p1 .. p1}, Lm0/f;->o()Ld0/g$a;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 10
    :cond_6
    iget-object v1, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, La0/b;

    invoke-virtual {v1}, La0/b;->h()La0/b$a;

    move-result-object v1

    .line 11
    invoke-virtual/range {p1 .. p1}, Lm0/f;->w()Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    .line 12
    invoke-virtual {v1}, La0/b$a;->g()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 13
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lm0/f;->o()Ld0/g$a;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 14
    invoke-virtual {v1}, La0/b$a;->f()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 15
    :cond_8
    invoke-virtual {v1}, La0/b$a;->e()La0/b;

    move-result-object v1

    .line 16
    iput-object v1, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 17
    :cond_9
    iget-object v1, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, La0/b;

    iget-object v1, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lm0/j;

    iput-object v8, v0, Lcoil/intercept/EngineInterceptor$execute$1;->h:Ljava/lang/Object;

    move-object/from16 v7, p1

    iput-object v7, v0, Lcoil/intercept/EngineInterceptor$execute$1;->i:Ljava/lang/Object;

    move-object/from16 v6, p2

    iput-object v6, v0, Lcoil/intercept/EngineInterceptor$execute$1;->j:Ljava/lang/Object;

    move-object/from16 v4, p4

    iput-object v4, v0, Lcoil/intercept/EngineInterceptor$execute$1;->k:Ljava/lang/Object;

    iput-object v13, v0, Lcoil/intercept/EngineInterceptor$execute$1;->l:Ljava/lang/Object;

    iput-object v14, v0, Lcoil/intercept/EngineInterceptor$execute$1;->m:Ljava/lang/Object;

    iput-object v15, v0, Lcoil/intercept/EngineInterceptor$execute$1;->n:Ljava/lang/Object;

    iput-object v15, v0, Lcoil/intercept/EngineInterceptor$execute$1;->o:Ljava/lang/Object;

    iput v3, v0, Lcoil/intercept/EngineInterceptor$execute$1;->r:I

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcoil/intercept/EngineInterceptor;->j(La0/b;Lm0/f;Ljava/lang/Object;Lm0/j;La0/c;Lrs/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_a

    return-object v9

    :cond_a
    move-object/from16 v21, p2

    move-object/from16 v6, p4

    move-object v3, v13

    move-object/from16 v19, v14

    move-object v2, v15

    move-object/from16 v13, p1

    move-object v14, v8

    .line 18
    :goto_3
    iput-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 19
    iget-object v1, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lg0/h;

    .line 20
    instance-of v4, v2, Lg0/l;

    if-eqz v4, :cond_c

    invoke-virtual {v13}, Lm0/f;->n()Lgt/c0;

    move-result-object v1

    new-instance v2, Lcoil/intercept/EngineInterceptor$execute$executeResult$1;

    const/16 v24, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v14

    move-object/from16 v18, v15

    move-object/from16 v20, v13

    move-object/from16 v22, v3

    move-object/from16 v23, v6

    invoke-direct/range {v16 .. v24}, Lcoil/intercept/EngineInterceptor$execute$executeResult$1;-><init>(Lcoil/intercept/EngineInterceptor;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lm0/f;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;La0/c;Lrs/c;)V

    iput-object v14, v0, Lcoil/intercept/EngineInterceptor$execute$1;->h:Ljava/lang/Object;

    iput-object v13, v0, Lcoil/intercept/EngineInterceptor$execute$1;->i:Ljava/lang/Object;

    iput-object v6, v0, Lcoil/intercept/EngineInterceptor$execute$1;->j:Ljava/lang/Object;

    iput-object v3, v0, Lcoil/intercept/EngineInterceptor$execute$1;->k:Ljava/lang/Object;

    iput-object v15, v0, Lcoil/intercept/EngineInterceptor$execute$1;->l:Ljava/lang/Object;

    iput-object v12, v0, Lcoil/intercept/EngineInterceptor$execute$1;->m:Ljava/lang/Object;

    iput-object v12, v0, Lcoil/intercept/EngineInterceptor$execute$1;->n:Ljava/lang/Object;

    iput-object v12, v0, Lcoil/intercept/EngineInterceptor$execute$1;->o:Ljava/lang/Object;

    iput v11, v0, Lcoil/intercept/EngineInterceptor$execute$1;->r:I

    invoke-static {v1, v2, v0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v1, v9, :cond_b

    return-object v9

    :cond_b
    move-object v4, v6

    move-object v5, v13

    move-object v6, v14

    move-object v2, v15

    :goto_4
    :try_start_3
    check-cast v1, Lcoil/intercept/EngineInterceptor$b;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v15, v2

    move-object v2, v6

    move-object v6, v4

    move-object v4, v5

    move-object/from16 v34, v3

    move-object v3, v1

    move-object/from16 v1, v34

    goto :goto_5

    .line 21
    :cond_c
    :try_start_4
    instance-of v2, v2, Lg0/g;

    if-eqz v2, :cond_12

    .line 22
    new-instance v2, Lcoil/intercept/EngineInterceptor$b;

    .line 23
    check-cast v1, Lg0/g;

    invoke-virtual {v1}, Lg0/g;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 24
    iget-object v4, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lg0/g;

    invoke-virtual {v4}, Lg0/g;->c()Z

    move-result v4

    .line 25
    iget-object v5, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lg0/g;

    invoke-virtual {v5}, Lg0/g;->a()Lcoil/decode/DataSource;

    move-result-object v5

    .line 26
    invoke-direct {v2, v1, v4, v5, v12}, Lcoil/intercept/EngineInterceptor$b;-><init>(Landroid/graphics/drawable/Drawable;ZLcoil/decode/DataSource;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v1, v3

    move-object v4, v13

    move-object v3, v2

    move-object v2, v14

    .line 27
    :goto_5
    iget-object v5, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    instance-of v7, v5, Lg0/l;

    if-eqz v7, :cond_d

    check-cast v5, Lg0/l;

    goto :goto_6

    :cond_d
    move-object v5, v12

    :goto_6
    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lg0/l;->b()Ld0/m;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-static {v5}, Lr0/i;->d(Ljava/io/Closeable;)V

    .line 28
    :cond_e
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lm0/j;

    iput-object v12, v0, Lcoil/intercept/EngineInterceptor$execute$1;->h:Ljava/lang/Object;

    iput-object v12, v0, Lcoil/intercept/EngineInterceptor$execute$1;->i:Ljava/lang/Object;

    iput-object v12, v0, Lcoil/intercept/EngineInterceptor$execute$1;->j:Ljava/lang/Object;

    iput-object v12, v0, Lcoil/intercept/EngineInterceptor$execute$1;->k:Ljava/lang/Object;

    iput-object v12, v0, Lcoil/intercept/EngineInterceptor$execute$1;->l:Ljava/lang/Object;

    iput-object v12, v0, Lcoil/intercept/EngineInterceptor$execute$1;->m:Ljava/lang/Object;

    iput-object v12, v0, Lcoil/intercept/EngineInterceptor$execute$1;->n:Ljava/lang/Object;

    iput-object v12, v0, Lcoil/intercept/EngineInterceptor$execute$1;->o:Ljava/lang/Object;

    iput v10, v0, Lcoil/intercept/EngineInterceptor$execute$1;->r:I

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Lcoil/intercept/EngineInterceptor;->k(Lcoil/intercept/EngineInterceptor$b;Lm0/f;Lm0/j;La0/c;Lrs/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_f

    return-object v9

    .line 29
    :cond_f
    :goto_7
    check-cast v1, Lcoil/intercept/EngineInterceptor$b;

    .line 30
    invoke-virtual {v1}, Lcoil/intercept/EngineInterceptor$b;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_10

    move-object v12, v0

    check-cast v12, Landroid/graphics/drawable/BitmapDrawable;

    :cond_10
    if-eqz v12, :cond_11

    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    :cond_11
    return-object v1

    .line 31
    :cond_12
    :try_start_5
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 32
    :goto_8
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    instance-of v2, v1, Lg0/l;

    if-eqz v2, :cond_13

    move-object v12, v1

    check-cast v12, Lg0/l;

    :cond_13
    if-eqz v12, :cond_14

    invoke-virtual {v12}, Lg0/l;->b()Ld0/m;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-static {v1}, Lr0/i;->d(Ljava/io/Closeable;)V

    :cond_14
    throw v0
.end method

.method private final j(La0/b;Lm0/f;Ljava/lang/Object;Lm0/j;La0/c;Lrs/c;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La0/b;",
            "Lm0/f;",
            "Ljava/lang/Object;",
            "Lm0/j;",
            "La0/c;",
            "Lrs/c<",
            "-",
            "Lg0/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p6, Lcoil/intercept/EngineInterceptor$fetch$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p6

    .line 6
    check-cast v0, Lcoil/intercept/EngineInterceptor$fetch$1;

    .line 7
    .line 8
    iget v1, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->r:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->r:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcoil/intercept/EngineInterceptor$fetch$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p6}, Lcoil/intercept/EngineInterceptor$fetch$1;-><init>(Lcoil/intercept/EngineInterceptor;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p6, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->p:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->r:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget p1, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->o:I

    .line 39
    .line 40
    iget-object p2, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->n:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p2, Lg0/i;

    .line 43
    .line 44
    iget-object p3, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->m:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p3, La0/c;

    .line 47
    .line 48
    iget-object p4, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->l:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p4, Lm0/j;

    .line 51
    .line 52
    iget-object p5, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->k:Ljava/lang/Object;

    .line 53
    .line 54
    iget-object v2, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->j:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v2, Lm0/f;

    .line 57
    .line 58
    iget-object v4, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->i:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v4, La0/b;

    .line 61
    .line 62
    iget-object v5, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->h:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v5, Lcoil/intercept/EngineInterceptor;

    .line 65
    .line 66
    invoke-static {p6}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    move-object v6, v0

    .line 70
    move v0, p1

    .line 71
    move-object p1, v4

    .line 72
    move-object v4, v6

    .line 73
    move-object v7, v2

    .line 74
    move-object v2, p2

    .line 75
    move-object p2, v7

    .line 76
    move-object v8, p5

    .line 77
    move-object p5, p3

    .line 78
    move-object p3, v8

    .line 79
    goto :goto_2

    .line 80
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 83
    .line 84
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :cond_2
    invoke-static {p6}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    const/4 p6, 0x0

    .line 92
    move-object v5, p0

    .line 93
    :goto_1
    iget-object v2, v5, Lcoil/intercept/EngineInterceptor;->a:Lcoil/ImageLoader;

    .line 94
    .line 95
    invoke-virtual {p1, p3, p4, v2, p6}, La0/b;->j(Ljava/lang/Object;Lm0/j;Lcoil/ImageLoader;I)Lkotlin/Pair;

    .line 96
    .line 97
    .line 98
    move-result-object p6

    .line 99
    if-eqz p6, :cond_7

    .line 100
    .line 101
    invoke-virtual {p6}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Lg0/i;

    .line 106
    .line 107
    invoke-virtual {p6}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p6

    .line 111
    check-cast p6, Ljava/lang/Number;

    .line 112
    .line 113
    invoke-virtual {p6}, Ljava/lang/Number;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result p6

    .line 117
    add-int/2addr p6, v3

    .line 118
    invoke-interface {p5, p2, v2, p4}, La0/c;->i(Lm0/f;Lg0/i;Lm0/j;)V

    .line 119
    .line 120
    .line 121
    iput-object v5, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->h:Ljava/lang/Object;

    .line 122
    .line 123
    iput-object p1, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->i:Ljava/lang/Object;

    .line 124
    .line 125
    iput-object p2, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->j:Ljava/lang/Object;

    .line 126
    .line 127
    iput-object p3, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->k:Ljava/lang/Object;

    .line 128
    .line 129
    iput-object p4, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->l:Ljava/lang/Object;

    .line 130
    .line 131
    iput-object p5, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->m:Ljava/lang/Object;

    .line 132
    .line 133
    iput-object v2, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->n:Ljava/lang/Object;

    .line 134
    .line 135
    iput p6, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->o:I

    .line 136
    .line 137
    iput v3, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->r:I

    .line 138
    .line 139
    invoke-interface {v2, v0}, Lg0/i;->a(Lrs/c;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    if-ne v4, v1, :cond_3

    .line 144
    .line 145
    return-object v1

    .line 146
    :cond_3
    move-object v6, v0

    .line 147
    move v0, p6

    .line 148
    move-object p6, v4

    .line 149
    move-object v4, v6

    .line 150
    :goto_2
    check-cast p6, Lg0/h;

    .line 151
    .line 152
    :try_start_0
    invoke-interface {p5, p2, v2, p4, p6}, La0/c;->h(Lm0/f;Lg0/i;Lm0/j;Lg0/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    .line 154
    .line 155
    if-eqz p6, :cond_4

    .line 156
    .line 157
    return-object p6

    .line 158
    :cond_4
    move p6, v0

    .line 159
    move-object v0, v4

    .line 160
    goto :goto_1

    .line 161
    :catchall_0
    move-exception p1

    .line 162
    instance-of p2, p6, Lg0/l;

    .line 163
    .line 164
    if-eqz p2, :cond_5

    .line 165
    .line 166
    check-cast p6, Lg0/l;

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_5
    const/4 p6, 0x0

    .line 170
    :goto_3
    if-eqz p6, :cond_6

    .line 171
    .line 172
    invoke-virtual {p6}, Lg0/l;->b()Ld0/m;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    if-eqz p2, :cond_6

    .line 177
    .line 178
    invoke-static {p2}, Lr0/i;->d(Ljava/io/Closeable;)V

    .line 179
    .line 180
    .line 181
    :cond_6
    throw p1

    .line 182
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    const-string p2, "Unable to create a fetcher that supports: "

    .line 188
    .line 189
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw p2
.end method


# virtual methods
.method public a(Lh0/a$a;Lrs/c;)Ljava/lang/Object;
    .locals 13
    .param p1    # Lh0/a$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/a$a;",
            "Lrs/c<",
            "-",
            "Lm0/g;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcoil/intercept/EngineInterceptor$intercept$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcoil/intercept/EngineInterceptor$intercept$1;

    .line 7
    .line 8
    iget v1, v0, Lcoil/intercept/EngineInterceptor$intercept$1;->l:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcoil/intercept/EngineInterceptor$intercept$1;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcoil/intercept/EngineInterceptor$intercept$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcoil/intercept/EngineInterceptor$intercept$1;-><init>(Lcoil/intercept/EngineInterceptor;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcoil/intercept/EngineInterceptor$intercept$1;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcoil/intercept/EngineInterceptor$intercept$1;->l:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lcoil/intercept/EngineInterceptor$intercept$1;->i:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lh0/a$a;

    .line 41
    .line 42
    iget-object v0, v0, Lcoil/intercept/EngineInterceptor$intercept$1;->h:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lcoil/intercept/EngineInterceptor;

    .line 45
    .line 46
    :try_start_0
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    goto/16 :goto_2

    .line 50
    .line 51
    :catchall_0
    move-exception p2

    .line 52
    goto :goto_3

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :try_start_1
    invoke-interface {p1}, Lh0/a$a;->getRequest()Lm0/f;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-virtual {v6}, Lm0/f;->m()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-interface {p1}, Lh0/a$a;->getSize()Ln0/g;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {p1}, Lr0/i;->g(Lh0/a$a;)La0/c;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    iget-object v4, p0, Lcoil/intercept/EngineInterceptor;->b:Lm0/l;

    .line 81
    .line 82
    invoke-virtual {v4, v6, v2}, Lm0/l;->f(Lm0/f;Ln0/g;)Lm0/j;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    invoke-virtual {v8}, Lm0/j;->m()Lcoil/size/Scale;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-interface {v9, v6, p2}, La0/c;->p(Lm0/f;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    iget-object v5, p0, Lcoil/intercept/EngineInterceptor;->a:Lcoil/ImageLoader;

    .line 94
    .line 95
    invoke-interface {v5}, Lcoil/ImageLoader;->getComponents()La0/b;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {v5, p2, v8}, La0/b;->g(Ljava/lang/Object;Lm0/j;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    invoke-interface {v9, v6, v7}, La0/c;->g(Lm0/f;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    iget-object p2, p0, Lcoil/intercept/EngineInterceptor;->c:Lk0/c;

    .line 107
    .line 108
    invoke-virtual {p2, v6, v7, v8, v9}, Lk0/c;->f(Lm0/f;Ljava/lang/Object;Lm0/j;La0/c;)Lcoil/memory/MemoryCache$Key;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    if-eqz v10, :cond_3

    .line 113
    .line 114
    iget-object p2, p0, Lcoil/intercept/EngineInterceptor;->c:Lk0/c;

    .line 115
    .line 116
    invoke-virtual {p2, v6, v10, v2, v4}, Lk0/c;->a(Lm0/f;Lcoil/memory/MemoryCache$Key;Ln0/g;Lcoil/size/Scale;)Lcoil/memory/MemoryCache$b;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    goto :goto_1

    .line 121
    :catchall_1
    move-exception p2

    .line 122
    move-object v0, p0

    .line 123
    goto :goto_3

    .line 124
    :cond_3
    const/4 p2, 0x0

    .line 125
    :goto_1
    if-eqz p2, :cond_4

    .line 126
    .line 127
    iget-object v0, p0, Lcoil/intercept/EngineInterceptor;->c:Lk0/c;

    .line 128
    .line 129
    invoke-virtual {v0, p1, v6, v10, p2}, Lk0/c;->g(Lh0/a$a;Lm0/f;Lcoil/memory/MemoryCache$Key;Lcoil/memory/MemoryCache$b;)Lm0/m;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    return-object p1

    .line 134
    :cond_4
    invoke-virtual {v6}, Lm0/f;->v()Lgt/c0;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    new-instance v2, Lcoil/intercept/EngineInterceptor$intercept$2;

    .line 139
    .line 140
    const/4 v12, 0x0

    .line 141
    move-object v4, v2

    .line 142
    move-object v5, p0

    .line 143
    move-object v11, p1

    .line 144
    invoke-direct/range {v4 .. v12}, Lcoil/intercept/EngineInterceptor$intercept$2;-><init>(Lcoil/intercept/EngineInterceptor;Lm0/f;Ljava/lang/Object;Lm0/j;La0/c;Lcoil/memory/MemoryCache$Key;Lh0/a$a;Lrs/c;)V

    .line 145
    .line 146
    .line 147
    iput-object p0, v0, Lcoil/intercept/EngineInterceptor$intercept$1;->h:Ljava/lang/Object;

    .line 148
    .line 149
    iput-object p1, v0, Lcoil/intercept/EngineInterceptor$intercept$1;->i:Ljava/lang/Object;

    .line 150
    .line 151
    iput v3, v0, Lcoil/intercept/EngineInterceptor$intercept$1;->l:I

    .line 152
    .line 153
    invoke-static {p2, v2, v0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 157
    if-ne p2, v1, :cond_5

    .line 158
    .line 159
    return-object v1

    .line 160
    :cond_5
    :goto_2
    return-object p2

    .line 161
    :goto_3
    instance-of v1, p2, Ljava/util/concurrent/CancellationException;

    .line 162
    .line 163
    if-nez v1, :cond_6

    .line 164
    .line 165
    iget-object v0, v0, Lcoil/intercept/EngineInterceptor;->b:Lm0/l;

    .line 166
    .line 167
    invoke-interface {p1}, Lh0/a$a;->getRequest()Lm0/f;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {v0, p1, p2}, Lm0/l;->b(Lm0/f;Ljava/lang/Throwable;)Lm0/d;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    return-object p1

    .line 176
    :cond_6
    throw p2
.end method

.method public final k(Lcoil/intercept/EngineInterceptor$b;Lm0/f;Lm0/j;La0/c;Lrs/c;)Ljava/lang/Object;
    .locals 10
    .param p1    # Lcoil/intercept/EngineInterceptor$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lm0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lm0/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # La0/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/intercept/EngineInterceptor$b;",
            "Lm0/f;",
            "Lm0/j;",
            "La0/c;",
            "Lrs/c<",
            "-",
            "Lcoil/intercept/EngineInterceptor$b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p2}, Lm0/f;->O()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v4

    .line 5
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcoil/intercept/EngineInterceptor$b;->e()Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p2}, Lm0/f;->g()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_1
    invoke-virtual {p2}, Lm0/f;->N()Lgt/c0;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    new-instance v9, Lcoil/intercept/EngineInterceptor$transform$3;

    .line 32
    .line 33
    const/4 v7, 0x0

    .line 34
    move-object v0, v9

    .line 35
    move-object v1, p0

    .line 36
    move-object v2, p1

    .line 37
    move-object v3, p3

    .line 38
    move-object v5, p4

    .line 39
    move-object v6, p2

    .line 40
    invoke-direct/range {v0 .. v7}, Lcoil/intercept/EngineInterceptor$transform$3;-><init>(Lcoil/intercept/EngineInterceptor;Lcoil/intercept/EngineInterceptor$b;Lm0/j;Ljava/util/List;La0/c;Lm0/f;Lrs/c;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v8, v9, p5}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method
