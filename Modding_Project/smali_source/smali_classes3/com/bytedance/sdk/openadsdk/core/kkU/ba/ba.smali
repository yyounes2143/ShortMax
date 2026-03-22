.class public Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;
.super Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;
.source "SourceFile"


# instance fields
.field private HL:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

.field private IUZ:Lcom/bytedance/sdk/openadsdk/core/widget/Pfn;

.field private Ln:Z

.field private tb:Lcom/bytedance/adsdk/ugeno/ZYk/tB;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;ZLcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;ZLcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;Landroid/view/ViewGroup;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;->Ln:Z

    .line 6
    .line 7
    return-void
.end method

.method private BTZ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;->tb:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->tB(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;->HL:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->tB(I)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method private PiB()V
    .locals 4

    .line 1
    new-instance v0, Lcom/bytedance/adsdk/ugeno/core/dLZ;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/adsdk/ugeno/core/dLZ;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ba:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->dLZ()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "image_info"

    .line 18
    .line 19
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ba:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->WcQ()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, "cache_dir"

    .line 29
    .line 30
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/core/dLZ;->oJ(Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ZYk:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/core/dLZ;->oJ(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ex:Lorg/json/JSONObject;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/core/dLZ;->oJ(Lorg/json/JSONObject;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->Xe:Lorg/json/JSONObject;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/core/dLZ;->ZYk(Lorg/json/JSONObject;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->oJ:Lcom/bytedance/adsdk/ugeno/core/BTZ;

    .line 52
    .line 53
    const-string v2, "ad"

    .line 54
    .line 55
    invoke-virtual {v1, v2, v0}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ(Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/core/dLZ;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private ZYk(Ljava/lang/CharSequence;ZIZ)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;->HL:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    instance-of p3, p1, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/ba;

    if-nez p3, :cond_1

    return-void

    :cond_1
    const/4 p3, 0x0

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    goto :goto_0

    :cond_3
    const/16 p3, 0x8

    .line 4
    :goto_0
    invoke-virtual {p1, p3}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->tB(I)V

    return-void
.end method

.method private oJ(Landroid/view/View;)Landroid/content/Context;
    .locals 0

    if-eqz p1, :cond_0

    .line 54
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/ZYk;->oJ(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 55
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ZYk:Landroid/content/Context;

    :cond_1
    return-object p1
.end method

.method private oJ(Ljava/lang/CharSequence;ZIZ)V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;->tb:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    if-nez v0, :cond_0

    return-void

    .line 42
    :cond_0
    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/ZYk;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 43
    :try_start_0
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    const-string v1, "parse duration exception"

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "UGenRender"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v0

    :goto_0
    const/16 v2, 0x8

    if-nez p4, :cond_5

    if-lez v1, :cond_5

    .line 45
    iget-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;->Ln:Z

    if-eqz p4, :cond_2

    goto :goto_1

    .line 46
    :cond_2
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;->tb:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    invoke-virtual {p4, v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->tB(I)V

    if-nez p2, :cond_3

    .line 47
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ba:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->oJ()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ba:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->ex()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/component/adexpress/ex/ba;->ZYk(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 48
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;->tb:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/ZYk;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/ZYk;->dLZ(Ljava/lang/String;)V

    return-void

    .line 49
    :cond_3
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ba:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->ex()Ljava/lang/String;

    move-result-object p2

    const-string p3, "open_ad"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ba:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->oJ()Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;->Ln:Z

    .line 51
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;->tb:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    invoke-virtual {p1, v2}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->tB(I)V

    return-void

    .line 52
    :cond_4
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;->tb:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/ZYk;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/ZYk;->dLZ(Ljava/lang/String;)V

    return-void

    .line 53
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;->tb:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    invoke-virtual {p1, v2}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->tB(I)V

    return-void
.end method


# virtual methods
.method protected ZYk()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ba:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->tB()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public cFZ()Lcom/bytedance/adsdk/ugeno/ZYk/tB;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    const-string v1, "Playable"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public dLZ()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->oJ:Lcom/bytedance/adsdk/ugeno/core/BTZ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    .line 10
    const-string v3, "show"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v3, v2}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method protected ex()I
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;->PiB()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->oJ:Lcom/bytedance/adsdk/ugeno/core/BTZ;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ(Lcom/bytedance/adsdk/ugeno/core/awB;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->oJ:Lcom/bytedance/adsdk/ugeno/core/BTZ;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ(Lcom/bytedance/adsdk/ugeno/core/eZI;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->Pfn:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BWx()Lcom/bytedance/sdk/openadsdk/core/model/Jc;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->Pfn()Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->oJ:Lcom/bytedance/adsdk/ugeno/core/BTZ;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ex:Lorg/json/JSONObject;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->Xe:Lorg/json/JSONObject;

    .line 31
    .line 32
    invoke-virtual {v1, v2, v3, v0}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->oJ:Lcom/bytedance/adsdk/ugeno/core/BTZ;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ex:Lorg/json/JSONObject;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->Xe:Lorg/json/JSONObject;

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 51
    .line 52
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->cY:Ljava/lang/String;

    .line 57
    .line 58
    const-string v1, "rewarded_video"

    .line 59
    .line 60
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 67
    .line 68
    const-string v1, "RVCountdown"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;->tb:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 75
    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 77
    .line 78
    const-string v1, "RVSkipView"

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;->HL:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 88
    .line 89
    const-string v1, "FVCountdown"

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;->tb:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 96
    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 98
    .line 99
    const-string v1, "FVSkipView"

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;->HL:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 106
    .line 107
    :goto_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;->BTZ()V

    .line 108
    .line 109
    .line 110
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ba:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;->Jc()Lcom/bytedance/adsdk/ugeno/core/Ry;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/core/Ry;->ZYk()V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ba:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;->Jc()Lcom/bytedance/adsdk/ugeno/core/Ry;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/core/Ry;->tB()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .line 127
    .line 128
    const/4 v0, 0x0

    .line 129
    return v0

    .line 130
    :catchall_0
    const/16 v0, 0x8d

    .line 131
    .line 132
    return v0

    .line 133
    :catch_0
    const/16 v0, 0x8c

    .line 134
    .line 135
    return v0

    .line 136
    :catch_1
    const/16 v0, 0x8b

    .line 137
    .line 138
    return v0
.end method

.method protected jFA()Lcom/bytedance/adsdk/ugeno/ZYk/tB;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public kkU()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->oJ:Lcom/bytedance/adsdk/ugeno/core/BTZ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    .line 10
    const-string v3, "videoFail"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v3, v2}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method protected oJ()Lorg/json/JSONObject;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ba:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->tB()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    const-string v1, "xTemplate"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public oJ(JJ)V
    .locals 2

    .line 56
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->oJ(JJ)V

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->oJ:Lcom/bytedance/adsdk/ugeno/core/BTZ;

    if-eqz v0, :cond_0

    .line 58
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "videoProgress"

    invoke-virtual {v0, v1, p2, p1}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/ex/ba$oJ;)V
    .locals 14

    move-object v1, p0

    const/4 v0, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x1

    .line 4
    const-string v7, "sendAdExtra"

    const-string v8, "sendLogExtra"

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->so:Lcom/bytedance/sdk/component/adexpress/ZYk/so;

    if-nez v12, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/adsdk/ugeno/ex/ba$oJ;->ZYk()Ljava/lang/String;

    move-result-object v12

    .line 6
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    :goto_0
    move v12, v9

    goto/16 :goto_1

    :sswitch_0
    const-string v13, "dislike"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    goto :goto_0

    :cond_2
    const/16 v12, 0xb

    goto/16 :goto_1

    :sswitch_1
    const-string v13, "speedVideoOrTimer"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    goto :goto_0

    :cond_3
    const/16 v12, 0xa

    goto/16 :goto_1

    :sswitch_2
    const-string v13, "openLinks"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_0

    :cond_4
    const/16 v12, 0x9

    goto/16 :goto_1

    :sswitch_3
    const-string v13, "muteVideo"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_0

    :cond_5
    const/16 v12, 0x8

    goto/16 :goto_1

    :sswitch_4
    const-string v13, "convert"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    goto :goto_0

    :cond_6
    move v12, v0

    goto :goto_1

    :sswitch_5
    const-string v13, "videoControl"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    goto :goto_0

    :cond_7
    move v12, v2

    goto :goto_1

    :sswitch_6
    const-string v13, "openPlayable"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    goto :goto_0

    :cond_8
    move v12, v3

    goto :goto_1

    :sswitch_7
    const-string v13, "skip"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    goto :goto_0

    :cond_9
    move v12, v4

    goto :goto_1

    :sswitch_8
    const-string v13, "pauseVideo"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    goto :goto_0

    :cond_a
    move v12, v5

    goto :goto_1

    :sswitch_9
    const-string v13, "openPrivacy"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    goto :goto_0

    :cond_b
    move v12, v11

    goto :goto_1

    :sswitch_a
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    goto :goto_0

    :cond_c
    move v12, v6

    goto :goto_1

    :sswitch_b
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    goto/16 :goto_0

    :cond_d
    move v12, v10

    :goto_1
    packed-switch v12, :pswitch_data_0

    move v0, v10

    goto/16 :goto_3

    :pswitch_0
    move v0, v5

    goto/16 :goto_3

    .line 7
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onUGenEvent: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/adsdk/ugeno/ex/ba$oJ;->tB()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UGenRender"

    invoke-static {v2, v0}, Lcom/bytedance/sdk/component/utils/QSm;->ZYk(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/adsdk/ugeno/ex/ba$oJ;->tB()Ljava/util/Map;

    move-result-object v0

    const/16 v3, 0xd

    if-eqz v0, :cond_e

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/adsdk/ugeno/ex/ba$oJ;->tB()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 9
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/adsdk/ugeno/ex/ba$oJ;->tB()Ljava/util/Map;

    move-result-object v0

    const-string v4, "switch"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_e
    :goto_2
    :pswitch_2
    move v0, v3

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 10
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 11
    :pswitch_3
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->dLZ()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;->oJ(Landroid/view/View;)Landroid/content/Context;

    move-result-object v3

    .line 12
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ZYk:Landroid/content/Context;

    instance-of v4, v0, Landroid/app/Activity;

    .line 13
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/Pfn;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/Pfn;-><init>()V

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->Pfn:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->cY:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/adsdk/ugeno/ex/ba$oJ;->tB()Ljava/util/Map;

    move-result-object v7

    iget-object v8, v1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;->IUZ:Lcom/bytedance/sdk/openadsdk/core/widget/Pfn;

    invoke-virtual/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/Pfn;->oJ(Landroid/content/Context;ZLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/widget/Pfn;)V

    return-void

    :pswitch_4
    move v0, v11

    goto :goto_3

    .line 14
    :pswitch_5
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->jFA:Lcom/bytedance/sdk/openadsdk/core/so/awB;

    if-eqz v0, :cond_f

    const/4 v2, 0x0

    .line 15
    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/so/awB;->ZYk(Lorg/json/JSONObject;)Z

    :cond_f
    return-void

    :pswitch_6
    move v0, v2

    goto :goto_3

    :pswitch_7
    move v0, v4

    .line 16
    :goto_3
    :pswitch_8
    new-array v2, v11, [I

    .line 17
    new-array v3, v11, [I

    .line 18
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->Id:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_11

    .line 19
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;)[I

    move-result-object v4

    if-eqz v4, :cond_10

    move-object v2, v4

    .line 20
    :cond_10
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->Id:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/view/View;)[I

    move-result-object v4

    if-eqz v4, :cond_11

    move-object v3, v4

    .line 21
    :cond_11
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;-><init>()V

    iget v5, v1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->WcQ:F

    .line 22
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->ex(F)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v4

    iget v5, v1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->awB:F

    .line 23
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->tB(F)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v4

    iget v5, v1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->eZI:F

    .line 24
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->ZYk(F)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v4

    iget v5, v1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->si:F

    .line 25
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->oJ(F)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v4

    iget-wide v7, v1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->Ry:J

    .line 26
    invoke-virtual {v4, v7, v8}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->ZYk(J)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v4

    iget-wide v7, v1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->RZ:J

    .line 27
    invoke-virtual {v4, v7, v8}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->oJ(J)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v4

    .line 28
    invoke-virtual {v4, v9}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->tB(I)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v4

    aget v5, v2, v10

    .line 29
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->ex(I)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v4

    aget v2, v2, v6

    .line 30
    invoke-virtual {v4, v2}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->Pfn(I)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v2

    aget v4, v3, v10

    .line 31
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->ba(I)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v2

    aget v3, v3, v6

    .line 32
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->cFZ(I)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v2

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->jr:Landroid/util/SparseArray;

    .line 33
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->oJ(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v2

    const-string v3, "tap"

    move-object/from16 v4, p2

    .line 34
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-boolean v3, v1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->QSm:Z

    if-eqz v3, :cond_12

    goto :goto_4

    :cond_12
    move v6, v10

    :cond_13
    :goto_4
    invoke-virtual {v2, v6}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->oJ(Z)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v2

    .line 35
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->mu()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v2

    .line 36
    invoke-virtual {v2, v10}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->ZYk(Z)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/model/eZI;

    move-result-object v2

    .line 38
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->so:Lcom/bytedance/sdk/component/adexpress/ZYk/so;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->dLZ()Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4, v0, v2}, Lcom/bytedance/sdk/component/adexpress/ZYk/so;->oJ(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/tB;)V

    return-void

    .line 39
    :pswitch_9
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/cFZ;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/cFZ;-><init>()V

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->Pfn:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->cY:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/adsdk/ugeno/ex/ba$oJ;->tB()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v7, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/cFZ;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 40
    :pswitch_a
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/cFZ;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/cFZ;-><init>()V

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->Pfn:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->cY:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/adsdk/ugeno/ex/ba$oJ;->tB()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v8, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/cFZ;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7039692c -> :sswitch_b
        -0x55ce8afb -> :sswitch_a
        -0x1e7a3222 -> :sswitch_9
        -0x353b7db -> :sswitch_8
        0x35e57f -> :sswitch_7
        0x45206f8 -> :sswitch_6
        0x2ff1f862 -> :sswitch_5
        0x38b81db3 -> :sswitch_4
        0x44a639e2 -> :sswitch_3
        0x5b1a978f -> :sswitch_2
        0x5f92f40e -> :sswitch_1
        0x63a33d25 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/widget/Pfn;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;->IUZ:Lcom/bytedance/sdk/openadsdk/core/widget/Pfn;

    return-void
.end method

.method public setSoundMute(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public setTime(Ljava/lang/CharSequence;IIZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p2, v0, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;->oJ(Ljava/lang/CharSequence;ZIZ)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;->ZYk(Ljava/lang/CharSequence;ZIZ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method protected so()Lcom/bytedance/adsdk/ugeno/ZYk/tB;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    const-string v1, "VideoV3"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
