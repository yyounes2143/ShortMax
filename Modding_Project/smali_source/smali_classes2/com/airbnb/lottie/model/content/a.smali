.class public Lcom/airbnb/lottie/model/content/a;
.super Ljava/lang/Object;
.source "GradientStroke.java"

# interfaces
.implements Lz0/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/airbnb/lottie/model/content/GradientType;

.field private final c:Ly0/c;

.field private final d:Ly0/d;

.field private final e:Ly0/f;

.field private final f:Ly0/f;

.field private final g:Ly0/b;

.field private final h:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

.field private final i:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

.field private final j:F

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly0/b;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ly0/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final m:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Ly0/c;Ly0/d;Ly0/f;Ly0/f;Ly0/b;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FLjava/util/List;Ly0/b;Z)V
    .locals 0
    .param p12    # Ly0/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/content/GradientType;",
            "Ly0/c;",
            "Ly0/d;",
            "Ly0/f;",
            "Ly0/f;",
            "Ly0/b;",
            "Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;",
            "Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;",
            "F",
            "Ljava/util/List<",
            "Ly0/b;",
            ">;",
            "Ly0/b;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/airbnb/lottie/model/content/a;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/airbnb/lottie/model/content/a;->b:Lcom/airbnb/lottie/model/content/GradientType;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/airbnb/lottie/model/content/a;->c:Ly0/c;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/airbnb/lottie/model/content/a;->d:Ly0/d;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/airbnb/lottie/model/content/a;->e:Ly0/f;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/airbnb/lottie/model/content/a;->f:Ly0/f;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/airbnb/lottie/model/content/a;->g:Ly0/b;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/airbnb/lottie/model/content/a;->h:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/airbnb/lottie/model/content/a;->i:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 21
    .line 22
    iput p10, p0, Lcom/airbnb/lottie/model/content/a;->j:F

    .line 23
    .line 24
    iput-object p11, p0, Lcom/airbnb/lottie/model/content/a;->k:Ljava/util/List;

    .line 25
    .line 26
    iput-object p12, p0, Lcom/airbnb/lottie/model/content/a;->l:Ly0/b;

    .line 27
    .line 28
    iput-boolean p13, p0, Lcom/airbnb/lottie/model/content/a;->m:Z

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/i;Lcom/airbnb/lottie/model/layer/a;)Lt0/c;
    .locals 0

    .line 1
    new-instance p2, Lt0/i;

    .line 2
    .line 3
    invoke-direct {p2, p1, p3, p0}, Lt0/i;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/a;)V

    .line 4
    .line 5
    .line 6
    return-object p2
.end method

.method public b()Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->h:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ly0/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->l:Ly0/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Ly0/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->f:Ly0/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Ly0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->c:Ly0/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Lcom/airbnb/lottie/model/content/GradientType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->b:Lcom/airbnb/lottie/model/content/GradientType;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->i:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly0/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->k:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/model/content/a;->j:F

    .line 2
    .line 3
    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Ly0/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->d:Ly0/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public l()Ly0/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->e:Ly0/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Ly0/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->g:Ly0/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/model/content/a;->m:Z

    .line 2
    .line 3
    return v0
.end method
