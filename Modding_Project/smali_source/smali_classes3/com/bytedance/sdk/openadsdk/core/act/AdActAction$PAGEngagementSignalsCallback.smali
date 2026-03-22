.class public Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/browser/customtabs/EngagementSignalsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PAGEngagementSignalsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onGreatestScrollPercentageIncreased(ILandroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onSessionEnded(ZLandroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onVerticalScrollEvent(ZLandroid/os/Bundle;)V
    .locals 7
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->oJ(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;J)J

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->oJ(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->ZYk(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_2

    .line 25
    .line 26
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 27
    .line 28
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string p1, "url"

    .line 32
    .line 33
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    .line 34
    .line 35
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->tB(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    const-string p1, "down_time"

    .line 43
    .line 44
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    .line 45
    .line 46
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->ex(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    invoke-virtual {v3, p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    .line 55
    .line 56
    move-result-wide p1

    .line 57
    const-string v0, "up_time"

    .line 58
    .line 59
    invoke-virtual {v3, v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    .line 63
    .line 64
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->oJ(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v1, "landingpage"

    .line 69
    .line 70
    const-string v2, "in_web_click"

    .line 71
    .line 72
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    .line 73
    .line 74
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->ex(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)J

    .line 75
    .line 76
    .line 77
    move-result-wide v4

    .line 78
    sub-long v4, p1, v4

    .line 79
    .line 80
    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception p1

    .line 85
    const-string p2, "AdActAction"

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    .line 95
    .line 96
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Pfn(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    .line 101
    .line 102
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->oJ(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    const/4 p2, 0x1

    .line 115
    if-nez p1, :cond_1

    .line 116
    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 118
    .line 119
    .line 120
    move-result-wide v0

    .line 121
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    .line 122
    .line 123
    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;-><init>()V

    .line 124
    .line 125
    .line 126
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    .line 127
    .line 128
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->ex(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)J

    .line 129
    .line 130
    .line 131
    move-result-wide v2

    .line 132
    invoke-virtual {p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->ZYk(J)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->oJ(J)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/jFA;->oJ()Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_0

    .line 149
    .line 150
    move v0, p2

    .line 151
    goto :goto_1

    .line 152
    :cond_0
    const/4 v0, 0x2

    .line 153
    :goto_1
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->ZYk(I)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    .line 158
    .line 159
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Pfn(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Landroid/content/Context;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->kkU(Landroid/content/Context;)I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->tB(I)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    .line 172
    .line 173
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Pfn(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Landroid/content/Context;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->so(Landroid/content/Context;)F

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->oJ(F)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    .line 186
    .line 187
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Pfn(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Landroid/content/Context;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->jFA(Landroid/content/Context;)F

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->ZYk(F)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/model/BTZ;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    new-instance v5, Ljava/util/HashMap;

    .line 204
    .line 205
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 206
    .line 207
    .line 208
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    .line 209
    .line 210
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->oJ(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    const/4 v4, 0x1

    .line 215
    const/4 v6, 0x2

    .line 216
    const-string v0, "click"

    .line 217
    .line 218
    const-string v3, "landingpage"

    .line 219
    .line 220
    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/model/BTZ;Ljava/lang/String;ZLjava/util/Map;I)V

    .line 221
    .line 222
    .line 223
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    .line 224
    .line 225
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->oJ(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Z)Z

    .line 226
    .line 227
    .line 228
    :cond_2
    return-void
.end method
