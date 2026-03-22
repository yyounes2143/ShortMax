.class public Ll3/e;
.super Ljava/lang/Object;
.source "AnimatedImageResultBuilder.java"


# instance fields
.field private final a:Ll3/b;

.field private b:Lo2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ll3/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll3/e;->a:Ll3/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Ll3/d;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ll3/d;

    .line 3
    .line 4
    invoke-direct {v1, p0}, Ll3/d;-><init>(Ll3/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Ll3/e;->b:Lo2/a;

    .line 8
    .line 9
    invoke-static {v2}, Lo2/a;->r(Lo2/a;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Ll3/e;->b:Lo2/a;

    .line 13
    .line 14
    iget-object v2, p0, Ll3/e;->c:Ljava/util/List;

    .line 15
    .line 16
    invoke-static {v2}, Lo2/a;->q(Ljava/lang/Iterable;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Ll3/e;->c:Ljava/util/List;

    .line 20
    .line 21
    return-object v1

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    iget-object v2, p0, Ll3/e;->b:Lo2/a;

    .line 24
    .line 25
    invoke-static {v2}, Lo2/a;->r(Lo2/a;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Ll3/e;->b:Lo2/a;

    .line 29
    .line 30
    iget-object v2, p0, Ll3/e;->c:Ljava/util/List;

    .line 31
    .line 32
    invoke-static {v2}, Lo2/a;->q(Ljava/lang/Iterable;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Ll3/e;->c:Ljava/util/List;

    .line 36
    .line 37
    throw v1
.end method

.method public b()Lh4/a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll3/e;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0}, Lo2/a;->m(Ljava/util/Collection;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Ll3/e;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public e()Ll3/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ll3/e;->a:Ll3/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Lo2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll3/e;->b:Lo2/a;

    .line 2
    .line 3
    invoke-static {v0}, Lo2/a;->p(Lo2/a;)Lo2/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ll3/e;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public h(Lh4/a;)Ll3/e;
    .locals 0

    .line 1
    return-object p0
.end method

.method public i(Ljava/util/List;)Ll3/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;>;)",
            "Ll3/e;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lo2/a;->m(Ljava/util/Collection;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Ll3/e;->c:Ljava/util/List;

    .line 6
    .line 7
    return-object p0
.end method

.method public j(I)Ll3/e;
    .locals 0

    .line 1
    iput p1, p0, Ll3/e;->d:I

    .line 2
    .line 3
    return-object p0
.end method

.method public k(Lo2/a;)Ll3/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ll3/e;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lo2/a;->p(Lo2/a;)Lo2/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Ll3/e;->b:Lo2/a;

    .line 6
    .line 7
    return-object p0
.end method

.method public l(Ljava/lang/String;)Ll3/e;
    .locals 0

    .line 1
    iput-object p1, p0, Ll3/e;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
