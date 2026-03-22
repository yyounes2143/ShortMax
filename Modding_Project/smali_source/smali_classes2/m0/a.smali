.class public final Lm0/a;
.super Ljava/lang/Object;
.source "DefaultRequestOptions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lgt/c0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lgt/c0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lgt/c0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lgt/c0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Lq0/c$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Lcoil/size/Precision;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Landroid/graphics/Bitmap$Config;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Z

.field private final i:Z

.field private final j:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final k:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final l:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final m:Lcoil/request/CachePolicy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final n:Lcoil/request/CachePolicy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final o:Lcoil/request/CachePolicy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

    const/16 v16, 0x7fff

    const/16 v17, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1
    invoke-direct/range {v0 .. v17}, Lm0/a;-><init>(Lgt/c0;Lgt/c0;Lgt/c0;Lgt/c0;Lq0/c$a;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lgt/c0;Lgt/c0;Lgt/c0;Lgt/c0;Lq0/c$a;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;)V
    .locals 2
    .param p1    # Lgt/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgt/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lgt/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lgt/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lq0/c$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcoil/size/Precision;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroid/graphics/Bitmap$Config;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Lcoil/request/CachePolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p14    # Lcoil/request/CachePolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p15    # Lcoil/request/CachePolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 3
    iput-object v1, v0, Lm0/a;->a:Lgt/c0;

    move-object v1, p2

    .line 4
    iput-object v1, v0, Lm0/a;->b:Lgt/c0;

    move-object v1, p3

    .line 5
    iput-object v1, v0, Lm0/a;->c:Lgt/c0;

    move-object v1, p4

    .line 6
    iput-object v1, v0, Lm0/a;->d:Lgt/c0;

    move-object v1, p5

    .line 7
    iput-object v1, v0, Lm0/a;->e:Lq0/c$a;

    move-object v1, p6

    .line 8
    iput-object v1, v0, Lm0/a;->f:Lcoil/size/Precision;

    move-object v1, p7

    .line 9
    iput-object v1, v0, Lm0/a;->g:Landroid/graphics/Bitmap$Config;

    move v1, p8

    .line 10
    iput-boolean v1, v0, Lm0/a;->h:Z

    move v1, p9

    .line 11
    iput-boolean v1, v0, Lm0/a;->i:Z

    move-object v1, p10

    .line 12
    iput-object v1, v0, Lm0/a;->j:Landroid/graphics/drawable/Drawable;

    move-object v1, p11

    .line 13
    iput-object v1, v0, Lm0/a;->k:Landroid/graphics/drawable/Drawable;

    move-object v1, p12

    .line 14
    iput-object v1, v0, Lm0/a;->l:Landroid/graphics/drawable/Drawable;

    move-object v1, p13

    .line 15
    iput-object v1, v0, Lm0/a;->m:Lcoil/request/CachePolicy;

    move-object/from16 v1, p14

    .line 16
    iput-object v1, v0, Lm0/a;->n:Lcoil/request/CachePolicy;

    move-object/from16 v1, p15

    .line 17
    iput-object v1, v0, Lm0/a;->o:Lcoil/request/CachePolicy;

    return-void
.end method

.method public synthetic constructor <init>(Lgt/c0;Lgt/c0;Lgt/c0;Lgt/c0;Lq0/c$a;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    move/from16 v0, p16

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 18
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    move-result-object v1

    invoke-virtual {v1}, Lgt/j1;->m()Lgt/j1;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 19
    invoke-static {}, Lgt/q0;->b()Lgt/c0;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    .line 20
    invoke-static {}, Lgt/q0;->b()Lgt/c0;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object/from16 v3, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    .line 21
    invoke-static {}, Lgt/q0;->b()Lgt/c0;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object/from16 v4, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    .line 22
    sget-object v5, Lq0/c$a;->b:Lq0/c$a;

    goto :goto_4

    :cond_4
    move-object/from16 v5, p5

    :goto_4
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    .line 23
    sget-object v6, Lcoil/size/Precision;->AUTOMATIC:Lcoil/size/Precision;

    goto :goto_5

    :cond_5
    move-object/from16 v6, p6

    :goto_5
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    .line 24
    invoke-static {}, Lr0/i;->f()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    goto :goto_6

    :cond_6
    move-object/from16 v7, p7

    :goto_6
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    goto :goto_7

    :cond_7
    move/from16 v8, p8

    :goto_7
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_8

    const/4 v9, 0x0

    goto :goto_8

    :cond_8
    move/from16 v9, p9

    :goto_8
    and-int/lit16 v10, v0, 0x200

    const/4 v11, 0x0

    if-eqz v10, :cond_9

    move-object v10, v11

    goto :goto_9

    :cond_9
    move-object/from16 v10, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    move-object v12, v11

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    goto :goto_b

    :cond_b
    move-object/from16 v11, p12

    :goto_b
    and-int/lit16 v13, v0, 0x1000

    if-eqz v13, :cond_c

    .line 25
    sget-object v13, Lcoil/request/CachePolicy;->ENABLED:Lcoil/request/CachePolicy;

    goto :goto_c

    :cond_c
    move-object/from16 v13, p13

    :goto_c
    and-int/lit16 v14, v0, 0x2000

    if-eqz v14, :cond_d

    .line 26
    sget-object v14, Lcoil/request/CachePolicy;->ENABLED:Lcoil/request/CachePolicy;

    goto :goto_d

    :cond_d
    move-object/from16 v14, p14

    :goto_d
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_e

    .line 27
    sget-object v0, Lcoil/request/CachePolicy;->ENABLED:Lcoil/request/CachePolicy;

    goto :goto_e

    :cond_e
    move-object/from16 v0, p15

    :goto_e
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move/from16 p9, v8

    move/from16 p10, v9

    move-object/from16 p11, v10

    move-object/from16 p12, v12

    move-object/from16 p13, v11

    move-object/from16 p14, v13

    move-object/from16 p15, v14

    move-object/from16 p16, v0

    .line 28
    invoke-direct/range {p1 .. p16}, Lm0/a;-><init>(Lgt/c0;Lgt/c0;Lgt/c0;Lgt/c0;Lq0/c$a;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm0/a;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm0/a;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public final c()Landroid/graphics/Bitmap$Config;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lm0/a;->g:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lgt/c0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lm0/a;->c:Lgt/c0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Lcoil/request/CachePolicy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lm0/a;->n:Lcoil/request/CachePolicy;

    .line 2
    .line 3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lm0/a;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lm0/a;->a:Lgt/c0;

    .line 10
    .line 11
    check-cast p1, Lm0/a;

    .line 12
    .line 13
    iget-object v2, p1, Lm0/a;->a:Lgt/c0;

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lm0/a;->b:Lgt/c0;

    .line 22
    .line 23
    iget-object v2, p1, Lm0/a;->b:Lgt/c0;

    .line 24
    .line 25
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lm0/a;->c:Lgt/c0;

    .line 32
    .line 33
    iget-object v2, p1, Lm0/a;->c:Lgt/c0;

    .line 34
    .line 35
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    iget-object v1, p0, Lm0/a;->d:Lgt/c0;

    .line 42
    .line 43
    iget-object v2, p1, Lm0/a;->d:Lgt/c0;

    .line 44
    .line 45
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    iget-object v1, p0, Lm0/a;->e:Lq0/c$a;

    .line 52
    .line 53
    iget-object v2, p1, Lm0/a;->e:Lq0/c$a;

    .line 54
    .line 55
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    iget-object v1, p0, Lm0/a;->f:Lcoil/size/Precision;

    .line 62
    .line 63
    iget-object v2, p1, Lm0/a;->f:Lcoil/size/Precision;

    .line 64
    .line 65
    if-ne v1, v2, :cond_1

    .line 66
    .line 67
    iget-object v1, p0, Lm0/a;->g:Landroid/graphics/Bitmap$Config;

    .line 68
    .line 69
    iget-object v2, p1, Lm0/a;->g:Landroid/graphics/Bitmap$Config;

    .line 70
    .line 71
    if-ne v1, v2, :cond_1

    .line 72
    .line 73
    iget-boolean v1, p0, Lm0/a;->h:Z

    .line 74
    .line 75
    iget-boolean v2, p1, Lm0/a;->h:Z

    .line 76
    .line 77
    if-ne v1, v2, :cond_1

    .line 78
    .line 79
    iget-boolean v1, p0, Lm0/a;->i:Z

    .line 80
    .line 81
    iget-boolean v2, p1, Lm0/a;->i:Z

    .line 82
    .line 83
    if-ne v1, v2, :cond_1

    .line 84
    .line 85
    iget-object v1, p0, Lm0/a;->j:Landroid/graphics/drawable/Drawable;

    .line 86
    .line 87
    iget-object v2, p1, Lm0/a;->j:Landroid/graphics/drawable/Drawable;

    .line 88
    .line 89
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_1

    .line 94
    .line 95
    iget-object v1, p0, Lm0/a;->k:Landroid/graphics/drawable/Drawable;

    .line 96
    .line 97
    iget-object v2, p1, Lm0/a;->k:Landroid/graphics/drawable/Drawable;

    .line 98
    .line 99
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_1

    .line 104
    .line 105
    iget-object v1, p0, Lm0/a;->l:Landroid/graphics/drawable/Drawable;

    .line 106
    .line 107
    iget-object v2, p1, Lm0/a;->l:Landroid/graphics/drawable/Drawable;

    .line 108
    .line 109
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_1

    .line 114
    .line 115
    iget-object v1, p0, Lm0/a;->m:Lcoil/request/CachePolicy;

    .line 116
    .line 117
    iget-object v2, p1, Lm0/a;->m:Lcoil/request/CachePolicy;

    .line 118
    .line 119
    if-ne v1, v2, :cond_1

    .line 120
    .line 121
    iget-object v1, p0, Lm0/a;->n:Lcoil/request/CachePolicy;

    .line 122
    .line 123
    iget-object v2, p1, Lm0/a;->n:Lcoil/request/CachePolicy;

    .line 124
    .line 125
    if-ne v1, v2, :cond_1

    .line 126
    .line 127
    iget-object v1, p0, Lm0/a;->o:Lcoil/request/CachePolicy;

    .line 128
    .line 129
    iget-object p1, p1, Lm0/a;->o:Lcoil/request/CachePolicy;

    .line 130
    .line 131
    if-ne v1, p1, :cond_1

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_1
    const/4 v0, 0x0

    .line 135
    :goto_0
    return v0
.end method

.method public final f()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lm0/a;->k:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lm0/a;->l:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lgt/c0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lm0/a;->b:Lgt/c0;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lm0/a;->a:Lgt/c0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lm0/a;->b:Lgt/c0;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object v1, p0, Lm0/a;->c:Lgt/c0;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v1, p0, Lm0/a;->d:Lgt/c0;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget-object v1, p0, Lm0/a;->e:Lq0/c$a;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-object v1, p0, Lm0/a;->f:Lcoil/size/Precision;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    iget-object v1, p0, Lm0/a;->g:Landroid/graphics/Bitmap$Config;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/2addr v0, v1

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    .line 63
    iget-boolean v1, p0, Lm0/a;->h:Z

    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    add-int/2addr v0, v1

    .line 70
    mul-int/lit8 v0, v0, 0x1f

    .line 71
    .line 72
    iget-boolean v1, p0, Lm0/a;->i:Z

    .line 73
    .line 74
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    add-int/2addr v0, v1

    .line 79
    mul-int/lit8 v0, v0, 0x1f

    .line 80
    .line 81
    iget-object v1, p0, Lm0/a;->j:Landroid/graphics/drawable/Drawable;

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    if-eqz v1, :cond_0

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    goto :goto_0

    .line 91
    :cond_0
    move v1, v2

    .line 92
    :goto_0
    add-int/2addr v0, v1

    .line 93
    mul-int/lit8 v0, v0, 0x1f

    .line 94
    .line 95
    iget-object v1, p0, Lm0/a;->k:Landroid/graphics/drawable/Drawable;

    .line 96
    .line 97
    if-eqz v1, :cond_1

    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    goto :goto_1

    .line 104
    :cond_1
    move v1, v2

    .line 105
    :goto_1
    add-int/2addr v0, v1

    .line 106
    mul-int/lit8 v0, v0, 0x1f

    .line 107
    .line 108
    iget-object v1, p0, Lm0/a;->l:Landroid/graphics/drawable/Drawable;

    .line 109
    .line 110
    if-eqz v1, :cond_2

    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    :cond_2
    add-int/2addr v0, v2

    .line 117
    mul-int/lit8 v0, v0, 0x1f

    .line 118
    .line 119
    iget-object v1, p0, Lm0/a;->m:Lcoil/request/CachePolicy;

    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    add-int/2addr v0, v1

    .line 126
    mul-int/lit8 v0, v0, 0x1f

    .line 127
    .line 128
    iget-object v1, p0, Lm0/a;->n:Lcoil/request/CachePolicy;

    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    add-int/2addr v0, v1

    .line 135
    mul-int/lit8 v0, v0, 0x1f

    .line 136
    .line 137
    iget-object v1, p0, Lm0/a;->o:Lcoil/request/CachePolicy;

    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    add-int/2addr v0, v1

    .line 144
    return v0
.end method

.method public final i()Lgt/c0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lm0/a;->a:Lgt/c0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Lcoil/request/CachePolicy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lm0/a;->m:Lcoil/request/CachePolicy;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Lcoil/request/CachePolicy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lm0/a;->o:Lcoil/request/CachePolicy;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lm0/a;->j:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Lcoil/size/Precision;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lm0/a;->f:Lcoil/size/Precision;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Lgt/c0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lm0/a;->d:Lgt/c0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()Lq0/c$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lm0/a;->e:Lq0/c$a;

    .line 2
    .line 3
    return-object v0
.end method
