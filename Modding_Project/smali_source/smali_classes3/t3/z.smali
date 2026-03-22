.class public Lt3/z;
.super Ljava/lang/Object;
.source "ProducerFactory.java"


# instance fields
.field protected a:Landroid/content/ContentResolver;

.field protected b:Landroid/content/res/Resources;

.field protected c:Landroid/content/res/AssetManager;

.field protected final d:Ln2/a;

.field protected final e:Lw3/b;

.field protected final f:Lw3/d;

.field protected final g:Lcom/facebook/imagepipeline/core/DownsampleMode;

.field protected final h:Z

.field protected final i:Z

.field protected final j:Lt3/o;

.field protected final k:Ln2/g;

.field protected final l:Lk2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk2/k<",
            "Lt3/c;",
            ">;"
        }
    .end annotation
.end field

.field protected final m:Lr3/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr3/w<",
            "Lf2/a;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field protected final n:Lr3/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr3/w<",
            "Lf2/a;",
            "Ly3/e;",
            ">;"
        }
    .end annotation
.end field

.field protected final o:Lr3/j;

.field protected final p:Lr3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr3/d<",
            "Lf2/a;",
            ">;"
        }
    .end annotation
.end field

.field protected final q:Lr3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr3/d<",
            "Lf2/a;",
            ">;"
        }
    .end annotation
.end field

.field protected final r:Lq3/d;

.field protected final s:I

.field protected final t:I

.field protected u:Z

.field protected final v:Lt3/a;

.field protected final w:I

.field protected final x:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ln2/a;Lw3/b;Lw3/d;Lcom/facebook/imagepipeline/core/DownsampleMode;ZZLt3/o;Ln2/g;Lr3/w;Lr3/w;Lk2/k;Lr3/j;Lq3/d;IIZILt3/a;ZI)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ln2/a;",
            "Lw3/b;",
            "Lw3/d;",
            "Lcom/facebook/imagepipeline/core/DownsampleMode;",
            "ZZ",
            "Lt3/o;",
            "Ln2/g;",
            "Lr3/w<",
            "Lf2/a;",
            "Ly3/e;",
            ">;",
            "Lr3/w<",
            "Lf2/a;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lk2/k<",
            "Lt3/c;",
            ">;",
            "Lr3/j;",
            "Lq3/d;",
            "IIZI",
            "Lt3/a;",
            "ZI)V"
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p21

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, v0, Lt3/z;->a:Landroid/content/ContentResolver;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, v0, Lt3/z;->b:Landroid/content/res/Resources;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iput-object v2, v0, Lt3/z;->c:Landroid/content/res/AssetManager;

    move-object v2, p2

    .line 5
    iput-object v2, v0, Lt3/z;->d:Ln2/a;

    move-object v2, p3

    .line 6
    iput-object v2, v0, Lt3/z;->e:Lw3/b;

    move-object v2, p4

    .line 7
    iput-object v2, v0, Lt3/z;->f:Lw3/d;

    move-object v2, p5

    .line 8
    iput-object v2, v0, Lt3/z;->g:Lcom/facebook/imagepipeline/core/DownsampleMode;

    move v2, p6

    .line 9
    iput-boolean v2, v0, Lt3/z;->h:Z

    move v2, p7

    .line 10
    iput-boolean v2, v0, Lt3/z;->i:Z

    move-object v2, p8

    .line 11
    iput-object v2, v0, Lt3/z;->j:Lt3/o;

    move-object v2, p9

    .line 12
    iput-object v2, v0, Lt3/z;->k:Ln2/g;

    move-object v2, p10

    .line 13
    iput-object v2, v0, Lt3/z;->n:Lr3/w;

    move-object v2, p11

    .line 14
    iput-object v2, v0, Lt3/z;->m:Lr3/w;

    move-object v2, p12

    .line 15
    iput-object v2, v0, Lt3/z;->l:Lk2/k;

    move-object/from16 v2, p13

    .line 16
    iput-object v2, v0, Lt3/z;->o:Lr3/j;

    move-object/from16 v2, p14

    .line 17
    iput-object v2, v0, Lt3/z;->r:Lq3/d;

    .line 18
    new-instance v2, Lr3/d;

    invoke-direct {v2, v1}, Lr3/d;-><init>(I)V

    iput-object v2, v0, Lt3/z;->p:Lr3/d;

    .line 19
    new-instance v2, Lr3/d;

    invoke-direct {v2, v1}, Lr3/d;-><init>(I)V

    iput-object v2, v0, Lt3/z;->q:Lr3/d;

    move/from16 v1, p15

    .line 20
    iput v1, v0, Lt3/z;->s:I

    move/from16 v1, p16

    .line 21
    iput v1, v0, Lt3/z;->t:I

    move/from16 v1, p17

    .line 22
    iput-boolean v1, v0, Lt3/z;->u:Z

    move/from16 v1, p18

    .line 23
    iput v1, v0, Lt3/z;->w:I

    move-object/from16 v1, p19

    .line 24
    iput-object v1, v0, Lt3/z;->v:Lt3/a;

    move/from16 v1, p20

    .line 25
    iput-boolean v1, v0, Lt3/z;->x:Z

    return-void
.end method

.method public static a(Lcom/facebook/imagepipeline/producers/b1;)Lcom/facebook/imagepipeline/producers/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Ly3/k;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/producers/a;-><init>(Lcom/facebook/imagepipeline/producers/b1;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static h(Lcom/facebook/imagepipeline/producers/b1;Lcom/facebook/imagepipeline/producers/b1;)Lcom/facebook/imagepipeline/producers/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Ly3/k;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Ly3/k;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/l;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/l;-><init>(Lcom/facebook/imagepipeline/producers/b1;Lcom/facebook/imagepipeline/producers/b1;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public A(Lcom/facebook/imagepipeline/producers/b1;)Lcom/facebook/imagepipeline/producers/y0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Lo2/a<",
            "Ly3/e;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/y0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/y0;

    .line 2
    .line 3
    iget-object v1, p0, Lt3/z;->n:Lr3/w;

    .line 4
    .line 5
    iget-object v2, p0, Lt3/z;->o:Lr3/j;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/y0;-><init>(Lr3/w;Lr3/j;Lcom/facebook/imagepipeline/producers/b1;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public B(Lcom/facebook/imagepipeline/producers/b1;)Lcom/facebook/imagepipeline/producers/z0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Lo2/a<",
            "Ly3/e;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/z0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/z0;

    .line 2
    .line 3
    iget-object v1, p0, Lt3/z;->r:Lq3/d;

    .line 4
    .line 5
    iget-object v2, p0, Lt3/z;->j:Lt3/o;

    .line 6
    .line 7
    invoke-interface {v2}, Lt3/o;->b()Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/imagepipeline/producers/z0;-><init>(Lcom/facebook/imagepipeline/producers/b1;Lq3/d;Ljava/util/concurrent/Executor;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public C()Lcom/facebook/imagepipeline/producers/g1;
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/g1;

    .line 2
    .line 3
    iget-object v1, p0, Lt3/z;->j:Lt3/o;

    .line 4
    .line 5
    invoke-interface {v1}, Lt3/o;->c()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lt3/z;->k:Ln2/g;

    .line 10
    .line 11
    iget-object v3, p0, Lt3/z;->a:Landroid/content/ContentResolver;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/g1;-><init>(Ljava/util/concurrent/Executor;Ln2/g;Landroid/content/ContentResolver;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public D(Lcom/facebook/imagepipeline/producers/b1;ZLg4/d;)Lcom/facebook/imagepipeline/producers/i1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Ly3/k;",
            ">;Z",
            "Lg4/d;",
            ")",
            "Lcom/facebook/imagepipeline/producers/i1;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/facebook/imagepipeline/producers/i1;

    .line 2
    .line 3
    iget-object v0, p0, Lt3/z;->j:Lt3/o;

    .line 4
    .line 5
    invoke-interface {v0}, Lt3/o;->b()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lt3/z;->k:Ln2/g;

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    move-object v3, p1

    .line 13
    move v4, p2

    .line 14
    move-object v5, p3

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/producers/i1;-><init>(Ljava/util/concurrent/Executor;Ln2/g;Lcom/facebook/imagepipeline/producers/b1;ZLg4/d;)V

    .line 16
    .line 17
    .line 18
    return-object v6
.end method

.method public E(Lcom/facebook/imagepipeline/producers/b1;)Lcom/facebook/imagepipeline/producers/l1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "TT;>;)",
            "Lcom/facebook/imagepipeline/producers/l1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/l1;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/producers/l1;-><init>(Lcom/facebook/imagepipeline/producers/b1;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public F(Lcom/facebook/imagepipeline/producers/b1;)Lcom/facebook/imagepipeline/producers/p1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "TT;>;)",
            "Lcom/facebook/imagepipeline/producers/p1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/p1;

    .line 2
    .line 3
    iget-object v1, p0, Lt3/z;->j:Lt3/o;

    .line 4
    .line 5
    invoke-interface {v1}, Lt3/o;->a()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x5

    .line 10
    invoke-direct {v0, v2, v1, p1}, Lcom/facebook/imagepipeline/producers/p1;-><init>(ILjava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/b1;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public G([Lcom/facebook/imagepipeline/producers/s1;)Lcom/facebook/imagepipeline/producers/r1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/imagepipeline/producers/s1<",
            "Ly3/k;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/r1;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/r1;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/producers/r1;-><init>([Lcom/facebook/imagepipeline/producers/s1;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public b(Lcom/facebook/imagepipeline/producers/b1;Lcom/facebook/imagepipeline/producers/n1;)Lcom/facebook/imagepipeline/producers/b1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/n1;",
            ")",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/m1;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/m1;-><init>(Lcom/facebook/imagepipeline/producers/b1;Lcom/facebook/imagepipeline/producers/n1;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public c(Lcom/facebook/imagepipeline/producers/b1;)Lcom/facebook/imagepipeline/producers/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Lo2/a<",
            "Ly3/e;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/g;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/g;

    .line 2
    .line 3
    iget-object v1, p0, Lt3/z;->n:Lr3/w;

    .line 4
    .line 5
    iget-object v2, p0, Lt3/z;->o:Lr3/j;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/g;-><init>(Lr3/w;Lr3/j;Lcom/facebook/imagepipeline/producers/b1;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public d(Lcom/facebook/imagepipeline/producers/b1;)Lcom/facebook/imagepipeline/producers/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Lo2/a<",
            "Ly3/e;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/h;

    .line 2
    .line 3
    iget-object v1, p0, Lt3/z;->o:Lr3/j;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/producers/h;-><init>(Lr3/j;Lcom/facebook/imagepipeline/producers/b1;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public e(Lcom/facebook/imagepipeline/producers/b1;)Lcom/facebook/imagepipeline/producers/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Lo2/a<",
            "Ly3/e;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/i;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/i;

    .line 2
    .line 3
    iget-object v1, p0, Lt3/z;->n:Lr3/w;

    .line 4
    .line 5
    iget-object v2, p0, Lt3/z;->o:Lr3/j;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/i;-><init>(Lr3/w;Lr3/j;Lcom/facebook/imagepipeline/producers/b1;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public f(Lcom/facebook/imagepipeline/producers/b1;)Lcom/facebook/imagepipeline/producers/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Lo2/a<",
            "Ly3/e;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/j;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/j;

    .line 2
    .line 3
    iget v1, p0, Lt3/z;->s:I

    .line 4
    .line 5
    iget v2, p0, Lt3/z;->t:I

    .line 6
    .line 7
    iget-boolean v3, p0, Lt3/z;->u:Z

    .line 8
    .line 9
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/j;-><init>(Lcom/facebook/imagepipeline/producers/b1;IIZ)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public g(Lcom/facebook/imagepipeline/producers/b1;)Lcom/facebook/imagepipeline/producers/k;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Lo2/a<",
            "Ly3/e;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/k;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/facebook/imagepipeline/producers/k;

    .line 2
    .line 3
    iget-object v1, p0, Lt3/z;->m:Lr3/w;

    .line 4
    .line 5
    iget-object v2, p0, Lt3/z;->l:Lk2/k;

    .line 6
    .line 7
    iget-object v3, p0, Lt3/z;->o:Lr3/j;

    .line 8
    .line 9
    iget-object v4, p0, Lt3/z;->p:Lr3/d;

    .line 10
    .line 11
    iget-object v5, p0, Lt3/z;->q:Lr3/d;

    .line 12
    .line 13
    move-object v0, v7

    .line 14
    move-object v6, p1

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/producers/k;-><init>(Lr3/w;Lk2/k;Lr3/j;Lr3/d;Lr3/d;Lcom/facebook/imagepipeline/producers/b1;)V

    .line 16
    .line 17
    .line 18
    return-object v7
.end method

.method public i()Lcom/facebook/imagepipeline/producers/p;
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/p;

    .line 2
    .line 3
    iget-object v1, p0, Lt3/z;->k:Ln2/g;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/producers/p;-><init>(Ln2/g;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public j(Lcom/facebook/imagepipeline/producers/b1;)Lcom/facebook/imagepipeline/producers/q;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Ly3/k;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/q;"
        }
    .end annotation

    .line 1
    new-instance v13, Lcom/facebook/imagepipeline/producers/q;

    .line 2
    .line 3
    iget-object v1, p0, Lt3/z;->d:Ln2/a;

    .line 4
    .line 5
    iget-object v0, p0, Lt3/z;->j:Lt3/o;

    .line 6
    .line 7
    invoke-interface {v0}, Lt3/o;->g()Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lt3/z;->e:Lw3/b;

    .line 12
    .line 13
    iget-object v4, p0, Lt3/z;->f:Lw3/d;

    .line 14
    .line 15
    iget-object v5, p0, Lt3/z;->g:Lcom/facebook/imagepipeline/core/DownsampleMode;

    .line 16
    .line 17
    iget-boolean v6, p0, Lt3/z;->h:Z

    .line 18
    .line 19
    iget-boolean v7, p0, Lt3/z;->i:Z

    .line 20
    .line 21
    iget v9, p0, Lt3/z;->w:I

    .line 22
    .line 23
    iget-object v10, p0, Lt3/z;->v:Lt3/a;

    .line 24
    .line 25
    const/4 v11, 0x0

    .line 26
    sget-object v12, Lk2/l;->b:Lk2/k;

    .line 27
    .line 28
    move-object v0, v13

    .line 29
    move-object v8, p1

    .line 30
    invoke-direct/range {v0 .. v12}, Lcom/facebook/imagepipeline/producers/q;-><init>(Ln2/a;Ljava/util/concurrent/Executor;Lw3/b;Lw3/d;Lcom/facebook/imagepipeline/core/DownsampleMode;ZZLcom/facebook/imagepipeline/producers/b1;ILt3/a;Ljava/lang/Runnable;Lk2/k;)V

    .line 31
    .line 32
    .line 33
    return-object v13
.end method

.method public k(Lcom/facebook/imagepipeline/producers/b1;)Lcom/facebook/imagepipeline/producers/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Lo2/a<",
            "Ly3/e;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/t;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/t;

    .line 2
    .line 3
    iget-object v1, p0, Lt3/z;->j:Lt3/o;

    .line 4
    .line 5
    invoke-interface {v1}, Lt3/o;->f()Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, p1, v1}, Lcom/facebook/imagepipeline/producers/t;-><init>(Lcom/facebook/imagepipeline/producers/b1;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public l(Lcom/facebook/imagepipeline/producers/b1;)Lcom/facebook/imagepipeline/producers/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Ly3/k;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/v;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/v;

    .line 2
    .line 3
    iget-object v1, p0, Lt3/z;->l:Lk2/k;

    .line 4
    .line 5
    iget-object v2, p0, Lt3/z;->o:Lr3/j;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/v;-><init>(Lk2/k;Lr3/j;Lcom/facebook/imagepipeline/producers/b1;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public m(Lcom/facebook/imagepipeline/producers/b1;)Lcom/facebook/imagepipeline/producers/w;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Ly3/k;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/w;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/w;

    .line 2
    .line 3
    iget-object v1, p0, Lt3/z;->l:Lk2/k;

    .line 4
    .line 5
    iget-object v2, p0, Lt3/z;->o:Lr3/j;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/w;-><init>(Lk2/k;Lr3/j;Lcom/facebook/imagepipeline/producers/b1;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public n(Lcom/facebook/imagepipeline/producers/b1;)Lcom/facebook/imagepipeline/producers/y;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Ly3/k;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/y;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/y;

    .line 2
    .line 3
    iget-object v1, p0, Lt3/z;->o:Lr3/j;

    .line 4
    .line 5
    iget-boolean v2, p0, Lt3/z;->x:Z

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/y;-><init>(Lr3/j;ZLcom/facebook/imagepipeline/producers/b1;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public o(Lcom/facebook/imagepipeline/producers/b1;)Lcom/facebook/imagepipeline/producers/b1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Ly3/k;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Ly3/k;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/z;

    .line 2
    .line 3
    iget-object v1, p0, Lt3/z;->m:Lr3/w;

    .line 4
    .line 5
    iget-object v2, p0, Lt3/z;->o:Lr3/j;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/z;-><init>(Lr3/w;Lr3/j;Lcom/facebook/imagepipeline/producers/b1;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public p(Lcom/facebook/imagepipeline/producers/b1;)Lcom/facebook/imagepipeline/producers/a0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Ly3/k;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/a0;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/facebook/imagepipeline/producers/a0;

    .line 2
    .line 3
    iget-object v1, p0, Lt3/z;->l:Lk2/k;

    .line 4
    .line 5
    iget-object v2, p0, Lt3/z;->o:Lr3/j;

    .line 6
    .line 7
    iget-object v3, p0, Lt3/z;->p:Lr3/d;

    .line 8
    .line 9
    iget-object v4, p0, Lt3/z;->q:Lr3/d;

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    move-object v5, p1

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/producers/a0;-><init>(Lk2/k;Lr3/j;Lr3/d;Lr3/d;Lcom/facebook/imagepipeline/producers/b1;)V

    .line 14
    .line 15
    .line 16
    return-object v6
.end method

.method public q()Lcom/facebook/imagepipeline/producers/g0;
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/g0;

    .line 2
    .line 3
    iget-object v1, p0, Lt3/z;->j:Lt3/o;

    .line 4
    .line 5
    invoke-interface {v1}, Lt3/o;->c()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lt3/z;->k:Ln2/g;

    .line 10
    .line 11
    iget-object v3, p0, Lt3/z;->c:Landroid/content/res/AssetManager;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/g0;-><init>(Ljava/util/concurrent/Executor;Ln2/g;Landroid/content/res/AssetManager;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public r()Lcom/facebook/imagepipeline/producers/h0;
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/h0;

    .line 2
    .line 3
    iget-object v1, p0, Lt3/z;->j:Lt3/o;

    .line 4
    .line 5
    invoke-interface {v1}, Lt3/o;->c()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lt3/z;->k:Ln2/g;

    .line 10
    .line 11
    iget-object v3, p0, Lt3/z;->a:Landroid/content/ContentResolver;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/h0;-><init>(Ljava/util/concurrent/Executor;Ln2/g;Landroid/content/ContentResolver;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public s()Lcom/facebook/imagepipeline/producers/i0;
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/i0;

    .line 2
    .line 3
    iget-object v1, p0, Lt3/z;->j:Lt3/o;

    .line 4
    .line 5
    invoke-interface {v1}, Lt3/o;->c()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lt3/z;->k:Ln2/g;

    .line 10
    .line 11
    iget-object v3, p0, Lt3/z;->a:Landroid/content/ContentResolver;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/i0;-><init>(Ljava/util/concurrent/Executor;Ln2/g;Landroid/content/ContentResolver;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public t()Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;

    .line 2
    .line 3
    iget-object v1, p0, Lt3/z;->j:Lt3/o;

    .line 4
    .line 5
    invoke-interface {v1}, Lt3/o;->d()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lt3/z;->k:Ln2/g;

    .line 10
    .line 11
    iget-object v3, p0, Lt3/z;->a:Landroid/content/ContentResolver;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;-><init>(Ljava/util/concurrent/Executor;Ln2/g;Landroid/content/ContentResolver;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public u()Lcom/facebook/imagepipeline/producers/l0;
    .locals 3

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/l0;

    .line 2
    .line 3
    iget-object v1, p0, Lt3/z;->j:Lt3/o;

    .line 4
    .line 5
    invoke-interface {v1}, Lt3/o;->c()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lt3/z;->k:Ln2/g;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/l0;-><init>(Ljava/util/concurrent/Executor;Ln2/g;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public v()Lcom/facebook/imagepipeline/producers/m0;
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/m0;

    .line 2
    .line 3
    iget-object v1, p0, Lt3/z;->j:Lt3/o;

    .line 4
    .line 5
    invoke-interface {v1}, Lt3/o;->c()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lt3/z;->k:Ln2/g;

    .line 10
    .line 11
    iget-object v3, p0, Lt3/z;->b:Landroid/content/res/Resources;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/m0;-><init>(Ljava/util/concurrent/Executor;Ln2/g;Landroid/content/res/Resources;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public w()Lcom/facebook/imagepipeline/producers/q0;
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/q0;

    .line 2
    .line 3
    iget-object v1, p0, Lt3/z;->j:Lt3/o;

    .line 4
    .line 5
    invoke-interface {v1}, Lt3/o;->b()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lt3/z;->a:Landroid/content/ContentResolver;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/q0;-><init>(Ljava/util/concurrent/Executor;Landroid/content/ContentResolver;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public x()Lcom/facebook/imagepipeline/producers/r0;
    .locals 3

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/r0;

    .line 2
    .line 3
    iget-object v1, p0, Lt3/z;->j:Lt3/o;

    .line 4
    .line 5
    invoke-interface {v1}, Lt3/o;->c()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lt3/z;->a:Landroid/content/ContentResolver;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/r0;-><init>(Ljava/util/concurrent/Executor;Landroid/content/ContentResolver;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public y(Lcom/facebook/imagepipeline/producers/v0;)Lcom/facebook/imagepipeline/producers/b1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/v0;",
            ")",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Ly3/k;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/u0;

    .line 2
    .line 3
    iget-object v1, p0, Lt3/z;->k:Ln2/g;

    .line 4
    .line 5
    iget-object v2, p0, Lt3/z;->d:Ln2/a;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/u0;-><init>(Ln2/g;Ln2/a;Lcom/facebook/imagepipeline/producers/v0;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public z(Lcom/facebook/imagepipeline/producers/b1;)Lcom/facebook/imagepipeline/producers/w0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Ly3/k;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/w0;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/facebook/imagepipeline/producers/w0;

    .line 2
    .line 3
    iget-object v1, p0, Lt3/z;->l:Lk2/k;

    .line 4
    .line 5
    iget-object v2, p0, Lt3/z;->o:Lr3/j;

    .line 6
    .line 7
    iget-object v3, p0, Lt3/z;->k:Ln2/g;

    .line 8
    .line 9
    iget-object v4, p0, Lt3/z;->d:Ln2/a;

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    move-object v5, p1

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/producers/w0;-><init>(Lk2/k;Lr3/j;Ln2/g;Ln2/a;Lcom/facebook/imagepipeline/producers/b1;)V

    .line 14
    .line 15
    .line 16
    return-object v6
.end method
