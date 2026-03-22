.class public final Lk0/c;
.super Ljava/lang/Object;
.source "MemoryCacheService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/c$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final c:Lk0/c$a;
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lk0/c$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lk0/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lk0/c;->c:Lk0/c$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcoil/ImageLoader;Lm0/l;Lr0/q;)V
    .locals 0
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
    iput-object p1, p0, Lk0/c;->a:Lcoil/ImageLoader;

    .line 5
    .line 6
    iput-object p2, p0, Lk0/c;->b:Lm0/l;

    .line 7
    .line 8
    return-void
.end method

.method private final b(Lcoil/memory/MemoryCache$b;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcoil/memory/MemoryCache$b;->b()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "coil#disk_cache_key"

    .line 6
    .line 7
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    instance-of v0, p1, Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast p1, Ljava/lang/String;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    return-object p1
.end method

.method private final d(Lcoil/memory/MemoryCache$b;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcoil/memory/MemoryCache$b;->b()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "coil#is_sampled"

    .line 6
    .line 7
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast p1, Ljava/lang/Boolean;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 p1, 0x0

    .line 27
    :goto_1
    return p1
.end method

.method private final e(Lm0/f;Lcoil/memory/MemoryCache$Key;Lcoil/memory/MemoryCache$b;Ln0/g;Lcoil/size/Scale;)Z
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p3

    .line 3
    .line 4
    invoke-direct {p0, v1}, Lk0/c;->d(Lcoil/memory/MemoryCache$b;)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    invoke-static/range {p4 .. p4}, Ln0/b;->a(Ln0/g;)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x1

    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    return v4

    .line 19
    :cond_0
    return v5

    .line 20
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcoil/memory/MemoryCache$Key;->c()Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v6, "coil#transformation_size"

    .line 25
    .line 26
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Ljava/lang/String;

    .line 31
    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    invoke-virtual/range {p4 .. p4}, Ln0/g;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    return v1

    .line 43
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcoil/memory/MemoryCache$b;->a()Landroid/graphics/Bitmap;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-virtual/range {p3 .. p3}, Lcoil/memory/MemoryCache$b;->a()Landroid/graphics/Bitmap;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual/range {p4 .. p4}, Ln0/g;->b()Ln0/c;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    instance-of v7, v6, Ln0/c$a;

    .line 64
    .line 65
    const v8, 0x7fffffff

    .line 66
    .line 67
    .line 68
    if-eqz v7, :cond_3

    .line 69
    .line 70
    check-cast v6, Ln0/c$a;

    .line 71
    .line 72
    iget v6, v6, Ln0/c$a;->a:I

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    move v6, v8

    .line 76
    :goto_0
    invoke-virtual/range {p4 .. p4}, Ln0/g;->a()Ln0/c;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    instance-of v9, v7, Ln0/c$a;

    .line 81
    .line 82
    if-eqz v9, :cond_4

    .line 83
    .line 84
    check-cast v7, Ln0/c$a;

    .line 85
    .line 86
    iget v8, v7, Ln0/c$a;->a:I

    .line 87
    .line 88
    :cond_4
    move-object/from16 v7, p5

    .line 89
    .line 90
    invoke-static {v3, v1, v6, v8, v7}, Ld0/f;->c(IIIILcoil/size/Scale;)D

    .line 91
    .line 92
    .line 93
    move-result-wide v9

    .line 94
    invoke-static/range {p1 .. p1}, Lr0/h;->a(Lm0/f;)Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 99
    .line 100
    if-eqz v7, :cond_7

    .line 101
    .line 102
    invoke-static {v9, v10, v11, v12}, Lkotlin/ranges/e;->h(DD)D

    .line 103
    .line 104
    .line 105
    move-result-wide v13

    .line 106
    int-to-double v4, v6

    .line 107
    int-to-double v11, v3

    .line 108
    mul-double/2addr v11, v13

    .line 109
    sub-double/2addr v4, v11

    .line 110
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    .line 111
    .line 112
    .line 113
    move-result-wide v3

    .line 114
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 115
    .line 116
    cmpg-double v3, v3, v5

    .line 117
    .line 118
    if-lez v3, :cond_5

    .line 119
    .line 120
    int-to-double v3, v8

    .line 121
    int-to-double v11, v1

    .line 122
    mul-double/2addr v13, v11

    .line 123
    sub-double/2addr v3, v13

    .line 124
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    .line 125
    .line 126
    .line 127
    move-result-wide v3

    .line 128
    cmpg-double v1, v3, v5

    .line 129
    .line 130
    if-gtz v1, :cond_6

    .line 131
    .line 132
    :cond_5
    const/4 v4, 0x1

    .line 133
    goto :goto_1

    .line 134
    :cond_6
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :goto_1
    return v4

    .line 138
    :cond_7
    move v4, v5

    .line 139
    invoke-static {v6}, Lr0/i;->s(I)Z

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-nez v5, :cond_8

    .line 144
    .line 145
    sub-int/2addr v6, v3

    .line 146
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-gt v3, v4, :cond_6

    .line 151
    .line 152
    :cond_8
    invoke-static {v8}, Lr0/i;->s(I)Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-nez v3, :cond_9

    .line 157
    .line 158
    sub-int/2addr v8, v1

    .line 159
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-gt v1, v4, :cond_6

    .line 164
    .line 165
    :cond_9
    move v1, v4

    .line 166
    goto :goto_4

    .line 167
    :goto_2
    cmpg-double v1, v9, v3

    .line 168
    .line 169
    if-nez v1, :cond_b

    .line 170
    .line 171
    :cond_a
    const/4 v1, 0x0

    .line 172
    goto :goto_3

    .line 173
    :cond_b
    if-nez v7, :cond_a

    .line 174
    .line 175
    const/4 v1, 0x0

    .line 176
    return v1

    .line 177
    :goto_3
    cmpl-double v3, v9, v3

    .line 178
    .line 179
    if-lez v3, :cond_c

    .line 180
    .line 181
    if-eqz v2, :cond_c

    .line 182
    .line 183
    return v1

    .line 184
    :cond_c
    const/4 v1, 0x1

    .line 185
    :goto_4
    return v1
.end method


# virtual methods
.method public final a(Lm0/f;Lcoil/memory/MemoryCache$Key;Ln0/g;Lcoil/size/Scale;)Lcoil/memory/MemoryCache$b;
    .locals 8
    .param p1    # Lm0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil/memory/MemoryCache$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ln0/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcoil/size/Scale;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lm0/f;->C()Lcoil/request/CachePolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcoil/request/CachePolicy;->getReadEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    iget-object v0, p0, Lk0/c;->a:Lcoil/ImageLoader;

    .line 14
    .line 15
    invoke-interface {v0}, Lcoil/ImageLoader;->d()Lcoil/memory/MemoryCache;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0, p2}, Lcoil/memory/MemoryCache;->b(Lcoil/memory/MemoryCache$Key;)Lcoil/memory/MemoryCache$b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object v0, v1

    .line 27
    :goto_0
    if-eqz v0, :cond_2

    .line 28
    .line 29
    move-object v2, p0

    .line 30
    move-object v3, p1

    .line 31
    move-object v4, p2

    .line 32
    move-object v5, v0

    .line 33
    move-object v6, p3

    .line 34
    move-object v7, p4

    .line 35
    invoke-virtual/range {v2 .. v7}, Lk0/c;->c(Lm0/f;Lcoil/memory/MemoryCache$Key;Lcoil/memory/MemoryCache$b;Ln0/g;Lcoil/size/Scale;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    move-object v1, v0

    .line 42
    :cond_2
    return-object v1
.end method

.method public final c(Lm0/f;Lcoil/memory/MemoryCache$Key;Lcoil/memory/MemoryCache$b;Ln0/g;Lcoil/size/Scale;)Z
    .locals 2
    .param p1    # Lm0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil/memory/MemoryCache$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcoil/memory/MemoryCache$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ln0/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcoil/size/Scale;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lk0/c;->b:Lm0/l;

    .line 2
    .line 3
    invoke-virtual {p3}, Lcoil/memory/MemoryCache$b;->a()Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lr0/a;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, p1, v1}, Lm0/l;->c(Lm0/f;Landroid/graphics/Bitmap$Config;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_0
    invoke-direct/range {p0 .. p5}, Lk0/c;->e(Lm0/f;Lcoil/memory/MemoryCache$Key;Lcoil/memory/MemoryCache$b;Ln0/g;Lcoil/size/Scale;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public final f(Lm0/f;Ljava/lang/Object;Lm0/j;La0/c;)Lcoil/memory/MemoryCache$Key;
    .locals 5
    .param p1    # Lm0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
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
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lm0/f;->B()Lcoil/memory/MemoryCache$Key;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-interface {p4, p1, p2}, La0/c;->l(Lm0/f;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lk0/c;->a:Lcoil/ImageLoader;

    .line 12
    .line 13
    invoke-interface {v0}, Lcoil/ImageLoader;->getComponents()La0/b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p2, p3}, La0/b;->f(Ljava/lang/Object;Lm0/j;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-interface {p4, p1, p2}, La0/c;->m(Lm0/f;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p4, 0x0

    .line 25
    if-nez p2, :cond_1

    .line 26
    .line 27
    return-object p4

    .line 28
    :cond_1
    invoke-virtual {p1}, Lm0/f;->O()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lm0/f;->E()Lm0/k;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lm0/k;->c()Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    new-instance p1, Lcoil/memory/MemoryCache$Key;

    .line 53
    .line 54
    const/4 p3, 0x2

    .line 55
    invoke-direct {p1, p2, p4, p3, p4}, Lcoil/memory/MemoryCache$Key;-><init>(Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 56
    .line 57
    .line 58
    return-object p1

    .line 59
    :cond_2
    invoke-static {v1}, Lkotlin/collections/p0;->A(Ljava/util/Map;)Ljava/util/Map;

    .line 60
    .line 61
    .line 62
    move-result-object p4

    .line 63
    check-cast v0, Ljava/util/Collection;

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_4

    .line 70
    .line 71
    invoke-virtual {p1}, Lm0/f;->O()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    const/4 v1, 0x0

    .line 80
    :goto_0
    if-ge v1, v0, :cond_3

    .line 81
    .line 82
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Lp0/a;

    .line 87
    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v4, "coil#transformation_"

    .line 94
    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-interface {v2}, Lp0/a;->getCacheKey()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-interface {p4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    add-int/lit8 v1, v1, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_3
    invoke-virtual {p3}, Lm0/j;->n()Ln0/g;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1}, Ln0/g;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    const-string p3, "coil#transformation_size"

    .line 124
    .line 125
    invoke-interface {p4, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    :cond_4
    new-instance p1, Lcoil/memory/MemoryCache$Key;

    .line 129
    .line 130
    invoke-direct {p1, p2, p4}, Lcoil/memory/MemoryCache$Key;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 131
    .line 132
    .line 133
    return-object p1
.end method

.method public final g(Lh0/a$a;Lm0/f;Lcoil/memory/MemoryCache$Key;Lcoil/memory/MemoryCache$b;)Lm0/m;
    .locals 9
    .param p1    # Lh0/a$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lm0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcoil/memory/MemoryCache$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcoil/memory/MemoryCache$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v8, Lm0/m;

    .line 2
    .line 3
    invoke-virtual {p4}, Lcoil/memory/MemoryCache$b;->a()Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p2}, Lm0/f;->l()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 16
    .line 17
    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 18
    .line 19
    .line 20
    sget-object v3, Lcoil/decode/DataSource;->MEMORY_CACHE:Lcoil/decode/DataSource;

    .line 21
    .line 22
    invoke-direct {p0, p4}, Lk0/c;->b(Lcoil/memory/MemoryCache$b;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-direct {p0, p4}, Lk0/c;->d(Lcoil/memory/MemoryCache$b;)Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    invoke-static {p1}, Lr0/i;->t(Lh0/a$a;)Z

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    move-object v0, v8

    .line 35
    move-object v1, v2

    .line 36
    move-object v2, p2

    .line 37
    move-object v4, p3

    .line 38
    invoke-direct/range {v0 .. v7}, Lm0/m;-><init>(Landroid/graphics/drawable/Drawable;Lm0/f;Lcoil/decode/DataSource;Lcoil/memory/MemoryCache$Key;Ljava/lang/String;ZZ)V

    .line 39
    .line 40
    .line 41
    return-object v8
.end method

.method public final h(Lcoil/memory/MemoryCache$Key;Lm0/f;Lcoil/intercept/EngineInterceptor$b;)Z
    .locals 4
    .param p1    # Lcoil/memory/MemoryCache$Key;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lm0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcoil/intercept/EngineInterceptor$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lm0/f;->C()Lcoil/request/CachePolicy;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcoil/request/CachePolicy;->getWriteEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    iget-object p2, p0, Lk0/c;->a:Lcoil/ImageLoader;

    .line 14
    .line 15
    invoke-interface {p2}, Lcoil/ImageLoader;->d()Lcoil/memory/MemoryCache;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-eqz p2, :cond_5

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {p3}, Lcoil/intercept/EngineInterceptor$b;->e()Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 v1, 0x0

    .line 36
    :goto_0
    if-eqz v1, :cond_5

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-nez v1, :cond_3

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3}, Lcoil/intercept/EngineInterceptor$b;->f()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-string v3, "coil#is_sampled"

    .line 59
    .line 60
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3}, Lcoil/intercept/EngineInterceptor$b;->d()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    if-eqz p3, :cond_4

    .line 68
    .line 69
    const-string v2, "coil#disk_cache_key"

    .line 70
    .line 71
    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    :cond_4
    new-instance p3, Lcoil/memory/MemoryCache$b;

    .line 75
    .line 76
    invoke-direct {p3, v1, v0}, Lcoil/memory/MemoryCache$b;-><init>(Landroid/graphics/Bitmap;Ljava/util/Map;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {p2, p1, p3}, Lcoil/memory/MemoryCache;->c(Lcoil/memory/MemoryCache$Key;Lcoil/memory/MemoryCache$b;)V

    .line 80
    .line 81
    .line 82
    const/4 p1, 0x1

    .line 83
    return p1

    .line 84
    :cond_5
    :goto_1
    return v0
.end method
