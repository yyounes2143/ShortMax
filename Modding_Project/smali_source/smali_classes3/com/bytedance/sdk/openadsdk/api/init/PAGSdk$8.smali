.class final Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$8;
.super Lcom/bytedance/sdk/component/so/so;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk;->ba(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/InitConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Landroid/content/Context;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/InitConfig;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/InitConfig;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$8;->oJ:Lcom/bytedance/sdk/openadsdk/InitConfig;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$8;->ZYk:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/so/so;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$8;->oJ:Lcom/bytedance/sdk/openadsdk/InitConfig;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/InitConfig;->getData()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->oJ(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$8;->ZYk:Landroid/content/Context;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$8;->oJ:Lcom/bytedance/sdk/openadsdk/InitConfig;

    .line 13
    .line 14
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/InitConfig;->getAppId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/oq/oJ;->oJ(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Id/tB;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/oq/oJ;->oJ()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/si/tB;->oJ()Lcom/bytedance/sdk/openadsdk/si/oJ;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/si/tB;->ZYk()V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/utils/eZI;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/QSm;->oJ()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    mul-int/lit8 v0, v0, 0xa

    .line 40
    .line 41
    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/ba;->oJ(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$8;->ZYk:Landroid/content/Context;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$8;->oJ:Lcom/bytedance/sdk/openadsdk/InitConfig;

    .line 47
    .line 48
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/InitConfig;->isSupportMultiProcess()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/oJ/ex;->oJ(Landroid/content/Context;Z)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/awB;->oJ()Lcom/bytedance/sdk/openadsdk/core/awB;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/awB;->ZYk()V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA/tB;->oJ()V

    .line 63
    .line 64
    .line 65
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$8$1;

    .line 66
    .line 67
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$8$1;-><init>(Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$8;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/cY/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/cY/oJ$oJ;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$8;->ZYk:Landroid/content/Context;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->tB(Landroid/content/Context;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ex:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/jr/ZYk/cFZ;->ZYk()V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->NO()Lorg/json/JSONObject;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ;->oJ(Lorg/json/JSONObject;)V

    .line 93
    .line 94
    .line 95
    const/4 v0, 0x0

    .line 96
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;)V

    .line 101
    .line 102
    .line 103
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->nQI()Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-nez v1, :cond_1

    .line 112
    .line 113
    monitor-enter v0

    .line 114
    :try_start_0
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->nQI()Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-nez v1, :cond_0

    .line 119
    .line 120
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->ZYk()V

    .line 121
    .line 122
    .line 123
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->tb()V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :catchall_0
    move-exception v1

    .line 128
    goto :goto_1

    .line 129
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    goto :goto_2

    .line 131
    :goto_1
    monitor-exit v0

    .line 132
    throw v1

    .line 133
    :cond_1
    :goto_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->dLZ()V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$8;->ZYk:Landroid/content/Context;

    .line 137
    .line 138
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGInitHelper;->maybeAsyncInitTask(Landroid/content/Context;)V

    .line 139
    .line 140
    .line 141
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk;->getBiddingToken()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    const/4 v0, 0x1

    .line 145
    invoke-static {v0}, Lcom/bytedance/sdk/component/so/ba;->oJ(Z)V

    .line 146
    .line 147
    .line 148
    new-instance v0, Lcom/bytedance/sdk/openadsdk/awB/ZYk/oJ;

    .line 149
    .line 150
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/awB/ZYk/oJ;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-static {v0}, Lcom/bytedance/sdk/component/so/ba;->oJ(Lcom/bytedance/sdk/component/so/tB;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$8;->ZYk:Landroid/content/Context;

    .line 157
    .line 158
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->oJ(Landroid/content/Context;)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$8;->ZYk:Landroid/content/Context;

    .line 162
    .line 163
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->dLZ(Landroid/content/Context;)V

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$8;->ZYk:Landroid/content/Context;

    .line 167
    .line 168
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->BTZ(Landroid/content/Context;)V

    .line 169
    .line 170
    .line 171
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/awB/oJ;->oJ()V

    .line 172
    .line 173
    .line 174
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/ex;->oJ()V

    .line 175
    .line 176
    .line 177
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/awB/tB;->ex()V

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$8;->ZYk:Landroid/content/Context;

    .line 181
    .line 182
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->jFA(Landroid/content/Context;)V

    .line 183
    .line 184
    .line 185
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ()V

    .line 186
    .line 187
    .line 188
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk;->ZYk()V

    .line 189
    .line 190
    .line 191
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA/tB;->ZYk()V

    .line 192
    .line 193
    .line 194
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ex/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/ex/oJ;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ex/oJ;->ZYk()V

    .line 199
    .line 200
    .line 201
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->ZYk()Landroid/os/Handler;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-static {v0}, Lcom/bytedance/sdk/component/so/tB/tB;->oJ(Landroid/os/Handler;)V

    .line 206
    .line 207
    .line 208
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$8$2;

    .line 209
    .line 210
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$8$2;-><init>(Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$8;)V

    .line 211
    .line 212
    .line 213
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/ZYk;->oJ(Lcom/bytedance/sdk/component/utils/ZYk$oJ;)V

    .line 214
    .line 215
    .line 216
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->tB()V

    .line 217
    .line 218
    .line 219
    return-void
.end method
