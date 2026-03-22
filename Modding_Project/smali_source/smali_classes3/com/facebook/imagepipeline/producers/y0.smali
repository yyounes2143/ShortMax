.class public Lcom/facebook/imagepipeline/producers/y0;
.super Ljava/lang/Object;
.source "PostprocessedBitmapMemoryCacheProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/b1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/y0$a;
    }
.end annotation

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
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/y0;->a:Lr3/w;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/y0;->b:Lr3/j;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/y0;->c:Lcom/facebook/imagepipeline/producers/b1;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public b(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;)V
    .locals 12
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
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/c1;->l()Lcom/facebook/imagepipeline/producers/e1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/c1;->o()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/c1;->d()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->m()Le4/b;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eqz v3, :cond_5

    .line 18
    .line 19
    invoke-interface {v3}, Le4/b;->b()Lf2/a;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/y0;->c()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-interface {v0, p2, v4}, Lcom/facebook/imagepipeline/producers/e1;->b(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/y0;->b:Lr3/j;

    .line 35
    .line 36
    invoke-interface {v4, v1, v2}, Lr3/j;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lf2/a;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/c1;->o()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/request/ImageRequest;->z(I)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    const/4 v4, 0x0

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/y0;->a:Lr3/w;

    .line 53
    .line 54
    invoke-interface {v1, v7}, Lr3/w;->get(Ljava/lang/Object;)Lo2/a;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move-object v1, v4

    .line 60
    :goto_0
    const-string v11, "cached_value_found"

    .line 61
    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/y0;->c()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/y0;->c()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-interface {v0, p2, v5}, Lcom/facebook/imagepipeline/producers/e1;->f(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-eqz v5, :cond_2

    .line 77
    .line 78
    const-string v4, "true"

    .line 79
    .line 80
    invoke-static {v11, v4}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    :cond_2
    invoke-interface {v0, p2, v3, v4}, Lcom/facebook/imagepipeline/producers/e1;->j(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;Ljava/util/Map;)V

    .line 85
    .line 86
    .line 87
    const-string v3, "PostprocessedBitmapMemoryCacheProducer"

    .line 88
    .line 89
    invoke-interface {v0, p2, v3, v2}, Lcom/facebook/imagepipeline/producers/e1;->a(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;Z)V

    .line 90
    .line 91
    .line 92
    const-string v0, "memory_bitmap"

    .line 93
    .line 94
    const-string v3, "postprocessed"

    .line 95
    .line 96
    invoke-interface {p2, v0, v3}, Lcom/facebook/imagepipeline/producers/c1;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const/high16 p2, 0x3f800000    # 1.0f

    .line 100
    .line 101
    invoke-interface {p1, p2}, Lcom/facebook/imagepipeline/producers/n;->c(F)V

    .line 102
    .line 103
    .line 104
    invoke-interface {p1, v1, v2}, Lcom/facebook/imagepipeline/producers/n;->b(Ljava/lang/Object;I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Lo2/a;->close()V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    instance-of v8, v3, Le4/c;

    .line 112
    .line 113
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/c1;->o()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    const/4 v2, 0x2

    .line 118
    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/request/ImageRequest;->z(I)Z

    .line 119
    .line 120
    .line 121
    move-result v10

    .line 122
    new-instance v1, Lcom/facebook/imagepipeline/producers/y0$a;

    .line 123
    .line 124
    iget-object v9, p0, Lcom/facebook/imagepipeline/producers/y0;->a:Lr3/w;

    .line 125
    .line 126
    move-object v5, v1

    .line 127
    move-object v6, p1

    .line 128
    invoke-direct/range {v5 .. v10}, Lcom/facebook/imagepipeline/producers/y0$a;-><init>(Lcom/facebook/imagepipeline/producers/n;Lf2/a;ZLr3/w;Z)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/y0;->c()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/y0;->c()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-interface {v0, p2, v2}, Lcom/facebook/imagepipeline/producers/e1;->f(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_4

    .line 144
    .line 145
    const-string v2, "false"

    .line 146
    .line 147
    invoke-static {v11, v2}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    :cond_4
    invoke-interface {v0, p2, p1, v4}, Lcom/facebook/imagepipeline/producers/e1;->j(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;Ljava/util/Map;)V

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/y0;->c:Lcom/facebook/imagepipeline/producers/b1;

    .line 155
    .line 156
    invoke-interface {p1, v1, p2}, Lcom/facebook/imagepipeline/producers/b1;->b(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;)V

    .line 157
    .line 158
    .line 159
    :goto_1
    return-void

    .line 160
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/y0;->c:Lcom/facebook/imagepipeline/producers/b1;

    .line 161
    .line 162
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/b1;->b(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;)V

    .line 163
    .line 164
    .line 165
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "PostprocessedBitmapMemoryCacheProducer"

    .line 2
    .line 3
    return-object v0
.end method
