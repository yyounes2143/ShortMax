.class public Lb4/d0;
.super Ljava/lang/Object;
.source "PoolFactory.java"


# instance fields
.field private final a:Lb4/b0;

.field private b:Lcom/facebook/imagepipeline/memory/e;

.field private c:Lb4/i;

.field private d:Lcom/facebook/imagepipeline/memory/e;

.field private e:Lcom/facebook/imagepipeline/memory/c;

.field private f:Lcom/facebook/imagepipeline/memory/e;

.field private g:Ln2/g;

.field private h:Ln2/j;

.field private i:Ln2/a;


# direct methods
.method public constructor <init>(Lb4/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lk2/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lb4/b0;

    .line 9
    .line 10
    iput-object p1, p0, Lb4/d0;->a:Lb4/b0;

    .line 11
    .line 12
    return-void
.end method

.method private a()Lcom/facebook/imagepipeline/memory/e;
    .locals 5

    .line 1
    iget-object v0, p0, Lb4/d0;->b:Lcom/facebook/imagepipeline/memory/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    const-class v1, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunkPool;

    .line 7
    .line 8
    const-class v2, Ln2/c;

    .line 9
    .line 10
    const-class v3, Lb4/e0;

    .line 11
    .line 12
    const-class v4, Lb4/f0;

    .line 13
    .line 14
    filled-new-array {v2, v3, v4}, [Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lb4/d0;->a:Lb4/b0;

    .line 23
    .line 24
    invoke-virtual {v2}, Lb4/b0;->i()Ln2/c;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v3, p0, Lb4/d0;->a:Lb4/b0;

    .line 29
    .line 30
    invoke-virtual {v3}, Lb4/b0;->g()Lb4/e0;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iget-object v4, p0, Lb4/d0;->a:Lb4/b0;

    .line 35
    .line 36
    invoke-virtual {v4}, Lb4/b0;->h()Lb4/f0;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lcom/facebook/imagepipeline/memory/e;

    .line 49
    .line 50
    iput-object v1, p0, Lb4/d0;->b:Lcom/facebook/imagepipeline/memory/e;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    iput-object v0, p0, Lb4/d0;->b:Lcom/facebook/imagepipeline/memory/e;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_1
    iput-object v0, p0, Lb4/d0;->b:Lcom/facebook/imagepipeline/memory/e;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_2
    iput-object v0, p0, Lb4/d0;->b:Lcom/facebook/imagepipeline/memory/e;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_3
    iput-object v0, p0, Lb4/d0;->b:Lcom/facebook/imagepipeline/memory/e;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_4
    iput-object v0, p0, Lb4/d0;->b:Lcom/facebook/imagepipeline/memory/e;

    .line 66
    .line 67
    :cond_0
    :goto_0
    iget-object v0, p0, Lb4/d0;->b:Lcom/facebook/imagepipeline/memory/e;

    .line 68
    .line 69
    return-object v0
.end method

.method private f(I)Lcom/facebook/imagepipeline/memory/e;
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lb4/d0;->a()Lcom/facebook/imagepipeline/memory/e;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string v0, "Invalid MemoryChunkType"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    invoke-virtual {p0}, Lb4/d0;->c()Lcom/facebook/imagepipeline/memory/e;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_2
    invoke-virtual {p0}, Lb4/d0;->g()Lcom/facebook/imagepipeline/memory/e;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method


# virtual methods
.method public b()Lb4/i;
    .locals 5

    .line 1
    iget-object v0, p0, Lb4/d0;->c:Lb4/i;

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Lb4/d0;->a:Lb4/b0;

    .line 6
    .line 7
    invoke-virtual {v0}, Lb4/b0;->e()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x3

    .line 16
    const/4 v3, 0x2

    .line 17
    const/4 v4, 0x1

    .line 18
    sparse-switch v1, :sswitch_data_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :sswitch_0
    const-string v1, "dummy"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    goto :goto_1

    .line 32
    :sswitch_1
    const-string v1, "dummy_with_tracking"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    move v0, v4

    .line 41
    goto :goto_1

    .line 42
    :sswitch_2
    const-string v1, "experimental"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    move v0, v3

    .line 51
    goto :goto_1

    .line 52
    :sswitch_3
    const-string v1, "legacy"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    const/4 v0, 0x4

    .line 61
    goto :goto_1

    .line 62
    :sswitch_4
    const-string v1, "legacy_default_params"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    .line 70
    move v0, v2

    .line 71
    goto :goto_1

    .line 72
    :cond_0
    :goto_0
    const/4 v0, -0x1

    .line 73
    :goto_1
    if-eqz v0, :cond_5

    .line 74
    .line 75
    if-eq v0, v4, :cond_4

    .line 76
    .line 77
    if-eq v0, v3, :cond_2

    .line 78
    .line 79
    if-eq v0, v2, :cond_1

    .line 80
    .line 81
    new-instance v0, Lcom/facebook/imagepipeline/memory/b;

    .line 82
    .line 83
    iget-object v1, p0, Lb4/d0;->a:Lb4/b0;

    .line 84
    .line 85
    invoke-virtual {v1}, Lb4/b0;->i()Ln2/c;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iget-object v2, p0, Lb4/d0;->a:Lb4/b0;

    .line 90
    .line 91
    invoke-virtual {v2}, Lb4/b0;->c()Lb4/e0;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    iget-object v3, p0, Lb4/d0;->a:Lb4/b0;

    .line 96
    .line 97
    invoke-virtual {v3}, Lb4/b0;->d()Lb4/f0;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    iget-object v4, p0, Lb4/d0;->a:Lb4/b0;

    .line 102
    .line 103
    invoke-virtual {v4}, Lb4/b0;->l()Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/imagepipeline/memory/b;-><init>(Ln2/c;Lb4/e0;Lb4/f0;Z)V

    .line 108
    .line 109
    .line 110
    iput-object v0, p0, Lb4/d0;->c:Lb4/i;

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_1
    new-instance v0, Lcom/facebook/imagepipeline/memory/b;

    .line 114
    .line 115
    iget-object v1, p0, Lb4/d0;->a:Lb4/b0;

    .line 116
    .line 117
    invoke-virtual {v1}, Lb4/b0;->i()Ln2/c;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {}, Lb4/n;->a()Lb4/e0;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    iget-object v3, p0, Lb4/d0;->a:Lb4/b0;

    .line 126
    .line 127
    invoke-virtual {v3}, Lb4/b0;->d()Lb4/f0;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    iget-object v4, p0, Lb4/d0;->a:Lb4/b0;

    .line 132
    .line 133
    invoke-virtual {v4}, Lb4/b0;->l()Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/imagepipeline/memory/b;-><init>(Ln2/c;Lb4/e0;Lb4/f0;Z)V

    .line 138
    .line 139
    .line 140
    iput-object v0, p0, Lb4/d0;->c:Lb4/i;

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_2
    new-instance v0, Lb4/t;

    .line 144
    .line 145
    iget-object v1, p0, Lb4/d0;->a:Lb4/b0;

    .line 146
    .line 147
    invoke-virtual {v1}, Lb4/b0;->b()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    iget-object v2, p0, Lb4/d0;->a:Lb4/b0;

    .line 152
    .line 153
    invoke-virtual {v2}, Lb4/b0;->a()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    invoke-static {}, Lb4/z;->h()Lb4/z;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    iget-object v4, p0, Lb4/d0;->a:Lb4/b0;

    .line 162
    .line 163
    invoke-virtual {v4}, Lb4/b0;->m()Z

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    if-eqz v4, :cond_3

    .line 168
    .line 169
    iget-object v4, p0, Lb4/d0;->a:Lb4/b0;

    .line 170
    .line 171
    invoke-virtual {v4}, Lb4/b0;->i()Ln2/c;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    goto :goto_2

    .line 176
    :cond_3
    const/4 v4, 0x0

    .line 177
    :goto_2
    invoke-direct {v0, v1, v2, v3, v4}, Lb4/t;-><init>(IILb4/f0;Ln2/c;)V

    .line 178
    .line 179
    .line 180
    iput-object v0, p0, Lb4/d0;->c:Lb4/i;

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_4
    new-instance v0, Lb4/s;

    .line 184
    .line 185
    invoke-direct {v0}, Lb4/s;-><init>()V

    .line 186
    .line 187
    .line 188
    iput-object v0, p0, Lb4/d0;->c:Lb4/i;

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_5
    new-instance v0, Lb4/r;

    .line 192
    .line 193
    invoke-direct {v0}, Lb4/r;-><init>()V

    .line 194
    .line 195
    .line 196
    iput-object v0, p0, Lb4/d0;->c:Lb4/i;

    .line 197
    .line 198
    :cond_6
    :goto_3
    iget-object v0, p0, Lb4/d0;->c:Lb4/i;

    .line 199
    .line 200
    return-object v0

    .line 201
    :sswitch_data_0
    .sparse-switch
        -0x6f64eb86 -> :sswitch_4
        -0x41f50c37 -> :sswitch_3
        -0x181d2318 -> :sswitch_2
        -0x17f85147 -> :sswitch_1
        0x5b804a8 -> :sswitch_0
    .end sparse-switch
.end method

.method public c()Lcom/facebook/imagepipeline/memory/e;
    .locals 5

    .line 1
    iget-object v0, p0, Lb4/d0;->d:Lcom/facebook/imagepipeline/memory/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    const-class v1, Lcom/facebook/imagepipeline/memory/BufferMemoryChunkPool;

    .line 7
    .line 8
    const-class v2, Ln2/c;

    .line 9
    .line 10
    const-class v3, Lb4/e0;

    .line 11
    .line 12
    const-class v4, Lb4/f0;

    .line 13
    .line 14
    filled-new-array {v2, v3, v4}, [Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lb4/d0;->a:Lb4/b0;

    .line 23
    .line 24
    invoke-virtual {v2}, Lb4/b0;->i()Ln2/c;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v3, p0, Lb4/d0;->a:Lb4/b0;

    .line 29
    .line 30
    invoke-virtual {v3}, Lb4/b0;->g()Lb4/e0;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iget-object v4, p0, Lb4/d0;->a:Lb4/b0;

    .line 35
    .line 36
    invoke-virtual {v4}, Lb4/b0;->h()Lb4/f0;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lcom/facebook/imagepipeline/memory/e;

    .line 49
    .line 50
    iput-object v1, p0, Lb4/d0;->d:Lcom/facebook/imagepipeline/memory/e;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    iput-object v0, p0, Lb4/d0;->d:Lcom/facebook/imagepipeline/memory/e;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_1
    iput-object v0, p0, Lb4/d0;->d:Lcom/facebook/imagepipeline/memory/e;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_2
    iput-object v0, p0, Lb4/d0;->d:Lcom/facebook/imagepipeline/memory/e;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_3
    iput-object v0, p0, Lb4/d0;->d:Lcom/facebook/imagepipeline/memory/e;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_4
    iput-object v0, p0, Lb4/d0;->d:Lcom/facebook/imagepipeline/memory/e;

    .line 66
    .line 67
    :cond_0
    :goto_0
    iget-object v0, p0, Lb4/d0;->d:Lcom/facebook/imagepipeline/memory/e;

    .line 68
    .line 69
    return-object v0
.end method

.method public d()Lcom/facebook/imagepipeline/memory/c;
    .locals 3

    .line 1
    iget-object v0, p0, Lb4/d0;->e:Lcom/facebook/imagepipeline/memory/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/facebook/imagepipeline/memory/c;

    .line 6
    .line 7
    iget-object v1, p0, Lb4/d0;->a:Lb4/b0;

    .line 8
    .line 9
    invoke-virtual {v1}, Lb4/b0;->i()Ln2/c;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lb4/d0;->a:Lb4/b0;

    .line 14
    .line 15
    invoke-virtual {v2}, Lb4/b0;->f()Lb4/e0;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/memory/c;-><init>(Ln2/c;Lb4/e0;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lb4/d0;->e:Lcom/facebook/imagepipeline/memory/c;

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lb4/d0;->e:Lcom/facebook/imagepipeline/memory/c;

    .line 25
    .line 26
    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb4/d0;->a:Lb4/b0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb4/b0;->f()Lb4/e0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Lb4/e0;->g:I

    .line 8
    .line 9
    return v0
.end method

.method public g()Lcom/facebook/imagepipeline/memory/e;
    .locals 7

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "PoolFactory"

    .line 4
    .line 5
    iget-object v2, p0, Lb4/d0;->f:Lcom/facebook/imagepipeline/memory/e;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    const-class v3, Lcom/facebook/imagepipeline/memory/NativeMemoryChunkPool;

    .line 11
    .line 12
    const-class v4, Ln2/c;

    .line 13
    .line 14
    const-class v5, Lb4/e0;

    .line 15
    .line 16
    const-class v6, Lb4/f0;

    .line 17
    .line 18
    filled-new-array {v4, v5, v6}, [Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget-object v4, p0, Lb4/d0;->a:Lb4/b0;

    .line 27
    .line 28
    invoke-virtual {v4}, Lb4/b0;->i()Ln2/c;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iget-object v5, p0, Lb4/d0;->a:Lb4/b0;

    .line 33
    .line 34
    invoke-virtual {v5}, Lb4/b0;->g()Lb4/e0;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    iget-object v6, p0, Lb4/d0;->a:Lb4/b0;

    .line 39
    .line 40
    invoke-virtual {v6}, Lb4/b0;->h()Lb4/f0;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lcom/facebook/imagepipeline/memory/e;

    .line 53
    .line 54
    iput-object v3, p0, Lb4/d0;->f:Lcom/facebook/imagepipeline/memory/e;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    goto :goto_5

    .line 57
    :catch_0
    move-exception v3

    .line 58
    goto :goto_0

    .line 59
    :catch_1
    move-exception v3

    .line 60
    goto :goto_1

    .line 61
    :catch_2
    move-exception v3

    .line 62
    goto :goto_2

    .line 63
    :catch_3
    move-exception v3

    .line 64
    goto :goto_3

    .line 65
    :catch_4
    move-exception v3

    .line 66
    goto :goto_4

    .line 67
    :goto_0
    invoke-static {v1, v0, v3}, Ll2/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    iput-object v2, p0, Lb4/d0;->f:Lcom/facebook/imagepipeline/memory/e;

    .line 71
    .line 72
    goto :goto_5

    .line 73
    :goto_1
    invoke-static {v1, v0, v3}, Ll2/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    iput-object v2, p0, Lb4/d0;->f:Lcom/facebook/imagepipeline/memory/e;

    .line 77
    .line 78
    goto :goto_5

    .line 79
    :goto_2
    invoke-static {v1, v0, v3}, Ll2/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    iput-object v2, p0, Lb4/d0;->f:Lcom/facebook/imagepipeline/memory/e;

    .line 83
    .line 84
    goto :goto_5

    .line 85
    :goto_3
    invoke-static {v1, v0, v3}, Ll2/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    iput-object v2, p0, Lb4/d0;->f:Lcom/facebook/imagepipeline/memory/e;

    .line 89
    .line 90
    goto :goto_5

    .line 91
    :goto_4
    invoke-static {v1, v0, v3}, Ll2/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    iput-object v2, p0, Lb4/d0;->f:Lcom/facebook/imagepipeline/memory/e;

    .line 95
    .line 96
    :cond_0
    :goto_5
    iget-object v0, p0, Lb4/d0;->f:Lcom/facebook/imagepipeline/memory/e;

    .line 97
    .line 98
    return-object v0
.end method

.method public h()Ln2/g;
    .locals 1

    .line 1
    invoke-static {}, Lt3/w;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lb4/d0;->i(I)Ln2/g;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public i(I)Ln2/g;
    .locals 3

    .line 1
    iget-object v0, p0, Lb4/d0;->g:Ln2/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lb4/d0;->f(I)Lcom/facebook/imagepipeline/memory/e;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "failed to get pool for chunk type: "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {v0, p1}, Lk2/h;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    new-instance p1, Lb4/y;

    .line 30
    .line 31
    invoke-virtual {p0}, Lb4/d0;->j()Ln2/j;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {p1, v0, v1}, Lb4/y;-><init>(Lcom/facebook/imagepipeline/memory/e;Ln2/j;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lb4/d0;->g:Ln2/g;

    .line 39
    .line 40
    :cond_0
    iget-object p1, p0, Lb4/d0;->g:Ln2/g;

    .line 41
    .line 42
    return-object p1
.end method

.method public j()Ln2/j;
    .locals 2

    .line 1
    iget-object v0, p0, Lb4/d0;->h:Ln2/j;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ln2/j;

    .line 6
    .line 7
    invoke-virtual {p0}, Lb4/d0;->k()Ln2/a;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Ln2/j;-><init>(Ln2/a;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lb4/d0;->h:Ln2/j;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lb4/d0;->h:Ln2/j;

    .line 17
    .line 18
    return-object v0
.end method

.method public k()Ln2/a;
    .locals 4

    .line 1
    iget-object v0, p0, Lb4/d0;->i:Ln2/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/facebook/imagepipeline/memory/d;

    .line 6
    .line 7
    iget-object v1, p0, Lb4/d0;->a:Lb4/b0;

    .line 8
    .line 9
    invoke-virtual {v1}, Lb4/b0;->i()Ln2/c;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lb4/d0;->a:Lb4/b0;

    .line 14
    .line 15
    invoke-virtual {v2}, Lb4/b0;->j()Lb4/e0;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lb4/d0;->a:Lb4/b0;

    .line 20
    .line 21
    invoke-virtual {v3}, Lb4/b0;->k()Lb4/f0;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/memory/d;-><init>(Ln2/c;Lb4/e0;Lb4/f0;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lb4/d0;->i:Ln2/a;

    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lb4/d0;->i:Ln2/a;

    .line 31
    .line 32
    return-object v0
.end method
