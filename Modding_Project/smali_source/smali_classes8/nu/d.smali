.class final Lnu/d;
.super Lku/h;
.source "SingleLiftObservableOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lku/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:Lku/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lku/i<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lku/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lku/i<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lku/h;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnu/d;->b:Lku/i;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnu/d;->b:Lku/i;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lku/d;->onError(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnu/d;->b:Lku/i;

    .line 2
    .line 3
    new-instance v1, Lrx/internal/producers/SingleProducer;

    .line 4
    .line 5
    iget-object v2, p0, Lnu/d;->b:Lku/i;

    .line 6
    .line 7
    invoke-direct {v1, v2, p1}, Lrx/internal/producers/SingleProducer;-><init>(Lku/i;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lku/i;->i(Lku/e;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
