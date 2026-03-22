.class Lrx/internal/util/ScalarSynchronousObservable$b$a;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lmu/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/ScalarSynchronousObservable$b;->b(Lmu/a;)Lku/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmu/a;

.field final synthetic b:Lku/f$a;

.field final synthetic c:Lrx/internal/util/ScalarSynchronousObservable$b;


# direct methods
.method constructor <init>(Lrx/internal/util/ScalarSynchronousObservable$b;Lmu/a;Lku/f$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$b$a;->c:Lrx/internal/util/ScalarSynchronousObservable$b;

    .line 2
    .line 3
    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousObservable$b$a;->a:Lmu/a;

    .line 4
    .line 5
    iput-object p3, p0, Lrx/internal/util/ScalarSynchronousObservable$b$a;->b:Lku/f$a;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$b$a;->a:Lmu/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lmu/a;->call()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$b$a;->b:Lku/f$a;

    .line 7
    .line 8
    invoke-interface {v0}, Lku/j;->e()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousObservable$b$a;->b:Lku/f$a;

    .line 14
    .line 15
    invoke-interface {v1}, Lku/j;->e()V

    .line 16
    .line 17
    .line 18
    throw v0
.end method
