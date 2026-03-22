.class Lrx/internal/util/ScalarSynchronousObservable$a;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lmu/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/ScalarSynchronousObservable;->h(Lku/f;)Lku/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmu/c<",
        "Lmu/a;",
        "Lku/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lou/a;

.field final synthetic b:Lrx/internal/util/ScalarSynchronousObservable;


# direct methods
.method constructor <init>(Lrx/internal/util/ScalarSynchronousObservable;Lou/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$a;->b:Lrx/internal/util/ScalarSynchronousObservable;

    .line 2
    .line 3
    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousObservable$a;->a:Lou/a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lmu/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$a;->b(Lmu/a;)Lku/j;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public b(Lmu/a;)Lku/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$a;->a:Lou/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lou/a;->b(Lmu/a;)Lku/j;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
