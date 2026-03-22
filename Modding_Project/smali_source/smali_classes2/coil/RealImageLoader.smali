.class public final Lcoil/RealImageLoader;
.super Ljava/lang/Object;
.source "RealImageLoader.kt"

# interfaces
.implements Lcoil/ImageLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/RealImageLoader$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final q:Lcoil/RealImageLoader$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lm0/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Lcoil/memory/MemoryCache;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Le0/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Lokhttp3/Call$Factory;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:La0/c$d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:La0/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Lr0/n;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final i:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final j:Lr0/s;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final k:Lm0/l;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final l:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final m:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final n:La0/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh0/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final p:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcoil/RealImageLoader$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcoil/RealImageLoader$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcoil/RealImageLoader;->q:Lcoil/RealImageLoader$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lm0/a;Lms/i;Lms/i;Lms/i;La0/c$d;La0/b;Lr0/n;Lr0/q;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lm0/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lms/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lms/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lms/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # La0/c$d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # La0/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lr0/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lr0/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lm0/a;",
            "Lms/i<",
            "+",
            "Lcoil/memory/MemoryCache;",
            ">;",
            "Lms/i<",
            "+",
            "Le0/a;",
            ">;",
            "Lms/i<",
            "+",
            "Lokhttp3/Call$Factory;",
            ">;",
            "La0/c$d;",
            "La0/b;",
            "Lr0/n;",
            "Lr0/q;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil/RealImageLoader;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil/RealImageLoader;->b:Lm0/a;

    .line 7
    .line 8
    iput-object p3, p0, Lcoil/RealImageLoader;->c:Lms/i;

    .line 9
    .line 10
    iput-object p4, p0, Lcoil/RealImageLoader;->d:Lms/i;

    .line 11
    .line 12
    iput-object p5, p0, Lcoil/RealImageLoader;->e:Lms/i;

    .line 13
    .line 14
    iput-object p6, p0, Lcoil/RealImageLoader;->f:La0/c$d;

    .line 15
    .line 16
    iput-object p7, p0, Lcoil/RealImageLoader;->g:La0/b;

    .line 17
    .line 18
    iput-object p8, p0, Lcoil/RealImageLoader;->h:Lr0/n;

    .line 19
    .line 20
    const/4 p2, 0x1

    .line 21
    const/4 p6, 0x0

    .line 22
    invoke-static {p6, p2, p6}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 27
    .line 28
    .line 29
    move-result-object p9

    .line 30
    invoke-virtual {p9}, Lgt/j1;->m()Lgt/j1;

    .line 31
    .line 32
    .line 33
    move-result-object p9

    .line 34
    invoke-interface {p2, p9}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    sget-object p9, Lgt/d0;->D8:Lgt/d0$b;

    .line 39
    .line 40
    new-instance v0, Lcoil/RealImageLoader$b;

    .line 41
    .line 42
    invoke-direct {v0, p9, p0}, Lcoil/RealImageLoader$b;-><init>(Lgt/d0$b;Lcoil/RealImageLoader;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p2, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-static {p2}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    iput-object p2, p0, Lcoil/RealImageLoader;->i:Lgt/g0;

    .line 54
    .line 55
    new-instance p2, Lr0/s;

    .line 56
    .line 57
    invoke-virtual {p8}, Lr0/n;->d()Z

    .line 58
    .line 59
    .line 60
    move-result p9

    .line 61
    invoke-direct {p2, p0, p1, p9}, Lr0/s;-><init>(Lcoil/RealImageLoader;Landroid/content/Context;Z)V

    .line 62
    .line 63
    .line 64
    iput-object p2, p0, Lcoil/RealImageLoader;->j:Lr0/s;

    .line 65
    .line 66
    new-instance p1, Lm0/l;

    .line 67
    .line 68
    invoke-direct {p1, p0, p2, p6}, Lm0/l;-><init>(Lcoil/ImageLoader;Lr0/s;Lr0/q;)V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lcoil/RealImageLoader;->k:Lm0/l;

    .line 72
    .line 73
    iput-object p3, p0, Lcoil/RealImageLoader;->l:Lms/i;

    .line 74
    .line 75
    iput-object p4, p0, Lcoil/RealImageLoader;->m:Lms/i;

    .line 76
    .line 77
    invoke-virtual {p7}, La0/b;->h()La0/b$a;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    new-instance p7, Lj0/c;

    .line 82
    .line 83
    invoke-direct {p7}, Lj0/c;-><init>()V

    .line 84
    .line 85
    .line 86
    const-class p9, Lokhttp3/HttpUrl;

    .line 87
    .line 88
    invoke-virtual {p3, p7, p9}, La0/b$a;->d(Lj0/d;Ljava/lang/Class;)La0/b$a;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    new-instance p7, Lj0/g;

    .line 93
    .line 94
    invoke-direct {p7}, Lj0/g;-><init>()V

    .line 95
    .line 96
    .line 97
    const-class p9, Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {p3, p7, p9}, La0/b$a;->d(Lj0/d;Ljava/lang/Class;)La0/b$a;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    new-instance p7, Lj0/b;

    .line 104
    .line 105
    invoke-direct {p7}, Lj0/b;-><init>()V

    .line 106
    .line 107
    .line 108
    const-class p9, Landroid/net/Uri;

    .line 109
    .line 110
    invoke-virtual {p3, p7, p9}, La0/b$a;->d(Lj0/d;Ljava/lang/Class;)La0/b$a;

    .line 111
    .line 112
    .line 113
    move-result-object p3

    .line 114
    new-instance p7, Lj0/f;

    .line 115
    .line 116
    invoke-direct {p7}, Lj0/f;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3, p7, p9}, La0/b$a;->d(Lj0/d;Ljava/lang/Class;)La0/b$a;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    new-instance p7, Lj0/e;

    .line 124
    .line 125
    invoke-direct {p7}, Lj0/e;-><init>()V

    .line 126
    .line 127
    .line 128
    const-class v0, Ljava/lang/Integer;

    .line 129
    .line 130
    invoke-virtual {p3, p7, v0}, La0/b$a;->d(Lj0/d;Ljava/lang/Class;)La0/b$a;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    new-instance p7, Lj0/a;

    .line 135
    .line 136
    invoke-direct {p7}, Lj0/a;-><init>()V

    .line 137
    .line 138
    .line 139
    const-class v0, [B

    .line 140
    .line 141
    invoke-virtual {p3, p7, v0}, La0/b$a;->d(Lj0/d;Ljava/lang/Class;)La0/b$a;

    .line 142
    .line 143
    .line 144
    move-result-object p3

    .line 145
    new-instance p7, Li0/c;

    .line 146
    .line 147
    invoke-direct {p7}, Li0/c;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p3, p7, p9}, La0/b$a;->c(Li0/b;Ljava/lang/Class;)La0/b$a;

    .line 151
    .line 152
    .line 153
    move-result-object p3

    .line 154
    new-instance p7, Li0/a;

    .line 155
    .line 156
    invoke-virtual {p8}, Lr0/n;->a()Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    invoke-direct {p7, v0}, Li0/a;-><init>(Z)V

    .line 161
    .line 162
    .line 163
    const-class v0, Ljava/io/File;

    .line 164
    .line 165
    invoke-virtual {p3, p7, v0}, La0/b$a;->c(Li0/b;Ljava/lang/Class;)La0/b$a;

    .line 166
    .line 167
    .line 168
    move-result-object p3

    .line 169
    new-instance p7, Lcoil/fetch/HttpUriFetcher$b;

    .line 170
    .line 171
    invoke-virtual {p8}, Lr0/n;->e()Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    invoke-direct {p7, p5, p4, v1}, Lcoil/fetch/HttpUriFetcher$b;-><init>(Lms/i;Lms/i;Z)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p3, p7, p9}, La0/b$a;->b(Lg0/i$a;Ljava/lang/Class;)La0/b$a;

    .line 179
    .line 180
    .line 181
    move-result-object p3

    .line 182
    new-instance p4, Lg0/j$a;

    .line 183
    .line 184
    invoke-direct {p4}, Lg0/j$a;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p3, p4, v0}, La0/b$a;->b(Lg0/i$a;Ljava/lang/Class;)La0/b$a;

    .line 188
    .line 189
    .line 190
    move-result-object p3

    .line 191
    new-instance p4, Lg0/a$a;

    .line 192
    .line 193
    invoke-direct {p4}, Lg0/a$a;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p3, p4, p9}, La0/b$a;->b(Lg0/i$a;Ljava/lang/Class;)La0/b$a;

    .line 197
    .line 198
    .line 199
    move-result-object p3

    .line 200
    new-instance p4, Lg0/e$a;

    .line 201
    .line 202
    invoke-direct {p4}, Lg0/e$a;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p3, p4, p9}, La0/b$a;->b(Lg0/i$a;Ljava/lang/Class;)La0/b$a;

    .line 206
    .line 207
    .line 208
    move-result-object p3

    .line 209
    new-instance p4, Lg0/k$b;

    .line 210
    .line 211
    invoke-direct {p4}, Lg0/k$b;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p3, p4, p9}, La0/b$a;->b(Lg0/i$a;Ljava/lang/Class;)La0/b$a;

    .line 215
    .line 216
    .line 217
    move-result-object p3

    .line 218
    new-instance p4, Lg0/f$a;

    .line 219
    .line 220
    invoke-direct {p4}, Lg0/f$a;-><init>()V

    .line 221
    .line 222
    .line 223
    const-class p5, Landroid/graphics/drawable/Drawable;

    .line 224
    .line 225
    invoke-virtual {p3, p4, p5}, La0/b$a;->b(Lg0/i$a;Ljava/lang/Class;)La0/b$a;

    .line 226
    .line 227
    .line 228
    move-result-object p3

    .line 229
    new-instance p4, Lg0/b$a;

    .line 230
    .line 231
    invoke-direct {p4}, Lg0/b$a;-><init>()V

    .line 232
    .line 233
    .line 234
    const-class p5, Landroid/graphics/Bitmap;

    .line 235
    .line 236
    invoke-virtual {p3, p4, p5}, La0/b$a;->b(Lg0/i$a;Ljava/lang/Class;)La0/b$a;

    .line 237
    .line 238
    .line 239
    move-result-object p3

    .line 240
    new-instance p4, Lg0/c$a;

    .line 241
    .line 242
    invoke-direct {p4}, Lg0/c$a;-><init>()V

    .line 243
    .line 244
    .line 245
    const-class p5, Ljava/nio/ByteBuffer;

    .line 246
    .line 247
    invoke-virtual {p3, p4, p5}, La0/b$a;->b(Lg0/i$a;Ljava/lang/Class;)La0/b$a;

    .line 248
    .line 249
    .line 250
    move-result-object p3

    .line 251
    new-instance p4, Lcoil/decode/BitmapFactoryDecoder$c;

    .line 252
    .line 253
    invoke-virtual {p8}, Lr0/n;->c()I

    .line 254
    .line 255
    .line 256
    move-result p5

    .line 257
    invoke-virtual {p8}, Lr0/n;->b()Lcoil/decode/ExifOrientationPolicy;

    .line 258
    .line 259
    .line 260
    move-result-object p7

    .line 261
    invoke-direct {p4, p5, p7}, Lcoil/decode/BitmapFactoryDecoder$c;-><init>(ILcoil/decode/ExifOrientationPolicy;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p3, p4}, La0/b$a;->a(Ld0/g$a;)La0/b$a;

    .line 265
    .line 266
    .line 267
    move-result-object p3

    .line 268
    invoke-virtual {p3}, La0/b$a;->e()La0/b;

    .line 269
    .line 270
    .line 271
    move-result-object p3

    .line 272
    iput-object p3, p0, Lcoil/RealImageLoader;->n:La0/b;

    .line 273
    .line 274
    invoke-virtual {p0}, Lcoil/RealImageLoader;->getComponents()La0/b;

    .line 275
    .line 276
    .line 277
    move-result-object p3

    .line 278
    invoke-virtual {p3}, La0/b;->c()Ljava/util/List;

    .line 279
    .line 280
    .line 281
    move-result-object p3

    .line 282
    check-cast p3, Ljava/util/Collection;

    .line 283
    .line 284
    new-instance p4, Lcoil/intercept/EngineInterceptor;

    .line 285
    .line 286
    invoke-direct {p4, p0, p1, p6}, Lcoil/intercept/EngineInterceptor;-><init>(Lcoil/ImageLoader;Lm0/l;Lr0/q;)V

    .line 287
    .line 288
    .line 289
    invoke-static {p3, p4}, Lkotlin/collections/CollectionsKt;->L0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    iput-object p1, p0, Lcoil/RealImageLoader;->o:Ljava/util/List;

    .line 294
    .line 295
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 296
    .line 297
    const/4 p3, 0x0

    .line 298
    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 299
    .line 300
    .line 301
    iput-object p1, p0, Lcoil/RealImageLoader;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 302
    .line 303
    invoke-virtual {p2}, Lr0/s;->c()V

    .line 304
    .line 305
    .line 306
    return-void
.end method

.method public static final synthetic e(Lcoil/RealImageLoader;Lm0/f;ILrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcoil/RealImageLoader;->g(Lm0/f;ILrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lcoil/RealImageLoader;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil/RealImageLoader;->o:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method private final g(Lm0/f;ILrs/c;)Ljava/lang/Object;
    .locals 20
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm0/f;",
            "I",
            "Lrs/c<",
            "-",
            "Lm0/g;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    instance-of v3, v2, Lcoil/RealImageLoader$executeMain$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lcoil/RealImageLoader$executeMain$1;

    .line 13
    .line 14
    iget v4, v3, Lcoil/RealImageLoader$executeMain$1;->o:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lcoil/RealImageLoader$executeMain$1;->o:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lcoil/RealImageLoader$executeMain$1;

    .line 27
    .line 28
    invoke-direct {v3, v1, v2}, Lcoil/RealImageLoader$executeMain$1;-><init>(Lcoil/RealImageLoader;Lrs/c;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, v3, Lcoil/RealImageLoader$executeMain$1;->m:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iget v5, v3, Lcoil/RealImageLoader$executeMain$1;->o:I

    .line 38
    .line 39
    const/4 v6, 0x3

    .line 40
    const/4 v7, 0x2

    .line 41
    const/4 v8, 0x1

    .line 42
    const/4 v9, 0x0

    .line 43
    if-eqz v5, :cond_4

    .line 44
    .line 45
    if-eq v5, v8, :cond_3

    .line 46
    .line 47
    if-eq v5, v7, :cond_2

    .line 48
    .line 49
    if-ne v5, v6, :cond_1

    .line 50
    .line 51
    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->k:Ljava/lang/Object;

    .line 52
    .line 53
    move-object v4, v0

    .line 54
    check-cast v4, La0/c;

    .line 55
    .line 56
    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->j:Ljava/lang/Object;

    .line 57
    .line 58
    move-object v5, v0

    .line 59
    check-cast v5, Lm0/f;

    .line 60
    .line 61
    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->i:Ljava/lang/Object;

    .line 62
    .line 63
    move-object v6, v0

    .line 64
    check-cast v6, Lcoil/request/RequestDelegate;

    .line 65
    .line 66
    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->h:Ljava/lang/Object;

    .line 67
    .line 68
    move-object v3, v0

    .line 69
    check-cast v3, Lcoil/RealImageLoader;

    .line 70
    .line 71
    :try_start_0
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    .line 74
    goto/16 :goto_8

    .line 75
    .line 76
    :catchall_0
    move-exception v0

    .line 77
    goto/16 :goto_a

    .line 78
    .line 79
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 80
    .line 81
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 82
    .line 83
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v0

    .line 87
    :cond_2
    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->l:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v0, Landroid/graphics/Bitmap;

    .line 90
    .line 91
    iget-object v5, v3, Lcoil/RealImageLoader$executeMain$1;->k:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v5, La0/c;

    .line 94
    .line 95
    iget-object v7, v3, Lcoil/RealImageLoader$executeMain$1;->j:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v7, Lm0/f;

    .line 98
    .line 99
    iget-object v8, v3, Lcoil/RealImageLoader$executeMain$1;->i:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v8, Lcoil/request/RequestDelegate;

    .line 102
    .line 103
    iget-object v10, v3, Lcoil/RealImageLoader$executeMain$1;->h:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v10, Lcoil/RealImageLoader;

    .line 106
    .line 107
    :try_start_1
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    .line 109
    .line 110
    move-object/from16 v17, v0

    .line 111
    .line 112
    goto/16 :goto_7

    .line 113
    .line 114
    :catchall_1
    move-exception v0

    .line 115
    move-object v4, v5

    .line 116
    move-object v5, v7

    .line 117
    move-object v6, v8

    .line 118
    move-object v3, v10

    .line 119
    goto/16 :goto_a

    .line 120
    .line 121
    :cond_3
    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->k:Ljava/lang/Object;

    .line 122
    .line 123
    move-object v5, v0

    .line 124
    check-cast v5, La0/c;

    .line 125
    .line 126
    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->j:Ljava/lang/Object;

    .line 127
    .line 128
    move-object v8, v0

    .line 129
    check-cast v8, Lm0/f;

    .line 130
    .line 131
    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->i:Ljava/lang/Object;

    .line 132
    .line 133
    move-object v10, v0

    .line 134
    check-cast v10, Lcoil/request/RequestDelegate;

    .line 135
    .line 136
    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->h:Ljava/lang/Object;

    .line 137
    .line 138
    move-object v11, v0

    .line 139
    check-cast v11, Lcoil/RealImageLoader;

    .line 140
    .line 141
    :try_start_2
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :catchall_2
    move-exception v0

    .line 146
    move-object v4, v5

    .line 147
    move-object v5, v8

    .line 148
    move-object v6, v10

    .line 149
    :goto_1
    move-object v3, v11

    .line 150
    goto/16 :goto_a

    .line 151
    .line 152
    :cond_4
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    iget-object v2, v1, Lcoil/RealImageLoader;->k:Lm0/l;

    .line 156
    .line 157
    invoke-interface {v3}, Lrs/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    invoke-static {v5}, Lkotlinx/coroutines/t;->m(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/r;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    invoke-virtual {v2, v0, v5}, Lm0/l;->g(Lm0/f;Lkotlinx/coroutines/r;)Lcoil/request/RequestDelegate;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v2}, Lcoil/request/RequestDelegate;->a()V

    .line 170
    .line 171
    .line 172
    invoke-static {v0, v9, v8, v9}, Lm0/f;->R(Lm0/f;Landroid/content/Context;ILjava/lang/Object;)Lm0/f$a;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcoil/RealImageLoader;->c()Lm0/a;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-virtual {v0, v5}, Lm0/f$a;->c(Lm0/a;)Lm0/f$a;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lm0/f$a;->a()Lm0/f;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    iget-object v0, v1, Lcoil/RealImageLoader;->f:La0/c$d;

    .line 189
    .line 190
    invoke-interface {v0, v5}, La0/c$d;->a(Lm0/f;)La0/c;

    .line 191
    .line 192
    .line 193
    move-result-object v10

    .line 194
    :try_start_3
    invoke-virtual {v5}, Lm0/f;->m()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    sget-object v11, Lm0/h;->a:Lm0/h;

    .line 199
    .line 200
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-nez v0, :cond_10

    .line 205
    .line 206
    invoke-virtual {v2}, Lcoil/request/RequestDelegate;->c()V

    .line 207
    .line 208
    .line 209
    if-nez p2, :cond_6

    .line 210
    .line 211
    invoke-virtual {v5}, Lm0/f;->z()Landroidx/lifecycle/Lifecycle;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    iput-object v1, v3, Lcoil/RealImageLoader$executeMain$1;->h:Ljava/lang/Object;

    .line 216
    .line 217
    iput-object v2, v3, Lcoil/RealImageLoader$executeMain$1;->i:Ljava/lang/Object;

    .line 218
    .line 219
    iput-object v5, v3, Lcoil/RealImageLoader$executeMain$1;->j:Ljava/lang/Object;

    .line 220
    .line 221
    iput-object v10, v3, Lcoil/RealImageLoader$executeMain$1;->k:Ljava/lang/Object;

    .line 222
    .line 223
    iput v8, v3, Lcoil/RealImageLoader$executeMain$1;->o:I

    .line 224
    .line 225
    invoke-static {v0, v3}, Lcoil/util/-Lifecycles;->a(Landroidx/lifecycle/Lifecycle;Lrs/c;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 229
    if-ne v0, v4, :cond_5

    .line 230
    .line 231
    return-object v4

    .line 232
    :cond_5
    move-object v11, v1

    .line 233
    move-object v8, v5

    .line 234
    move-object v5, v10

    .line 235
    move-object v10, v2

    .line 236
    :goto_2
    move-object v2, v10

    .line 237
    goto :goto_3

    .line 238
    :catchall_3
    move-exception v0

    .line 239
    move-object v3, v1

    .line 240
    move-object v6, v2

    .line 241
    move-object v4, v10

    .line 242
    goto/16 :goto_a

    .line 243
    .line 244
    :cond_6
    move-object v11, v1

    .line 245
    move-object v8, v5

    .line 246
    move-object v5, v10

    .line 247
    :goto_3
    :try_start_4
    invoke-virtual {v11}, Lcoil/RealImageLoader;->d()Lcoil/memory/MemoryCache;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    if-eqz v0, :cond_8

    .line 252
    .line 253
    invoke-virtual {v8}, Lm0/f;->G()Lcoil/memory/MemoryCache$Key;

    .line 254
    .line 255
    .line 256
    move-result-object v10

    .line 257
    if-eqz v10, :cond_7

    .line 258
    .line 259
    invoke-interface {v0, v10}, Lcoil/memory/MemoryCache;->b(Lcoil/memory/MemoryCache$Key;)Lcoil/memory/MemoryCache$b;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    goto :goto_4

    .line 264
    :catchall_4
    move-exception v0

    .line 265
    move-object v6, v2

    .line 266
    move-object v4, v5

    .line 267
    move-object v5, v8

    .line 268
    goto :goto_1

    .line 269
    :cond_7
    move-object v0, v9

    .line 270
    :goto_4
    if-eqz v0, :cond_8

    .line 271
    .line 272
    invoke-virtual {v0}, Lcoil/memory/MemoryCache$b;->a()Landroid/graphics/Bitmap;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    goto :goto_5

    .line 277
    :cond_8
    move-object v0, v9

    .line 278
    :goto_5
    if-eqz v0, :cond_9

    .line 279
    .line 280
    invoke-virtual {v8}, Lm0/f;->l()Landroid/content/Context;

    .line 281
    .line 282
    .line 283
    move-result-object v10

    .line 284
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 285
    .line 286
    .line 287
    move-result-object v10

    .line 288
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    .line 289
    .line 290
    invoke-direct {v12, v10, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 291
    .line 292
    .line 293
    goto :goto_6

    .line 294
    :cond_9
    invoke-virtual {v8}, Lm0/f;->F()Landroid/graphics/drawable/Drawable;

    .line 295
    .line 296
    .line 297
    move-result-object v12

    .line 298
    :goto_6
    invoke-virtual {v8}, Lm0/f;->M()Lo0/a;

    .line 299
    .line 300
    .line 301
    move-result-object v10

    .line 302
    if-eqz v10, :cond_a

    .line 303
    .line 304
    invoke-interface {v10, v12}, Lo0/a;->c(Landroid/graphics/drawable/Drawable;)V

    .line 305
    .line 306
    .line 307
    :cond_a
    invoke-interface {v5, v8}, La0/c;->a(Lm0/f;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v8}, Lm0/f;->A()Lm0/f$b;

    .line 311
    .line 312
    .line 313
    move-result-object v10

    .line 314
    if-eqz v10, :cond_b

    .line 315
    .line 316
    invoke-interface {v10, v8}, Lm0/f$b;->a(Lm0/f;)V

    .line 317
    .line 318
    .line 319
    :cond_b
    invoke-interface {v5, v8}, La0/c;->e(Lm0/f;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v8}, Lm0/f;->K()Ln0/h;

    .line 323
    .line 324
    .line 325
    move-result-object v10

    .line 326
    iput-object v11, v3, Lcoil/RealImageLoader$executeMain$1;->h:Ljava/lang/Object;

    .line 327
    .line 328
    iput-object v2, v3, Lcoil/RealImageLoader$executeMain$1;->i:Ljava/lang/Object;

    .line 329
    .line 330
    iput-object v8, v3, Lcoil/RealImageLoader$executeMain$1;->j:Ljava/lang/Object;

    .line 331
    .line 332
    iput-object v5, v3, Lcoil/RealImageLoader$executeMain$1;->k:Ljava/lang/Object;

    .line 333
    .line 334
    iput-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->l:Ljava/lang/Object;

    .line 335
    .line 336
    iput v7, v3, Lcoil/RealImageLoader$executeMain$1;->o:I

    .line 337
    .line 338
    invoke-interface {v10, v3}, Ln0/h;->b(Lrs/c;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 342
    if-ne v7, v4, :cond_c

    .line 343
    .line 344
    return-object v4

    .line 345
    :cond_c
    move-object/from16 v17, v0

    .line 346
    .line 347
    move-object v10, v11

    .line 348
    move-object/from16 v19, v8

    .line 349
    .line 350
    move-object v8, v2

    .line 351
    move-object v2, v7

    .line 352
    move-object/from16 v7, v19

    .line 353
    .line 354
    :goto_7
    :try_start_5
    move-object v15, v2

    .line 355
    check-cast v15, Ln0/g;

    .line 356
    .line 357
    invoke-interface {v5, v7, v15}, La0/c;->j(Lm0/f;Ln0/g;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v7}, Lm0/f;->y()Lgt/c0;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    new-instance v2, Lcoil/RealImageLoader$executeMain$result$1;

    .line 365
    .line 366
    const/16 v18, 0x0

    .line 367
    .line 368
    move-object v12, v2

    .line 369
    move-object v13, v7

    .line 370
    move-object v14, v10

    .line 371
    move-object/from16 v16, v5

    .line 372
    .line 373
    invoke-direct/range {v12 .. v18}, Lcoil/RealImageLoader$executeMain$result$1;-><init>(Lm0/f;Lcoil/RealImageLoader;Ln0/g;La0/c;Landroid/graphics/Bitmap;Lrs/c;)V

    .line 374
    .line 375
    .line 376
    iput-object v10, v3, Lcoil/RealImageLoader$executeMain$1;->h:Ljava/lang/Object;

    .line 377
    .line 378
    iput-object v8, v3, Lcoil/RealImageLoader$executeMain$1;->i:Ljava/lang/Object;

    .line 379
    .line 380
    iput-object v7, v3, Lcoil/RealImageLoader$executeMain$1;->j:Ljava/lang/Object;

    .line 381
    .line 382
    iput-object v5, v3, Lcoil/RealImageLoader$executeMain$1;->k:Ljava/lang/Object;

    .line 383
    .line 384
    iput-object v9, v3, Lcoil/RealImageLoader$executeMain$1;->l:Ljava/lang/Object;

    .line 385
    .line 386
    iput v6, v3, Lcoil/RealImageLoader$executeMain$1;->o:I

    .line 387
    .line 388
    invoke-static {v0, v2, v3}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 392
    if-ne v2, v4, :cond_d

    .line 393
    .line 394
    return-object v4

    .line 395
    :cond_d
    move-object v4, v5

    .line 396
    move-object v5, v7

    .line 397
    move-object v6, v8

    .line 398
    move-object v3, v10

    .line 399
    :goto_8
    :try_start_6
    check-cast v2, Lm0/g;

    .line 400
    .line 401
    instance-of v0, v2, Lm0/m;

    .line 402
    .line 403
    if-eqz v0, :cond_e

    .line 404
    .line 405
    move-object v0, v2

    .line 406
    check-cast v0, Lm0/m;

    .line 407
    .line 408
    invoke-virtual {v5}, Lm0/f;->M()Lo0/a;

    .line 409
    .line 410
    .line 411
    move-result-object v7

    .line 412
    invoke-direct {v3, v0, v7, v4}, Lcoil/RealImageLoader;->k(Lm0/m;Lo0/a;La0/c;)V

    .line 413
    .line 414
    .line 415
    goto :goto_9

    .line 416
    :cond_e
    instance-of v0, v2, Lm0/d;

    .line 417
    .line 418
    if-eqz v0, :cond_f

    .line 419
    .line 420
    move-object v0, v2

    .line 421
    check-cast v0, Lm0/d;

    .line 422
    .line 423
    invoke-virtual {v5}, Lm0/f;->M()Lo0/a;

    .line 424
    .line 425
    .line 426
    move-result-object v7

    .line 427
    invoke-direct {v3, v0, v7, v4}, Lcoil/RealImageLoader;->j(Lm0/d;Lo0/a;La0/c;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 428
    .line 429
    .line 430
    :cond_f
    :goto_9
    invoke-virtual {v6}, Lcoil/request/RequestDelegate;->b()V

    .line 431
    .line 432
    .line 433
    return-object v2

    .line 434
    :cond_10
    :try_start_7
    new-instance v0, Lcoil/request/NullRequestDataException;

    .line 435
    .line 436
    invoke-direct {v0}, Lcoil/request/NullRequestDataException;-><init>()V

    .line 437
    .line 438
    .line 439
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 440
    :goto_a
    :try_start_8
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    .line 441
    .line 442
    if-nez v2, :cond_11

    .line 443
    .line 444
    iget-object v2, v3, Lcoil/RealImageLoader;->k:Lm0/l;

    .line 445
    .line 446
    invoke-virtual {v2, v5, v0}, Lm0/l;->b(Lm0/f;Ljava/lang/Throwable;)Lm0/d;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    invoke-virtual {v5}, Lm0/f;->M()Lo0/a;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    invoke-direct {v3, v0, v2, v4}, Lcoil/RealImageLoader;->j(Lm0/d;Lo0/a;La0/c;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 455
    .line 456
    .line 457
    invoke-virtual {v6}, Lcoil/request/RequestDelegate;->b()V

    .line 458
    .line 459
    .line 460
    return-object v0

    .line 461
    :catchall_5
    move-exception v0

    .line 462
    goto :goto_b

    .line 463
    :cond_11
    :try_start_9
    invoke-direct {v3, v5, v4}, Lcoil/RealImageLoader;->i(Lm0/f;La0/c;)V

    .line 464
    .line 465
    .line 466
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 467
    :goto_b
    invoke-virtual {v6}, Lcoil/request/RequestDelegate;->b()V

    .line 468
    .line 469
    .line 470
    throw v0
.end method

.method private final i(Lm0/f;La0/c;)V
    .locals 0

    .line 1
    invoke-interface {p2, p1}, La0/c;->d(Lm0/f;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lm0/f;->A()Lm0/f$b;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-interface {p2, p1}, Lm0/f$b;->d(Lm0/f;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private final j(Lm0/d;Lo0/a;La0/c;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lm0/d;->b()Lm0/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, p2, Lq0/d;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    if-eqz p2, :cond_2

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lm0/g;->b()Lm0/f;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lm0/f;->P()Lq0/c$a;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object v2, p2

    .line 21
    check-cast v2, Lq0/d;

    .line 22
    .line 23
    invoke-interface {v1, v2, p1}, Lq0/c$a;->a(Lq0/d;Lm0/g;)Lq0/c;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    instance-of v2, v1, Lq0/b;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    :goto_0
    invoke-virtual {p1}, Lm0/d;->a()Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {p2, v1}, Lo0/a;->d(Landroid/graphics/drawable/Drawable;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {p1}, Lm0/g;->b()Lm0/f;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-interface {p3, p2, v1}, La0/c;->q(Lm0/f;Lq0/c;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v1}, Lq0/c;->a()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lm0/g;->b()Lm0/f;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-interface {p3, p2, v1}, La0/c;->o(Lm0/f;Lq0/c;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_1
    invoke-interface {p3, v0, p1}, La0/c;->b(Lm0/f;Lm0/d;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lm0/f;->A()Lm0/f$b;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    if-eqz p2, :cond_3

    .line 64
    .line 65
    invoke-interface {p2, v0, p1}, Lm0/f$b;->b(Lm0/f;Lm0/d;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    return-void
.end method

.method private final k(Lm0/m;Lo0/a;La0/c;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lm0/m;->b()Lm0/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lm0/m;->c()Lcoil/decode/DataSource;

    .line 6
    .line 7
    .line 8
    instance-of v1, p2, Lq0/d;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    if-eqz p2, :cond_2

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lm0/g;->b()Lm0/f;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lm0/f;->P()Lq0/c$a;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    move-object v2, p2

    .line 24
    check-cast v2, Lq0/d;

    .line 25
    .line 26
    invoke-interface {v1, v2, p1}, Lq0/c$a;->a(Lq0/d;Lm0/g;)Lq0/c;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    instance-of v2, v1, Lq0/b;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    :goto_0
    invoke-virtual {p1}, Lm0/m;->a()Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {p2, v1}, Lo0/a;->b(Landroid/graphics/drawable/Drawable;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {p1}, Lm0/g;->b()Lm0/f;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-interface {p3, p2, v1}, La0/c;->q(Lm0/f;Lq0/c;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v1}, Lq0/c;->a()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lm0/g;->b()Lm0/f;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-interface {p3, p2, v1}, La0/c;->o(Lm0/f;Lq0/c;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_1
    invoke-interface {p3, v0, p1}, La0/c;->c(Lm0/f;Lm0/m;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lm0/f;->A()Lm0/f$b;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    if-eqz p2, :cond_3

    .line 67
    .line 68
    invoke-interface {p2, v0, p1}, Lm0/f$b;->c(Lm0/f;Lm0/m;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    return-void
.end method


# virtual methods
.method public a(Lm0/f;Lrs/c;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lm0/f;
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
            "Lm0/f;",
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
    new-instance v0, Lcoil/RealImageLoader$execute$2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p0, v1}, Lcoil/RealImageLoader$execute$2;-><init>(Lm0/f;Lcoil/RealImageLoader;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p2}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public b(Lm0/f;)Lm0/c;
    .locals 6
    .param p1    # Lm0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/RealImageLoader;->i:Lgt/g0;

    .line 2
    .line 3
    new-instance v3, Lcoil/RealImageLoader$enqueue$job$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p0, p1, v1}, Lcoil/RealImageLoader$enqueue$job$1;-><init>(Lcoil/RealImageLoader;Lm0/f;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static/range {v0 .. v5}, Lgt/e;->b(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lgt/k0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lm0/f;->M()Lo0/a;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    instance-of v1, v1, Lo0/b;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Lm0/f;->M()Lo0/a;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lo0/b;

    .line 29
    .line 30
    invoke-interface {p1}, Lo0/b;->getView()Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Lr0/i;->l(Landroid/view/View;)Lcoil/request/ViewTargetRequestManager;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1, v0}, Lcoil/request/ViewTargetRequestManager;->b(Lgt/k0;)Lm0/o;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance p1, Lm0/i;

    .line 44
    .line 45
    invoke-direct {p1, v0}, Lm0/i;-><init>(Lgt/k0;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-object p1
.end method

.method public c()Lm0/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/RealImageLoader;->b:Lm0/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Lcoil/memory/MemoryCache;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/RealImageLoader;->l:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcoil/memory/MemoryCache;

    .line 8
    .line 9
    return-object v0
.end method

.method public getComponents()La0/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/RealImageLoader;->n:La0/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lr0/q;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final l(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcoil/RealImageLoader;->c:Lms/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcoil/memory/MemoryCache;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0, p1}, Lcoil/memory/MemoryCache;->a(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
