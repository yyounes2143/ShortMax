.class public Lcom/facebook/datasource/g;
.super Ljava/lang/Object;
.source "IncreasingQualityDataSourceSupplier.java"

# interfaces
.implements Lk2/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/datasource/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lk2/k<",
        "Lcom/facebook/datasource/b<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk2/k<",
            "Lcom/facebook/datasource/b<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field private final b:Z


# direct methods
.method private constructor <init>(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lk2/k<",
            "Lcom/facebook/datasource/b<",
            "TT;>;>;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    const-string v1, "List of suppliers is empty!"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lk2/h;->c(ZLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/facebook/datasource/g;->a:Ljava/util/List;

    .line 16
    .line 17
    iput-boolean p2, p0, Lcom/facebook/datasource/g;->b:Z

    .line 18
    .line 19
    return-void
.end method

.method static bridge synthetic a(Lcom/facebook/datasource/g;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/datasource/g;->b:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic b(Lcom/facebook/datasource/g;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/datasource/g;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static c(Ljava/util/List;Z)Lcom/facebook/datasource/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lk2/k<",
            "Lcom/facebook/datasource/b<",
            "TT;>;>;>;Z)",
            "Lcom/facebook/datasource/g<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/datasource/g;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/facebook/datasource/g;-><init>(Ljava/util/List;Z)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public d()Lcom/facebook/datasource/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/datasource/g$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/facebook/datasource/g$a;-><init>(Lcom/facebook/datasource/g;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/facebook/datasource/g;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Lcom/facebook/datasource/g;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/facebook/datasource/g;->a:Ljava/util/List;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/facebook/datasource/g;->a:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {v0, p1}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/datasource/g;->d()Lcom/facebook/datasource/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/datasource/g;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
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
    const-string v1, "list"

    .line 6
    .line 7
    iget-object v2, p0, Lcom/facebook/datasource/g;->a:Ljava/util/List;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lk2/f$a;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method
