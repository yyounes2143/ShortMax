.class public Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/ZYk/tB;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final oJ:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/ZYk/ZYk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/ZYk/tB;->oJ:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    return-void
.end method

.method public static declared-synchronized oJ(Landroid/content/Context;Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;Lcom/bykv/vk/openvk/oJ/oJ/oJ/Pfn/oJ$oJ;)V
    .locals 3

    const-class v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/ZYk/tB;

    monitor-enter v0

    if-nez p1, :cond_0

    .line 1
    monitor-exit v0

    return-void

    .line 2
    :cond_0
    :try_start_0
    sget-object v1, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/ZYk/tB;->oJ:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->si()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/ZYk/ZYk;

    if-nez v2, :cond_1

    .line 3
    new-instance v2, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/ZYk/ZYk;

    invoke-direct {v2, p0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/ZYk/ZYk;-><init>(Landroid/content/Context;Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)V

    .line 4
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->si()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->ba()I

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->si()Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {v2, p2}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/ZYk/ZYk;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/Pfn/oJ$oJ;)V

    .line 7
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->ba()I

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->si()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)V
    .locals 3

    const-class v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/ZYk/tB;

    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/ZYk/tB;->oJ:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->si()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/ZYk/ZYk;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/ZYk/ZYk;->oJ(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->ba()I

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->si()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
