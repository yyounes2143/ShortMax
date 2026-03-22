.class public Lcom/facebook/imagepipeline/producers/r1;
.super Ljava/lang/Object;
.source "ThumbnailBranchProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/b1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/r1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/b1<",
        "Ly3/k;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:[Lcom/facebook/imagepipeline/producers/s1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/facebook/imagepipeline/producers/s1<",
            "Ly3/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/facebook/imagepipeline/producers/s1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/imagepipeline/producers/s1<",
            "Ly3/k;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lk2/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, [Lcom/facebook/imagepipeline/producers/s1;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/r1;->a:[Lcom/facebook/imagepipeline/producers/s1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    array-length p1, p1

    .line 14
    invoke-static {v0, p1}, Lk2/h;->e(II)I

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method static bridge synthetic c(Lcom/facebook/imagepipeline/producers/r1;ILcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/r1;->e(ILcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private d(ILs3/f;)I
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/r1;->a:[Lcom/facebook/imagepipeline/producers/s1;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-ge p1, v1, :cond_1

    .line 5
    .line 6
    aget-object v0, v0, p1

    .line 7
    .line 8
    invoke-interface {v0, p2}, Lcom/facebook/imagepipeline/producers/s1;->a(Ls3/f;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return p1

    .line 15
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p1, -0x1

    .line 19
    return p1
.end method

.method private e(ILcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/imagepipeline/producers/n<",
            "Ly3/k;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/c1;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Lcom/facebook/imagepipeline/producers/c1;->o()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->s()Ls3/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/producers/r1;->d(ILs3/f;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v0, -0x1

    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return p1

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/r1;->a:[Lcom/facebook/imagepipeline/producers/s1;

    .line 19
    .line 20
    aget-object v0, v0, p1

    .line 21
    .line 22
    new-instance v1, Lcom/facebook/imagepipeline/producers/r1$a;

    .line 23
    .line 24
    invoke-direct {v1, p0, p2, p3, p1}, Lcom/facebook/imagepipeline/producers/r1$a;-><init>(Lcom/facebook/imagepipeline/producers/r1;Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;I)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1, p3}, Lcom/facebook/imagepipeline/producers/b1;->b(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    return p1
.end method


# virtual methods
.method public b(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/n<",
            "Ly3/k;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/c1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/c1;->o()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->s()Ls3/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p1, v2, v1}, Lcom/facebook/imagepipeline/producers/n;->b(Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/imagepipeline/producers/r1;->e(ILcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-nez p2, :cond_1

    .line 23
    .line 24
    invoke-interface {p1, v2, v1}, Lcom/facebook/imagepipeline/producers/n;->b(Ljava/lang/Object;I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method
