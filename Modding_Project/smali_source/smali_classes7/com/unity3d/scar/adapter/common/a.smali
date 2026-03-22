.class public Lcom/unity3d/scar/adapter/common/a;
.super Ljava/lang/Object;
.source "DispatchGroup.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/unity3d/scar/adapter/common/a;->a:I

    .line 6
    .line 7
    return-void
.end method

.method private d()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/unity3d/scar/adapter/common/a;->a:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/a;->b:Ljava/lang/Runnable;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/unity3d/scar/adapter/common/a;->a:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/unity3d/scar/adapter/common/a;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw v0
.end method

.method public declared-synchronized b()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/unity3d/scar/adapter/common/a;->a:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/unity3d/scar/adapter/common/a;->a:I

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/unity3d/scar/adapter/common/a;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw v0
.end method

.method public c(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/unity3d/scar/adapter/common/a;->b:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/unity3d/scar/adapter/common/a;->d()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
