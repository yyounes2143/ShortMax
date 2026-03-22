.class public Lv2/e;
.super Ljava/lang/Object;
.source "PipelineDraweeControllerBuilderSupplier.java"

# interfaces
.implements Lk2/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk2/k<",
        "Lv2/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lt3/r;

.field private final c:Lv2/f;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lz2/b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/fresco/ui/common/ControllerListener2;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/facebook/fresco/ui/common/ImagePerfDataListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lt3/v;Ljava/util/Set;Ljava/util/Set;Lv2/b;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lt3/v;",
            "Ljava/util/Set<",
            "Lz2/b;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/facebook/fresco/ui/common/ControllerListener2;",
            ">;",
            "Lv2/b;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lv2/e;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {p2}, Lt3/v;->j()Lt3/r;

    move-result-object p5

    iput-object p5, p0, Lv2/e;->b:Lt3/r;

    .line 6
    new-instance v0, Lv2/f;

    invoke-direct {v0}, Lv2/f;-><init>()V

    iput-object v0, p0, Lv2/e;->c:Lv2/f;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 8
    invoke-static {}, Ly2/a;->b()Ly2/a;

    move-result-object v2

    .line 9
    invoke-virtual {p2, p1}, Lt3/v;->b(Landroid/content/Context;)Lx3/a;

    move-result-object v3

    .line 10
    invoke-virtual {p2}, Lt3/v;->q()Lx3/a;

    move-result-object v4

    .line 11
    invoke-static {}, Li2/i;->g()Li2/i;

    move-result-object v5

    .line 12
    invoke-virtual {p5}, Lt3/r;->h()Lr3/w;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 13
    invoke-virtual/range {v0 .. v8}, Lv2/f;->a(Landroid/content/res/Resources;Ly2/a;Lx3/a;Lx3/a;Ljava/util/concurrent/Executor;Lr3/w;Lcom/facebook/common/internal/ImmutableList;Lk2/k;)V

    .line 14
    iput-object p3, p0, Lv2/e;->d:Ljava/util/Set;

    .line 15
    iput-object p4, p0, Lv2/e;->e:Ljava/util/Set;

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lv2/e;->f:Lcom/facebook/fresco/ui/common/ImagePerfDataListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lt3/v;Lv2/b;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lv2/e;-><init>(Landroid/content/Context;Lt3/v;Ljava/util/Set;Ljava/util/Set;Lv2/b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lv2/b;)V
    .locals 1

    .line 1
    invoke-static {}, Lt3/v;->l()Lt3/v;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lv2/e;-><init>(Landroid/content/Context;Lt3/v;Lv2/b;)V

    return-void
.end method


# virtual methods
.method public a()Lv2/d;
    .locals 7

    .line 1
    new-instance v6, Lv2/d;

    .line 2
    .line 3
    iget-object v1, p0, Lv2/e;->a:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lv2/e;->c:Lv2/f;

    .line 6
    .line 7
    iget-object v3, p0, Lv2/e;->b:Lt3/r;

    .line 8
    .line 9
    iget-object v4, p0, Lv2/e;->d:Ljava/util/Set;

    .line 10
    .line 11
    iget-object v5, p0, Lv2/e;->e:Ljava/util/Set;

    .line 12
    .line 13
    move-object v0, v6

    .line 14
    invoke-direct/range {v0 .. v5}, Lv2/d;-><init>(Landroid/content/Context;Lv2/f;Lt3/r;Ljava/util/Set;Ljava/util/Set;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lv2/e;->f:Lcom/facebook/fresco/ui/common/ImagePerfDataListener;

    .line 18
    .line 19
    invoke-virtual {v6, v0}, Lv2/d;->L(Lcom/facebook/fresco/ui/common/ImagePerfDataListener;)Lv2/d;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lv2/e;->a()Lv2/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
