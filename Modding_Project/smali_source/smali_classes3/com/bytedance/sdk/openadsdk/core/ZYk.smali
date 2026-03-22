.class public Lcom/bytedance/sdk/openadsdk/core/ZYk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/ZYk$oJ;
    }
.end annotation


# direct methods
.method private static BTZ(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    return-object v0
.end method

.method private static Pfn(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/FilterWord;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/FilterWord;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/FilterWord;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "id"

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->setId(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v2, "name"

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->setName(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v2, "is_selected"

    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->setIsSelected(Z)V

    .line 35
    .line 36
    .line 37
    const-string v2, "options"

    .line 38
    .line 39
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-lez v2, :cond_2

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-ge v2, v3, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->Pfn(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/FilterWord;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    if-eqz v3, :cond_1

    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/FilterWord;->isValid()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_1

    .line 73
    .line 74
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/FilterWord;->addOption(Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    return-object v1

    .line 81
    :catchall_0
    return-object v0
.end method

.method private static ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I
    .locals 8

    .line 34
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TxP()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->tB(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->GSK()I

    move-result v1

    const/16 v2, 0xc8

    if-nez v1, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TNk()Lcom/bytedance/sdk/openadsdk/core/model/PiB;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/PiB;)I

    move-result v1

    .line 37
    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    move v1, v2

    .line 38
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->sQ()I

    move-result v3

    const/4 v4, 0x2

    const/16 v5, 0x196

    const/16 v6, 0x1a1

    const/16 v7, 0x197

    if-eq v3, v4, :cond_5

    const/4 v4, 0x3

    if-eq v3, v4, :cond_5

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/16 v4, 0x8

    if-eq v3, v4, :cond_5

    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    move-result-object v3

    if-nez v3, :cond_2

    .line 40
    invoke-static {p0, v0, v7}, Lcom/bytedance/sdk/openadsdk/ex/tB;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    move v1, v7

    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->tB()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->oJ()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 42
    invoke-static {p0, v0, v6}, Lcom/bytedance/sdk/openadsdk/ex/tB;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    move v1, v6

    goto :goto_1

    .line 43
    :cond_3
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->tB()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v1, 0x1a0

    .line 44
    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    goto :goto_1

    .line 45
    :cond_4
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->oJ()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v1, 0x198

    .line 46
    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    goto :goto_1

    .line 47
    :cond_5
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->ex(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Oof()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 48
    invoke-static {p0, v0, v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    move v1, v5

    :cond_6
    :goto_1
    if-eq v1, v6, :cond_9

    if-eq v1, v7, :cond_9

    if-ne v1, v5, :cond_7

    goto :goto_2

    :cond_7
    if-eq v1, v2, :cond_8

    .line 49
    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    :cond_8
    return v2

    :cond_9
    :goto_2
    return v1
.end method

.method public static ZYk(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/AdSlot;
    .locals 18

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1
    :cond_0
    const-string v1, "mCodeId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    const-string v3, "mImgAcceptedWidth"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 3
    const-string v5, "mImgAcceptedHeight"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 4
    const-string v6, "mExpressViewAcceptedWidth"

    const-wide/16 v7, 0x0

    invoke-virtual {v0, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    double-to-float v6, v9

    .line 5
    const-string v9, "mExpressViewAcceptedHeight"

    invoke-virtual {v0, v9, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 6
    const-string v8, "mAdCount"

    const/4 v9, 0x6

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 7
    const-string v9, "mSupportDeepLink"

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 8
    const-string v10, "mRewardName"

    invoke-virtual {v0, v10, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 9
    const-string v11, "mRewardAmount"

    invoke-virtual {v0, v11, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 10
    const-string v12, "mMediaExtra"

    invoke-virtual {v0, v12, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 11
    const-string v13, "mUserID"

    invoke-virtual {v0, v13, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 12
    const-string v14, "mOrientation"

    const/4 v15, 0x2

    invoke-virtual {v0, v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 13
    const-string v14, "mNativeAdType"

    invoke-virtual {v0, v14, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    .line 14
    const-string v15, "mIsAutoPlay"

    invoke-virtual {v0, v15, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    move/from16 v16, v15

    .line 15
    const-string v15, "mIsExpressAd"

    invoke-virtual {v0, v15, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 16
    const-string v4, "mBidAdm"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 17
    const-string v4, "mDurationSlotType"

    move-object/from16 v17, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 18
    new-instance v2, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 19
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 20
    invoke-virtual {v1, v3, v5}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 21
    invoke-virtual {v1, v6, v7}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 22
    invoke-virtual {v1, v8}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 23
    invoke-virtual {v1, v9}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 24
    invoke-virtual {v1, v10}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setRewardName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 25
    invoke-virtual {v1, v11}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setRewardAmount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 26
    invoke-virtual {v1, v12}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setMediaExtra(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 27
    invoke-virtual {v1, v13}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 28
    invoke-virtual {v1, v14}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setNativeAdType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    move/from16 v2, v16

    .line 29
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setIsAutoPlay(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 30
    invoke-virtual {v1, v15}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->isExpressAd(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    move-object/from16 v2, v17

    .line 31
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->withBid(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 32
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setDurationSlotType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    return-object v0
.end method

.method private static ba(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/ba;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/ba;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/ba;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "app_name"

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->ZYk(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "package_name"

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->tB(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "download_url"

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->oJ(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v1, "score"

    .line 38
    .line 39
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 40
    .line 41
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->oJ(D)V

    .line 46
    .line 47
    .line 48
    const-string v1, "comment_num"

    .line 49
    .line 50
    const/4 v2, -0x1

    .line 51
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->oJ(I)V

    .line 56
    .line 57
    .line 58
    const-string v1, "app_size"

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->ZYk(I)V

    .line 66
    .line 67
    .line 68
    const-string v1, "app_category"

    .line 69
    .line 70
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->ex(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-object v0
.end method

.method private static cFZ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/oq;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/oq;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/oq;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    const-wide/16 v2, 0x14

    .line 9
    .line 10
    const-wide/16 v4, 0xa

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/model/oq;->oJ(J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/oq;->ZYk(J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/model/oq;->tB(J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/oq;->ex(J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/oq;->oJ(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_0
    const-string v6, "onlylp_loading_maxtime"

    .line 31
    .line 32
    invoke-virtual {p0, v6, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 33
    .line 34
    .line 35
    move-result-wide v6

    .line 36
    invoke-virtual {v0, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/model/oq;->oJ(J)V

    .line 37
    .line 38
    .line 39
    const-string v6, "straight_lp_showtime"

    .line 40
    .line 41
    invoke-virtual {p0, v6, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 42
    .line 43
    .line 44
    move-result-wide v6

    .line 45
    invoke-virtual {v0, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/model/oq;->ZYk(J)V

    .line 46
    .line 47
    .line 48
    const-string v6, "onlyagg_loading_maxtime"

    .line 49
    .line 50
    invoke-virtual {p0, v6, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/model/oq;->tB(J)V

    .line 55
    .line 56
    .line 57
    const-string v4, "straight_agg_showtime"

    .line 58
    .line 59
    invoke-virtual {p0, v4, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/oq;->ex(J)V

    .line 64
    .line 65
    .line 66
    const-string v2, "loading_text"

    .line 67
    .line 68
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/model/oq;->oJ(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-object v0
.end method

.method private static dLZ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/PiB;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/PiB;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/PiB;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "deeplink_url"

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/PiB;->oJ(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "fallback_url"

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/PiB;->ZYk(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "fallback_type"

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/model/PiB;->oJ(I)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method private static ex(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/cFZ;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    const-string v0, "splash_clickarea"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 2
    const-string v1, "splash_layout_id"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 3
    const-string v2, "load_wait_time"

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    move-wide v3, v5

    .line 4
    :goto_0
    const-string v2, "skip_time"

    const/4 v5, -0x1

    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    .line 5
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/model/cFZ;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cFZ;-><init>()V

    .line 6
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cFZ;->ZYk(I)V

    .line 7
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/model/cFZ;->tB(I)V

    .line 8
    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/cFZ;->oJ(J)V

    .line 9
    invoke-virtual {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/model/cFZ;->oJ(I)V

    return-object v2
.end method

.method private static ex(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Br()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->jA()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static jFA(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/so;
    .locals 6

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/so;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/so;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/so;->tB(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/so;->ex(I)V

    .line 13
    .line 14
    .line 15
    new-instance p0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/model/so;->ZYk(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/so;->Pfn(I)V

    .line 24
    .line 25
    .line 26
    new-instance p0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/model/so;->oJ(Ljava/util/List;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/so;->ZYk(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/so;->oJ(I)V

    .line 38
    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_0
    const-string v2, "interceptor_x"

    .line 42
    .line 43
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/model/so;->tB(I)V

    .line 48
    .line 49
    .line 50
    const-string v2, "interceptor_y"

    .line 51
    .line 52
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/model/so;->ex(I)V

    .line 57
    .line 58
    .line 59
    const-string v2, "interceptor_page"

    .line 60
    .line 61
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    new-instance v3, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    move v4, v1

    .line 73
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-ge v4, v5, :cond_1

    .line 78
    .line 79
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optInt(I)I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    add-int/lit8 v4, v4, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/model/so;->ZYk(Ljava/util/List;)V

    .line 94
    .line 95
    .line 96
    const-string v2, "interceptor_interval_time"

    .line 97
    .line 98
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/model/so;->Pfn(I)V

    .line 103
    .line 104
    .line 105
    const-string v2, "url_regular"

    .line 106
    .line 107
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    new-instance v3, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .line 115
    .line 116
    if-eqz v2, :cond_2

    .line 117
    .line 118
    move v4, v1

    .line 119
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-ge v4, v5, :cond_2

    .line 124
    .line 125
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    add-int/lit8 v4, v4, 0x1

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_2
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/model/so;->oJ(Ljava/util/List;)V

    .line 136
    .line 137
    .line 138
    const-string v2, "boc_index"

    .line 139
    .line 140
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/model/so;->ZYk(I)V

    .line 145
    .line 146
    .line 147
    const-string v2, "is_act"

    .line 148
    .line 149
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/model/so;->oJ(I)V

    .line 154
    .line 155
    .line 156
    return-object v0
.end method

.method private static kkU(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/WcQ;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/WcQ;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/WcQ;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "if_send_click"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/model/WcQ;->oJ(I)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method private static oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;Z)I
    .locals 1

    if-nez p0, :cond_0

    const/16 p0, 0x19d

    return p0

    .line 435
    :cond_0
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->dLZ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x19e

    return p0

    :cond_1
    if-nez p1, :cond_2

    .line 436
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->kkU()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x19f

    return p0

    :cond_2
    const/16 p0, 0xc8

    return p0
.end method

.method private static oJ(Lcom/bytedance/sdk/openadsdk/core/model/PiB;)I
    .locals 3

    const/16 v0, 0xc8

    if-nez p0, :cond_0

    return v0

    .line 431
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/PiB;->oJ()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p0, 0x193

    return p0

    .line 432
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/PiB;->ZYk()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 p0, 0x194

    return p0

    .line 433
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/PiB;->tB()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 434
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/PiB;->tB()I

    move-result p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/16 p0, 0x195

    return p0

    :cond_3
    return v0
.end method

.method private static oJ(Lcom/bytedance/sdk/openadsdk/core/model/ba;)I
    .locals 1

    if-nez p0, :cond_0

    const/16 p0, 0x197

    return p0

    .line 437
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->oJ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x198

    return p0

    .line 438
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->tB()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x1a0

    return p0

    :cond_2
    const/16 p0, 0xc8

    return p0
.end method

.method private static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I
    .locals 5

    const/16 v0, 0x191

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 408
    const-string p0, ""

    invoke-static {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    return v0

    .line 409
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TxP()I

    move-result v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->tB(I)Ljava/lang/String;

    move-result-object v2

    .line 410
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    goto/16 :goto_3

    .line 411
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->jA()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 412
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TxP()I

    move-result v3

    if-gez v3, :cond_3

    .line 413
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BHY()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 414
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BHY()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    goto :goto_0

    .line 415
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->qnr()I

    .line 416
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->RQ()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 417
    const-string v2, "fullscreen_interstitial_ad"

    .line 418
    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->OP()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 419
    const-string v3, "load_html_fail"

    invoke-static {p0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return v0

    .line 420
    :cond_5
    const-string v0, "load_html_success"

    invoke-static {p0, v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 421
    :cond_6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->GSK()I

    move-result v0

    if-nez v0, :cond_9

    .line 422
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Dc()I

    move-result v0

    const/4 v1, 0x2

    const/16 v3, 0xc8

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    const/4 v1, 0x5

    if-eq v0, v1, :cond_7

    const/16 v1, 0xf

    if-eq v0, v1, :cond_7

    const/16 v1, 0x10

    if-eq v0, v1, :cond_8

    const/16 v1, 0x32

    if-eq v0, v1, :cond_7

    goto :goto_1

    .line 423
    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Br()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;Z)I

    move-result v0

    if-eq v0, v3, :cond_9

    .line 424
    invoke-static {p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    return v0

    .line 425
    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->yB()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->oJ(Ljava/util/List;)I

    move-result v0

    if-eq v0, v3, :cond_9

    .line 426
    invoke-static {p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    return v0

    .line 427
    :cond_9
    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->SCr()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 428
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I

    move-result p0

    goto :goto_2

    .line 429
    :cond_a
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I

    move-result p0

    :goto_2
    return p0

    :cond_b
    :goto_3
    const/16 v0, 0x192

    .line 430
    invoke-static {p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    return v0
.end method

.method private static oJ(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/Ry;",
            ">;)I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/16 p0, 0x199

    return p0

    .line 439
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    const/16 p0, 0x19a

    return p0

    .line 440
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    if-nez v0, :cond_3

    const/16 p0, 0x19b

    return p0

    .line 441
    :cond_3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0x19c

    return p0

    :cond_4
    const/16 p0, 0xc8

    return p0
.end method

.method private static oJ(Ljava/lang/String;II)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Landroid/util/Pair<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/ZYk$oJ;",
            ">;"
        }
    .end annotation

    .line 345
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    .line 346
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;)I

    move-result p2

    .line 347
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->Pfn(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    move v3, v0

    move v0, p2

    move p2, v3

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    move v0, p2

    .line 348
    :cond_2
    :goto_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ/Pfn;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ/Pfn;-><init>(Landroid/content/Context;II)V

    .line 349
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p0, v1, p2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/ZYk;->oJ(Ljava/lang/String;Ljava/io/File;Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;

    move-result-object p0

    .line 350
    new-instance p2, Landroid/util/Pair;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/ZYk;->ba:Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/ZYk$oJ;

    invoke-direct {p2, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public static oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;)Landroid/util/Pair;
    .locals 16
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/bytedance/sdk/openadsdk/AdSlot;",
            "Lcom/bytedance/sdk/openadsdk/core/model/HL;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/bytedance/sdk/openadsdk/core/model/oJ;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2
    const-string v1, "creatives"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 3
    :cond_0
    :try_start_0
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;-><init>()V

    .line 4
    const-string v4, "request_id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->oJ(Ljava/lang/String;)V

    .line 5
    const-string v4, "ret"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->oJ(I)V

    .line 6
    const-string v4, "multi_ad_style"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ZYk(I)V

    .line 7
    const-string v4, "message"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ZYk(Ljava/lang/String;)V

    .line 8
    const-string v4, "gdid_encrypted"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 9
    const-string v6, "loop_config"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/model/Id;->oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/Id;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/Id;)V

    .line 10
    const-string v6, "auction_price"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->tB()I

    move-result v7

    if-eqz v7, :cond_1

    return-object v2

    .line 12
    :cond_1
    const-string v7, "multi_ad_config"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/model/jr;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/model/jr;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/jr;)V

    .line 13
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 14
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v7, :cond_e

    .line 15
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    .line 16
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->kkU()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 17
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_2
    move-object v9, v2

    :goto_0
    move v10, v5

    .line 18
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_a

    .line 19
    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-static {v11, v13, v14, v3, v10}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;Lcom/bytedance/sdk/openadsdk/core/model/oJ;I)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object v11

    .line 20
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->kkU()Z

    move-result v15

    if-nez v15, :cond_3

    move-object v9, v2

    .line 21
    :cond_3
    invoke-static {v11}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I

    move-result v15

    const/16 v12, 0xc8

    if-eq v15, v12, :cond_8

    if-eqz v11, :cond_4

    .line 22
    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TxP()I

    move-result v12

    invoke-static {v12}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->tB(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v15}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    goto :goto_2

    .line 23
    :cond_4
    const-string v12, ""

    invoke-static {v2, v12, v15}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    .line 24
    :goto_2
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_5

    if-eqz v11, :cond_5

    .line 25
    new-instance v12, Lcom/bytedance/sdk/openadsdk/core/ZYk$oJ;

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->cdg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v2, v15}, Lcom/bytedance/sdk/openadsdk/core/ZYk$oJ;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v11, :cond_7

    .line 26
    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LS()I

    move-result v2

    const/16 v12, 0x27

    if-eq v2, v12, :cond_6

    .line 27
    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LS()I

    move-result v2

    const/16 v11, 0x29

    if-ne v2, v11, :cond_7

    .line 28
    :cond_6
    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ZYk(I)V

    :cond_7
    add-int/lit8 v2, v10, -0x1

    .line 29
    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    move v10, v2

    :goto_3
    const/4 v2, 0x1

    goto :goto_4

    .line 30
    :cond_8
    invoke-virtual {v11, v6}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->WcQ(Ljava/lang/String;)V

    .line 31
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 32
    invoke-virtual {v11, v4}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->jFA(Ljava/lang/String;)V

    .line 33
    :cond_9
    invoke-virtual {v3, v11}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    goto :goto_3

    :goto_4
    add-int/2addr v10, v2

    const/4 v2, 0x0

    goto :goto_1

    .line 34
    :cond_a
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object v2

    .line 35
    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->oJ(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    if-eqz v2, :cond_d

    .line 36
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->kkU()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_b

    .line 37
    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ZYk(I)V

    .line 38
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->so(Z)V

    .line 39
    :cond_b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 40
    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_5
    if-ge v5, v4, :cond_d

    .line 41
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v1, :cond_c

    .line 42
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->UN(Ljava/lang/String;)V

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_d
    if-eqz v9, :cond_e

    .line 43
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 44
    invoke-static {v9}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->oJ(Ljava/util/ArrayList;)V

    .line 45
    :cond_e
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v3, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 46
    :goto_6
    const-string v1, "TTAD.AdInfoFactory"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method private static oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/cY;Z)Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 383
    :cond_0
    new-instance v0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;-><init>()V

    .line 384
    const-string v1, "cover_height"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ZYk(I)V

    .line 385
    const-string v1, "cover_width"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->tB(I)V

    .line 386
    const-string v1, "resolution"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->oJ(Ljava/lang/String;)V

    .line 387
    const-string v1, "size"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->oJ(J)V

    .line 388
    const-string v1, "video_duration"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    .line 389
    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->oJ(D)V

    .line 390
    const-string v3, "replay_time"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-wide/high16 v5, 0x402e000000000000L    # 15.0

    cmpl-double v1, v1, v5

    if-gtz v1, :cond_2

    .line 391
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oIC()I

    move-result v1

    if-eq v1, v4, :cond_2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    .line 392
    :cond_2
    :goto_0
    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->kkU(I)V

    .line 393
    const-string p1, "cover_url"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ZYk(Ljava/lang/String;)V

    .line 394
    const-string p1, "video_url"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->tB(Ljava/lang/String;)V

    .line 395
    const-string p1, "endcard"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ex(Ljava/lang/String;)V

    .line 396
    const-string p1, "playable_download_url"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->Pfn(Ljava/lang/String;)V

    .line 397
    const-string p1, "file_hash"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ba(Ljava/lang/String;)V

    .line 398
    const-string p1, "if_playable_loading_show"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->so(I)V

    .line 399
    const-string p1, "remove_loading_page_type"

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->jFA(I)V

    .line 400
    const-string p1, "fallback_endcard_judge"

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->oJ(I)V

    .line 401
    const-string p1, "video_preload_size"

    const v2, 0x4b000

    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->Pfn(I)V

    .line 402
    const-string p1, "reward_video_cached_type"

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ba(I)V

    .line 403
    const-string p1, "execute_cached_type"

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->cFZ(I)V

    .line 404
    const-string p1, "endcard_render"

    if-eqz p2, :cond_3

    .line 405
    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_1

    :cond_3
    const/4 p2, -0x1

    .line 406
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    .line 407
    :goto_1
    invoke-virtual {v0, p0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ex(I)V

    return-object v0
.end method

.method public static oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 54
    invoke-static {p0, v0, v0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;Lcom/bytedance/sdk/openadsdk/core/model/oJ;I)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object p0

    return-object p0
.end method

.method public static oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;Lcom/bytedance/sdk/openadsdk/core/model/oJ;I)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 16
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    if-nez v1, :cond_0

    return-object v4

    .line 55
    :cond_0
    new-instance v11, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-direct {v11}, Lcom/bytedance/sdk/openadsdk/core/model/cY;-><init>()V

    .line 56
    const-string v5, "interaction_method"

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v3, :cond_2

    .line 57
    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    .line 58
    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->kkU()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 59
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x1e

    if-eq v6, v7, :cond_3

    const/16 v7, 0x27

    if-eq v6, v7, :cond_3

    const/16 v7, 0x28

    if-eq v6, v7, :cond_3

    const/16 v7, 0x29

    if-eq v6, v7, :cond_3

    const/16 v7, 0x2b

    if-eq v6, v7, :cond_3

    const/16 v7, 0x2c

    if-ne v6, v7, :cond_1

    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {v3, v13}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ZYk(I)V

    .line 61
    invoke-virtual {v11, v13}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->so(Z)V

    :cond_2
    :goto_0
    move/from16 v3, p4

    goto :goto_2

    .line 62
    :cond_3
    :goto_1
    invoke-virtual {v11, v12}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->so(Z)V

    goto :goto_0

    .line 63
    :goto_2
    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(I)V

    .line 64
    invoke-static {v1, v11}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 65
    const-string v3, "multi_ad_scene"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 66
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/model/Xe;->oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/Xe;

    move-result-object v3

    .line 67
    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/Xe;)V

    .line 68
    :cond_4
    const-string v3, "raw_response_info"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 69
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->UN(Ljava/lang/String;)V

    .line 70
    :cond_5
    const-string v3, "proportion_watching"

    const/4 v6, -0x1

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->kkU(I)V

    .line 71
    const-string v3, "mate_disable_cache"

    invoke-virtual {v1, v3, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PiB(Z)V

    .line 72
    const-string v3, "interaction_type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tb(I)V

    .line 73
    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB:Ljava/lang/String;

    invoke-virtual {v1, v3, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Xe(I)V

    .line 74
    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ZYk:Ljava/lang/String;

    invoke-virtual {v1, v3, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->HL(I)V

    .line 75
    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ex:Ljava/lang/String;

    invoke-virtual {v1, v3, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->IUZ(I)V

    .line 76
    const-string v3, "target_url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Ry(Ljava/lang/String;)V

    .line 77
    const-string v3, "ad_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->cY(Ljava/lang/String;)V

    .line 78
    const-string v3, "app_log_url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->jr(Ljava/lang/String;)V

    .line 79
    const-string v3, "settings_url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Xe(Ljava/lang/String;)V

    .line 80
    const-string v3, "source"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->eZI(Ljava/lang/String;)V

    .line 81
    const-string v3, "app_name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->si(Ljava/lang/String;)V

    .line 82
    const-string v3, "dislike_control"

    invoke-virtual {v1, v3, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Jc(I)V

    .line 83
    const-string v3, "play_bar_show_time"

    const/16 v7, -0xc8

    invoke-virtual {v1, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->QSm(I)V

    .line 84
    const-string v3, "gecko_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->HL(Ljava/lang/String;)V

    .line 85
    const-string v3, "set_click_type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    if-eqz v7, :cond_6

    .line 86
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 87
    const-string v7, "cta"

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-virtual {v3, v7, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ZYk(D)V

    .line 88
    const-string v7, "other"

    invoke-virtual {v3, v7, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(D)V

    .line 89
    :cond_6
    const-string v3, "extension"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 90
    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ba(Lorg/json/JSONObject;)V

    if-eqz v3, :cond_7

    .line 91
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/model/si;

    invoke-direct {v7, v3}, Lcom/bytedance/sdk/openadsdk/core/model/si;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v11, v7}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/si;)V

    .line 92
    :cond_7
    const-string v3, "icon"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 93
    const-string v7, "screenshot"

    invoke-virtual {v1, v7, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v11, v7}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->jFA(Z)V

    .line 94
    const-string v7, "play_bar_style"

    invoke-virtual {v1, v7, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v11, v7}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Ry(I)V

    .line 95
    const-string v7, "market_url"

    const-string v14, ""

    invoke-virtual {v1, v7, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->IUZ(Ljava/lang/String;)V

    .line 96
    const-string v7, "video_adaptation"

    invoke-virtual {v1, v7, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v11, v7}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->eZI(I)V

    .line 97
    const-string v7, "feed_video_opentype"

    invoke-virtual {v1, v7, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v11, v7}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PiB(I)V

    .line 98
    const-string v7, "session_params"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v11, v7}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB(Lorg/json/JSONObject;)V

    .line 99
    const-string v7, "dynamic_configs"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 100
    invoke-virtual {v11, v7}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ex(Lorg/json/JSONObject;)V

    if-eqz v7, :cond_8

    .line 101
    const-string v10, "speed_config"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 102
    new-instance v10, Lcom/bytedance/sdk/openadsdk/core/model/LpP;

    invoke-direct {v10}, Lcom/bytedance/sdk/openadsdk/core/model/LpP;-><init>()V

    .line 103
    const-string v15, "speed"

    invoke-virtual {v7, v15, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v10, v8}, Lcom/bytedance/sdk/openadsdk/core/model/LpP;->oJ(F)V

    .line 104
    const-string v8, "type"

    invoke-virtual {v7, v8, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v10, v7}, Lcom/bytedance/sdk/openadsdk/core/model/LpP;->oJ(I)V

    .line 105
    invoke-virtual {v11, v10}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/LpP;)V

    .line 106
    :cond_8
    const-string v7, "auction_price"

    invoke-virtual {v1, v7, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->WcQ(Ljava/lang/String;)V

    .line 107
    const-string v7, "mrc_report"

    invoke-virtual {v1, v7, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v11, v7}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->wd(I)V

    .line 108
    const-string v7, "isMrcReportFinish"

    invoke-virtual {v1, v7, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 109
    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->mCw()V

    .line 110
    :cond_9
    const-string v7, "render"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 111
    const-string v8, "render_sequence"

    invoke-virtual {v7, v8, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v11, v8}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->WcQ(I)V

    .line 112
    const-string v8, "backup_render_control"

    invoke-virtual {v7, v8, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v11, v8}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->awB(I)V

    .line 113
    const-string v8, "reserve_time"

    const/16 v9, 0x64

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v11, v8}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->HyG(I)V

    .line 114
    const-string v8, "render_thread"

    invoke-virtual {v7, v8, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v11, v7}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->cdg(I)V

    :cond_a
    if-eqz v2, :cond_b

    .line 115
    iget v2, v2, Lcom/bytedance/sdk/openadsdk/core/model/HL;->jFA:I

    goto :goto_3

    :cond_b
    move v2, v12

    .line 116
    :goto_3
    const-string v7, "render_control"

    invoke-virtual {v1, v7, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->dLZ(I)V

    .line 117
    const-string v2, "width"

    const-string v15, "height"

    const-string v7, "url"

    if-eqz v3, :cond_c

    .line 118
    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    invoke-direct {v8}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;-><init>()V

    .line 119
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->ZYk(I)V

    .line 121
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v8, v3}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ(I)V

    .line 122
    invoke-virtual {v11, v8}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/Ry;)V

    .line 123
    :cond_c
    const-string v3, "reward_data"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 124
    const-string v8, "reward_amount"

    invoke-virtual {v3, v8, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v11, v8}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->jFA(I)V

    .line 125
    const-string v8, "reward_name"

    invoke-virtual {v3, v8, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BTZ(Ljava/lang/String;)V

    .line 126
    :cond_d
    const-string v3, "cover_image"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 127
    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    invoke-direct {v8}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;-><init>()V

    .line 128
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->ZYk(I)V

    .line 130
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v8, v3}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ(I)V

    .line 131
    invoke-virtual {v11, v8}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/Ry;)V

    .line 132
    :cond_e
    const-string v3, "image"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_f

    move v8, v13

    .line 133
    :goto_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_f

    .line 134
    new-instance v9, Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    invoke-direct {v9}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;-><init>()V

    .line 135
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 136
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v9, v4}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->ZYk(I)V

    .line 138
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v9, v4}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ(I)V

    .line 139
    const-string v4, "image_preview"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v9, v4}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ(Z)V

    .line 140
    const-string v4, "image_key"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->ZYk(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v11, v9}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB(Lcom/bytedance/sdk/openadsdk/core/model/Ry;)V

    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    goto :goto_4

    .line 142
    :cond_f
    const-string v3, "show_url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_10

    move v4, v13

    .line 143
    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v4, v8, :cond_10

    .line 144
    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uaj()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 145
    :cond_10
    const-string v3, "click_url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_11

    move v4, v13

    .line 146
    :goto_6
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v4, v8, :cond_11

    .line 147
    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LE()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 148
    :cond_11
    const-string v3, "play_start"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_12

    move v4, v13

    .line 149
    :goto_7
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v4, v8, :cond_12

    .line 150
    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->WGj()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 151
    :cond_12
    const-string v3, "click_area"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 152
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/model/dLZ;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/core/model/dLZ;-><init>()V

    .line 153
    const-string v8, "click_upper_content_area"

    invoke-virtual {v3, v8, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v4, Lcom/bytedance/sdk/openadsdk/core/model/dLZ;->oJ:Z

    .line 154
    const-string v8, "click_upper_non_content_area"

    invoke-virtual {v3, v8, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v4, Lcom/bytedance/sdk/openadsdk/core/model/dLZ;->ZYk:Z

    .line 155
    const-string v8, "click_lower_content_area"

    invoke-virtual {v3, v8, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v4, Lcom/bytedance/sdk/openadsdk/core/model/dLZ;->tB:Z

    .line 156
    const-string v8, "click_lower_non_content_area"

    invoke-virtual {v3, v8, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v4, Lcom/bytedance/sdk/openadsdk/core/model/dLZ;->ex:Z

    .line 157
    const-string v8, "click_button_area"

    invoke-virtual {v3, v8, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v4, Lcom/bytedance/sdk/openadsdk/core/model/dLZ;->Pfn:Z

    .line 158
    const-string v8, "click_video_area"

    invoke-virtual {v3, v8, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v4, Lcom/bytedance/sdk/openadsdk/core/model/dLZ;->ba:Z

    .line 159
    invoke-virtual {v11, v4}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/dLZ;)V

    .line 160
    :cond_13
    const-string v3, "adslot"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 161
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->ZYk(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v3

    .line 162
    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    goto :goto_8

    .line 163
    :cond_14
    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    :goto_8
    if-eqz v0, :cond_15

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getRequestExtraMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 165
    const-string v3, "admob_watermark"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 166
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->kkU(Ljava/lang/String;)V

    goto :goto_9

    .line 168
    :cond_15
    const-string v0, "identificationOverlayContent"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->kkU(Ljava/lang/String;)V

    .line 170
    :cond_16
    :goto_9
    const-string v0, "intercept_flag"

    invoke-virtual {v1, v0, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->RZ(I)V

    .line 171
    const-string v0, "phone_num"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->RZ(Ljava/lang/String;)V

    .line 172
    const-string v0, "title"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->QSm(Ljava/lang/String;)V

    .line 173
    const-string v0, "description"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oq(Ljava/lang/String;)V

    .line 174
    const-string v0, "button_text"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Id(Ljava/lang/String;)V

    .line 175
    const-string v0, "ad_logo"

    invoke-virtual {v1, v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->si(I)V

    .line 176
    const-string v0, "ext"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tb(Ljava/lang/String;)V

    .line 177
    const-string v0, "cover_click_area"

    invoke-virtual {v1, v0, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->cY(I)V

    .line 178
    const-string v3, "image_mode"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Ln(I)V

    .line 179
    const-string v3, "orientation"

    invoke-virtual {v1, v3, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->nke(I)V

    .line 180
    const-string v3, "aspect_ratio"

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    invoke-virtual {v1, v3, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(F)V

    .line 181
    invoke-virtual {v1, v0, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->cY(I)V

    .line 182
    const-string v0, "app"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 183
    const-string v3, "deep_link"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 184
    const-string v4, "oem"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 185
    const-string v8, "is_web_jump_ip"

    invoke-virtual {v1, v8, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v11, v8}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB(I)V

    .line 186
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/model/IUZ;->oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/IUZ;

    move-result-object v4

    .line 187
    invoke-virtual {v11, v4}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/IUZ;)V

    .line 188
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->ba(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/ba;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/ba;)V

    .line 189
    const-string v0, "interaction_method_params"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 190
    const-string v4, "arbitrage_interceptor_params"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 191
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->jFA(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/so;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/so;)V

    .line 192
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->cFZ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/oq;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oq;)V

    .line 193
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->so(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/RZ;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/RZ;)V

    .line 194
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->dLZ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/PiB;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/PiB;)V

    .line 195
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/Ln;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/Ln;)V

    .line 196
    const-string v0, "filter_words"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_18

    move v3, v13

    .line 197
    :goto_a
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_18

    .line 198
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 199
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->Pfn(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/FilterWord;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 200
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/FilterWord;->isValid()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 201
    invoke-virtual {v11, v4}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/FilterWord;)V

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 202
    :cond_18
    const-string v0, "count_down"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LpP(I)V

    .line 203
    const-string v0, "expiration_time"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v11, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ZYk(J)V

    .line 204
    const-string v0, "video_encode_type"

    invoke-virtual {v1, v0, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Qu(I)V

    .line 205
    invoke-virtual {v11, v13}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Jm(I)V

    .line 206
    const-string v0, "video"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 207
    invoke-static {v0, v11, v12}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/cY;Z)Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v3

    .line 208
    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ZYk(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;)V

    .line 209
    const-string v4, "multi_played_percent"

    const/16 v8, 0x32

    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(I)V

    goto :goto_b

    :cond_19
    const/4 v3, 0x0

    .line 210
    :goto_b
    const-string v0, "h265_video"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 211
    invoke-static {v0, v11, v13}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/cY;Z)Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v0

    .line 212
    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;)V

    goto :goto_c

    :cond_1a
    const/4 v0, 0x0

    .line 213
    :goto_c
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-lt v4, v8, :cond_20

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->KYc()I

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_d

    :cond_1b
    if-eqz v0, :cond_1e

    if-eqz v3, :cond_1e

    .line 214
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->BTZ()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 215
    invoke-virtual {v3}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->BTZ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ex(Ljava/lang/String;)V

    .line 216
    :cond_1c
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->PiB()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 217
    invoke-virtual {v3}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->PiB()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->Pfn(Ljava/lang/String;)V

    .line 218
    :cond_1d
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ex()I

    move-result v4

    if-ne v4, v6, :cond_1e

    .line 219
    invoke-virtual {v3}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ex()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ex(I)V

    :cond_1e
    if-eqz v0, :cond_1f

    .line 220
    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;)V

    goto :goto_e

    .line 221
    :cond_1f
    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;)V

    goto :goto_e

    .line 222
    :cond_20
    :goto_d
    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;)V

    .line 223
    invoke-virtual {v11, v13}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Qu(I)V

    .line 224
    :goto_e
    const-string v0, "download_conf"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 225
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->kkU(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/WcQ;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/WcQ;)V

    .line 226
    :cond_21
    const-string v0, "media_ext"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 227
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->BTZ(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Ljava/util/Map;)V

    .line 228
    const-string v0, "tpl_info"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 229
    const-string v4, "dynamic_creative"

    if-eqz v3, :cond_23

    .line 230
    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;

    invoke-direct {v8}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;-><init>()V

    .line 231
    const-string v0, "id"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->tB(Ljava/lang/String;)V

    .line 232
    const-string v0, "md5"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->ex(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->Pfn(Ljava/lang/String;)V

    .line 234
    const-string v0, "data"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->ba(Ljava/lang/String;)V

    .line 235
    const-string v0, "diff_data"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->cFZ(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->so(Ljava/lang/String;)V

    .line 238
    const-string v7, "version"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->ZYk(Ljava/lang/String;)V

    .line 239
    const-string v7, "media_view"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->jFA(Ljava/lang/String;)V

    .line 240
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 241
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 242
    const-string v0, "tag_ids"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_22

    move v10, v13

    .line 243
    :goto_f
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v10, v6, :cond_22

    .line 244
    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->optInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :catch_0
    move-exception v0

    goto :goto_10

    .line 245
    :cond_22
    const-string v0, "music_url"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-virtual {v8, v7}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->oJ(Ljava/util/List;)V

    .line 247
    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->oJ(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_11

    .line 248
    :goto_10
    const-string v6, "TTAD.AdInfoFactory"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :goto_11
    const-string v0, "engine_version"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->kkU(Ljava/lang/String;)V

    .line 250
    const-string v0, "ugen_url"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->dLZ(Ljava/lang/String;)V

    .line 251
    const-string v0, "ugen_md5"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->BTZ(Ljava/lang/String;)V

    .line 252
    const-string v0, "ugen_data"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->PiB(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v11, v8}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;)V

    .line 254
    :cond_23
    const-string v0, "tpl_info_v3"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 255
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/Jc;

    move-result-object v0

    .line 256
    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/Jc;)V

    .line 257
    :cond_24
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 258
    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ZYk(Lorg/json/JSONObject;)V

    .line 259
    :cond_25
    const-string v0, "creative_extra"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->awB(Ljava/lang/String;)V

    .line 261
    const-string v0, "if_block_lp"

    invoke-virtual {v1, v0, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BTZ(I)V

    .line 262
    const-string v0, "cache_sort"

    invoke-virtual {v1, v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oq(I)V

    .line 263
    const-string v0, "if_sp_cache"

    invoke-virtual {v1, v0, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Id(I)V

    .line 264
    const-string v0, "splash_control"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 265
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->ex(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/cFZ;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cFZ;)V

    .line 266
    :cond_26
    const-string v0, "is_package_open"

    invoke-virtual {v1, v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->UN(I)V

    .line 267
    const-string v0, "ad_info"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PiB(Ljava/lang/String;)V

    .line 268
    const-string v0, "ua_policy"

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->jr(I)V

    .line 269
    const-string v0, "playable_duration_time"

    const/16 v4, 0x14

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->mu(I)V

    .line 270
    const-string v0, "playable_endcard_close_time"

    const/4 v4, -0x1

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->XAo(I)V

    .line 271
    const-string v0, "endcard_close_time"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ofl(I)V

    .line 272
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->cFZ(I)V

    .line 273
    const-string v0, "lp_click_type"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Yg(I)V

    .line 274
    const-string v0, "lp_click_interval"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v11, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ex(J)V

    .line 275
    const-string v0, "dsp_html"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Ln(Ljava/lang/String;)V

    .line 276
    const-string v0, "image_stay"

    invoke-virtual {v1, v0, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ba(I)V

    .line 277
    const-string v0, "dsp_material_type"

    invoke-virtual {v1, v0, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x3

    if-ltz v0, :cond_27

    if-le v0, v4, :cond_28

    :cond_27
    move v0, v13

    :cond_28
    if-nez v0, :cond_2a

    .line 278
    const-string v5, "is_vast"

    invoke-virtual {v1, v5, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_29

    move v0, v12

    .line 279
    :cond_29
    const-string v5, "is_html"

    invoke-virtual {v1, v5, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2a

    goto :goto_12

    :cond_2a
    move v3, v0

    .line 280
    :goto_12
    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->bgF(I)V

    if-eq v3, v12, :cond_2b

    if-ne v3, v4, :cond_32

    .line 281
    :cond_2b
    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TxP()I

    move-result v0

    if-gez v0, :cond_2d

    .line 282
    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BHY()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 283
    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BHY()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result v0

    goto :goto_13

    .line 284
    :cond_2c
    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->qnr()I

    move-result v0

    .line 285
    :cond_2d
    :goto_13
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->tB(I)Ljava/lang/String;

    move-result-object v6

    .line 286
    const-string v3, "vast_json"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 287
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;

    move-result-object v0

    goto :goto_15

    .line 288
    :cond_2e
    const-string v3, "dsp_vast"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 289
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 290
    invoke-static {v11, v6}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    .line 291
    :cond_2f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 292
    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Tt()I

    move-result v4

    invoke-static {v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->oJ(Ljava/lang/String;II)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 293
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;

    .line 294
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/ZYk$oJ;

    move-object v10, v0

    goto :goto_14

    :cond_30
    const/4 v3, 0x0

    const/4 v10, 0x0

    :goto_14
    move-object v5, v11

    move-object v7, v3

    .line 295
    invoke-static/range {v5 .. v10}, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;JLcom/bytedance/sdk/openadsdk/core/dLZ/oJ/ZYk$oJ;)V

    move-object v0, v3

    :goto_15
    if-nez v0, :cond_31

    const/4 v3, 0x0

    return-object v3

    .line 296
    :cond_31
    invoke-static {v0, v11}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 297
    :cond_32
    const-string v0, "deep_link_appname"

    invoke-virtual {v1, v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LpP(Ljava/lang/String;)V

    .line 298
    const-string v0, "landing_page_download_clicktype"

    invoke-virtual {v1, v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->nQI(I)V

    .line 299
    const-string v0, "dsp_style"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 300
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/model/awB;

    invoke-direct {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/model/awB;-><init>(Lorg/json/JSONObject;)V

    .line 301
    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/awB;)V

    .line 302
    :cond_33
    const-string v0, "dsp_adchoices"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 303
    const-string v3, "adchoices_icon"

    invoke-virtual {v0, v3, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->cFZ(Ljava/lang/String;)V

    .line 304
    const-string v3, "adchoices_url"

    invoke-virtual {v0, v3, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->so(Ljava/lang/String;)V

    .line 305
    :cond_34
    const-string v0, "gdid_encrypted"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 307
    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->jFA(Ljava/lang/String;)V

    .line 308
    :cond_35
    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->nQI()V

    .line 309
    const-string v0, "ugen"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 310
    const-string v3, "endcard"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 311
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->tB(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;

    move-result-object v3

    .line 312
    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;)V

    .line 313
    const-string v3, "overlay"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 314
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->tB(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;

    move-result-object v0

    .line 315
    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ZYk(Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;)V

    .line 316
    :cond_36
    const-string v0, "preload_h5_type"

    invoke-virtual {v1, v0, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 317
    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ex(I)V

    .line 318
    const-string v0, "hasReportShow"

    invoke-virtual {v1, v0, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->cFZ(Z)V

    .line 319
    const-string v0, "endcard_creative"

    invoke-virtual {v1, v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->dLZ(Ljava/lang/String;)V

    .line 320
    const-string v0, "ad_label"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->cFZ(Lorg/json/JSONObject;)V

    .line 321
    const-string v0, "ev"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 322
    const-string v3, "enable"

    sget-boolean v4, Lcom/bytedance/sdk/openadsdk/jr/oJ/tB;->oJ:Z

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->WcQ(Z)V

    .line 323
    const-string v3, "wait_time"

    sget v4, Lcom/bytedance/sdk/openadsdk/jr/oJ/tB;->ZYk:I

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->lY(I)V

    .line 324
    const-string v3, "label"

    sget-object v4, Lcom/bytedance/sdk/openadsdk/jr/oJ/tB;->tB:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->mu(Ljava/lang/String;)V

    .line 325
    new-instance v0, Lcom/bytedance/sdk/openadsdk/jr/oJ/ZYk;

    invoke-direct {v0, v11}, Lcom/bytedance/sdk/openadsdk/jr/oJ/ZYk;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/jr/oJ/ZYk;)V

    .line 326
    :cond_37
    const-string v0, "banner"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 327
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 328
    invoke-virtual {v0, v2, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 329
    invoke-virtual {v0, v15, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 330
    new-instance v3, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    invoke-direct {v3, v2, v0}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;-><init>(II)V

    .line 331
    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;)V

    .line 332
    :cond_38
    const-string v0, "ad_tracks"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 333
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_39

    .line 334
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/Pfn;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/Pfn;-><init>(Lorg/json/JSONArray;)V

    .line 335
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Pfn;->ex()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 336
    invoke-virtual {v11, v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/Pfn;)V

    :cond_39
    return-object v11
.end method

.method private static oJ(Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 4

    .line 351
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 352
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->sQ()I

    move-result v0

    .line 353
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->oJ(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 354
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tb(I)V

    :cond_0
    const/4 v0, 0x1

    .line 355
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->dLZ(I)V

    .line 356
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;)V

    .line 357
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->ex()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 358
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->ex()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->QSm(Ljava/lang/String;)V

    .line 359
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->Pfn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 360
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->Pfn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oq(Ljava/lang/String;)V

    .line 361
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->ba()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Ry(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 362
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/ba;)V

    .line 363
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v1

    if-nez v1, :cond_3

    .line 364
    new-instance v1, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;-><init>()V

    .line 365
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->cFZ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->tB(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->so()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->oJ(D)V

    .line 367
    invoke-virtual {v1, v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ba(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v1, v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ZYk(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v1, v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ex(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;)V

    .line 371
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->ZYk()Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->ZYk()Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;->Pfn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 372
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;-><init>()V

    .line 373
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->ZYk()Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;->Pfn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->ZYk()Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;->ZYk()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ(I)V

    .line 375
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->ZYk()Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;->tB()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->ZYk(I)V

    .line 376
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/Ry;)V

    return-void

    .line 377
    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    move-result-object p0

    if-nez p0, :cond_5

    .line 378
    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;-><init>()V

    .line 379
    const-string v0, "https://lf-static.tiktokpangle-cdn-us.com/obj/ad-pattern-tx/static/images/2023620white.jpeg"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ(Ljava/lang/String;)V

    const/16 v0, 0x62

    .line 380
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ(I)V

    .line 381
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->ZYk(I)V

    .line 382
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/Ry;)V

    :cond_5
    return-void
.end method

.method private static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V
    .locals 3

    .line 341
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 342
    const-string v1, "reason_code"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 343
    const-string v1, "error_code"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 344
    const-string v1, "load_vast_fail"

    invoke-static {p0, p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static oJ(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/sdk/openadsdk/core/ZYk$oJ;",
            ">;)V"
        }
    .end annotation

    .line 442
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ZYk$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/ZYk$1;-><init>(Ljava/util/ArrayList;)V

    const-string p0, "multiple_ads_parsing_error"

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/awB/ZYk;)V

    return-void
.end method

.method private static oJ(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/cY;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/model/oJ;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 47
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 48
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 49
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->kkU()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p0, :cond_2

    .line 50
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->nYE()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->LpP()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ZYk(I)V

    .line 53
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->so(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 337
    const-string v0, "iv_skip_time"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 338
    const-string v2, "rv_skip_time"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    if-eq v0, v1, :cond_0

    .line 339
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->mwH(I)V

    :cond_0
    if-eq p0, v1, :cond_1

    .line 340
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oTd(I)V

    :cond_1
    return-void
.end method

.method private static oJ(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static so(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/RZ;
    .locals 8

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/RZ;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    const/4 v2, 0x1

    .line 8
    const/16 v3, 0x46

    .line 9
    .line 10
    const/16 v4, 0x1e

    .line 11
    .line 12
    const/4 v5, 0x5

    .line 13
    const/4 v6, 0x0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->ex(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->Pfn(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->ba(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->cFZ(I)V

    .line 26
    .line 27
    .line 28
    sget p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->oJ:I

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->so(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->tB(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->ZYk(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->oJ(I)V

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_0
    const-string v7, "ceiling_time"

    .line 44
    .line 45
    invoke-virtual {p0, v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->ex(I)V

    .line 50
    .line 51
    .line 52
    const-string v5, "ceiling_ratio"

    .line 53
    .line 54
    invoke-virtual {p0, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->Pfn(I)V

    .line 59
    .line 60
    .line 61
    const-string v4, "expand_ratio"

    .line 62
    .line 63
    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->ba(I)V

    .line 68
    .line 69
    .line 70
    const-string v3, "back_type"

    .line 71
    .line 72
    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->cFZ(I)V

    .line 77
    .line 78
    .line 79
    const-string v2, "boc_return_type"

    .line 80
    .line 81
    sget v3, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->oJ:I

    .line 82
    .line 83
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->so(I)V

    .line 88
    .line 89
    .line 90
    const-string v2, "pre_render_status"

    .line 91
    .line 92
    invoke-virtual {p0, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->tB(I)V

    .line 97
    .line 98
    .line 99
    const-string v2, "pre_render_use_gecko"

    .line 100
    .line 101
    invoke-virtual {p0, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->ZYk(I)V

    .line 106
    .line 107
    .line 108
    const-string v2, "pre_render_add_type"

    .line 109
    .line 110
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->oJ(I)V

    .line 115
    .line 116
    .line 117
    return-object v0
.end method

.method private static tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I
    .locals 5

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TxP()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->tB(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->GSK()I

    move-result v1

    const/16 v2, 0xc8

    if-nez v1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TNk()Lcom/bytedance/sdk/openadsdk/core/model/PiB;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/PiB;)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 8
    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    return v1

    :cond_0
    move v1, v2

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->sQ()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    const/16 v2, 0x8

    if-eq v3, v2, :cond_3

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/ba;)I

    move-result v1

    if-eq v1, v2, :cond_4

    .line 11
    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    return v1

    .line 12
    :cond_3
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->ex(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Oof()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v1, 0x196

    .line 13
    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    :cond_4
    :goto_0
    return v1
.end method

.method private static tB(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;-><init>()V

    .line 2
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;

    .line 3
    const-string v1, "md5"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;->ZYk(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;

    .line 4
    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;->tB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;

    return-object v0
.end method
