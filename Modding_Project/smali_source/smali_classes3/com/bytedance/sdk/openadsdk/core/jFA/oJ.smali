.class Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile ZYk:Z

.field private volatile ex:Z

.field private oJ:Lcom/pgl/ssdk/ces/out/PglSSManager;

.field private volatile tB:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->tB:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->ex:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->oJ()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private jFA()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->oJ:Lcom/pgl/ssdk/ces/out/PglSSManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/pgl/ssdk/ces/out/PglSSManager;->getInstance()Lcom/pgl/ssdk/ces/out/PglSSManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->oJ:Lcom/pgl/ssdk/ces/out/PglSSManager;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private kkU()Ljava/lang/Class;
    .locals 2

    .line 1
    :try_start_0
    const-class v0, Lcom/pgl/ssdk/ces/out/PglSSManager;

    .line 2
    .line 3
    sget-object v1, Lcom/pgl/ssdk/ces/out/PglSSManager;->REPORT_SCENE_ADSHOW:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    :try_start_1
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->tB:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    const/4 v0, 0x0

    .line 10
    :catchall_1
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->tB:Z

    .line 12
    .line 13
    :goto_0
    return-object v0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;)Lcom/pgl/ssdk/ces/out/PglSSManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->oJ:Lcom/pgl/ssdk/ces/out/PglSSManager;

    return-object p0
.end method

.method private so()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->ZYk:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->tB:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->oJ()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->ZYk:Z

    .line 13
    .line 14
    return v0
.end method

.method private tB(Ljava/lang/String;)V
    .locals 2

    .line 5
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->ex:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ$4;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->Pfn()Lcom/bytedance/sdk/openadsdk/awB/tB/ZYk;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/awB/tB/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/awB/ZYk;Z)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->ex:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public Pfn()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->so()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->jFA()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->oJ:Lcom/pgl/ssdk/ces/out/PglSSManager;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/pgl/ssdk/ces/out/PglSSManager;->getSofChara()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_1
    return-object v1
.end method

.method public ZYk(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->so()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->jFA()V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->oJ:Lcom/pgl/ssdk/ces/out/PglSSManager;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lcom/pgl/ssdk/ces/out/PglSSManager;->setDeviceId(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public ZYk()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->ZYk:Z

    return v0
.end method

.method public ba()J
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->so()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-wide v1

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->jFA()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->oJ:Lcom/pgl/ssdk/ces/out/PglSSManager;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/pgl/ssdk/ces/out/PglSSManager;->getECForBidding()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    return-wide v0

    .line 22
    :cond_1
    return-wide v1
.end method

.method public cFZ()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->tB:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/pgl/ssdk/ces/out/PglSSManager;->getInitStatus()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x5

    .line 11
    return v0
.end method

.method public ex()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->so()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->jFA()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->oJ:Lcom/pgl/ssdk/ces/out/PglSSManager;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/pgl/ssdk/ces/out/PglSSManager;->getToken()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_1
    return-object v1
.end method

.method public oJ(Ljava/lang/String;[B)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->so()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->oJ:Lcom/pgl/ssdk/ces/out/PglSSManager;

    invoke-virtual {v0, p1, p2}, Lcom/pgl/ssdk/ces/out/PglSSManager;->getFeatureHash(Ljava/lang/String;[B)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 60
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public declared-synchronized oJ()V
    .locals 7

    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->ZYk:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_7

    .line 3
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ex()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    const-string v0, "app_id"

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/jFA;->oJ(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_1
    :try_start_2
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ;->oJ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/ZYk/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/RZ/oJ/ZYk/oJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/ZYk/oJ;->ZYk()Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-static {}, Lcom/pgl/ssdk/ces/out/PglSSConfig;->builder()Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;

    move-result-object v2

    .line 12
    invoke-virtual {v2, v0}, Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;->setAppId(Ljava/lang/String;)Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;

    move-result-object v0

    const/4 v2, 0x2

    .line 13
    invoke-virtual {v0, v2}, Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;->setOVRegionType(I)Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;

    move-result-object v0

    const-string v2, "7.5.0.4"

    .line 14
    invoke-virtual {v0, v2}, Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;->setAdsdkVersion(Ljava/lang/String;)Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;->build()Lcom/pgl/ssdk/ces/out/PglSSConfig;

    move-result-object v2

    .line 16
    const-string v0, "ttopenadsdk"

    const-string v3, "key_ipv6"

    const-string v4, ""

    invoke-static {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/multipro/ex/ex;->ZYk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 19
    const-string v4, "key_ipv6"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->XQY()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 21
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 22
    const-string v4, "fields_allowed"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->Ry()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 25
    const-string v4, "key_transfer_host"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_4
    const-string v0, "target-idc"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v4

    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->JJ()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v0, "sec_config"

    const-string v4, ""

    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/oq/oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 29
    const-string v4, "sec_config"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_5
    invoke-virtual {v2, v3}, Lcom/pgl/ssdk/ces/out/PglSSConfig;->setCustomInfo(Ljava/util/Map;)V

    .line 31
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;)V

    invoke-virtual {v2, v0}, Lcom/pgl/ssdk/ces/out/PglSSConfig;->setCallBack(Lcom/pgl/ssdk/ces/out/PglSSCallBack;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 32
    invoke-static/range {v1 .. v6}, Lcom/pgl/ssdk/ces/out/PglSSManager;->init(Landroid/content/Context;Lcom/pgl/ssdk/ces/out/PglSSConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/pgl/ssdk/ces/out/PglSSManager;

    .line 33
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->jFA()V

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->ZYk:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 35
    :catchall_0
    :try_start_3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->kkU()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->ZYk:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 37
    :goto_0
    :try_start_4
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->tB:Z

    if-eqz v0, :cond_6

    .line 38
    invoke-static {}, Lcom/pgl/ssdk/ces/out/PglSSManager;->getLoadError()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->tB(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 39
    :cond_6
    :goto_1
    monitor-exit p0

    return-void

    .line 40
    :goto_2
    :try_start_5
    const-string v1, "mssdk"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 41
    :cond_7
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method public oJ(Landroid/view/MotionEvent;)V
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->ZYk()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->jFA()V

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->oJ:Lcom/pgl/ssdk/ces/out/PglSSManager;

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {v0, p1}, Lcom/pgl/ssdk/ces/out/PglSSManager;->checkEventVirtual(Landroid/view/MotionEvent;)V

    :cond_1
    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->so()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->jFA()V

    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->oJ:Lcom/pgl/ssdk/ces/out/PglSSManager;

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {v0, p1}, Lcom/pgl/ssdk/ces/out/PglSSManager;->setGaid(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public oJ(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->so()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->jFA()V

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->oJ:Lcom/pgl/ssdk/ces/out/PglSSManager;

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v0, p1, p2}, Lcom/pgl/ssdk/ces/out/PglSSManager;->reportNow(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public oJ(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->so()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->jFA()V

    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->oJ:Lcom/pgl/ssdk/ces/out/PglSSManager;

    if-eqz v0, :cond_1

    .line 49
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->ZYk()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public tB()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->so()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->jFA()V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->oJ:Lcom/pgl/ssdk/ces/out/PglSSManager;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->ZYk()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
