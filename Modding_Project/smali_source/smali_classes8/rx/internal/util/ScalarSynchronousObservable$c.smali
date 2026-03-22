.class final Lrx/internal/util/ScalarSynchronousObservable$c;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lku/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/ScalarSynchronousObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lku/c$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final b:Lmu/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmu/c<",
            "Lmu/a;",
            "Lku/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lmu/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lmu/c<",
            "Lmu/a;",
            "Lku/j;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$c;->a:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousObservable$c;->b:Lmu/c;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lku/i;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$c;->b(Lku/i;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lku/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lku/i<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;

    .line 2
    .line 3
    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousObservable$c;->a:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lrx/internal/util/ScalarSynchronousObservable$c;->b:Lmu/c;

    .line 6
    .line 7
    invoke-direct {v0, p1, v1, v2}, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;-><init>(Lku/i;Ljava/lang/Object;Lmu/c;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lku/i;->i(Lku/e;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
