.class public Ly0/n;
.super Ljava/lang/Object;
.source "AnimatableTransform.java"

# interfaces
.implements Lz0/c;


# instance fields
.field private final a:Ly0/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final b:Ly0/o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly0/o<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ly0/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final d:Ly0/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final e:Ly0/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final f:Ly0/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final g:Ly0/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final h:Ly0/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final i:Ly0/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final j:Ly0/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final k:Ly0/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final l:Ly0/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 13

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v12}, Ly0/n;-><init>(Ly0/e;Ly0/o;Ly0/g;Ly0/b;Ly0/d;Ly0/b;Ly0/b;Ly0/b;Ly0/b;Ly0/b;Ly0/b;Ly0/b;)V

    return-void
.end method

.method public constructor <init>(Ly0/e;Ly0/o;Ly0/g;Ly0/b;Ly0/d;Ly0/b;Ly0/b;Ly0/b;Ly0/b;Ly0/b;Ly0/b;Ly0/b;)V
    .locals 1
    .param p1    # Ly0/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ly0/o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ly0/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ly0/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ly0/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ly0/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ly0/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ly0/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ly0/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ly0/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Ly0/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # Ly0/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly0/e;",
            "Ly0/o<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Ly0/g;",
            "Ly0/b;",
            "Ly0/d;",
            "Ly0/b;",
            "Ly0/b;",
            "Ly0/b;",
            "Ly0/b;",
            "Ly0/b;",
            "Ly0/b;",
            "Ly0/b;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ly0/n;->m:Z

    .line 4
    iput-object p1, p0, Ly0/n;->a:Ly0/e;

    .line 5
    iput-object p2, p0, Ly0/n;->b:Ly0/o;

    .line 6
    iput-object p3, p0, Ly0/n;->c:Ly0/g;

    .line 7
    iput-object p4, p0, Ly0/n;->d:Ly0/b;

    .line 8
    iput-object p5, p0, Ly0/n;->e:Ly0/d;

    .line 9
    iput-object p6, p0, Ly0/n;->k:Ly0/b;

    .line 10
    iput-object p7, p0, Ly0/n;->l:Ly0/b;

    .line 11
    iput-object p8, p0, Ly0/n;->f:Ly0/b;

    .line 12
    iput-object p9, p0, Ly0/n;->g:Ly0/b;

    .line 13
    iput-object p10, p0, Ly0/n;->h:Ly0/b;

    .line 14
    iput-object p11, p0, Ly0/n;->i:Ly0/b;

    .line 15
    iput-object p12, p0, Ly0/n;->j:Ly0/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/i;Lcom/airbnb/lottie/model/layer/a;)Lt0/c;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public b()Lu0/s;
    .locals 1

    .line 1
    new-instance v0, Lu0/s;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lu0/s;-><init>(Ly0/n;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public c()Ly0/e;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Ly0/n;->a:Ly0/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Ly0/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Ly0/n;->l:Ly0/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Ly0/d;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Ly0/n;->e:Ly0/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Ly0/o;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly0/o<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly0/n;->b:Ly0/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Ly0/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Ly0/n;->d:Ly0/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Ly0/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Ly0/n;->h:Ly0/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Ly0/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Ly0/n;->i:Ly0/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Ly0/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Ly0/n;->j:Ly0/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Ly0/g;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Ly0/n;->c:Ly0/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public l()Ly0/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Ly0/n;->f:Ly0/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Ly0/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Ly0/n;->g:Ly0/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Ly0/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Ly0/n;->k:Ly0/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ly0/n;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public p(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ly0/n;->m:Z

    .line 2
    .line 3
    return-void
.end method
