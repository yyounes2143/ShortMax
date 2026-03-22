.class Lcom/facebook/datasource/g$a$a;
.super Ljava/lang/Object;
.source "IncreasingQualityDataSourceSupplier.java"

# interfaces
.implements Lcom/facebook/datasource/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/datasource/g$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/datasource/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/facebook/datasource/g$a;


# direct methods
.method public constructor <init>(Lcom/facebook/datasource/g$a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/datasource/g$a$a;->b:Lcom/facebook/datasource/g$a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/facebook/datasource/g$a$a;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/datasource/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public b(Lcom/facebook/datasource/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/facebook/datasource/g$a$a;->a:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/facebook/datasource/g$a$a;->b:Lcom/facebook/datasource/g$a;

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/facebook/datasource/b;->getProgress()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {v0, p1}, Lcom/facebook/datasource/AbstractDataSource;->q(F)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public c(Lcom/facebook/datasource/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/datasource/g$a$a;->b:Lcom/facebook/datasource/g$a;

    .line 2
    .line 3
    iget v1, p0, Lcom/facebook/datasource/g$a$a;->a:I

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/facebook/datasource/g$a;->v(Lcom/facebook/datasource/g$a;ILcom/facebook/datasource/b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public d(Lcom/facebook/datasource/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/facebook/datasource/b;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/facebook/datasource/g$a$a;->b:Lcom/facebook/datasource/g$a;

    .line 8
    .line 9
    iget v1, p0, Lcom/facebook/datasource/g$a$a;->a:I

    .line 10
    .line 11
    invoke-static {v0, v1, p1}, Lcom/facebook/datasource/g$a;->w(Lcom/facebook/datasource/g$a;ILcom/facebook/datasource/b;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p1}, Lcom/facebook/datasource/b;->e()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/facebook/datasource/g$a$a;->b:Lcom/facebook/datasource/g$a;

    .line 22
    .line 23
    iget v1, p0, Lcom/facebook/datasource/g$a$a;->a:I

    .line 24
    .line 25
    invoke-static {v0, v1, p1}, Lcom/facebook/datasource/g$a;->v(Lcom/facebook/datasource/g$a;ILcom/facebook/datasource/b;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method
