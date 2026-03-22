.class Lcom/facebook/imagepipeline/producers/k$a;
.super Lcom/facebook/imagepipeline/producers/u;
.source "BitmapProbeProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/u<",
        "Lo2/a<",
        "Ly3/e;",
        ">;",
        "Lo2/a<",
        "Ly3/e;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final c:Lcom/facebook/imagepipeline/producers/c1;

.field private final d:Lr3/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr3/w<",
            "Lf2/a;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lk2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk2/k<",
            "Lt3/c;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lr3/j;

.field private final g:Lr3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr3/d<",
            "Lf2/a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lr3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr3/d<",
            "Lf2/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;Lr3/w;Lk2/k;Lr3/j;Lr3/d;Lr3/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/n<",
            "Lo2/a<",
            "Ly3/e;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/c1;",
            "Lr3/w<",
            "Lf2/a;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lk2/k<",
            "Lt3/c;",
            ">;",
            "Lr3/j;",
            "Lr3/d<",
            "Lf2/a;",
            ">;",
            "Lr3/d<",
            "Lf2/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/u;-><init>(Lcom/facebook/imagepipeline/producers/n;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/k$a;->c:Lcom/facebook/imagepipeline/producers/c1;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/k$a;->d:Lr3/w;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/k$a;->e:Lk2/k;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/k$a;->f:Lr3/j;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/k$a;->g:Lr3/d;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/facebook/imagepipeline/producers/k$a;->h:Lr3/d;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public bridge synthetic h(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lo2/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/k$a;->p(Lo2/a;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public p(Lo2/a;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo2/a<",
            "Ly3/e;",
            ">;I)V"
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
    const-string v0, "BitmapProbeProducer#onNewResultImpl"

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
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/c;->e(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_7

    .line 21
    .line 22
    if-eqz p1, :cond_7

    .line 23
    .line 24
    const/16 v0, 0x8

    .line 25
    .line 26
    invoke-static {p2, v0}, Lcom/facebook/imagepipeline/producers/c;->l(II)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/k$a;->c:Lcom/facebook/imagepipeline/producers/c1;

    .line 35
    .line 36
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/c1;->o()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/k$a;->f:Lr3/j;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/k$a;->c:Lcom/facebook/imagepipeline/producers/c1;

    .line 43
    .line 44
    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/c1;->d()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-interface {v1, v0, v2}, Lr3/j;->b(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lf2/a;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/k$a;->c:Lcom/facebook/imagepipeline/producers/c1;

    .line 53
    .line 54
    const-string v3, "origin"

    .line 55
    .line 56
    invoke-interface {v2, v3}, Lcom/facebook/fresco/middleware/HasExtraData;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Ljava/lang/String;

    .line 61
    .line 62
    if-eqz v2, :cond_5

    .line 63
    .line 64
    const-string v3, "memory_bitmap"

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_5

    .line 71
    .line 72
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/k$a;->c:Lcom/facebook/imagepipeline/producers/c1;

    .line 73
    .line 74
    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/c1;->k()Lt3/t;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-interface {v2}, Lt3/t;->n()Lt3/u;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v2}, Lt3/u;->E()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_2

    .line 87
    .line 88
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/k$a;->g:Lr3/d;

    .line 89
    .line 90
    invoke-virtual {v2, v1}, Lr3/d;->b(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-nez v2, :cond_2

    .line 95
    .line 96
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/k$a;->d:Lr3/w;

    .line 97
    .line 98
    invoke-interface {v2, v1}, Lr3/w;->a(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/k$a;->g:Lr3/d;

    .line 102
    .line 103
    invoke-virtual {v2, v1}, Lr3/d;->a(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    :cond_2
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/k$a;->c:Lcom/facebook/imagepipeline/producers/c1;

    .line 107
    .line 108
    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/c1;->k()Lt3/t;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-interface {v2}, Lt3/t;->n()Lt3/u;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v2}, Lt3/u;->C()Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_5

    .line 121
    .line 122
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/k$a;->h:Lr3/d;

    .line 123
    .line 124
    invoke-virtual {v2, v1}, Lr3/d;->b(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-nez v2, :cond_5

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->d()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    sget-object v2, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 135
    .line 136
    if-ne v0, v2, :cond_3

    .line 137
    .line 138
    const/4 v0, 0x1

    .line 139
    goto :goto_1

    .line 140
    :cond_3
    const/4 v0, 0x0

    .line 141
    :goto_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/k$a;->e:Lk2/k;

    .line 142
    .line 143
    invoke-interface {v2}, Lk2/k;->get()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    check-cast v2, Lt3/c;

    .line 148
    .line 149
    if-eqz v0, :cond_4

    .line 150
    .line 151
    invoke-interface {v2}, Lt3/c;->a()Lr3/i;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    goto :goto_2

    .line 156
    :cond_4
    invoke-interface {v2}, Lt3/c;->b()Lr3/i;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    :goto_2
    invoke-virtual {v0, v1}, Lr3/i;->e(Lf2/a;)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/k$a;->h:Lr3/d;

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Lr3/d;->a(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/u;->o()Lcom/facebook/imagepipeline/producers/n;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/n;->b(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .line 174
    .line 175
    invoke-static {}, Lf4/b;->d()Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-eqz p1, :cond_6

    .line 180
    .line 181
    invoke-static {}, Lf4/b;->b()V

    .line 182
    .line 183
    .line 184
    :cond_6
    return-void

    .line 185
    :cond_7
    :goto_3
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/u;->o()Lcom/facebook/imagepipeline/producers/n;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/n;->b(Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    .line 191
    .line 192
    invoke-static {}, Lf4/b;->d()Z

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    if-eqz p1, :cond_8

    .line 197
    .line 198
    invoke-static {}, Lf4/b;->b()V

    .line 199
    .line 200
    .line 201
    :cond_8
    return-void

    .line 202
    :goto_4
    invoke-static {}, Lf4/b;->d()Z

    .line 203
    .line 204
    .line 205
    move-result p2

    .line 206
    if-eqz p2, :cond_9

    .line 207
    .line 208
    invoke-static {}, Lf4/b;->b()V

    .line 209
    .line 210
    .line 211
    :cond_9
    throw p1
.end method
