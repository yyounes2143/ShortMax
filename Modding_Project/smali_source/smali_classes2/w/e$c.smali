.class final Lw/e$c;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw/e;->c(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lw/c;)Lw/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lw/f;

.field final synthetic b:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lw/c;Lw/f;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lw/e$c;->a:Lw/f;

    .line 2
    .line 3
    iput-object p3, p0, Lw/e$c;->b:Ljava/util/concurrent/Callable;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lw/e$c;->a:Lw/f;

    .line 2
    .line 3
    iget-object v1, p0, Lw/e$c;->b:Ljava/util/concurrent/Callable;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lw/f;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    iget-object v1, p0, Lw/e$c;->a:Lw/f;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lw/f;->c(Ljava/lang/Exception;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_1
    iget-object v0, p0, Lw/e$c;->a:Lw/f;

    .line 21
    .line 22
    invoke-virtual {v0}, Lw/f;->b()V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method
