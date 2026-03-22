.class public Lcom/bytedance/bdtracker/t1;
.super Lcom/bytedance/bdtracker/k1;
.source ""


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Lcom/bytedance/bdtracker/r1;

.field public final g:Lcom/bytedance/bdtracker/p1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/bdtracker/p1;Lcom/bytedance/bdtracker/r1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, v0}, Lcom/bytedance/bdtracker/k1;-><init>(ZZ)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/bytedance/bdtracker/t1;->e:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/bytedance/bdtracker/t1;->f:Lcom/bytedance/bdtracker/r1;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/bytedance/bdtracker/t1;->g:Lcom/bytedance/bdtracker/p1;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "DeviceParams"

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/bdtracker/t1;->g:Lcom/bytedance/bdtracker/p1;

    .line 2
    iget-object v1, v0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 3
    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->isOperatorInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "carrier"

    invoke-virtual {v0, v1}, Lcom/bytedance/bdtracker/p1;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/bytedance/bdtracker/t1;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/applog/util/HardwareUtils;->getOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v1, v0}, Lcom/bytedance/bdtracker/r1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/t1;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/applog/util/HardwareUtils;->getOperatorMccMnc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "mcc_mnc"

    invoke-static {p1, v1, v0}, Lcom/bytedance/bdtracker/r1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/t1;->f:Lcom/bytedance/bdtracker/r1;

    .line 5
    iget-object v0, v0, Lcom/bytedance/bdtracker/r1;->h:Lcom/bytedance/bdtracker/r4;

    .line 6
    check-cast v0, Lcom/bytedance/bdtracker/n4;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/n4;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clientudid"

    invoke-static {p1, v1, v0}, Lcom/bytedance/bdtracker/r1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/t1;->f:Lcom/bytedance/bdtracker/r1;

    .line 7
    iget-object v0, v0, Lcom/bytedance/bdtracker/r1;->h:Lcom/bytedance/bdtracker/r4;

    .line 8
    check-cast v0, Lcom/bytedance/bdtracker/n4;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/n4;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openudid"

    invoke-static {p1, v1, v0}, Lcom/bytedance/bdtracker/r1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
