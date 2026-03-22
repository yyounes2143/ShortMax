.class public Lcom/facebook/drawee/generic/b;
.super Ljava/lang/Object;
.source "GenericDraweeHierarchyBuilder.java"


# static fields
.field public static final t:Lc3/q;

.field public static final u:Lc3/q;


# instance fields
.field private a:Landroid/content/res/Resources;

.field private b:I

.field private c:F

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Lc3/q;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Lc3/q;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Lc3/q;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Lc3/q;

.field private l:Lc3/q;

.field private m:Landroid/graphics/Matrix;

.field private n:Landroid/graphics/PointF;

.field private o:Landroid/graphics/ColorFilter;

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Lcom/facebook/drawee/generic/RoundingParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lc3/q;->h:Lc3/q;

    .line 2
    .line 3
    sput-object v0, Lcom/facebook/drawee/generic/b;->t:Lc3/q;

    .line 4
    .line 5
    sget-object v0, Lc3/q;->i:Lc3/q;

    .line 6
    .line 7
    sput-object v0, Lcom/facebook/drawee/generic/b;->u:Lc3/q;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->a:Landroid/content/res/Resources;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/facebook/drawee/generic/b;->t()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private J()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->q:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    invoke-static {v1}, Lk2/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method private t()V
    .locals 2

    .line 1
    const/16 v0, 0x12c

    .line 2
    .line 3
    iput v0, p0, Lcom/facebook/drawee/generic/b;->b:I

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/facebook/drawee/generic/b;->c:F

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->d:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    sget-object v1, Lcom/facebook/drawee/generic/b;->t:Lc3/q;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/facebook/drawee/generic/b;->e:Lc3/q;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->f:Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    iput-object v1, p0, Lcom/facebook/drawee/generic/b;->g:Lc3/q;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->h:Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/facebook/drawee/generic/b;->i:Lc3/q;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->j:Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/facebook/drawee/generic/b;->k:Lc3/q;

    .line 26
    .line 27
    sget-object v1, Lcom/facebook/drawee/generic/b;->u:Lc3/q;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/facebook/drawee/generic/b;->l:Lc3/q;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->m:Landroid/graphics/Matrix;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->n:Landroid/graphics/PointF;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->o:Landroid/graphics/ColorFilter;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->p:Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->q:Ljava/util/List;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->r:Landroid/graphics/drawable/Drawable;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->s:Lcom/facebook/drawee/generic/RoundingParams;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public A(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->q:Ljava/util/List;

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    filled-new-array {p1}, [Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->q:Ljava/util/List;

    .line 16
    .line 17
    :goto_0
    return-object p0
.end method

.method public B(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->d:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public C(Lc3/q;)Lcom/facebook/drawee/generic/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->e:Lc3/q;

    .line 2
    .line 3
    return-object p0
.end method

.method public D(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->r:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 10
    .line 11
    .line 12
    const v1, 0x10100a7

    .line 13
    .line 14
    .line 15
    filled-new-array {v1}, [I

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->r:Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    :goto_0
    return-object p0
.end method

.method public E(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->j:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public F(Lc3/q;)Lcom/facebook/drawee/generic/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->k:Lc3/q;

    .line 2
    .line 3
    return-object p0
.end method

.method public G(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->f:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public H(Lc3/q;)Lcom/facebook/drawee/generic/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->g:Lc3/q;

    .line 2
    .line 3
    return-object p0
.end method

.method public I(Lcom/facebook/drawee/generic/RoundingParams;)Lcom/facebook/drawee/generic/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->s:Lcom/facebook/drawee/generic/RoundingParams;

    .line 2
    .line 3
    return-object p0
.end method

.method public a()Lcom/facebook/drawee/generic/a;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/facebook/drawee/generic/b;->J()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/facebook/drawee/generic/a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/facebook/drawee/generic/a;-><init>(Lcom/facebook/drawee/generic/b;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public b()Landroid/graphics/ColorFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->o:Landroid/graphics/ColorFilter;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Landroid/graphics/PointF;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->n:Landroid/graphics/PointF;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Lc3/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->l:Lc3/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->p:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/generic/b;->c:F

    .line 2
    .line 3
    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/generic/b;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public h()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->h:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Lc3/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->i:Lc3/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->q:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->d:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public l()Lc3/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->e:Lc3/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->r:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->j:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public o()Lc3/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->k:Lc3/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public p()Landroid/content/res/Resources;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->a:Landroid/content/res/Resources;

    .line 2
    .line 3
    return-object v0
.end method

.method public q()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->f:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public r()Lc3/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->g:Lc3/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public s()Lcom/facebook/drawee/generic/RoundingParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->s:Lcom/facebook/drawee/generic/RoundingParams;

    .line 2
    .line 3
    return-object v0
.end method

.method public u(Lc3/q;)Lcom/facebook/drawee/generic/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->l:Lc3/q;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->m:Landroid/graphics/Matrix;

    .line 5
    .line 6
    return-object p0
.end method

.method public v(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->p:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public w(F)Lcom/facebook/drawee/generic/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/facebook/drawee/generic/b;->c:F

    .line 2
    .line 3
    return-object p0
.end method

.method public x(I)Lcom/facebook/drawee/generic/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/facebook/drawee/generic/b;->b:I

    .line 2
    .line 3
    return-object p0
.end method

.method public y(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->h:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public z(Lc3/q;)Lcom/facebook/drawee/generic/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->i:Lc3/q;

    .line 2
    .line 3
    return-object p0
.end method
