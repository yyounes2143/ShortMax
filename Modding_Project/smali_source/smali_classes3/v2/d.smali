.class public Lv2/d;
.super Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
.source "PipelineDraweeControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<",
        "Lv2/d;",
        "Lcom/facebook/imagepipeline/request/ImageRequest;",
        "Lo2/a<",
        "Ly3/e;",
        ">;",
        "Ly3/m;",
        ">;"
    }
.end annotation


# instance fields
.field private final u:Lt3/r;

.field private final v:Lv2/f;

.field private w:Lcom/facebook/common/internal/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lx3/a;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lcom/facebook/fresco/ui/common/ImagePerfDataListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lv2/f;Lt3/r;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lv2/f;",
            "Lt3/r;",
            "Ljava/util/Set<",
            "Lz2/b;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/facebook/fresco/ui/common/ControllerListener2;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p4, p5}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;-><init>(Landroid/content/Context;Ljava/util/Set;Ljava/util/Set;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lv2/d;->u:Lt3/r;

    .line 5
    .line 6
    iput-object p2, p0, Lv2/d;->v:Lv2/f;

    .line 7
    .line 8
    return-void
.end method

.method public static G(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    .locals 3

    .line 1
    sget-object v0, Lv2/d$a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    sget-object p0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->BITMAP_MEMORY_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "Cache level"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p0, "is not supported. "

    .line 37
    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :cond_1
    sget-object p0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->DISK_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_2
    sget-object p0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 53
    .line 54
    return-object p0
.end method

.method private H()Lf2/a;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->n()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 6
    .line 7
    iget-object v1, p0, Lv2/d;->u:Lt3/r;

    .line 8
    .line 9
    invoke-virtual {v1}, Lt3/r;->j()Lr3/j;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->m()Le4/b;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->f()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v1, v0, v2}, Lr3/j;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lf2/a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->f()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v1, v0, v2}, Lr3/j;->c(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lf2/a;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0
.end method


# virtual methods
.method protected I(Lf3/a;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/datasource/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf3/a;",
            "Ljava/lang/String;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;",
            ")",
            "Lcom/facebook/datasource/b<",
            "Lo2/a<",
            "Ly3/e;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv2/d;->u:Lt3/r;

    .line 2
    .line 3
    invoke-static {p5}, Lv2/d;->G(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    invoke-virtual {p0, p1}, Lv2/d;->J(Lf3/a;)La4/e;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    move-object v1, p3

    .line 12
    move-object v2, p4

    .line 13
    move-object v5, p2

    .line 14
    invoke-virtual/range {v0 .. v5}, Lt3/r;->e(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;La4/e;Ljava/lang/String;)Lcom/facebook/datasource/b;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method protected J(Lf3/a;)La4/e;
    .locals 1

    .line 1
    instance-of v0, p1, Lv2/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lv2/c;

    .line 6
    .line 7
    invoke-virtual {p1}, Lv2/c;->q0()La4/e;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return-object p1
.end method

.method protected K()Lv2/c;
    .locals 7

    .line 1
    invoke-static {}, Lf4/b;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "PipelineDraweeControllerBuilder#obtainController"

    .line 8
    .line 9
    invoke-static {v0}, Lf4/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->p()Lf3/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->e()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    instance-of v1, v0, Lv2/c;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    check-cast v0, Lv2/c;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    iget-object v0, p0, Lv2/d;->v:Lv2/f;

    .line 30
    .line 31
    invoke-virtual {v0}, Lv2/f;->c()Lv2/c;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :goto_0
    invoke-virtual {p0, v0, v3}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->y(Lf3/a;Ljava/lang/String;)Lk2/k;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-direct {p0}, Lv2/d;->H()Lf2/a;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->f()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    iget-object v6, p0, Lv2/d;->w:Lcom/facebook/common/internal/ImmutableList;

    .line 48
    .line 49
    move-object v1, v0

    .line 50
    invoke-virtual/range {v1 .. v6}, Lv2/c;->s0(Lk2/k;Ljava/lang/String;Lf2/a;Ljava/lang/Object;Lcom/facebook/common/internal/ImmutableList;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lv2/d;->x:Lcom/facebook/fresco/ui/common/ImagePerfDataListener;

    .line 54
    .line 55
    invoke-virtual {v0, v1, p0}, Lv2/c;->t0(Lcom/facebook/fresco/ui/common/ImagePerfDataListener;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lf4/b;->d()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    invoke-static {}, Lf4/b;->b()V

    .line 65
    .line 66
    .line 67
    :cond_2
    return-object v0

    .line 68
    :goto_1
    invoke-static {}, Lf4/b;->d()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    invoke-static {}, Lf4/b;->b()V

    .line 75
    .line 76
    .line 77
    :cond_3
    throw v0
.end method

.method public L(Lcom/facebook/fresco/ui/common/ImagePerfDataListener;)Lv2/d;
    .locals 0

    .line 1
    iput-object p1, p0, Lv2/d;->x:Lcom/facebook/fresco/ui/common/ImagePerfDataListener;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->r()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lv2/d;

    .line 8
    .line 9
    return-object p1
.end method

.method public M(Landroid/net/Uri;)Lv2/d;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-super {p0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->C(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lv2/d;

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->x(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {}, Ls3/g;->d()Ls3/g;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->O(Ls3/g;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-super {p0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->C(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lv2/d;

    .line 32
    .line 33
    return-object p1
.end method

.method public bridge synthetic a(Landroid/net/Uri;)Lf3/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lv2/d;->M(Landroid/net/Uri;)Lv2/d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected bridge synthetic i(Lf3/a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/datasource/b;
    .locals 0

    .line 1
    check-cast p3, Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lv2/d;->I(Lf3/a;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/datasource/b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected bridge synthetic x()Lcom/facebook/drawee/controller/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lv2/d;->K()Lv2/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
