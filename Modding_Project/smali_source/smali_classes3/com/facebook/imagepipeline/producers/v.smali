.class public Lcom/facebook/imagepipeline/producers/v;
.super Ljava/lang/Object;
.source "DiskCacheReadProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/b1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/b1<",
        "Ly3/k;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lk2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk2/k<",
            "Lt3/c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lr3/j;

.field private final c:Lcom/facebook/imagepipeline/producers/b1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Ly3/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk2/k;Lr3/j;Lcom/facebook/imagepipeline/producers/b1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk2/k<",
            "Lt3/c;",
            ">;",
            "Lr3/j;",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Ly3/k;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/v;->a:Lk2/k;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/v;->b:Lr3/j;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/v;->c:Lcom/facebook/imagepipeline/producers/b1;

    .line 9
    .line 10
    return-void
.end method

.method static bridge synthetic c(Lcom/facebook/imagepipeline/producers/v;)Lcom/facebook/imagepipeline/producers/b1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/v;->c:Lcom/facebook/imagepipeline/producers/b1;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic d(Lw/e;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/imagepipeline/producers/v;->f(Lw/e;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static e(Lcom/facebook/imagepipeline/producers/e1;Lcom/facebook/imagepipeline/producers/c1;ZI)Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/e1;",
            "Lcom/facebook/imagepipeline/producers/c1;",
            "ZI)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "DiskCacheProducer"

    .line 2
    .line 3
    invoke-interface {p0, p1, v0}, Lcom/facebook/imagepipeline/producers/e1;->f(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    const-string p0, "cached_value_found"

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string p2, "encodedImageSize"

    .line 20
    .line 21
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p0, p1}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method private static f(Lw/e;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw/e<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lw/e;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lw/e;->n()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lw/e;->i()Ljava/lang/Exception;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    instance-of p0, p0, Ljava/util/concurrent/CancellationException;

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    :goto_1
    return p0
.end method

.method private g(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/n<",
            "Ly3/k;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/c1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/c1;->v()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->DISK_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-lt v0, v1, :cond_0

    .line 16
    .line 17
    const-string v0, "disk"

    .line 18
    .line 19
    const-string v1, "nil-result_read"

    .line 20
    .line 21
    invoke-interface {p2, v0, v1}, Lcom/facebook/imagepipeline/producers/c1;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-interface {p1, p2, v0}, Lcom/facebook/imagepipeline/producers/n;->b(Ljava/lang/Object;I)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/v;->c:Lcom/facebook/imagepipeline/producers/b1;

    .line 31
    .line 32
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/b1;->b(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private h(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;)Lw/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/n<",
            "Ly3/k;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/c1;",
            ")",
            "Lw/d<",
            "Ly3/k;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/c1;->l()Lcom/facebook/imagepipeline/producers/e1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/facebook/imagepipeline/producers/v$a;

    .line 6
    .line 7
    invoke-direct {v1, p0, v0, p2, p1}, Lcom/facebook/imagepipeline/producers/v$a;-><init>(Lcom/facebook/imagepipeline/producers/v;Lcom/facebook/imagepipeline/producers/e1;Lcom/facebook/imagepipeline/producers/c1;Lcom/facebook/imagepipeline/producers/n;)V

    .line 8
    .line 9
    .line 10
    return-object v1
.end method

.method private i(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/imagepipeline/producers/c1;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/v$b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/v$b;-><init>(Lcom/facebook/imagepipeline/producers/v;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2, v0}, Lcom/facebook/imagepipeline/producers/c1;->p(Lcom/facebook/imagepipeline/producers/d1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public b(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/n<",
            "Ly3/k;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/c1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/c1;->o()Lcom/facebook/imagepipeline/request/ImageRequest;

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
    const/16 v2, 0x10

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/request/ImageRequest;->z(I)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/v;->g(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/c1;->l()Lcom/facebook/imagepipeline/producers/e1;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "DiskCacheProducer"

    .line 26
    .line 27
    invoke-interface {v1, p2, v2}, Lcom/facebook/imagepipeline/producers/e1;->b(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/v;->b:Lr3/j;

    .line 31
    .line 32
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/c1;->d()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-interface {v1, v0, v3}, Lr3/j;->b(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lf2/a;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/v;->a:Lk2/k;

    .line 41
    .line 42
    invoke-interface {v3}, Lk2/k;->get()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lt3/c;

    .line 47
    .line 48
    invoke-interface {v3}, Lt3/c;->a()Lr3/i;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-interface {v3}, Lt3/c;->b()Lr3/i;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-interface {v3}, Lt3/c;->c()Lcom/facebook/common/internal/ImmutableMap;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v0, v4, v5, v3}, Lcom/facebook/imagepipeline/producers/DiskCacheDecision;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Lr3/i;Lr3/i;Ljava/util/Map;)Lr3/i;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    if-nez v3, :cond_1

    .line 65
    .line 66
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/c1;->l()Lcom/facebook/imagepipeline/producers/e1;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    new-instance v3, Lcom/facebook/imagepipeline/producers/DiskCacheDecision$DiskCacheDecisionNoDiskCacheChosenException;

    .line 71
    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v5, "Got no disk cache for CacheChoice: "

    .line 78
    .line 79
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->d()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-direct {v3, v0}, Lcom/facebook/imagepipeline/producers/DiskCacheDecision$DiskCacheDecisionNoDiskCacheChosenException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const/4 v0, 0x0

    .line 109
    invoke-interface {v1, p2, v2, v3, v0}, Lcom/facebook/imagepipeline/producers/e1;->k(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 110
    .line 111
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/v;->g(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 117
    .line 118
    const/4 v2, 0x0

    .line 119
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v1, v0}, Lr3/i;->j(Lf2/a;Ljava/util/concurrent/atomic/AtomicBoolean;)Lw/e;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/v;->h(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;)Lw/d;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {v1, p1}, Lw/e;->e(Lw/d;)Lw/e;

    .line 131
    .line 132
    .line 133
    invoke-direct {p0, v0, p2}, Lcom/facebook/imagepipeline/producers/v;->i(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/imagepipeline/producers/c1;)V

    .line 134
    .line 135
    .line 136
    return-void
.end method
