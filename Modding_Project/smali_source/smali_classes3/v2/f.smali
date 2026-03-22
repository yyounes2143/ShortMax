.class public Lv2/f;
.super Ljava/lang/Object;
.source "PipelineDraweeControllerFactory.java"


# instance fields
.field private a:Landroid/content/res/Resources;

.field private b:Ly2/a;

.field private c:Lx3/a;

.field private d:Lx3/a;

.field private e:Ljava/util/concurrent/Executor;

.field private f:Lr3/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr3/w<",
            "Lf2/a;",
            "Ly3/e;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/facebook/common/internal/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lx3/a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lk2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk2/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Ly2/a;Lx3/a;Lx3/a;Ljava/util/concurrent/Executor;Lr3/w;Lcom/facebook/common/internal/ImmutableList;Lk2/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ly2/a;",
            "Lx3/a;",
            "Lx3/a;",
            "Ljava/util/concurrent/Executor;",
            "Lr3/w<",
            "Lf2/a;",
            "Ly3/e;",
            ">;",
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lx3/a;",
            ">;",
            "Lk2/k<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lv2/f;->a:Landroid/content/res/Resources;

    .line 2
    .line 3
    iput-object p2, p0, Lv2/f;->b:Ly2/a;

    .line 4
    .line 5
    iput-object p3, p0, Lv2/f;->c:Lx3/a;

    .line 6
    .line 7
    iput-object p4, p0, Lv2/f;->d:Lx3/a;

    .line 8
    .line 9
    iput-object p5, p0, Lv2/f;->e:Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    iput-object p6, p0, Lv2/f;->f:Lr3/w;

    .line 12
    .line 13
    iput-object p7, p0, Lv2/f;->g:Lcom/facebook/common/internal/ImmutableList;

    .line 14
    .line 15
    iput-object p8, p0, Lv2/f;->h:Lk2/k;

    .line 16
    .line 17
    return-void
.end method

.method protected b(Landroid/content/res/Resources;Ly2/a;Lx3/a;Lx3/a;Ljava/util/concurrent/Executor;Lr3/w;Lcom/facebook/common/internal/ImmutableList;)Lv2/c;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ly2/a;",
            "Lx3/a;",
            "Lx3/a;",
            "Ljava/util/concurrent/Executor;",
            "Lr3/w<",
            "Lf2/a;",
            "Ly3/e;",
            ">;",
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lx3/a;",
            ">;)",
            "Lv2/c;"
        }
    .end annotation

    .line 1
    new-instance v8, Lv2/c;

    .line 2
    .line 3
    move-object v0, v8

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p5

    .line 9
    move-object v6, p6

    .line 10
    move-object/from16 v7, p7

    .line 11
    .line 12
    invoke-direct/range {v0 .. v7}, Lv2/c;-><init>(Landroid/content/res/Resources;Ly2/a;Lx3/a;Lx3/a;Ljava/util/concurrent/Executor;Lr3/w;Lcom/facebook/common/internal/ImmutableList;)V

    .line 13
    .line 14
    .line 15
    return-object v8
.end method

.method public c()Lv2/c;
    .locals 8

    .line 1
    iget-object v1, p0, Lv2/f;->a:Landroid/content/res/Resources;

    .line 2
    .line 3
    iget-object v2, p0, Lv2/f;->b:Ly2/a;

    .line 4
    .line 5
    iget-object v3, p0, Lv2/f;->c:Lx3/a;

    .line 6
    .line 7
    iget-object v4, p0, Lv2/f;->d:Lx3/a;

    .line 8
    .line 9
    iget-object v5, p0, Lv2/f;->e:Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    iget-object v6, p0, Lv2/f;->f:Lr3/w;

    .line 12
    .line 13
    iget-object v7, p0, Lv2/f;->g:Lcom/facebook/common/internal/ImmutableList;

    .line 14
    .line 15
    move-object v0, p0

    .line 16
    invoke-virtual/range {v0 .. v7}, Lv2/f;->b(Landroid/content/res/Resources;Ly2/a;Lx3/a;Lx3/a;Ljava/util/concurrent/Executor;Lr3/w;Lcom/facebook/common/internal/ImmutableList;)Lv2/c;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lv2/f;->h:Lk2/k;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-interface {v1}, Lk2/k;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {v0, v1}, Lv2/c;->B0(Z)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-object v0
.end method
