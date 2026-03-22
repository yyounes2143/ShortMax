.class Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$b;
.super Ljava/lang/Object;
.source "AbstractDraweeControllerBuilder.java"

# interfaces
.implements Lk2/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->k(Lf3/a;Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lk2/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk2/k<",
        "Lcom/facebook/datasource/b<",
        "TIMAGE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lf3/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Ljava/lang/Object;

.field final synthetic e:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

.field final synthetic f:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;


# direct methods
.method constructor <init>(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;Lf3/a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$b;->f:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$b;->a:Lf3/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$b;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$b;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$b;->d:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$b;->e:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/datasource/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/b<",
            "TIMAGE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$b;->f:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$b;->a:Lf3/a;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$b;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$b;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$b;->d:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$b;->e:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    .line 12
    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->i(Lf3/a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/datasource/b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$b;->a()Lcom/facebook/datasource/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lk2/f;->b(Ljava/lang/Object;)Lk2/f$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$b;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "request"

    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lk2/f$a;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method
