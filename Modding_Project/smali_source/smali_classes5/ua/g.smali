.class public Lua/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lva/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lva/e<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lva/e;

    .line 5
    .line 6
    invoke-direct {v0}, Lva/e;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lua/g;->a:Lva/e;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a()Lua/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lua/f<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lua/g;->a:Lva/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lua/g;->a:Lva/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lva/e;->i(Ljava/lang/Exception;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lua/g;->a:Lva/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lva/e;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
