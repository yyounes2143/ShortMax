.class Ly2/b$a;
.super Ljava/lang/Object;
.source "DeferredReleaserConcurrentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ly2/b;


# direct methods
.method constructor <init>(Ly2/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly2/b$a;->a:Ly2/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Ly2/b$a;->a:Ly2/b;

    .line 2
    .line 3
    invoke-static {v0}, Ly2/b;->e(Ly2/b;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Ly2/b$a;->a:Ly2/b;

    .line 9
    .line 10
    invoke-static {v1}, Ly2/b;->g(Ly2/b;)Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Ly2/b$a;->a:Ly2/b;

    .line 15
    .line 16
    invoke-static {v2}, Ly2/b;->f(Ly2/b;)Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-static {v2, v3}, Ly2/b;->i(Ly2/b;Ljava/util/ArrayList;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Ly2/b$a;->a:Ly2/b;

    .line 24
    .line 25
    invoke-static {v2, v1}, Ly2/b;->h(Ly2/b;Ljava/util/ArrayList;)V

    .line 26
    .line 27
    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-object v0, p0, Ly2/b$a;->a:Ly2/b;

    .line 30
    .line 31
    invoke-static {v0}, Ly2/b;->g(Ly2/b;)Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v1, 0x0

    .line 40
    :goto_0
    if-ge v1, v0, :cond_0

    .line 41
    .line 42
    iget-object v2, p0, Ly2/b$a;->a:Ly2/b;

    .line 43
    .line 44
    invoke-static {v2}, Ly2/b;->g(Ly2/b;)Ljava/util/ArrayList;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Ly2/a$a;

    .line 53
    .line 54
    invoke-interface {v2}, Ly2/a$a;->release()V

    .line 55
    .line 56
    .line 57
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Ly2/b$a;->a:Ly2/b;

    .line 61
    .line 62
    invoke-static {v0}, Ly2/b;->g(Ly2/b;)Ljava/util/ArrayList;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception v1

    .line 71
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    throw v1
.end method
