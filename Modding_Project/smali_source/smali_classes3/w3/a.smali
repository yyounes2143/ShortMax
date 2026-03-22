.class public Lw3/a;
.super Ljava/lang/Object;
.source "DefaultImageDecoder.java"

# interfaces
.implements Lw3/b;


# instance fields
.field private final a:Lw3/b;

.field private final b:Lw3/b;

.field private final c:Lw3/b;

.field private final d:Lc4/d;

.field private final e:Lk2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk2/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lw3/b;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/imageformat/c;",
            "Lw3/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw3/b;Lw3/b;Lw3/b;Lc4/d;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lw3/a;-><init>(Lw3/b;Lw3/b;Lw3/b;Lc4/d;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lw3/b;Lw3/b;Lw3/b;Lc4/d;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/b;",
            "Lw3/b;",
            "Lw3/b;",
            "Lc4/d;",
            "Ljava/util/Map<",
            "Lcom/facebook/imageformat/c;",
            "Lw3/b;",
            ">;)V"
        }
    .end annotation

    .line 2
    sget-object v6, Lk2/l;->b:Lk2/k;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lw3/a;-><init>(Lw3/b;Lw3/b;Lw3/b;Lc4/d;Ljava/util/Map;Lk2/k;)V

    return-void
.end method

.method public constructor <init>(Lw3/b;Lw3/b;Lw3/b;Lc4/d;Ljava/util/Map;Lk2/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/b;",
            "Lw3/b;",
            "Lw3/b;",
            "Lc4/d;",
            "Ljava/util/Map<",
            "Lcom/facebook/imageformat/c;",
            "Lw3/b;",
            ">;",
            "Lk2/k<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lw3/a$a;

    invoke-direct {v0, p0}, Lw3/a$a;-><init>(Lw3/a;)V

    iput-object v0, p0, Lw3/a;->f:Lw3/b;

    .line 5
    iput-object p1, p0, Lw3/a;->a:Lw3/b;

    .line 6
    iput-object p2, p0, Lw3/a;->b:Lw3/b;

    .line 7
    iput-object p3, p0, Lw3/a;->c:Lw3/b;

    .line 8
    iput-object p4, p0, Lw3/a;->d:Lc4/d;

    .line 9
    iput-object p5, p0, Lw3/a;->g:Ljava/util/Map;

    .line 10
    iput-object p6, p0, Lw3/a;->e:Lk2/k;

    return-void
.end method

.method static bridge synthetic a(Lw3/a;)Lk2/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lw3/a;->e:Lk2/k;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic b(Lw3/a;Ly3/k;ILy3/p;Ls3/d;)Ly3/e;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lw3/a;->g(Ly3/k;ILy3/p;Ls3/d;)Ly3/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private g(Ly3/k;ILy3/p;Ls3/d;)Ly3/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/a;->c:Lw3/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Lw3/b;->decode(Ly3/k;ILy3/p;Ls3/d;)Ly3/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method


# virtual methods
.method public c(Ly3/k;ILy3/p;Ls3/d;)Ly3/e;
    .locals 1

    .line 1
    iget-boolean v0, p4, Ls3/d;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lw3/a;->b:Lw3/b;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p1, p2, p3, p4}, Lw3/b;->decode(Ly3/k;ILy3/p;Ls3/d;)Ly3/e;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {p0, p1, p4}, Lw3/a;->f(Ly3/k;Ls3/d;)Ly3/f;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public d(Ly3/k;ILy3/p;Ls3/d;)Ly3/e;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ly3/k;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Ly3/k;->getHeight()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    iget-boolean v0, p4, Ls3/d;->g:Z

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lw3/a;->a:Lw3/b;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {v0, p1, p2, p3, p4}, Lw3/b;->decode(Ly3/k;ILy3/p;Ls3/d;)Ly3/e;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_0
    invoke-virtual {p0, p1, p4}, Lw3/a;->f(Ly3/k;Ls3/d;)Ly3/f;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :cond_1
    new-instance p2, Lcom/facebook/imagepipeline/decoder/DecodeException;

    .line 33
    .line 34
    const-string p3, "image width or height is incorrect"

    .line 35
    .line 36
    invoke-direct {p2, p3, p1}, Lcom/facebook/imagepipeline/decoder/DecodeException;-><init>(Ljava/lang/String;Ly3/k;)V

    .line 37
    .line 38
    .line 39
    throw p2
.end method

.method public decode(Ly3/k;ILy3/p;Ls3/d;)Ly3/e;
    .locals 2

    .line 1
    iget-object v0, p4, Ls3/d;->j:Lw3/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Lw3/b;->decode(Ly3/k;ILy3/p;Ls3/d;)Ly3/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-virtual {p1}, Ly3/k;->q()Lcom/facebook/imageformat/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget-object v1, Lcom/facebook/imageformat/c;->d:Lcom/facebook/imageformat/c;

    .line 17
    .line 18
    if-ne v0, v1, :cond_2

    .line 19
    .line 20
    :cond_1
    invoke-virtual {p1}, Ly3/k;->r()Ljava/io/InputStream;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-static {v1}, Lcom/facebook/imageformat/e;->d(Ljava/io/InputStream;)Lcom/facebook/imageformat/c;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Ly3/k;->e0(Lcom/facebook/imageformat/c;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-object v1, p0, Lw3/a;->g:Ljava/util/Map;

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lw3/b;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-interface {v0, p1, p2, p3, p4}, Lw3/b;->decode(Ly3/k;ILy3/p;Ls3/d;)Ly3/e;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    :cond_3
    iget-object v0, p0, Lw3/a;->f:Lw3/b;

    .line 51
    .line 52
    invoke-interface {v0, p1, p2, p3, p4}, Lw3/b;->decode(Ly3/k;ILy3/p;Ls3/d;)Ly3/e;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1
.end method

.method public e(Ly3/k;ILy3/p;Ls3/d;Landroid/graphics/ColorSpace;)Ly3/f;
    .locals 6

    .line 1
    iget-object v0, p0, Lw3/a;->d:Lc4/d;

    .line 2
    .line 3
    iget-object v2, p4, Ls3/d;->h:Landroid/graphics/Bitmap$Config;

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    move-object v1, p1

    .line 7
    move v4, p2

    .line 8
    move-object v5, p5

    .line 9
    invoke-interface/range {v0 .. v5}, Lc4/d;->b(Ly3/k;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;ILandroid/graphics/ColorSpace;)Lo2/a;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const/4 p4, 0x0

    .line 14
    :try_start_0
    invoke-static {p4, p2}, Lh4/b;->a(Lh4/a;Lo2/a;)Z

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Lk2/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ly3/k;->q0()I

    .line 21
    .line 22
    .line 23
    move-result p4

    .line 24
    invoke-virtual {p1}, Ly3/k;->H()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-static {p2, p3, p4, p1}, Ly3/f;->J(Lo2/a;Ly3/p;II)Ly3/f;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string p3, "is_rounded"

    .line 33
    .line 34
    const/4 p4, 0x0

    .line 35
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object p4

    .line 39
    invoke-interface {p1, p3, p4}, Lcom/facebook/fresco/middleware/HasExtraData;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    invoke-static {p2}, Lo2/a;->r(Lo2/a;)V

    .line 43
    .line 44
    .line 45
    return-object p1

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    invoke-static {p2}, Lo2/a;->r(Lo2/a;)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method public f(Ly3/k;Ls3/d;)Ly3/f;
    .locals 3

    .line 1
    iget-object v0, p0, Lw3/a;->d:Lc4/d;

    .line 2
    .line 3
    iget-object v1, p2, Ls3/d;->h:Landroid/graphics/Bitmap$Config;

    .line 4
    .line 5
    iget-object p2, p2, Ls3/d;->k:Landroid/graphics/ColorSpace;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, p1, v1, v2, p2}, Lc4/d;->a(Ly3/k;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;Landroid/graphics/ColorSpace;)Lo2/a;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    :try_start_0
    invoke-static {v2, p2}, Lh4/b;->a(Lh4/a;Lo2/a;)Z

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Lk2/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    sget-object v0, Ly3/o;->d:Ly3/p;

    .line 19
    .line 20
    invoke-virtual {p1}, Ly3/k;->q0()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {p1}, Ly3/k;->H()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-static {p2, v0, v1, p1}, Ly3/f;->J(Lo2/a;Ly3/p;II)Ly3/f;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, "is_rounded"

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {p1, v0, v1}, Lcom/facebook/fresco/middleware/HasExtraData;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    invoke-static {p2}, Lo2/a;->r(Lo2/a;)V

    .line 43
    .line 44
    .line 45
    return-object p1

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    invoke-static {p2}, Lo2/a;->r(Lo2/a;)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method
