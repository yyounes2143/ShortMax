.class public Lz0/b;
.super Ljava/lang/Object;
.source "CircleShape.java"

# interfaces
.implements Lz0/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ly0/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly0/o<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ly0/f;

.field private final d:Z

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ly0/o;Ly0/f;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ly0/o<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Ly0/f;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz0/b;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lz0/b;->b:Ly0/o;

    .line 7
    .line 8
    iput-object p3, p0, Lz0/b;->c:Ly0/f;

    .line 9
    .line 10
    iput-boolean p4, p0, Lz0/b;->d:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lz0/b;->e:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/i;Lcom/airbnb/lottie/model/layer/a;)Lt0/c;
    .locals 0

    .line 1
    new-instance p2, Lt0/f;

    .line 2
    .line 3
    invoke-direct {p2, p1, p3, p0}, Lt0/f;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Lz0/b;)V

    .line 4
    .line 5
    .line 6
    return-object p2
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lz0/b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ly0/o;
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
    iget-object v0, p0, Lz0/b;->b:Ly0/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Ly0/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lz0/b;->c:Ly0/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lz0/b;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lz0/b;->d:Z

    .line 2
    .line 3
    return v0
.end method
