.class public abstract Lcom/facebook/datasource/a;
.super Ljava/lang/Object;
.source "BaseDataSubscriber.java"

# interfaces
.implements Lcom/facebook/datasource/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/datasource/d<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/datasource/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public b(Lcom/facebook/datasource/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public c(Lcom/facebook/datasource/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/datasource/a;->e(Lcom/facebook/datasource/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lcom/facebook/datasource/b;->close()Z

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    invoke-interface {p1}, Lcom/facebook/datasource/b;->close()Z

    .line 10
    .line 11
    .line 12
    throw v0
.end method

.method public d(Lcom/facebook/datasource/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/facebook/datasource/b;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/datasource/a;->f(Lcom/facebook/datasource/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/facebook/datasource/b;->close()Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p1}, Lcom/facebook/datasource/b;->close()Z

    .line 18
    .line 19
    .line 20
    :cond_1
    throw v1
.end method

.method protected abstract e(Lcom/facebook/datasource/b;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/b<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method protected abstract f(Lcom/facebook/datasource/b;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/b<",
            "TT;>;)V"
        }
    .end annotation
.end method
