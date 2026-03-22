.class public abstract Lcom/bytedance/sdk/openadsdk/activity/so;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public BTZ:I

.field public PiB:Z

.field protected QSm:Lcom/bytedance/sdk/openadsdk/BTZ/ba;

.field protected RZ:Lcom/bytedance/sdk/openadsdk/IListenerManager;

.field public Ry:Z

.field public WcQ:Z

.field private ZYk:Z

.field public awB:Ljava/lang/String;

.field public dLZ:I

.field public eZI:Ljava/lang/String;

.field protected final jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field protected final kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

.field private oJ:Z

.field public si:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;IIZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->si:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->Ry:Z

    .line 8
    .line 9
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/so$1;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/so$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/so;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->QSm:Lcom/bytedance/sdk/openadsdk/BTZ/ba;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 19
    .line 20
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->dLZ:I

    .line 21
    .line 22
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->BTZ:I

    .line 23
    .line 24
    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->Ry:Z

    .line 25
    .line 26
    return-void
.end method

.method private oJ(Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V
    .locals 10

    .line 6
    new-instance v9, Lcom/bytedance/sdk/openadsdk/activity/so$2;

    const-string v2, "Reward_executeMultiProcessCallback"

    move-object v0, v9

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/bytedance/sdk/openadsdk/activity/so$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/so;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x5

    invoke-static {v9, v0}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->tB(Lcom/bytedance/sdk/component/so/so;I)V

    return-void
.end method

.method private tB(Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/so$3;

    const-string v1, "FullScreen_executeMultiProcessCallback"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/activity/so$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/so;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->tB(Lcom/bytedance/sdk/component/so/so;I)V

    return-void
.end method


# virtual methods
.method public BTZ()V
    .locals 0

    .line 1
    return-void
.end method

.method public HL()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public HyG()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->Pfn()Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected Jm()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->awB()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string v0, "onAdShow"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->ZYk(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->BTZ()V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->eZI()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public abstract Ln()V
.end method

.method public Pfn(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->ZYk:Z

    .line 2
    .line 3
    return-void
.end method

.method public PiB()V
    .locals 0

    .line 1
    return-void
.end method

.method public QSm()V
    .locals 0

    .line 1
    return-void
.end method

.method protected final Qu()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "onAdVideoBarClick"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->ZYk(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->kkU()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public RZ()V
    .locals 0

    .line 1
    return-void
.end method

.method public Rl()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "onAdClose"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->ZYk(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public XAo()V
    .locals 0

    .line 1
    return-void
.end method

.method public Yg()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "tryPreloadVideo scene = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ",index ="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->dLZ:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "Scene"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->rQ()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;->oJ()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 45
    .line 46
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/ZYk;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "material_meta"

    .line 51
    .line 52
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oJ(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BHY()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v2, "ad_slot"

    .line 64
    .line 65
    invoke-virtual {v0, v2, v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oJ(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/so$5;

    .line 69
    .line 70
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/so$5;-><init>(Lcom/bytedance/sdk/openadsdk/activity/so;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/Pfn/oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;Lcom/bykv/vk/openvk/oJ/oJ/oJ/Pfn/oJ$oJ;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final ZYk(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->oJ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->oJ:Z

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/so;->oJ(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V

    return-void
.end method

.method protected ZYk(Ljava/lang/String;)V
    .locals 8

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->a_()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    .line 5
    const-string v7, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/activity/so;->oJ(Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->tB(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract a_()Z
.end method

.method public abstract b_()Ljava/lang/String;
.end method

.method public bgF()Lorg/json/JSONObject;
    .locals 7

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    new-instance v1, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    const-string v2, "oversea_version_type"

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string v2, "sdk_version"

    .line 15
    .line 16
    const-string v4, "7.5.0.4"

    .line 17
    .line 18
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    const-string v2, "media_extra"

    .line 22
    .line 23
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->eZI:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    const-string v2, "play_start_ts"

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v2, "play_end_ts"

    .line 35
    .line 36
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    const-string v2, "user_id"

    .line 40
    .line 41
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->awB:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    const-string v2, "trans_id"

    .line 47
    .line 48
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Xe;->oJ()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    const-string v5, "-"

    .line 53
    .line 54
    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->tb()Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->tb()Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 72
    .line 73
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->tb()J

    .line 74
    .line 75
    .line 76
    move-result-wide v4

    .line 77
    long-to-int v4, v4

    .line 78
    const-string v5, "duration"

    .line 79
    .line 80
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 81
    .line 82
    .line 83
    const-string v4, "reward_name"

    .line 84
    .line 85
    iget-object v5, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 86
    .line 87
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->sH()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    const-string v4, "reward_amount"

    .line 95
    .line 96
    iget-object v5, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 97
    .line 98
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Dex()I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    .line 104
    .line 105
    const-string v4, "network"

    .line 106
    .line 107
    iget-object v5, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Rl:Landroid/content/Context;

    .line 108
    .line 109
    invoke-static {v5}, Lcom/bytedance/sdk/component/utils/Ry;->tB(Landroid/content/Context;)I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 114
    .line 115
    .line 116
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 117
    .line 118
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->DTf()Lorg/json/JSONObject;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    const-string v5, "gaid"

    .line 123
    .line 124
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/ZYk/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/RZ/oJ/ZYk/oJ;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/ZYk/oJ;->ZYk()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    .line 134
    .line 135
    const-string v5, "extra"

    .line 136
    .line 137
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    .line 139
    .line 140
    const-string v4, "video_duration"

    .line 141
    .line 142
    iget-object v5, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 143
    .line 144
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-virtual {v5}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ba()D

    .line 149
    .line 150
    .line 151
    move-result-wide v5

    .line 152
    invoke-virtual {v1, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 153
    .line 154
    .line 155
    const-string v4, "unKnow"

    .line 156
    .line 157
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 158
    .line 159
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oG()I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    const/4 v5, 0x2

    .line 164
    if-ne v2, v5, :cond_0

    .line 165
    .line 166
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ZYk()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    goto :goto_0

    .line 171
    :catchall_0
    move-exception v1

    .line 172
    goto :goto_1

    .line 173
    :cond_0
    if-ne v2, v3, :cond_1

    .line 174
    .line 175
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ex()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    :cond_1
    :goto_0
    const-string v2, "user_agent"

    .line 180
    .line 181
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .line 183
    .line 184
    :cond_2
    return-object v1

    .line 185
    :goto_1
    const-string v2, "Scene"

    .line 186
    .line 187
    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    const/4 v0, 0x0

    .line 191
    return-object v0
.end method

.method public abstract cY()Z
.end method

.method public abstract c_()V
.end method

.method protected cdg()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ba/ZYk;->oJ()Lcom/bytedance/sdk/openadsdk/ba/ZYk;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "videoForceBreak"

    .line 10
    .line 11
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ba/ZYk;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->ex()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public abstract d_()Z
.end method

.method public ex()V
    .locals 0

    .line 1
    return-void
.end method

.method public ex(I)V
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->jFA()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "reward_verify"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->PiB()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->jFA()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "user_has_give_up_reward"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->jFA()Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->tb()Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->tb()Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v1

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ba:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->awB(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Dex()I

    move-result v4

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->sH()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, ""

    const/4 v3, 0x1

    move-object v2, p0

    move v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/activity/so;->oJ(ZILjava/lang/String;ILjava/lang/String;I)V

    return-void

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->bgF()Lorg/json/JSONObject;

    move-result-object v0

    .line 11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->tB()Lcom/bytedance/sdk/openadsdk/core/Id;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/so$4;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/so$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/so;I)V

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/Id;->oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/Id$ZYk;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected abstract jr()Ljava/lang/String;
.end method

.method public lY()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->ZYk:Z

    .line 2
    .line 3
    return v0
.end method

.method public nQI()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->ex(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public nke()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract oJ()Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;
.end method

.method public oJ(Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 2
    return-void
.end method

.method protected abstract oJ(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V
    .locals 0

    .line 3
    return-void
.end method

.method public abstract oJ(Ljava/lang/String;)V
.end method

.method public oJ(Ljava/util/Map;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;FF)V"
        }
    .end annotation

    .line 4
    return-void
.end method

.method protected final oJ(ZILjava/lang/String;ILjava/lang/String;I)V
    .locals 7

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->PiB()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    const-string v1, "onRewardVerify"

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/activity/so;->oJ(Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;ZILjava/lang/String;ILjava/lang/String;)V

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0, p1, p6}, Lcom/bytedance/sdk/openadsdk/component/reward/dLZ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;ZI)V

    return-void
.end method

.method protected oJ(ZZZI)V
    .locals 6

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;ZZZI)V

    return-void
.end method

.method public ofl()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->dLZ:I

    .line 6
    .line 7
    invoke-virtual {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public oq()V
    .locals 0

    .line 1
    return-void
.end method

.method protected final tB(I)Lcom/bytedance/sdk/openadsdk/IListenerManager;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->RZ:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ;->oJ(I)Landroid/os/IBinder;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->RZ:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->RZ:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    return-object p1
.end method

.method public tB()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract tB(Z)V
.end method

.method public abstract tb()Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;
.end method

.method public wd()Lcom/bytedance/sdk/openadsdk/activity/ZYk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 2
    .line 3
    return-object v0
.end method
