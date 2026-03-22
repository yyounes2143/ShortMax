.class public abstract Lcom/inmobi/media/F8;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lcom/inmobi/media/G8;
    .locals 3

    .line 1
    sget-object v0, Lcom/inmobi/media/G8;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/inmobi/media/G8;->e:Lcom/inmobi/media/G8;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v2, v1, Lcom/inmobi/media/G8;->c:Lcom/inmobi/media/G8;

    .line 9
    .line 10
    sput-object v2, Lcom/inmobi/media/G8;->e:Lcom/inmobi/media/G8;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput-object v2, v1, Lcom/inmobi/media/G8;->c:Lcom/inmobi/media/G8;

    .line 14
    .line 15
    sget v2, Lcom/inmobi/media/G8;->f:I

    .line 16
    .line 17
    add-int/lit8 v2, v2, -0x1

    .line 18
    .line 19
    sput v2, Lcom/inmobi/media/G8;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-object v1

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    monitor-exit v0

    .line 26
    new-instance v0, Lcom/inmobi/media/G8;

    .line 27
    .line 28
    invoke-direct {v0}, Lcom/inmobi/media/G8;-><init>()V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :goto_0
    monitor-exit v0

    .line 33
    throw v1
.end method
