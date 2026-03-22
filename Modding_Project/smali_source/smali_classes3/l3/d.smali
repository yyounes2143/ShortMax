.class public Ll3/d;
.super Ljava/lang/Object;
.source "AnimatedImageResult.java"


# instance fields
.field private final a:Ll3/b;

.field private final b:I

.field private c:Ljava/lang/String;

.field private d:Lo2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ll3/b;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {p1}, Lk2/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll3/b;

    iput-object p1, p0, Ll3/d;->a:Ll3/b;

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Ll3/d;->b:I

    return-void
.end method

.method constructor <init>(Ll3/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ll3/e;->e()Ll3/b;

    move-result-object v0

    invoke-static {v0}, Lk2/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll3/b;

    iput-object v0, p0, Ll3/d;->a:Ll3/b;

    .line 3
    invoke-virtual {p1}, Ll3/e;->d()I

    move-result v0

    iput v0, p0, Ll3/d;->b:I

    .line 4
    invoke-virtual {p1}, Ll3/e;->f()Lo2/a;

    move-result-object v0

    iput-object v0, p0, Ll3/d;->d:Lo2/a;

    .line 5
    invoke-virtual {p1}, Ll3/e;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ll3/d;->e:Ljava/util/List;

    .line 6
    invoke-virtual {p1}, Ll3/e;->b()Lh4/a;

    .line 7
    invoke-virtual {p1}, Ll3/e;->g()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ll3/d;->c:Ljava/lang/String;

    return-void
.end method

.method public static b(Ll3/b;)Ll3/d;
    .locals 1

    .line 1
    new-instance v0, Ll3/d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ll3/d;-><init>(Ll3/b;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static f(Ll3/b;)Ll3/e;
    .locals 1

    .line 1
    new-instance v0, Ll3/e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ll3/e;-><init>(Ll3/b;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ll3/d;->d:Lo2/a;

    .line 3
    .line 4
    invoke-static {v0}, Lo2/a;->r(Lo2/a;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Ll3/d;->d:Lo2/a;

    .line 9
    .line 10
    iget-object v1, p0, Ll3/d;->e:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {v1}, Lo2/a;->q(Ljava/lang/Iterable;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Ll3/d;->e:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw v0
.end method

.method public c()Lh4/a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public d()Ll3/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ll3/d;->a:Ll3/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ll3/d;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
