.class public Lcom/facebook/imagepipeline/producers/a0;
.super Ljava/lang/Object;
.source "EncodedProbeProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/b1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/a0$a;
    }
.end annotation

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

.field private final d:Lr3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr3/d<",
            "Lf2/a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lr3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr3/d<",
            "Lf2/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk2/k;Lr3/j;Lr3/d;Lr3/d;Lcom/facebook/imagepipeline/producers/b1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk2/k<",
            "Lt3/c;",
            ">;",
            "Lr3/j;",
            "Lr3/d;",
            "Lr3/d;",
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
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/a0;->a:Lk2/k;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/a0;->b:Lr3/j;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/a0;->d:Lr3/d;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/a0;->e:Lr3/d;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/a0;->c:Lcom/facebook/imagepipeline/producers/b1;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public b(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;)V
    .locals 9
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
    const-string v0, "EncodedProbeProducer#produceResults"

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
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/c1;->l()Lcom/facebook/imagepipeline/producers/e1;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/a0;->c()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v0, p2, v1}, Lcom/facebook/imagepipeline/producers/e1;->b(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lcom/facebook/imagepipeline/producers/a0$a;

    .line 27
    .line 28
    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/a0;->a:Lk2/k;

    .line 29
    .line 30
    iget-object v6, p0, Lcom/facebook/imagepipeline/producers/a0;->b:Lr3/j;

    .line 31
    .line 32
    iget-object v7, p0, Lcom/facebook/imagepipeline/producers/a0;->d:Lr3/d;

    .line 33
    .line 34
    iget-object v8, p0, Lcom/facebook/imagepipeline/producers/a0;->e:Lr3/d;

    .line 35
    .line 36
    move-object v2, v1

    .line 37
    move-object v3, p1

    .line 38
    move-object v4, p2

    .line 39
    invoke-direct/range {v2 .. v8}, Lcom/facebook/imagepipeline/producers/a0$a;-><init>(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;Lk2/k;Lr3/j;Lr3/d;Lr3/d;)V

    .line 40
    .line 41
    .line 42
    const-string p1, "EncodedProbeProducer"

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-interface {v0, p2, p1, v2}, Lcom/facebook/imagepipeline/producers/e1;->j(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;Ljava/util/Map;)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lf4/b;->d()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    const-string p1, "mInputProducer.produceResult"

    .line 55
    .line 56
    invoke-static {p1}, Lf4/b;->a(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/a0;->c:Lcom/facebook/imagepipeline/producers/b1;

    .line 60
    .line 61
    invoke-interface {p1, v1, p2}, Lcom/facebook/imagepipeline/producers/b1;->b(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lf4/b;->d()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    invoke-static {}, Lf4/b;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    :cond_2
    invoke-static {}, Lf4/b;->d()Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    invoke-static {}, Lf4/b;->b()V

    .line 80
    .line 81
    .line 82
    :cond_3
    return-void

    .line 83
    :goto_1
    invoke-static {}, Lf4/b;->d()Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-eqz p2, :cond_4

    .line 88
    .line 89
    invoke-static {}, Lf4/b;->b()V

    .line 90
    .line 91
    .line 92
    :cond_4
    throw p1
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "EncodedProbeProducer"

    .line 2
    .line 3
    return-object v0
.end method
