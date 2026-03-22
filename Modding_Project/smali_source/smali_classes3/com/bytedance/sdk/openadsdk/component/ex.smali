.class public Lcom/bytedance/sdk/openadsdk/component/ex;
.super Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;
.source "SourceFile"


# instance fields
.field private final Pfn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private final ba:Ljava/lang/String;

.field private final cFZ:Z

.field private ex:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

.field private jFA:Z

.field private final oJ:Landroid/content/Context;

.field private so:Z

.field private final tB:Lcom/bytedance/sdk/openadsdk/AdSlot;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;ZLcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 2
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/model/cY;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;-><init>()V

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
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ex;->Pfn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ex;->oJ:Landroid/content/Context;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 15
    .line 16
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/component/ex;->cFZ:Z

    .line 17
    .line 18
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Xe;->oJ()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ex;->ba:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/ex;->tB:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 25
    .line 26
    return-void
.end method

.method static synthetic Pfn(Lcom/bytedance/sdk/openadsdk/component/ex;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/ex;->oJ:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/component/ex;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/ex;->ba:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/component/ex;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/ex;)Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/ex;->ex:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/ex;Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;)Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ex;->ex:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

    return-object p1
.end method

.method private oJ()V
    .locals 2

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/ex$1;

    const-string v1, "AppOpenAd_registerMultiProcessListener"

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/component/ex$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/ex;Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->tB(Lcom/bytedance/sdk/component/so/so;I)V

    return-void
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/component/ex;)Lcom/bytedance/sdk/openadsdk/AdSlot;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/ex;->tB:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public getExtraInfo(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zwf()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zwf()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    return-object p1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    const-string v0, "TTAppOpenAdImpl"

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zwf()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/ex;->jFA:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 6
    .line 7
    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/nke;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/ex;->jFA:Z

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setAdInteractionCallback(Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdInteractionCallback;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/Pfn;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/Pfn;-><init>(Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdInteractionListener;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ex;->ex:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/ex;->oJ()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdInteractionListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/Pfn;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/Pfn;-><init>(Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdInteractionListener;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ex;->ex:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/ex;->oJ()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 6

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
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ex;->Pfn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-ne v1, v3, :cond_6

    .line 30
    .line 31
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ex;->oJ:Landroid/content/Context;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;->oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 36
    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    move-object v1, p1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ex;->oJ:Landroid/content/Context;

    .line 43
    .line 44
    :goto_0
    if-nez v1, :cond_3

    .line 45
    .line 46
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    .line 59
    .line 60
    .line 61
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_1

    .line 63
    :catch_0
    const/4 p1, 0x0

    .line 64
    :goto_1
    new-instance v3, Landroid/content/Intent;

    .line 65
    .line 66
    const-class v4, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 67
    .line 68
    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .line 70
    .line 71
    const-string v4, "orientation_angle"

    .line 72
    .line 73
    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/ex;->cFZ:Z

    .line 77
    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    const/4 v2, 0x2

    .line 82
    :goto_2
    const-string p1, "ad_source"

    .line 83
    .line 84
    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_5

    .line 92
    .line 93
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->mf()Lorg/json/JSONObject;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const-string v0, "multi_process_materialmeta"

    .line 104
    .line 105
    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    .line 107
    .line 108
    const-string p1, "multi_process_meta_md5"

    .line 109
    .line 110
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ex;->ba:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/IUZ;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->Pfn()V

    .line 121
    .line 122
    .line 123
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/IUZ;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 128
    .line 129
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    const-string v2, "meta_index"

    .line 134
    .line 135
    invoke-virtual {v3, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    .line 137
    .line 138
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/IUZ;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/ex;->ex:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

    .line 143
    .line 144
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ(Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;)V

    .line 145
    .line 146
    .line 147
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ex;->ex:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

    .line 148
    .line 149
    :goto_3
    const-string p1, "start_show_time"

    .line 150
    .line 151
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 152
    .line 153
    .line 154
    move-result-wide v4

    .line 155
    invoke-virtual {v3, p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 156
    .line 157
    .line 158
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/ex$2;

    .line 159
    .line 160
    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/ex$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/ex;)V

    .line 161
    .line 162
    .line 163
    invoke-static {v1, v3, p1}, Lcom/bytedance/sdk/component/utils/ZYk;->oJ(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/ZYk$ZYk;)V

    .line 164
    .line 165
    .line 166
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->ZYk()Landroid/os/Handler;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/ex$3;

    .line 171
    .line 172
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/ex$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/ex;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 180
    .line 181
    const-string v0, "Cannot be called in a child thread ---- TTAppOpenAdImpl.showAppOpenAd"

    .line 182
    .line 183
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw p1
.end method

.method public win(Ljava/lang/Double;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/ex;->so:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/nke;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/Double;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/ex;->so:Z

    .line 12
    .line 13
    :cond_0
    return-void
.end method
