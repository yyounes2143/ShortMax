.class public Lio/bidmachine/ads/networks/gam/s;
.super Ljava/lang/Object;
.source "GAMTypeConfigFactory.java"


# direct methods
.method public static a(Lorg/json/JSONObject;)Lio/bidmachine/ads/networks/gam/r;
    .locals 7
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "format"

    .line 3
    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v1}, Lio/bidmachine/AdsFormat;->byRemoteName(Ljava/lang/String;)Lio/bidmachine/AdsFormat;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    const-string v2, "ad_unit_id"

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    new-instance v3, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v4, "units"

    .line 27
    .line 28
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const/4 v5, 0x0

    .line 33
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-ge v5, v6, :cond_1

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-static {v2, v6}, Lio/bidmachine/ads/networks/gam/u;->c(Ljava/lang/String;Lorg/json/JSONObject;)Lio/bidmachine/ads/networks/gam/t;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    add-int/lit8 v5, v5, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_2
    const-string v2, "cache_size"

    .line 61
    .line 62
    const/4 v4, 0x2

    .line 63
    invoke-virtual {p0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    new-instance v2, Lio/bidmachine/ads/networks/gam/r;

    .line 68
    .line 69
    invoke-direct {v2, v1, v3, p0}, Lio/bidmachine/ads/networks/gam/r;-><init>(Lio/bidmachine/AdsFormat;Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    return-object v2

    .line 73
    :catchall_0
    return-object v0
.end method
