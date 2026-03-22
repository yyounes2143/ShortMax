.class Lnu/a$a;
.super Lku/i;
.source "OnSubscribeSingle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnu/a;->b(Lku/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lku/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private e:Z

.field private f:Z

.field private g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic h:Lku/h;

.field final synthetic i:Lnu/a;


# direct methods
.method constructor <init>(Lnu/a;Lku/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnu/a$a;->i:Lnu/a;

    .line 2
    .line 3
    iput-object p2, p0, Lnu/a$a;->h:Lku/h;

    .line 4
    .line 5
    invoke-direct {p0}, Lku/i;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lnu/a$a;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lnu/a$a;->f:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lnu/a$a;->h:Lku/h;

    .line 11
    .line 12
    iget-object v1, p0, Lnu/a$a;->g:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lku/h;->c(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lnu/a$a;->h:Lku/h;

    .line 19
    .line 20
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 21
    .line 22
    const-string v2, "Observable emitted no items"

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lku/h;->b(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnu/a$a;->f:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lnu/a$a;->e:Z

    .line 7
    .line 8
    iget-object p1, p0, Lnu/a$a;->h:Lku/h;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v1, "Observable emitted too many elements"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lku/h;->b(Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lku/i;->e()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-boolean v1, p0, Lnu/a$a;->f:Z

    .line 25
    .line 26
    iput-object p1, p0, Lnu/a$a;->g:Ljava/lang/Object;

    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x2

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lku/i;->h(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnu/a$a;->h:Lku/h;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lku/h;->b(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lku/i;->e()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
