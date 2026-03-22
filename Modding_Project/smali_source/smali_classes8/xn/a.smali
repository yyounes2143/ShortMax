.class public interface abstract Lxn/a;
.super Ljava/lang/Object;
.source "ReleasableExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# direct methods
.method public static r(Ljava/util/concurrent/Executor;Lcn/l;)Lxn/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/concurrent/Executor;",
            ">(TT;",
            "Lcn/l<",
            "TT;>;)",
            "Lxn/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lxn/a$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lxn/a$a;-><init>(Ljava/util/concurrent/Executor;Lcn/l;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract release()V
.end method
