.class public Lcom/bytedance/bdtracker/o3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final g:Landroid/os/Handler;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lorg/json/JSONObject;

.field public final d:Lcom/bytedance/applog/profile/UserProfileCallback;

.field public final e:Landroid/content/Context;

.field public final f:Lcom/bytedance/bdtracker/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/bytedance/bdtracker/o3;->g:Landroid/os/Handler;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/bdtracker/d;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/applog/profile/UserProfileCallback;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/bdtracker/o3;->f:Lcom/bytedance/bdtracker/d;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/bdtracker/o3;->a:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/bytedance/bdtracker/o3;->b:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/bytedance/bdtracker/o3;->c:Lorg/json/JSONObject;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/bytedance/bdtracker/o3;->d:Lcom/bytedance/applog/profile/UserProfileCallback;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/bytedance/bdtracker/o3;->e:Landroid/content/Context;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/o3;->e:Landroid/content/Context;

    .line 3
    .line 4
    invoke-static {v1}, Lcom/bytedance/bdtracker/t4;->b(Landroid/content/Context;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    sget-object v1, Lcom/bytedance/bdtracker/o3;->g:Landroid/os/Handler;

    .line 11
    .line 12
    new-instance v2, Lcom/bytedance/bdtracker/m3;

    .line 13
    .line 14
    invoke-direct {v2, p0, v0}, Lcom/bytedance/bdtracker/m3;-><init>(Lcom/bytedance/bdtracker/o3;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v1, "Content-Type"

    .line 29
    .line 30
    const-string v2, "application/json"

    .line 31
    .line 32
    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    const-string v1, "X-APIKEY"

    .line 36
    .line 37
    :try_start_1
    iget-object v2, p0, Lcom/bytedance/bdtracker/o3;->b:Ljava/lang/String;

    .line 38
    .line 39
    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/bytedance/bdtracker/o3;->f:Lcom/bytedance/bdtracker/d;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/d;->getNetClient()Lcom/bytedance/applog/network/INetworkClient;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iget-object v4, p0, Lcom/bytedance/bdtracker/o3;->a:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v5, p0, Lcom/bytedance/bdtracker/o3;->c:Lorg/json/JSONObject;

    .line 51
    .line 52
    const/4 v8, 0x0

    .line 53
    const v9, 0xea60

    .line 54
    .line 55
    .line 56
    const/4 v3, 0x1

    .line 57
    const/4 v7, 0x0

    .line 58
    invoke-interface/range {v2 .. v9}, Lcom/bytedance/applog/network/INetworkClient;->execute(BLjava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;BZI)[B

    .line 59
    .line 60
    .line 61
    sget-object v1, Lcom/bytedance/bdtracker/o3;->g:Landroid/os/Handler;

    .line 62
    .line 63
    new-instance v2, Lcom/bytedance/bdtracker/n3;

    .line 64
    .line 65
    invoke-direct {v2, p0}, Lcom/bytedance/bdtracker/n3;-><init>(Lcom/bytedance/bdtracker/o3;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :goto_0
    iget-object v2, p0, Lcom/bytedance/bdtracker/o3;->f:Lcom/bytedance/bdtracker/d;

    .line 73
    .line 74
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 75
    .line 76
    new-array v0, v0, [Ljava/lang/Object;

    .line 77
    .line 78
    const/16 v3, 0x9

    .line 79
    .line 80
    const-string v4, "Report profile failed"

    .line 81
    .line 82
    invoke-interface {v2, v3, v4, v1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    sget-object v0, Lcom/bytedance/bdtracker/o3;->g:Landroid/os/Handler;

    .line 86
    .line 87
    new-instance v1, Lcom/bytedance/bdtracker/m3;

    .line 88
    .line 89
    const/4 v2, 0x1

    .line 90
    invoke-direct {v1, p0, v2}, Lcom/bytedance/bdtracker/m3;-><init>(Lcom/bytedance/bdtracker/o3;I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    .line 95
    .line 96
    :goto_1
    return-void
.end method
