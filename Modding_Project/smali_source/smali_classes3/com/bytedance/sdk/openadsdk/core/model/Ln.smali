.class public Lcom/bytedance/sdk/openadsdk/core/model/Ln;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private BTZ:I

.field private Pfn:Ljava/lang/String;

.field private PiB:I

.field private WcQ:I

.field private ZYk:I

.field private awB:Ljava/lang/String;

.field private ba:Ljava/lang/String;

.field private cFZ:I

.field private dLZ:I

.field private eZI:Ljava/lang/String;

.field private ex:I

.field private jFA:I

.field private kkU:Z

.field private oJ:I

.field private si:Ljava/lang/String;

.field private so:I

.field private tB:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->dLZ:I

    .line 6
    .line 7
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->BTZ:I

    .line 8
    .line 9
    const/16 v1, 0xa

    .line 10
    .line 11
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->PiB:I

    .line 12
    .line 13
    const/16 v2, 0x14

    .line 14
    .line 15
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->WcQ:I

    .line 16
    .line 17
    const-string v3, "Next Ad"

    .line 18
    .line 19
    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->awB:Ljava/lang/String;

    .line 20
    .line 21
    const-string v3, "Next ad in %1$ds"

    .line 22
    .line 23
    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->eZI:Ljava/lang/String;

    .line 24
    .line 25
    const-string v3, "Play Now"

    .line 26
    .line 27
    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->si:Ljava/lang/String;

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    const-string v3, "is_playable"

    .line 33
    .line 34
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB:Z

    .line 39
    .line 40
    const-string v3, "playable_type"

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ex:I

    .line 48
    .line 49
    const-string v3, "playable_style"

    .line 50
    .line 51
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->Pfn:Ljava/lang/String;

    .line 56
    .line 57
    const-string v3, "playable"

    .line 58
    .line 59
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    const-string v3, "playable_url"

    .line 66
    .line 67
    const-string v5, ""

    .line 68
    .line 69
    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ba:Ljava/lang/String;

    .line 74
    .line 75
    const-string v3, "playable_orientation"

    .line 76
    .line 77
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cFZ:I

    .line 82
    .line 83
    const-string v3, "new_style"

    .line 84
    .line 85
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ZYk:I

    .line 90
    .line 91
    const-string v3, "close_2_app"

    .line 92
    .line 93
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->oJ:I

    .line 98
    .line 99
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ex:I

    .line 100
    .line 101
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ZYk(I)I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    const-string v5, "playable_webview_timeout"

    .line 106
    .line 107
    invoke-virtual {p1, v5, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    iput v5, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->so:I

    .line 112
    .line 113
    const-string v5, "playable_js_timeout"

    .line 114
    .line 115
    invoke-virtual {p1, v5, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->jFA:I

    .line 120
    .line 121
    const-string v3, "playable_backup_enable"

    .line 122
    .line 123
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    const/4 v5, 0x1

    .line 128
    if-ne v3, v5, :cond_1

    .line 129
    .line 130
    move v4, v5

    .line 131
    :cond_1
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->kkU:Z

    .line 132
    .line 133
    const-string v3, "wait_tips_time"

    .line 134
    .line 135
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->dLZ:I

    .line 140
    .line 141
    const-string v3, "auto_to_next_time"

    .line 142
    .line 143
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->BTZ:I

    .line 148
    .line 149
    const-string v0, "next_ad_tips_show_time"

    .line 150
    .line 151
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->PiB:I

    .line 156
    .line 157
    const-string v0, "max_show_time"

    .line 158
    .line 159
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->WcQ:I

    .line 164
    .line 165
    const-string v0, "next_ad_in_xs"

    .line 166
    .line 167
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->eZI:Ljava/lang/String;

    .line 172
    .line 173
    const-string v0, "next_ad_text"

    .line 174
    .line 175
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->awB:Ljava/lang/String;

    .line 180
    .line 181
    const-string v0, "play_now_text"

    .line 182
    .line 183
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->si:Ljava/lang/String;

    .line 188
    .line 189
    :cond_2
    return-void
.end method

.method public static BTZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->LpP(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/model/Ln;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ba:Ljava/lang/String;

    .line 10
    .line 11
    return-object p0
.end method

.method public static HL(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->LpP(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/model/Ln;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ZYk()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static IUZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->LpP(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/model/Ln;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static Id(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->LpP(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/model/Ln;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->kkU()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public static Ln(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->LpP(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/model/Ln;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ex()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private static LpP(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/model/Ln;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oTd()Lcom/bytedance/sdk/openadsdk/core/model/Ln;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 3

    .line 2
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->LpP(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/model/Ln;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->wHC()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->PiB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public static PiB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oTd()Lcom/bytedance/sdk/openadsdk/core/model/Ln;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB:Z

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ba:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LS()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/16 v2, 0x14

    .line 29
    .line 30
    if-ne v1, v2, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Oof()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->BTZ()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_3
    return-object v0
.end method

.method public static QSm(Lcom/bytedance/sdk/openadsdk/core/model/cY;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->LpP(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/model/Ln;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x5

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->so()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    int-to-long v0, p0

    .line 15
    return-wide v0
.end method

.method public static RZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)J
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->QSm(Lcom/bytedance/sdk/openadsdk/core/model/cY;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->oq(Lcom/bytedance/sdk/openadsdk/core/model/cY;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public static Ry(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->nke(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public static WcQ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public static Xe(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->LpP(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/model/Ln;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cFZ()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private static ZYk(I)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/16 p0, 0xa

    return p0

    :cond_0
    const/4 p0, 0x5

    return p0
.end method

.method public static ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 2

    .line 3
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->LpP(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/model/Ln;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->PiB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static awB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->QSm()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne p0, v1, :cond_1

    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    return v0
.end method

.method public static ba(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 1

    .line 2
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->nke(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 3

    .line 2
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->LpP(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/model/Ln;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->wHC()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->PiB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public static cY(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->LpP(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/model/Ln;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->oJ()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static dLZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->LpP(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/model/Ln;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->Pfn:Ljava/lang/String;

    .line 10
    .line 11
    return-object p0
.end method

.method public static eZI(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->LpP(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/model/Ln;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cFZ:I

    .line 10
    .line 11
    return p0
.end method

.method public static ex(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 1

    .line 2
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->jFA(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static jFA(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oTd()Lcom/bytedance/sdk/openadsdk/core/model/Ln;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB:Z

    if-eqz v1, :cond_1

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ZYk:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public static jr(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->LpP(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/model/Ln;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->Pfn()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static kkU(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oTd()Lcom/bytedance/sdk/openadsdk/core/model/Ln;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->wHC()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean p0, v0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB:Z

    if-eqz p0, :cond_1

    iget p0, v0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ZYk:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private static nke(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->LpP(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/model/Ln;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ex:I

    .line 10
    .line 11
    return p0
.end method

.method public static oJ(I)I
    .locals 0

    .line 1
    add-int/lit8 p0, p0, 0xa

    return p0
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oTd()Lcom/bytedance/sdk/openadsdk/core/model/Ln;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 4
    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->oJ:I

    if-ltz p0, :cond_2

    const/16 v1, 0x64

    if-le p0, v1, :cond_1

    goto :goto_0

    :cond_1
    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static oq(Lcom/bytedance/sdk/openadsdk/core/model/cY;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->LpP(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/model/Ln;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x5

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->jFA()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    int-to-long v0, p0

    .line 15
    return-wide v0
.end method

.method public static si(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->nke(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 v0, 0x1

    .line 12
    if-ne p0, v0, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public static so(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oTd()Lcom/bytedance/sdk/openadsdk/core/model/Ln;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->wHC()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean p0, v0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB:Z

    if-eqz p0, :cond_1

    iget p0, v0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ZYk:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public static tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 1

    .line 2
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->nke(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static tb(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->LpP(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/model/Ln;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ba()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method


# virtual methods
.method public Pfn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->awB:Ljava/lang/String;

    return-object v0
.end method

.method public ZYk()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->BTZ:I

    return v0
.end method

.method public ba()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->eZI:Ljava/lang/String;

    return-object v0
.end method

.method public cFZ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->si:Ljava/lang/String;

    return-object v0
.end method

.method public ex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->WcQ:I

    return v0
.end method

.method public jFA()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->jFA:I

    return v0
.end method

.method public kkU()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->kkU:Z

    return v0
.end method

.method public oJ()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->dLZ:I

    return v0
.end method

.method public oJ(Lorg/json/JSONObject;)V
    .locals 4

    .line 5
    const-string v0, "PlayableModel"

    :try_start_0
    const-string v1, "is_playable"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ba:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 9
    :try_start_1
    const-string v2, "playable_url"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ba:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    const-string v2, "playable_orientation"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cFZ:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    const-string v2, "new_style"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ZYk:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    const-string v2, "close_2_app"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->oJ:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 13
    const-string v2, "playable_webview_timeout"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->so:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14
    const-string v2, "playable_js_timeout"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->jFA:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 15
    const-string v2, "playable_backup_enable"

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->kkU:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 16
    const-string v2, "wait_tips_time"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->dLZ:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 17
    const-string v2, "auto_to_next_time"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->BTZ:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    const-string v2, "next_ad_tips_show_time"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->PiB:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    const-string v2, "max_show_time"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->WcQ:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    const-string v2, "next_ad_in_xs"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->eZI:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    const-string v2, "play_now_text"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->si:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    const-string v2, "next_ad_text"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->awB:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    const-string v2, "playable"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_0
    :goto_1
    :try_start_2
    const-string v1, "playable_type"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ex:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :goto_2
    :try_start_3
    const-string v1, "playable_style"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->Pfn:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public so()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->so:I

    return v0
.end method

.method public tB()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->PiB:I

    return v0
.end method
