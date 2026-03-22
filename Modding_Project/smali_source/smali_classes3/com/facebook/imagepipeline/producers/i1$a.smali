.class Lcom/facebook/imagepipeline/producers/i1$a;
.super Lcom/facebook/imagepipeline/producers/u;
.source "ResizeAndRotateProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/u<",
        "Ly3/k;",
        "Ly3/k;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Z

.field private final d:Lg4/d;

.field private final e:Lcom/facebook/imagepipeline/producers/c1;

.field private f:Z

.field private final g:Lcom/facebook/imagepipeline/producers/JobScheduler;

.field final synthetic h:Lcom/facebook/imagepipeline/producers/i1;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/i1;Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;ZLg4/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/n<",
            "Ly3/k;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/c1;",
            "Z",
            "Lg4/d;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/i1$a;->h:Lcom/facebook/imagepipeline/producers/i1;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/u;-><init>(Lcom/facebook/imagepipeline/producers/n;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/producers/i1$a;->f:Z

    .line 8
    .line 9
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/i1$a;->e:Lcom/facebook/imagepipeline/producers/c1;

    .line 10
    .line 11
    invoke-interface {p3}, Lcom/facebook/imagepipeline/producers/c1;->o()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->t()Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result p4

    .line 25
    :cond_0
    iput-boolean p4, p0, Lcom/facebook/imagepipeline/producers/i1$a;->c:Z

    .line 26
    .line 27
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/i1$a;->d:Lg4/d;

    .line 28
    .line 29
    new-instance p4, Lcom/facebook/imagepipeline/producers/i1$a$a;

    .line 30
    .line 31
    invoke-direct {p4, p0, p1}, Lcom/facebook/imagepipeline/producers/i1$a$a;-><init>(Lcom/facebook/imagepipeline/producers/i1$a;Lcom/facebook/imagepipeline/producers/i1;)V

    .line 32
    .line 33
    .line 34
    new-instance p5, Lcom/facebook/imagepipeline/producers/JobScheduler;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/i1;->c(Lcom/facebook/imagepipeline/producers/i1;)Ljava/util/concurrent/Executor;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/16 v1, 0x64

    .line 41
    .line 42
    invoke-direct {p5, v0, p4, v1}, Lcom/facebook/imagepipeline/producers/JobScheduler;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/JobScheduler$d;I)V

    .line 43
    .line 44
    .line 45
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/i1$a;->g:Lcom/facebook/imagepipeline/producers/JobScheduler;

    .line 46
    .line 47
    new-instance p4, Lcom/facebook/imagepipeline/producers/i1$a$b;

    .line 48
    .line 49
    invoke-direct {p4, p0, p1, p2}, Lcom/facebook/imagepipeline/producers/i1$a$b;-><init>(Lcom/facebook/imagepipeline/producers/i1$a;Lcom/facebook/imagepipeline/producers/i1;Lcom/facebook/imagepipeline/producers/n;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p3, p4}, Lcom/facebook/imagepipeline/producers/c1;->p(Lcom/facebook/imagepipeline/producers/d1;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private A(Ly3/k;)Ly3/k;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/i1$a;->e:Lcom/facebook/imagepipeline/producers/c1;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/c1;->o()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->u()Ls3/g;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ls3/g;->e()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Ly3/k;->q0()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Ly3/k;->q0()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, -0x1

    .line 28
    if-eq v0, v1, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/producers/i1$a;->x(Ly3/k;I)Ly3/k;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :cond_0
    return-object p1
.end method

.method static bridge synthetic p(Lcom/facebook/imagepipeline/producers/i1$a;)Lg4/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/i1$a;->d:Lg4/d;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic q(Lcom/facebook/imagepipeline/producers/i1$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/producers/i1$a;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic r(Lcom/facebook/imagepipeline/producers/i1$a;)Lcom/facebook/imagepipeline/producers/JobScheduler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/i1$a;->g:Lcom/facebook/imagepipeline/producers/JobScheduler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic s(Lcom/facebook/imagepipeline/producers/i1$a;)Lcom/facebook/imagepipeline/producers/c1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/i1$a;->e:Lcom/facebook/imagepipeline/producers/c1;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic t(Lcom/facebook/imagepipeline/producers/i1$a;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/producers/i1$a;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic u(Lcom/facebook/imagepipeline/producers/i1$a;Ly3/k;ILg4/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/i1$a;->v(Ly3/k;ILg4/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private v(Ly3/k;ILg4/c;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/i1$a;->e:Lcom/facebook/imagepipeline/producers/c1;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/c1;->l()Lcom/facebook/imagepipeline/producers/e1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/i1$a;->e:Lcom/facebook/imagepipeline/producers/c1;

    .line 8
    .line 9
    const-string v2, "ResizeAndRotateProducer"

    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/e1;->b(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/i1$a;->e:Lcom/facebook/imagepipeline/producers/c1;

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/c1;->o()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/i1$a;->h:Lcom/facebook/imagepipeline/producers/i1;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/i1;->d(Lcom/facebook/imagepipeline/producers/i1;)Ln2/g;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v1}, Ln2/g;->b()Ln2/i;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/4 v11, 0x0

    .line 31
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->u()Ls3/g;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->s()Ls3/f;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    const/16 v3, 0x55

    .line 40
    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    invoke-virtual {p1}, Ly3/k;->o()Landroid/graphics/ColorSpace;

    .line 46
    .line 47
    .line 48
    move-result-object v10

    .line 49
    const/4 v8, 0x0

    .line 50
    move-object v3, p3

    .line 51
    move-object v4, p1

    .line 52
    move-object v5, v1

    .line 53
    invoke-interface/range {v3 .. v10}, Lg4/c;->c(Ly3/k;Ljava/io/OutputStream;Ls3/g;Ls3/f;Lcom/facebook/imageformat/c;Ljava/lang/Integer;Landroid/graphics/ColorSpace;)Lg4/b;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3}, Lg4/b;->a()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    const/4 v5, 0x2

    .line 62
    if-eq v4, v5, :cond_1

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->s()Ls3/f;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-interface {p3}, Lg4/c;->getIdentifier()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    invoke-direct {p0, p1, v0, v3, p3}, Lcom/facebook/imagepipeline/producers/i1$a;->y(Ly3/k;Ls3/f;Lg4/b;Ljava/lang/String;)Ljava/util/Map;

    .line 73
    .line 74
    .line 75
    move-result-object v11

    .line 76
    invoke-virtual {v1}, Ln2/i;->d()Lcom/facebook/common/memory/PooledByteBuffer;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p1}, Lo2/a;->w(Ljava/io/Closeable;)Lo2/a;

    .line 81
    .line 82
    .line 83
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :try_start_1
    new-instance p3, Ly3/k;

    .line 85
    .line 86
    invoke-direct {p3, p1}, Ly3/k;-><init>(Lo2/a;)V

    .line 87
    .line 88
    .line 89
    sget-object v0, Lcom/facebook/imageformat/b;->b:Lcom/facebook/imageformat/c;

    .line 90
    .line 91
    invoke-virtual {p3, v0}, Ly3/k;->e0(Lcom/facebook/imageformat/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    .line 93
    .line 94
    :try_start_2
    invoke-virtual {p3}, Ly3/k;->W()V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/i1$a;->e:Lcom/facebook/imagepipeline/producers/c1;

    .line 98
    .line 99
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/c1;->l()Lcom/facebook/imagepipeline/producers/e1;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/i1$a;->e:Lcom/facebook/imagepipeline/producers/c1;

    .line 104
    .line 105
    invoke-interface {v0, v4, v2, v11}, Lcom/facebook/imagepipeline/producers/e1;->j(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;Ljava/util/Map;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, Lg4/b;->a()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    const/4 v3, 0x1

    .line 113
    if-eq v0, v3, :cond_0

    .line 114
    .line 115
    or-int/lit8 p2, p2, 0x10

    .line 116
    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/u;->o()Lcom/facebook/imagepipeline/producers/n;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-interface {v0, p3, p2}, Lcom/facebook/imagepipeline/producers/n;->b(Ljava/lang/Object;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 122
    .line 123
    .line 124
    :try_start_3
    invoke-static {p3}, Ly3/k;->i(Ly3/k;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    .line 126
    .line 127
    :try_start_4
    invoke-static {p1}, Lo2/a;->r(Lo2/a;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Ln2/i;->close()V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :catchall_0
    move-exception p1

    .line 135
    goto :goto_2

    .line 136
    :catch_0
    move-exception p1

    .line 137
    goto :goto_1

    .line 138
    :catchall_1
    move-exception p3

    .line 139
    goto :goto_0

    .line 140
    :catchall_2
    move-exception v0

    .line 141
    :try_start_5
    invoke-static {p3}, Ly3/k;->i(Ly3/k;)V

    .line 142
    .line 143
    .line 144
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 145
    :goto_0
    :try_start_6
    invoke-static {p1}, Lo2/a;->r(Lo2/a;)V

    .line 146
    .line 147
    .line 148
    throw p3

    .line 149
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 150
    .line 151
    const-string p3, "Error while transcoding the image"

    .line 152
    .line 153
    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 157
    :goto_1
    :try_start_7
    iget-object p3, p0, Lcom/facebook/imagepipeline/producers/i1$a;->e:Lcom/facebook/imagepipeline/producers/c1;

    .line 158
    .line 159
    invoke-interface {p3}, Lcom/facebook/imagepipeline/producers/c1;->l()Lcom/facebook/imagepipeline/producers/e1;

    .line 160
    .line 161
    .line 162
    move-result-object p3

    .line 163
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/i1$a;->e:Lcom/facebook/imagepipeline/producers/c1;

    .line 164
    .line 165
    invoke-interface {p3, v0, v2, p1, v11}, Lcom/facebook/imagepipeline/producers/e1;->k(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 166
    .line 167
    .line 168
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/c;->d(I)Z

    .line 169
    .line 170
    .line 171
    move-result p2

    .line 172
    if-eqz p2, :cond_2

    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/u;->o()Lcom/facebook/imagepipeline/producers/n;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    invoke-interface {p2, p1}, Lcom/facebook/imagepipeline/producers/n;->onFailure(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 179
    .line 180
    .line 181
    :cond_2
    invoke-virtual {v1}, Ln2/i;->close()V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :goto_2
    invoke-virtual {v1}, Ln2/i;->close()V

    .line 186
    .line 187
    .line 188
    throw p1
.end method

.method private w(Ly3/k;ILcom/facebook/imageformat/c;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/imageformat/b;->b:Lcom/facebook/imageformat/c;

    .line 2
    .line 3
    if-eq p3, v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/facebook/imageformat/b;->l:Lcom/facebook/imageformat/c;

    .line 6
    .line 7
    if-ne p3, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/i1$a;->z(Ly3/k;)Ly3/k;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/i1$a;->A(Ly3/k;)Ly3/k;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/u;->o()Lcom/facebook/imagepipeline/producers/n;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    invoke-interface {p3, p1, p2}, Lcom/facebook/imagepipeline/producers/n;->b(Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private x(Ly3/k;I)Ly3/k;
    .locals 0

    .line 1
    invoke-static {p1}, Ly3/k;->g(Ly3/k;)Ly3/k;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Ly3/k;->f0(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-object p1
.end method

.method private y(Ly3/k;Ls3/f;Lg4/b;Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly3/k;",
            "Ls3/f;",
            "Lg4/b;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/i1$a;->e:Lcom/facebook/imagepipeline/producers/c1;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/c1;->l()Lcom/facebook/imagepipeline/producers/e1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/i1$a;->e:Lcom/facebook/imagepipeline/producers/c1;

    .line 8
    .line 9
    const-string v2, "ResizeAndRotateProducer"

    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/e1;->f(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;)Z

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
    return-object p1

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ly3/k;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, "x"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ly3/k;->getHeight()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    iget v3, p2, Ls3/f;->a:I

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget p2, p2, Ls3/f;->b:I

    .line 63
    .line 64
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const-string p2, "Unspecified"

    .line 73
    .line 74
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ly3/k;->q()Lcom/facebook/imageformat/c;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const-string v2, "Image format"

    .line 88
    .line 89
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    const-string p1, "Original size"

    .line 93
    .line 94
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    const-string p1, "Requested size"

    .line 98
    .line 99
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/i1$a;->g:Lcom/facebook/imagepipeline/producers/JobScheduler;

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/JobScheduler;->f()J

    .line 105
    .line 106
    .line 107
    move-result-wide p1

    .line 108
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    const-string p2, "queueTime"

    .line 113
    .line 114
    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    const-string p1, "Transcoder id"

    .line 118
    .line 119
    invoke-interface {v1, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    const-string p2, "Transcoding result"

    .line 127
    .line 128
    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    invoke-static {v1}, Lcom/facebook/common/internal/ImmutableMap;->b(Ljava/util/Map;)Lcom/facebook/common/internal/ImmutableMap;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    return-object p1
.end method

.method private z(Ly3/k;)Ly3/k;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/i1$a;->e:Lcom/facebook/imagepipeline/producers/c1;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/c1;->o()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->u()Ls3/g;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ls3/g;->h()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ls3/g;->g()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Ls3/g;->f()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/producers/i1$a;->x(Ly3/k;I)Ly3/k;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :cond_0
    return-object p1
.end method


# virtual methods
.method protected B(Ly3/k;I)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/i1$a;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/c;->d(I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez p1, :cond_2

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/u;->o()Lcom/facebook/imagepipeline/producers/n;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 p2, 0x0

    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-interface {p1, p2, v0}, Lcom/facebook/imagepipeline/producers/n;->b(Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void

    .line 24
    :cond_2
    invoke-virtual {p1}, Ly3/k;->q()Lcom/facebook/imageformat/c;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/i1$a;->e:Lcom/facebook/imagepipeline/producers/c1;

    .line 29
    .line 30
    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/c1;->o()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/i1$a;->d:Lg4/d;

    .line 35
    .line 36
    iget-boolean v4, p0, Lcom/facebook/imagepipeline/producers/i1$a;->c:Z

    .line 37
    .line 38
    invoke-interface {v3, v1, v4}, Lg4/d;->createImageTranscoder(Lcom/facebook/imageformat/c;Z)Lg4/c;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v3}, Lk2/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lg4/c;

    .line 47
    .line 48
    invoke-static {v2, p1, v3}, Lcom/facebook/imagepipeline/producers/i1;->e(Lcom/facebook/imagepipeline/request/ImageRequest;Ly3/k;Lg4/c;)Lcom/facebook/common/util/TriState;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    sget-object v3, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    .line 55
    .line 56
    if-ne v2, v3, :cond_3

    .line 57
    .line 58
    return-void

    .line 59
    :cond_3
    sget-object v3, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    .line 60
    .line 61
    if-eq v2, v3, :cond_4

    .line 62
    .line 63
    invoke-direct {p0, p1, p2, v1}, Lcom/facebook/imagepipeline/producers/i1$a;->w(Ly3/k;ILcom/facebook/imageformat/c;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_4
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/i1$a;->g:Lcom/facebook/imagepipeline/producers/JobScheduler;

    .line 68
    .line 69
    invoke-virtual {v1, p1, p2}, Lcom/facebook/imagepipeline/producers/JobScheduler;->k(Ly3/k;I)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_5

    .line 74
    .line 75
    return-void

    .line 76
    :cond_5
    if-nez v0, :cond_6

    .line 77
    .line 78
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/i1$a;->e:Lcom/facebook/imagepipeline/producers/c1;

    .line 79
    .line 80
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/c1;->t()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_7

    .line 85
    .line 86
    :cond_6
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/i1$a;->g:Lcom/facebook/imagepipeline/producers/JobScheduler;

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/JobScheduler;->h()Z

    .line 89
    .line 90
    .line 91
    :cond_7
    return-void
.end method

.method protected bridge synthetic h(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Ly3/k;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/i1$a;->B(Ly3/k;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
