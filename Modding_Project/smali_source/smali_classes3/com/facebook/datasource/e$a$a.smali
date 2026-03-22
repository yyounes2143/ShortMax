.class Lcom/facebook/datasource/e$a$a;
.super Ljava/lang/Object;
.source "FirstAvailableDataSourceSupplier.java"

# interfaces
.implements Lcom/facebook/datasource/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/datasource/e$a;
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
.field final synthetic a:Lcom/facebook/datasource/e$a;


# direct methods
.method private constructor <init>(Lcom/facebook/datasource/e$a;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/facebook/datasource/e$a$a;->a:Lcom/facebook/datasource/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/datasource/e$a;Lcom/facebook/datasource/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/datasource/e$a$a;-><init>(Lcom/facebook/datasource/e$a;)V

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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/datasource/e$a$a;->a:Lcom/facebook/datasource/e$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/datasource/AbstractDataSource;->getProgress()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/facebook/datasource/e$a$a;->a:Lcom/facebook/datasource/e$a;

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/facebook/datasource/b;->getProgress()F

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {v1, p1}, Lcom/facebook/datasource/AbstractDataSource;->q(F)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public c(Lcom/facebook/datasource/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/datasource/e$a$a;->a:Lcom/facebook/datasource/e$a;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/facebook/datasource/e$a;->v(Lcom/facebook/datasource/e$a;Lcom/facebook/datasource/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(Lcom/facebook/datasource/b;)V
    .locals 1
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
    iget-object v0, p0, Lcom/facebook/datasource/e$a$a;->a:Lcom/facebook/datasource/e$a;

    .line 8
    .line 9
    invoke-static {v0, p1}, Lcom/facebook/datasource/e$a;->w(Lcom/facebook/datasource/e$a;Lcom/facebook/datasource/b;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {p1}, Lcom/facebook/datasource/b;->e()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/facebook/datasource/e$a$a;->a:Lcom/facebook/datasource/e$a;

    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/facebook/datasource/e$a;->v(Lcom/facebook/datasource/e$a;Lcom/facebook/datasource/b;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
.end method
