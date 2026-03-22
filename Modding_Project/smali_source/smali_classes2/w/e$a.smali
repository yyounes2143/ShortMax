.class Lw/e$a;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lw/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw/e;->f(Lw/d;Ljava/util/concurrent/Executor;Lw/c;)Lw/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw/d<",
        "TTResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lw/f;

.field final synthetic b:Lw/d;

.field final synthetic c:Ljava/util/concurrent/Executor;

.field final synthetic d:Lw/e;


# direct methods
.method constructor <init>(Lw/e;Lw/f;Lw/d;Ljava/util/concurrent/Executor;Lw/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw/e$a;->d:Lw/e;

    .line 2
    .line 3
    iput-object p2, p0, Lw/e$a;->a:Lw/f;

    .line 4
    .line 5
    iput-object p3, p0, Lw/e$a;->b:Lw/d;

    .line 6
    .line 7
    iput-object p4, p0, Lw/e$a;->c:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lw/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lw/e$a;->b(Lw/e;)Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Lw/e;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw/e<",
            "TTResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw/e$a;->a:Lw/f;

    .line 2
    .line 3
    iget-object v1, p0, Lw/e$a;->b:Lw/d;

    .line 4
    .line 5
    iget-object v2, p0, Lw/e$a;->c:Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {v0, v1, p1, v2, v3}, Lw/e;->a(Lw/f;Lw/d;Lw/e;Ljava/util/concurrent/Executor;Lw/c;)V

    .line 9
    .line 10
    .line 11
    return-object v3
.end method
