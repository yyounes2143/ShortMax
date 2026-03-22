.class public final Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;
.super Ljava/lang/Object;
.source "CampaignInfoProperties.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private campaignId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private end:I

.field private langs:Lorg/json/JSONArray;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private link:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private start:I

.field private status:I

.field private title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private utm:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->campaignId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->title:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v1, Lorg/json/JSONArray;

    .line 11
    .line 12
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->langs:Lorg/json/JSONArray;

    .line 16
    .line 17
    iput-object v0, p0, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->link:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final getCampaignId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->campaignId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEnd()I
    .locals 1

    .line 1
    iget v0, p0, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->end:I

    .line 2
    .line 3
    return v0
.end method

.method public final getLangs()Lorg/json/JSONArray;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->langs:Lorg/json/JSONArray;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLink()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->link:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStart()I
    .locals 1

    .line 1
    iget v0, p0, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->start:I

    .line 2
    .line 3
    return v0
.end method

.method public final getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->status:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUtm()I
    .locals 1

    .line 1
    iget v0, p0, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->utm:I

    .line 2
    .line 3
    return v0
.end method

.method public final responseDataToProperties(Lorg/json/JSONObject;)V
    .locals 6
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "link"

    .line 2
    .line 3
    const-string v1, "langs"

    .line 4
    .line 5
    const-string v2, "title"

    .line 6
    .line 7
    const-string v3, "campaign_id"

    .line 8
    .line 9
    const-string v4, "data"

    .line 10
    .line 11
    const-string v5, "responseData"

    .line 12
    .line 13
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-nez v5, :cond_4

    .line 21
    .line 22
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const-string v5, "data.getString(\"campaign_id\")"

    .line 37
    .line 38
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iput-object v3, p0, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->campaignId:Ljava/lang/String;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    :catch_1
    move-exception p1

    .line 47
    goto/16 :goto_2

    .line 48
    .line 49
    :cond_0
    :goto_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const-string v3, "data.getString(\"title\")"

    .line 60
    .line 61
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iput-object v2, p0, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->title:Ljava/lang/String;

    .line 65
    .line 66
    :cond_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_2

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const-string v2, "data.getJSONArray(\"langs\")"

    .line 77
    .line 78
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iput-object v1, p0, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->langs:Lorg/json/JSONArray;

    .line 82
    .line 83
    :cond_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_3

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v1, "data.getString(\"link\")"

    .line 94
    .line 95
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iput-object v0, p0, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->link:Ljava/lang/String;

    .line 99
    .line 100
    :cond_3
    sget-object v0, Lai/turbolink/sdk/utils/TurboLinkUtil;->INSTANCE:Lai/turbolink/sdk/utils/TurboLinkUtil;

    .line 101
    .line 102
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string v1, "start"

    .line 106
    .line 107
    invoke-virtual {v0, p1, v1}, Lai/turbolink/sdk/utils/TurboLinkUtil;->getJsonValueInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    iput v1, p0, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->start:I

    .line 112
    .line 113
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const-string v1, "end"

    .line 117
    .line 118
    invoke-virtual {v0, p1, v1}, Lai/turbolink/sdk/utils/TurboLinkUtil;->getJsonValueInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    iput v1, p0, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->end:I

    .line 123
    .line 124
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const-string v1, "utm"

    .line 128
    .line 129
    invoke-virtual {v0, p1, v1}, Lai/turbolink/sdk/utils/TurboLinkUtil;->getJsonValueInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    iput v1, p0, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->utm:I

    .line 134
    .line 135
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string v1, "status"

    .line 139
    .line 140
    invoke-virtual {v0, p1, v1}, Lai/turbolink/sdk/utils/TurboLinkUtil;->getJsonValueInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    iput p1, p0, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->status:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v1, "parser request returns occurred exception."

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->w(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    goto :goto_3

    .line 172
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string v1, "The parser request returns occurred exception."

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->w(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    :cond_4
    :goto_3
    return-void
.end method

.method public final setCampaignId(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "campaignId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->campaignId:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setEnd(I)Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput p1, p0, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->end:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final setLangs(Lorg/json/JSONArray;)Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;
    .locals 1
    .param p1    # Lorg/json/JSONArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "langs"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->langs:Lorg/json/JSONArray;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setLink(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "link"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->link:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setStart(I)Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput p1, p0, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->start:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final setStatus(I)Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput p1, p0, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->status:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final setTitle(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "title"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->title:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setUtm(I)Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput p1, p0, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->utm:I

    .line 2
    .line 3
    return-object p0
.end method
