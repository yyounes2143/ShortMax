.class Lcom/bytedance/sdk/openadsdk/component/reward/ba;
.super Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;
.source "SourceFile"


# instance fields
.field private final Pfn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final ZYk:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

.field private ba:Z

.field private final cFZ:Ljava/lang/String;

.field private ex:Z

.field private jFA:Z

.field private final oJ:Landroid/content/Context;

.field private so:Z

.field private tB:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;-><init>()V

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
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->Pfn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->ba:Z

    .line 13
    .line 14
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->oJ:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->ex:Z

    .line 19
    .line 20
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Xe;->oJ()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->cFZ:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/ba;)Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->tB:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;

    .line 2
    .line 3
    return-object p0
.end method

.method private oJ(I)V
    .locals 2

    .line 6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/ba$3;

    const-string v1, "FullScreen_registerMultiProcessListener"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ba$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/ba;Ljava/lang/String;I)V

    const/4 p1, 0x5

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->tB(Lcom/bytedance/sdk/component/so/so;I)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/ba;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->ba:Z

    return p0
.end method

.method private static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn()Z

    move-result p0

    return p0
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/component/reward/ba;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->cFZ:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public getExtraInfo(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

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
    const-string v0, "TTFullScreenVideoAdImpl"

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

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
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->jFA:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

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
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->jFA:Z

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public oJ()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->Pfn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->ex:Z

    return-void
.end method

.method public oJ(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->ba:Z

    return-void
.end method

.method public setAdInteractionCallback(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdInteractionCallback;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/tB/oJ;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/tB/oJ;-><init>(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdInteractionListener;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->tB:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->oJ(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdInteractionListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/tB/oJ;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/tB/oJ;-><init>(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdInteractionListener;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->tB:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->oJ(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 10

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
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 12
    .line 13
    if-eqz v1, :cond_10

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
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ba()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 26
    .line 27
    .line 28
    move-result-object v4

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
    if-eqz v1, :cond_f

    .line 36
    .line 37
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

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
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->oJ:Landroid/content/Context;

    .line 62
    .line 63
    invoke-static {v5, v3}, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;->oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->Pfn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    return-void

    .line 76
    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->Pfn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    .line 78
    const/4 v8, 0x1

    .line 79
    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 80
    .line 81
    .line 82
    if-eqz v4, :cond_e

    .line 83
    .line 84
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-nez v1, :cond_4

    .line 89
    .line 90
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->yB()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-nez v1, :cond_4

    .line 95
    .line 96
    goto/16 :goto_5

    .line 97
    .line 98
    :cond_4
    if-nez p1, :cond_5

    .line 99
    .line 100
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->oJ:Landroid/content/Context;

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    move-object v1, p1

    .line 104
    :goto_1
    if-nez v1, :cond_6

    .line 105
    .line 106
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    :cond_6
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 111
    .line 112
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/so;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_7

    .line 117
    .line 118
    new-instance v2, Landroid/content/Intent;

    .line 119
    .line 120
    const-class v3, Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;

    .line 121
    .line 122
    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .line 124
    .line 125
    :goto_2
    move-object v9, v2

    .line 126
    goto :goto_3

    .line 127
    :cond_7
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-eqz v2, :cond_9

    .line 132
    .line 133
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/so;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_8

    .line 138
    .line 139
    new-instance v2, Landroid/content/Intent;

    .line 140
    .line 141
    const-class v3, Lcom/bytedance/sdk/openadsdk/activity/TTInterstitialExpressActivity;

    .line 142
    .line 143
    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_8
    new-instance v2, Landroid/content/Intent;

    .line 148
    .line 149
    const-class v3, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    .line 150
    .line 151
    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_9
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/so;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_a

    .line 160
    .line 161
    new-instance v2, Landroid/content/Intent;

    .line 162
    .line 163
    const-class v3, Lcom/bytedance/sdk/openadsdk/activity/TTInterstitialActivity;

    .line 164
    .line 165
    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_a
    new-instance v2, Landroid/content/Intent;

    .line 170
    .line 171
    const-class v3, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    .line 172
    .line 173
    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :goto_3
    const-string v2, "start_show_time"

    .line 178
    .line 179
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 180
    .line 181
    .line 182
    move-result-wide v5

    .line 183
    invoke-virtual {v9, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 184
    .line 185
    .line 186
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->ex:Z

    .line 187
    .line 188
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 189
    .line 190
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->cFZ:Ljava/lang/String;

    .line 191
    .line 192
    invoke-static {v9, p1, v2, v3, v5}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ZYk;->oJ(Landroid/content/Intent;Landroid/app/Activity;ZLcom/bytedance/sdk/openadsdk/core/model/oJ;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const-string p1, "is_verity_playable"

    .line 196
    .line 197
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->ba:Z

    .line 198
    .line 199
    invoke-virtual {v9, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 200
    .line 201
    .line 202
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    if-nez p1, :cond_b

    .line 207
    .line 208
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/IUZ;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->tB:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;

    .line 213
    .line 214
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ(Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;)V

    .line 215
    .line 216
    .line 217
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->tB:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;

    .line 218
    .line 219
    :cond_b
    const-string p1, "start_activity_async"

    .line 220
    .line 221
    const/4 v0, 0x0

    .line 222
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/oq/oJ;->oJ(Ljava/lang/String;I)I

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    if-ne p1, v8, :cond_c

    .line 227
    .line 228
    move v5, v8

    .line 229
    goto :goto_4

    .line 230
    :cond_c
    move v5, v0

    .line 231
    :goto_4
    if-eqz v5, :cond_d

    .line 232
    .line 233
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/ba$1;

    .line 234
    .line 235
    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ba$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/ba;)V

    .line 236
    .line 237
    .line 238
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/si/tB;->oJ(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    .line 239
    .line 240
    .line 241
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 242
    .line 243
    .line 244
    move-result-wide v6

    .line 245
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/ba$2;

    .line 246
    .line 247
    move-object v2, p1

    .line 248
    move-object v3, p0

    .line 249
    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/component/reward/ba$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/ba;Lcom/bytedance/sdk/openadsdk/core/model/cY;ZJ)V

    .line 250
    .line 251
    .line 252
    invoke-static {v1, v9, p1, v8}, Lcom/bytedance/sdk/component/utils/ZYk;->oJ(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/ZYk$ZYk;Z)Z

    .line 253
    .line 254
    .line 255
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 256
    .line 257
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ba()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->ex:Z

    .line 262
    .line 263
    invoke-static {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;ZZ)V

    .line 264
    .line 265
    .line 266
    return-void

    .line 267
    :cond_e
    :goto_5
    const-string p1, "materialMeta error "

    .line 268
    .line 269
    invoke-static {v4, v2, p1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    return-void

    .line 273
    :cond_f
    const-string p1, "showFullScreenVideoAd error2: not main looper"

    .line 274
    .line 275
    invoke-static {v4, v2, p1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 279
    .line 280
    const-string v0, "Cannot be called in a child thread \u2014\u2014 TTFullScreenVideoAd.showFullScreenVideoAd"

    .line 281
    .line 282
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    throw p1

    .line 286
    :cond_10
    :goto_6
    return-void
.end method

.method public win(Ljava/lang/Double;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->so:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

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
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->so:Z

    .line 16
    .line 17
    :cond_0
    return-void
.end method
