.class public Lcom/appsflyer/deeplink/DeepLink;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final AFAdRevenueData:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/appsflyer/deeplink/DeepLink;->AFAdRevenueData:Lorg/json/JSONObject;

    .line 5
    .line 6
    return-void
.end method

.method public static getMediationNetwork(Lorg/json/JSONObject;)Lcom/appsflyer/deeplink/DeepLink;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    const-string v0, "custom_params"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Lcom/appsflyer/deeplink/DeepLink;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/appsflyer/deeplink/DeepLink;-><init>(Lorg/json/JSONObject;)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method public static getMonetizationNetwork(Ljava/util/Map;)Lcom/appsflyer/deeplink/DeepLink;
    .locals 99
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/appsflyer/deeplink/DeepLink;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v97, "af_web_id"

    .line 6
    .line 7
    const-string v98, "af_deeplink"

    .line 8
    .line 9
    const-string v1, "install_time"

    .line 10
    .line 11
    const-string v2, "pid"

    .line 12
    .line 13
    const-string v3, "c"

    .line 14
    .line 15
    const-string v4, "af_prt"

    .line 16
    .line 17
    const-string v5, "af_mp"

    .line 18
    .line 19
    const-string v6, "clickid"

    .line 20
    .line 21
    const-string v7, "af_siteid"

    .line 22
    .line 23
    const-string v8, "af_sub_siteid"

    .line 24
    .line 25
    const-string v9, "af_click_lookback"

    .line 26
    .line 27
    const-string v10, "af_viewthrough_lookback"

    .line 28
    .line 29
    const-string v11, "af_keywords"

    .line 30
    .line 31
    const-string v12, "af_cost_model"

    .line 32
    .line 33
    const-string v13, "af_cost_currency"

    .line 34
    .line 35
    const-string v14, "af_cost_value"

    .line 36
    .line 37
    const-string v15, "af_r"

    .line 38
    .line 39
    const-string v16, "af_web_dp"

    .line 40
    .line 41
    const-string v17, "af_force_deeplink"

    .line 42
    .line 43
    const-string v18, "af_ref"

    .line 44
    .line 45
    const-string v19, "is_incentivized"

    .line 46
    .line 47
    const-string v20, "af_param_forwarding"

    .line 48
    .line 49
    const-string v21, "is_retargeting"

    .line 50
    .line 51
    const-string v22, "af_reengagement_window"

    .line 52
    .line 53
    const-string v23, "is_branded_link"

    .line 54
    .line 55
    const-string v24, "is_universal_link"

    .line 56
    .line 57
    const-string v25, "af_generated_clk"

    .line 58
    .line 59
    const-string/jumbo v26, "transaction_id"

    .line 60
    .line 61
    .line 62
    const-string v27, "af_fp_lookback_window"

    .line 63
    .line 64
    const-string v28, "af_vt_fp_lookback_window"

    .line 65
    .line 66
    const-string v29, "af_fp_priority"

    .line 67
    .line 68
    const-string v30, "af_generate_clk"

    .line 69
    .line 70
    const-string v31, "af_inactivity_window"

    .line 71
    .line 72
    const-string v32, "af_ol_red"

    .line 73
    .line 74
    const-string v33, "af_attr"

    .line 75
    .line 76
    const-string v34, "af_ol_lp"

    .line 77
    .line 78
    const-string v35, "af_blank_red"

    .line 79
    .line 80
    const-string v36, "af_source"

    .line 81
    .line 82
    const-string v37, "af_lp_src"

    .line 83
    .line 84
    const-string v38, "af_src_browser"

    .line 85
    .line 86
    const-string v39, "af_tranid"

    .line 87
    .line 88
    const-string v40, "af_wrt_clk"

    .line 89
    .line 90
    const-string v41, "af_ua"

    .line 91
    .line 92
    const-string v42, "af_ip"

    .line 93
    .line 94
    const-string v43, "af_lang"

    .line 95
    .line 96
    const-string v44, "advertising_id"

    .line 97
    .line 98
    const-string v45, "sha1_advertising_id"

    .line 99
    .line 100
    const-string v46, "md5_advertising_id"

    .line 101
    .line 102
    const-string v47, "android_id"

    .line 103
    .line 104
    const-string v48, "sha1_android_id"

    .line 105
    .line 106
    const-string v49, "md5_android_id"

    .line 107
    .line 108
    const-string v50, "imei"

    .line 109
    .line 110
    const-string v51, "sha1_imei"

    .line 111
    .line 112
    const-string v52, "md5_imei"

    .line 113
    .line 114
    const-string v53, "oaid"

    .line 115
    .line 116
    const-string v54, "sha1_oaid"

    .line 117
    .line 118
    const-string v55, "md5_oaid"

    .line 119
    .line 120
    const-string v56, "af_android_url"

    .line 121
    .line 122
    const-string v57, "sha1_el"

    .line 123
    .line 124
    const-string v58, "fire_advertising_id"

    .line 125
    .line 126
    const-string v59, "sha1_fire_advertising_id"

    .line 127
    .line 128
    const-string v60, "idfa"

    .line 129
    .line 130
    const-string v61, "md5_idfa"

    .line 131
    .line 132
    const-string v62, "af_ios_url"

    .line 133
    .line 134
    const-string v63, "af_ios_fallback"

    .line 135
    .line 136
    const-string v64, "sha1_idfa"

    .line 137
    .line 138
    const-string v65, "mac"

    .line 139
    .line 140
    const-string v66, "sha1_mac"

    .line 141
    .line 142
    const-string v67, "af_banner"

    .line 143
    .line 144
    const-string v68, "af_slk_web_endpoint"

    .line 145
    .line 146
    const-string v69, "af_chrome_lp"

    .line 147
    .line 148
    const-string v70, "af_android_custom_url"

    .line 149
    .line 150
    const-string v71, "af_ios_custom_url"

    .line 151
    .line 152
    const-string v72, "af_enc_data"

    .line 153
    .line 154
    const-string v73, "engmnt_source"

    .line 155
    .line 156
    const-string v74, "redirect_response_data"

    .line 157
    .line 158
    const-string v75, "shortlink"

    .line 159
    .line 160
    const-string v76, "advertiserId"

    .line 161
    .line 162
    const-string v77, "sha1_advertiserId"

    .line 163
    .line 164
    const-string v78, "advertiser_id"

    .line 165
    .line 166
    const-string v79, "sha1_advertiser_id"

    .line 167
    .line 168
    const-string v80, "muid"

    .line 169
    .line 170
    const-string v81, "idfv"

    .line 171
    .line 172
    const-string v82, "md5_idfv"

    .line 173
    .line 174
    const-string v83, "sha1_idfv"

    .line 175
    .line 176
    const-string v84, "af_installpostback"

    .line 177
    .line 178
    const-string v85, "http_referrer"

    .line 179
    .line 180
    const-string v86, "af_model"

    .line 181
    .line 182
    const-string v87, "af_os"

    .line 183
    .line 184
    const-string v88, "md5_advertiserId"

    .line 185
    .line 186
    const-string v89, "af_video_total_length"

    .line 187
    .line 188
    const-string v90, "af_video_played_length"

    .line 189
    .line 190
    const-string v91, "af_playable_played_length"

    .line 191
    .line 192
    const-string v92, "af_ad_time_viewed"

    .line 193
    .line 194
    const-string v93, "af_ad_displayed_percent"

    .line 195
    .line 196
    const-string v94, "af_audio_total_length"

    .line 197
    .line 198
    const-string v95, "af_audio_played_length"

    .line 199
    .line 200
    const-string v96, "af_status"

    .line 201
    .line 202
    filled-new-array/range {v1 .. v98}, [Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 211
    .line 212
    .line 213
    new-instance v1, Ljava/util/HashMap;

    .line 214
    .line 215
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_0

    .line 227
    .line 228
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    check-cast v2, Ljava/lang/String;

    .line 233
    .line 234
    move-object/from16 v3, p0

    .line 235
    .line 236
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    check-cast v4, Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v1, v2, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    goto :goto_0

    .line 246
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 247
    .line 248
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 249
    .line 250
    .line 251
    invoke-static {v0}, Lcom/appsflyer/deeplink/DeepLink;->getMediationNetwork(Lorg/json/JSONObject;)Lcom/appsflyer/deeplink/DeepLink;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    return-object v0
.end method


# virtual methods
.method public getAfSub1()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-string v0, "af_sub1"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/appsflyer/deeplink/DeepLink;->AFAdRevenueData:Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    return-object v0
.end method

.method public getAfSub2()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-string v0, "af_sub2"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/appsflyer/deeplink/DeepLink;->AFAdRevenueData:Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    return-object v0
.end method

.method public getAfSub3()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-string v0, "af_sub3"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/appsflyer/deeplink/DeepLink;->AFAdRevenueData:Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    return-object v0
.end method

.method public getAfSub4()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-string v0, "af_sub4"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/appsflyer/deeplink/DeepLink;->AFAdRevenueData:Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    return-object v0
.end method

.method public getAfSub5()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-string v0, "af_sub5"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/appsflyer/deeplink/DeepLink;->AFAdRevenueData:Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    return-object v0
.end method

.method public getCampaign()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-string v0, "campaign"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/appsflyer/deeplink/DeepLink;->AFAdRevenueData:Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    return-object v0
.end method

.method public getCampaignId()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-string v0, "campaign_id"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/appsflyer/deeplink/DeepLink;->AFAdRevenueData:Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    return-object v0
.end method

.method public getClickEvent()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appsflyer/deeplink/DeepLink;->AFAdRevenueData:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClickHttpReferrer()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-string v0, "click_http_referrer"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/appsflyer/deeplink/DeepLink;->AFAdRevenueData:Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    return-object v0
.end method

.method public getDeepLinkValue()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-string v0, "deep_link_value"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/appsflyer/deeplink/DeepLink;->AFAdRevenueData:Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    return-object v0
.end method

.method public getMatchType()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-string v0, "match_type"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/appsflyer/deeplink/DeepLink;->AFAdRevenueData:Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    return-object v0
.end method

.method public getMediaSource()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-string v0, "media_source"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/appsflyer/deeplink/DeepLink;->AFAdRevenueData:Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    return-object v0
.end method

.method public getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/appsflyer/deeplink/DeepLink;->AFAdRevenueData:Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    move-object p1, v1

    .line 13
    :cond_0
    if-nez p1, :cond_1

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public isDeferred()Ljava/lang/Boolean;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-string v0, "is_deferred"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/appsflyer/deeplink/DeepLink;->AFAdRevenueData:Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    .line 15
    .line 16
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appsflyer/deeplink/DeepLink;->AFAdRevenueData:Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
