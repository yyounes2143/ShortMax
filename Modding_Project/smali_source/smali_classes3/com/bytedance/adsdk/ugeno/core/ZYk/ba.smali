.class public Lcom/bytedance/adsdk/ugeno/core/ZYk/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/cFZ/jFA$oJ;


# instance fields
.field private Pfn:Lcom/bytedance/adsdk/ugeno/core/PiB;

.field private ZYk:I

.field private ba:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

.field private cFZ:Landroid/os/Handler;

.field private ex:Landroid/content/Context;

.field private oJ:Z

.field private tB:Lcom/bytedance/adsdk/ugeno/core/awB;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/core/PiB;Lcom/bytedance/adsdk/ugeno/ZYk/tB;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/bytedance/adsdk/ugeno/cFZ/jFA;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1, p0}, Lcom/bytedance/adsdk/ugeno/cFZ/jFA;-><init>(Landroid/os/Looper;Lcom/bytedance/adsdk/ugeno/cFZ/jFA$oJ;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/ZYk/ba;->cFZ:Landroid/os/Handler;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/ZYk/ba;->ex:Landroid/content/Context;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/core/ZYk/ba;->Pfn:Lcom/bytedance/adsdk/ugeno/core/PiB;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/bytedance/adsdk/ugeno/core/ZYk/ba;->ba:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public oJ()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/ZYk/ba;->Pfn:Lcom/bytedance/adsdk/ugeno/core/PiB;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/core/PiB;->tB()Lorg/json/JSONObject;

    move-result-object v0

    .line 4
    const-string v1, "interval"

    const-string v2, "8000"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/core/ZYk/ba;->ba:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->BTZ()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/adsdk/ugeno/tB/ZYk;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 6
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/adsdk/ugeno/core/ZYk/ba;->ZYk:I

    .line 7
    const-string v1, "repeat"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/core/ZYk/ba;->oJ:Z

    .line 8
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/ZYk/ba;->cFZ:Landroid/os/Handler;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/core/ZYk/ba;->ZYk:I

    int-to-long v1, v1

    const/16 v3, 0x3e9

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public oJ(Landroid/os/Message;)V
    .locals 3

    .line 9
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/ZYk/ba;->tB:Lcom/bytedance/adsdk/ugeno/core/awB;

    if-eqz p1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/core/ZYk/ba;->Pfn:Lcom/bytedance/adsdk/ugeno/core/PiB;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/core/ZYk/ba;->ba:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    invoke-interface {p1, v1, v2, v2}, Lcom/bytedance/adsdk/ugeno/core/awB;->oJ(Lcom/bytedance/adsdk/ugeno/core/PiB;Lcom/bytedance/adsdk/ugeno/core/awB$ZYk;Lcom/bytedance/adsdk/ugeno/core/awB$oJ;)V

    .line 12
    :cond_1
    iget-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/core/ZYk/ba;->oJ:Z

    if-eqz p1, :cond_2

    .line 13
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/ZYk/ba;->cFZ:Landroid/os/Handler;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/core/ZYk/ba;->ZYk:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/ZYk/ba;->cFZ:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :goto_0
    return-void
.end method

.method public oJ(Lcom/bytedance/adsdk/ugeno/core/awB;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/ZYk/ba;->tB:Lcom/bytedance/adsdk/ugeno/core/awB;

    return-void
.end method
