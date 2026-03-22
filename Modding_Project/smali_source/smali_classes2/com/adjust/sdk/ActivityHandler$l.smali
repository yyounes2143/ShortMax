.class Lcom/adjust/sdk/ActivityHandler$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/ActivityHandler;->queueGetAdidWithTimeout(JLcom/adjust/sdk/OnAdidReadListener;Ljava/util/ArrayList;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/adjust/sdk/AdjustTimeoutCallback;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/AdjustTimeoutCallback;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$l;->a:Lcom/adjust/sdk/AdjustTimeoutCallback;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/adjust/sdk/ActivityHandler$l;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/adjust/sdk/ActivityHandler$l;->c:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$l;->a:Lcom/adjust/sdk/AdjustTimeoutCallback;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/adjust/sdk/AdjustTimeoutCallback;->getOnAdidReadListener()Lcom/adjust/sdk/OnAdidReadListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$l;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler$l;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler$l;->a:Lcom/adjust/sdk/AdjustTimeoutCallback;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    new-instance v0, Landroid/os/Handler;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler$l;->c:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Lcom/adjust/sdk/b1;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/adjust/sdk/b1;-><init>(Lcom/adjust/sdk/ActivityHandler$l;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception v1

    .line 41
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw v1

    .line 43
    :cond_0
    return-void
.end method
