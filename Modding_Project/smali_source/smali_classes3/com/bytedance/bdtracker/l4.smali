.class public Lcom/bytedance/bdtracker/l4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/bytedance/bdtracker/m4;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/m4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/bdtracker/l4;->a:Lcom/bytedance/bdtracker/m4;

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
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/bdtracker/l4;->a:Lcom/bytedance/bdtracker/m4;

    .line 4
    .line 5
    iget-object v2, v2, Lcom/bytedance/bdtracker/m4;->a:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    const-string v3, "openudid"

    .line 14
    .line 15
    const-string v4, "clientudid"

    .line 16
    .line 17
    const-string v5, "serial_number"

    .line 18
    .line 19
    const-string v6, "sim_serial_number"

    .line 20
    .line 21
    const-string v7, "udid"

    .line 22
    .line 23
    const-string v8, "device_id"

    .line 24
    .line 25
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    move v3, v0

    .line 30
    :goto_1
    const/4 v4, 0x6

    .line 31
    if-ge v3, v4, :cond_0

    .line 32
    .line 33
    aget-object v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 34
    .line 35
    :try_start_1
    iget-object v5, p0, Lcom/bytedance/bdtracker/l4;->a:Lcom/bytedance/bdtracker/m4;

    .line 36
    .line 37
    iget-object v6, v5, Lcom/bytedance/bdtracker/m4;->a:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    check-cast v6, Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v5, v6, v4}, Lcom/bytedance/bdtracker/m4;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :catch_0
    move-exception v4

    .line 50
    :try_start_2
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 51
    .line 52
    .line 53
    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 54
    const-string v6, "DeprecatedFileCleaner execute failed"

    .line 55
    .line 56
    :try_start_3
    new-array v7, v0, [Ljava/lang/Object;

    .line 57
    .line 58
    invoke-interface {v5, v6, v4, v7}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 59
    .line 60
    .line 61
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_1
    :cond_1
    return-void
.end method
