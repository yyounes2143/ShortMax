.class public Lcom/bytedance/sdk/openadsdk/core/kkU/jFA/oJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/core/awB;
.implements Lcom/bytedance/adsdk/ugeno/core/eZI;


# instance fields
.field private ZYk:Lcom/bytedance/adsdk/ugeno/core/BTZ;

.field private oJ:Landroid/content/Context;

.field private tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/jFA/oJ;->oJ:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method private ZYk(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/kkU/cFZ/ex;)V
    .locals 3

    .line 1
    const-string v0, "ugen render yoga error"

    .line 2
    .line 3
    new-instance v1, Lcom/bytedance/adsdk/ugeno/core/BTZ;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/jFA/oJ;->oJ:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lcom/bytedance/adsdk/ugeno/core/BTZ;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/jFA/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/core/BTZ;

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/kkU/jFA/oJ;->oJ()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/jFA/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/core/BTZ;

    .line 16
    .line 17
    invoke-virtual {v1, p0}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ(Lcom/bytedance/adsdk/ugeno/core/awB;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/jFA/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/core/BTZ;

    .line 21
    .line 22
    invoke-virtual {v1, p0}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ(Lcom/bytedance/adsdk/ugeno/core/eZI;)V

    .line 23
    .line 24
    .line 25
    if-eqz p1, :cond_6

    .line 26
    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/16 v1, 0x8a

    .line 31
    .line 32
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/jFA/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/core/BTZ;

    .line 33
    .line 34
    invoke-virtual {v2, p1, p2, p3}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/jFA/oJ;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    if-eqz p4, :cond_1

    .line 43
    .line 44
    const/16 p1, 0xbb8

    .line 45
    .line 46
    const-string p2, "ugen render fail"

    .line 47
    .line 48
    invoke-interface {p4, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/kkU/cFZ/ex;->oJ(ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void

    .line 52
    :cond_2
    invoke-interface {p4, p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/cFZ/ex;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catchall_0
    if-eqz p4, :cond_3

    .line 57
    .line 58
    const-string p1, "ugen render error"

    .line 59
    .line 60
    invoke-interface {p4, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/cFZ/ex;->oJ(ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    return-void

    .line 64
    :catch_0
    if-eqz p4, :cond_4

    .line 65
    .line 66
    invoke-interface {p4, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/cFZ/ex;->oJ(ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_4
    return-void

    .line 70
    :catch_1
    if-eqz p4, :cond_5

    .line 71
    .line 72
    const/16 p1, 0x8b

    .line 73
    .line 74
    invoke-interface {p4, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/cFZ/ex;->oJ(ILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_5
    return-void

    .line 78
    :cond_6
    :goto_0
    if-eqz p4, :cond_7

    .line 79
    .line 80
    const/16 p1, 0x85

    .line 81
    .line 82
    const-string p2, "template or data is null"

    .line 83
    .line 84
    invoke-interface {p4, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/kkU/cFZ/ex;->oJ(ILjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_7
    return-void
.end method

.method private oJ()V
    .locals 3

    .line 8
    new-instance v0, Lcom/bytedance/adsdk/ugeno/core/dLZ;

    invoke-direct {v0}, Lcom/bytedance/adsdk/ugeno/core/dLZ;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/jFA/oJ;->oJ:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/core/dLZ;->oJ(Landroid/content/Context;)V

    .line 10
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/jFA/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/core/BTZ;

    const-string v2, "page"

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ(Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/core/dLZ;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/kkU/jFA/oJ;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/kkU/cFZ/ex;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/kkU/jFA/oJ;->ZYk(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/kkU/cFZ/ex;)V

    return-void
.end method


# virtual methods
.method public oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/ex/ba$oJ;)V
    .locals 0

    .line 2
    return-void
.end method

.method public oJ(Lcom/bytedance/adsdk/ugeno/core/PiB;Lcom/bytedance/adsdk/ugeno/core/awB$ZYk;Lcom/bytedance/adsdk/ugeno/core/awB$oJ;)V
    .locals 0

    .line 3
    return-void
.end method

.method public oJ(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/kkU/cFZ/ex;)V
    .locals 8

    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/kkU/jFA/oJ;->ZYk(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/kkU/cFZ/ex;)V

    return-void

    .line 7
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/kkU/jFA/oJ$1;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/kkU/jFA/oJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/kkU/jFA/oJ;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/kkU/cFZ/ex;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ(Ljava/lang/Runnable;)V

    return-void
.end method
