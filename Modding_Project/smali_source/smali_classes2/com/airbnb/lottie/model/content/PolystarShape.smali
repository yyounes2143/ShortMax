.class public Lcom/airbnb/lottie/model/content/PolystarShape;
.super Ljava/lang/Object;
.source "PolystarShape.java"

# interfaces
.implements Lz0/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/content/PolystarShape$Type;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

.field private final c:Ly0/b;

.field private final d:Ly0/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly0/o<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ly0/b;

.field private final f:Ly0/b;

.field private final g:Ly0/b;

.field private final h:Ly0/b;

.field private final i:Ly0/b;

.field private final j:Z

.field private final k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/PolystarShape$Type;Ly0/b;Ly0/o;Ly0/b;Ly0/b;Ly0/b;Ly0/b;Ly0/b;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/content/PolystarShape$Type;",
            "Ly0/b;",
            "Ly0/o<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Ly0/b;",
            "Ly0/b;",
            "Ly0/b;",
            "Ly0/b;",
            "Ly0/b;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->b:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->c:Ly0/b;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->d:Ly0/o;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->e:Ly0/b;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->f:Ly0/b;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->g:Ly0/b;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->h:Ly0/b;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->i:Ly0/b;

    .line 21
    .line 22
    iput-boolean p10, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->j:Z

    .line 23
    .line 24
    iput-boolean p11, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->k:Z

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/i;Lcom/airbnb/lottie/model/layer/a;)Lt0/c;
    .locals 0

    .line 1
    new-instance p2, Lt0/n;

    .line 2
    .line 3
    invoke-direct {p2, p1, p3, p0}, Lt0/n;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/PolystarShape;)V

    .line 4
    .line 5
    .line 6
    return-object p2
.end method

.method public b()Ly0/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->f:Ly0/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ly0/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->h:Ly0/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Ly0/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->g:Ly0/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Ly0/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->i:Ly0/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Ly0/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->c:Ly0/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Ly0/o;
    .locals 1
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
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->d:Ly0/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Ly0/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->e:Ly0/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Lcom/airbnb/lottie/model/content/PolystarShape$Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->b:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->k:Z

    .line 2
    .line 3
    return v0
.end method
