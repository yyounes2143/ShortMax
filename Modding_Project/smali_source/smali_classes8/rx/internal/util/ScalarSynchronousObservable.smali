.class public final Lrx/internal/util/ScalarSynchronousObservable;
.super Lku/c;
.source "ScalarSynchronousObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;,
        Lrx/internal/util/ScalarSynchronousObservable$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lku/c<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final c:Z


# instance fields
.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "rx.just.strong-mode"

    .line 2
    .line 3
    const-string v1, "false"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sput-boolean v0, Lrx/internal/util/ScalarSynchronousObservable;->c:Z

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public h(Lku/f;)Lku/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lku/f;",
            ")",
            "Lku/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lou/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lou/a;

    .line 6
    .line 7
    new-instance v0, Lrx/internal/util/ScalarSynchronousObservable$a;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$a;-><init>(Lrx/internal/util/ScalarSynchronousObservable;Lou/a;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Lrx/internal/util/ScalarSynchronousObservable$b;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$b;-><init>(Lrx/internal/util/ScalarSynchronousObservable;Lku/f;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    new-instance p1, Lrx/internal/util/ScalarSynchronousObservable$c;

    .line 19
    .line 20
    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousObservable;->b:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-direct {p1, v1, v0}, Lrx/internal/util/ScalarSynchronousObservable$c;-><init>(Ljava/lang/Object;Lmu/c;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lku/c;->f(Lku/c$a;)Lku/c;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method
