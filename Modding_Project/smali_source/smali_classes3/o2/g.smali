.class public Lo2/g;
.super Lo2/a;
.source "RefCountCloseableReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo2/a<",
        "TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/common/references/SharedReference;Lo2/a$c;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/SharedReference<",
            "TT;>;",
            "Lo2/a$c;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lo2/a;-><init>(Lcom/facebook/common/references/SharedReference;Lo2/a$c;Ljava/lang/Throwable;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lo2/h;Lo2/a$c;Ljava/lang/Throwable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo2/h<",
            "TT;>;",
            "Lo2/a$c;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lo2/a;-><init>(Ljava/lang/Object;Lo2/h;Lo2/a$c;Ljava/lang/Throwable;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lo2/g;->l()Lo2/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public l()Lo2/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo2/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lo2/a;->u()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lk2/h;->i(Z)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lo2/g;

    .line 9
    .line 10
    iget-object v1, p0, Lo2/a;->b:Lcom/facebook/common/references/SharedReference;

    .line 11
    .line 12
    iget-object v2, p0, Lo2/a;->c:Lo2/a$c;

    .line 13
    .line 14
    iget-object v3, p0, Lo2/a;->d:Ljava/lang/Throwable;

    .line 15
    .line 16
    invoke-direct {v0, v1, v2, v3}, Lo2/g;-><init>(Lcom/facebook/common/references/SharedReference;Lo2/a$c;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method
