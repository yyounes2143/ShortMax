.class Lcom/bytedance/sdk/openadsdk/component/reward/so;
.super Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;
.source "SourceFile"


# instance fields
.field private Pfn:Z

.field private final ZYk:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

.field private final ba:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final cFZ:Ljava/lang/String;

.field private ex:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

.field private jFA:Z

.field private final oJ:Landroid/content/Context;

.field private so:Z

.field private final tB:Lcom/bytedance/sdk/openadsdk/AdSlot;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->ba:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->oJ:Landroid/content/Context;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->tB:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 17
    .line 18
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Xe;->oJ()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->cFZ:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/so;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->cFZ:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/so;)Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->ex:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

    return-object p0
.end method

.method private oJ(I)V
    .locals 2

    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/so$3;

    const-string v1, "Reward_registerMultiProcessListener"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/so$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/so;Ljava/lang/String;I)V

    const/4 p1, 0x5

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->tB(Lcom/bytedance/sdk/component/so/so;I)V

    return-void
.end method

.method private static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn()Z

    move-result p0

    return p0
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ba()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 8
    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->wd()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    return v2

    .line 10
    :cond_3
    :try_start_0
    const-string v1, "rviv_new_arch"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/oq/oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v0

    .line 12
    :cond_4
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v1, v0

    .line 13
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 14
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    .line 15
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LS()I

    move-result v5

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LS(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 16
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->wd()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 17
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LS()I

    move-result v5

    if-ne v5, v4, :cond_6

    return v2

    .line 18
    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LS()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v4, :cond_6

    return v2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    :cond_7
    return v0
.end method


# virtual methods
.method public getExtraInfo(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ba()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ba()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zwf()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ba()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zwf()Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    return-object p1

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    const-string v0, "TTRewardVideoAdImpl"

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    const/4 p1, 0x0

    .line 49
    return-object p1
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ba()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ba()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zwf()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method

.method public loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->jFA:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ba()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/nke;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->jFA:Z

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public oJ()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->ba:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->Pfn:Z

    return-void
.end method

.method public setAdInteractionCallback(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdInteractionCallback;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/jFA;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/jFA;-><init>(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdInteractionCallback;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->ex:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/so;->oJ(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdInteractionListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/jFA;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/jFA;-><init>(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdInteractionListener;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->ex:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/so;->oJ(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 10
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    move-object p1, v0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 12
    .line 13
    if-eqz v1, :cond_e

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->Pfn()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto/16 :goto_6

    .line 22
    .line 23
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ba()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    invoke-static {}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/ZYk/oJ;->oJ()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const-string v2, "fullscreen_interstitial_ad"

    .line 34
    .line 35
    if-eqz v1, :cond_d

    .line 36
    .line 37
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 60
    .line 61
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->oJ:Landroid/content/Context;

    .line 62
    .line 63
    invoke-static {v4, v3}, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;->oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->ba:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    .line 69
    const/4 v3, 0x0

    .line 70
    const/4 v8, 0x1

    .line 71
    invoke-virtual {v1, v3, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_3

    .line 76
    .line 77
    return-void

    .line 78
    :cond_3
    if-eqz v7, :cond_c

    .line 79
    .line 80
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-nez v1, :cond_4

    .line 85
    .line 86
    goto/16 :goto_5

    .line 87
    .line 88
    :cond_4
    if-nez p1, :cond_5

    .line 89
    .line 90
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->oJ:Landroid/content/Context;

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_5
    move-object v1, p1

    .line 94
    :goto_1
    if-nez v1, :cond_6

    .line 95
    .line 96
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    :cond_6
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 101
    .line 102
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/so;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_7

    .line 107
    .line 108
    new-instance v2, Landroid/content/Intent;

    .line 109
    .line 110
    const-class v4, Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;

    .line 111
    .line 112
    invoke-direct {v2, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .line 114
    .line 115
    :goto_2
    move-object v9, v2

    .line 116
    goto :goto_3

    .line 117
    :cond_7
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/component/reward/so;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_8

    .line 122
    .line 123
    new-instance v2, Landroid/content/Intent;

    .line 124
    .line 125
    const-class v4, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;

    .line 126
    .line 127
    invoke-direct {v2, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_8
    new-instance v2, Landroid/content/Intent;

    .line 132
    .line 133
    const-class v4, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    .line 134
    .line 135
    invoke-direct {v2, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :goto_3
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->Pfn:Z

    .line 140
    .line 141
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 142
    .line 143
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->cFZ:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {v9, p1, v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ZYk;->oJ(Landroid/content/Intent;Landroid/app/Activity;ZLcom/bytedance/sdk/openadsdk/core/model/oJ;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->tB:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getMediaExtra()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    const-string v2, "media_extra"

    .line 155
    .line 156
    invoke-virtual {v9, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->tB:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 160
    .line 161
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getUserID()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    const-string v2, "user_id"

    .line 166
    .line 167
    invoke-virtual {v9, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    .line 169
    .line 170
    const-string p1, "start_show_time"

    .line 171
    .line 172
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 173
    .line 174
    .line 175
    move-result-wide v4

    .line 176
    invoke-virtual {v9, p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 177
    .line 178
    .line 179
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-nez p1, :cond_9

    .line 184
    .line 185
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/IUZ;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->ex:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

    .line 190
    .line 191
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ(Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;)V

    .line 192
    .line 193
    .line 194
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->ex:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

    .line 195
    .line 196
    :cond_9
    const-string p1, "start_activity_async"

    .line 197
    .line 198
    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/oq/oJ;->oJ(Ljava/lang/String;I)I

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-ne p1, v8, :cond_a

    .line 203
    .line 204
    move v4, v8

    .line 205
    goto :goto_4

    .line 206
    :cond_a
    move v4, v3

    .line 207
    :goto_4
    if-eqz v4, :cond_b

    .line 208
    .line 209
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/so$1;

    .line 210
    .line 211
    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/so$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/so;)V

    .line 212
    .line 213
    .line 214
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/si/tB;->oJ(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    .line 215
    .line 216
    .line 217
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 218
    .line 219
    .line 220
    move-result-wide v5

    .line 221
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/so$2;

    .line 222
    .line 223
    move-object v2, p1

    .line 224
    move-object v3, p0

    .line 225
    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/component/reward/so$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/so;ZJLcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 226
    .line 227
    .line 228
    invoke-static {v1, v9, p1, v8}, Lcom/bytedance/sdk/component/utils/ZYk;->oJ(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/ZYk$ZYk;Z)Z

    .line 229
    .line 230
    .line 231
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 232
    .line 233
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ba()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->Pfn:Z

    .line 238
    .line 239
    invoke-static {p1, v0, v8}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;ZZ)V

    .line 240
    .line 241
    .line 242
    return-void

    .line 243
    :cond_c
    :goto_5
    const-string p1, "materialMeta error "

    .line 244
    .line 245
    invoke-static {v7, v2, p1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :cond_d
    const-string p1, "showFullScreenVideoAd error2: not main looper"

    .line 250
    .line 251
    invoke-static {v7, v2, p1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 255
    .line 256
    const-string v0, "Cannot be called in a child thread \u2014\u2014 TTRewardVideoAd.showRewardVideoAd"

    .line 257
    .line 258
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    throw p1

    .line 262
    :cond_e
    :goto_6
    return-void
.end method

.method public win(Ljava/lang/Double;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->so:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ba()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/nke;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/Double;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so;->so:Z

    .line 16
    .line 17
    :cond_0
    return-void
.end method
