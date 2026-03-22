.class public abstract Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
.super Ljava/lang/Object;
.source "AbstractDraweeControllerBuilder.java"

# interfaces
.implements Lf3/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BUI",
        "LDER:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<",
        "TBUI",
        "LDER;",
        "TREQUEST;TIMAGE;TINFO;>;REQUEST:",
        "Ljava/lang/Object;",
        "IMAGE:",
        "Ljava/lang/Object;",
        "INFO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf3/d;"
    }
.end annotation


# static fields
.field private static final r:Lz2/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final s:Ljava/lang/NullPointerException;

.field private static final t:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lz2/b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/fresco/ui/common/ControllerListener2;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TREQUEST;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TREQUEST;"
        }
    .end annotation
.end field

.field private g:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TREQUEST;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Lk2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk2/k<",
            "Lcom/facebook/datasource/b<",
            "TIMAGE;>;>;"
        }
    .end annotation
.end field

.field private j:Lz2/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/b<",
            "-TINFO;>;"
        }
    .end annotation
.end field

.field private k:Lcom/facebook/fresco/ui/common/LegacyOnFadeListener;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Lf3/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->r:Lz2/b;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/NullPointerException;

    .line 9
    .line 10
    const-string v1, "No image request was specified!"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->s:Ljava/lang/NullPointerException;

    .line 16
    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->t:Ljava/util/concurrent/atomic/AtomicLong;

    .line 23
    .line 24
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Lz2/b;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/facebook/fresco/ui/common/ControllerListener2;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->o:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->a:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->b:Ljava/util/Set;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->c:Ljava/util/Set;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->s()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method protected static e()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->t:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private s()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d:Ljava/lang/Object;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->e:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->f:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->g:[Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->h:Z

    .line 12
    .line 13
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->j:Lz2/b;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->k:Lcom/facebook/fresco/ui/common/LegacyOnFadeListener;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->l:Z

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->m:Z

    .line 21
    .line 22
    iput-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->o:Z

    .line 23
    .line 24
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->q:Lf3/a;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->p:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TBUI",
            "LDER;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->r()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public B(Lz2/b;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/b<",
            "-TINFO;>;)TBUI",
            "LDER;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->j:Lz2/b;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->r()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public C(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQUEST;)TBUI",
            "LDER;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->e:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->r()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public D(Lf3/a;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf3/a;",
            ")TBUI",
            "LDER;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->q:Lf3/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->r()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public E(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TBUI",
            "LDER;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->l:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->r()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected F()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->g:[Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->e:Ljava/lang/Object;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v2

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    move v0, v1

    .line 15
    :goto_1
    const-string v3, "Cannot specify both ImageRequest and FirstAvailableImageRequests!"

    .line 16
    .line 17
    invoke-static {v0, v3}, Lk2/h;->j(ZLjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->i:Lk2/k;

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->g:[Ljava/lang/Object;

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->e:Ljava/lang/Object;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->f:Ljava/lang/Object;

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    move v1, v2

    .line 38
    :cond_3
    :goto_2
    const-string v0, "Cannot specify DataSourceSupplier with other ImageRequests! Use one or the other."

    .line 39
    .line 40
    invoke-static {v1, v0}, Lk2/h;->j(ZLjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public bridge synthetic b(Lf3/a;)Lf3/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->D(Lf3/a;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic build()Lf3/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->c()Lcom/facebook/drawee/controller/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public c()Lcom/facebook/drawee/controller/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->F()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->e:Ljava/lang/Object;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->g:[Ljava/lang/Object;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->f:Ljava/lang/Object;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->e:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->f:Ljava/lang/Object;

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method protected d()Lcom/facebook/drawee/controller/a;
    .locals 2

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
    const-string v0, "AbstractDraweeControllerBuilder#buildController"

    .line 8
    .line 9
    invoke-static {v0}, Lf4/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->x()Lcom/facebook/drawee/controller/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->t()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/controller/a;->d0(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->q()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/controller/a;->e0(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->g()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/controller/a;->Z(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->h()Lz2/c;

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/controller/a;->b0(Lz2/c;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->w(Lcom/facebook/drawee/controller/a;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->u(Lcom/facebook/drawee/controller/a;)V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lf4/b;->d()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    invoke-static {}, Lf4/b;->b()V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-object v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Lz2/c;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method protected abstract i(Lf3/a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/datasource/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf3/a;",
            "Ljava/lang/String;",
            "TREQUEST;",
            "Ljava/lang/Object;",
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;",
            ")",
            "Lcom/facebook/datasource/b<",
            "TIMAGE;>;"
        }
    .end annotation
.end method

.method protected j(Lf3/a;Ljava/lang/String;Ljava/lang/Object;)Lk2/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf3/a;",
            "Ljava/lang/String;",
            "TREQUEST;)",
            "Lk2/k<",
            "Lcom/facebook/datasource/b<",
            "TIMAGE;>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;->FULL_FETCH:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->k(Lf3/a;Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lk2/k;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected k(Lf3/a;Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lk2/k;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf3/a;",
            "Ljava/lang/String;",
            "TREQUEST;",
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;",
            ")",
            "Lk2/k<",
            "Lcom/facebook/datasource/b<",
            "TIMAGE;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v5

    .line 5
    new-instance v7, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$b;

    .line 6
    .line 7
    move-object v0, v7

    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move-object v6, p4

    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$b;-><init>(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;Lf3/a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)V

    .line 14
    .line 15
    .line 16
    return-object v7
.end method

.method protected l(Lf3/a;Ljava/lang/String;[Ljava/lang/Object;Z)Lk2/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf3/a;",
            "Ljava/lang/String;",
            "[TREQUEST;Z)",
            "Lk2/k<",
            "Lcom/facebook/datasource/b<",
            "TIMAGE;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    array-length v1, p3

    .line 4
    mul-int/lit8 v1, v1, 0x2

    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p4, :cond_0

    .line 11
    .line 12
    move p4, v1

    .line 13
    :goto_0
    array-length v2, p3

    .line 14
    if-ge p4, v2, :cond_0

    .line 15
    .line 16
    aget-object v2, p3, p4

    .line 17
    .line 18
    sget-object v3, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;->BITMAP_MEMORY_CACHE:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    .line 19
    .line 20
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->k(Lf3/a;Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lk2/k;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    add-int/lit8 p4, p4, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    :goto_1
    array-length p4, p3

    .line 31
    if-ge v1, p4, :cond_1

    .line 32
    .line 33
    aget-object p4, p3, v1

    .line 34
    .line 35
    invoke-virtual {p0, p1, p2, p4}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->j(Lf3/a;Ljava/lang/String;Ljava/lang/Object;)Lk2/k;

    .line 36
    .line 37
    .line 38
    move-result-object p4

    .line 39
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-static {v0}, Lcom/facebook/datasource/e;->b(Ljava/util/List;)Lcom/facebook/datasource/e;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1
.end method

.method public m()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TREQUEST;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->g:[Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TREQUEST;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->e:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public o()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TREQUEST;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->f:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public p()Lf3/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->q:Lf3/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method protected final r()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBUI",
            "LDER;"
        }
    .end annotation

    .line 1
    return-object p0
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method protected u(Lcom/facebook/drawee/controller/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->b:Ljava/util/Set;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lz2/b;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Lcom/facebook/drawee/controller/a;->k(Lz2/b;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->c:Ljava/util/Set;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/facebook/fresco/ui/common/ControllerListener2;

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Lcom/facebook/drawee/controller/a;->l(Lcom/facebook/fresco/ui/common/ControllerListener2;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->j:Lz2/b;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/controller/a;->k(Lz2/b;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->m:Z

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    sget-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->r:Lz2/b;

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/controller/a;->k(Lz2/b;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    return-void
.end method

.method protected v(Lcom/facebook/drawee/controller/a;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/facebook/drawee/controller/a;->u()Le3/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->a:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0}, Le3/a;->c(Landroid/content/Context;)Le3/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/controller/a;->c0(Le3/a;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method protected w(Lcom/facebook/drawee/controller/a;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->l:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/drawee/controller/a;->A()Ly2/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->l:Z

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ly2/c;->d(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->v(Lcom/facebook/drawee/controller/a;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method protected abstract x()Lcom/facebook/drawee/controller/a;
.end method

.method protected y(Lf3/a;Ljava/lang/String;)Lk2/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf3/a;",
            "Ljava/lang/String;",
            ")",
            "Lk2/k<",
            "Lcom/facebook/datasource/b<",
            "TIMAGE;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->i:Lk2/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->e:Ljava/lang/Object;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->j(Lf3/a;Ljava/lang/String;Ljava/lang/Object;)Lk2/k;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->g:[Ljava/lang/Object;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->h:Z

    .line 20
    .line 21
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->l(Lf3/a;Ljava/lang/String;[Ljava/lang/Object;Z)Lk2/k;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const/4 v0, 0x0

    .line 27
    :goto_0
    if-eqz v0, :cond_3

    .line 28
    .line 29
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->f:Ljava/lang/Object;

    .line 30
    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    new-instance v1, Ljava/util/ArrayList;

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->f:Ljava/lang/Object;

    .line 43
    .line 44
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->j(Lf3/a;Ljava/lang/String;Ljava/lang/Object;)Lk2/k;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    invoke-static {v1, p1}, Lcom/facebook/datasource/g;->c(Ljava/util/List;Z)Lcom/facebook/datasource/g;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :cond_3
    if-nez v0, :cond_4

    .line 57
    .line 58
    sget-object p1, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->s:Ljava/lang/NullPointerException;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/facebook/datasource/c;->a(Ljava/lang/Throwable;)Lk2/k;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :cond_4
    return-object v0
.end method

.method public z(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TBUI",
            "LDER;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->m:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->r()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
