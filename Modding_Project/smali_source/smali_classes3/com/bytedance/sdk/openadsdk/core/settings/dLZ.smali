.class public Lcom/bytedance/sdk/openadsdk/core/settings/dLZ;
.super Lcom/bytedance/sdk/component/so/so;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/settings/dLZ$oJ;
    }
.end annotation


# instance fields
.field private final ZYk:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

.field private final oJ:Lcom/bytedance/sdk/openadsdk/core/settings/dLZ$oJ;

.field private final tB:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/core/settings/Pfn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lcom/bytedance/sdk/openadsdk/core/settings/dLZ$oJ;Lcom/bytedance/sdk/openadsdk/core/settings/kkU;[Lcom/bytedance/sdk/openadsdk/core/settings/Pfn;)V
    .locals 1

    .line 1
    const-string v0, "SetF"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/so/so;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/dLZ;->tB:Ljava/util/Set;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/settings/dLZ$oJ;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/dLZ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 16
    .line 17
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private ZYk(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/oJ;->oJ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/settings/dLZ;)Lcom/bytedance/sdk/openadsdk/core/settings/dLZ$oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/settings/dLZ$oJ;

    return-object p0
.end method

.method public static oJ(I)Lorg/json/JSONObject;
    .locals 10

    .line 17
    const-string v0, "gaid"

    const-string v1, "7.5.0.4"

    const-string v2, "mcc"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 18
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v4

    .line 19
    const-string v5, "model"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string v5, "device_city"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->cY()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/ZYk/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/RZ/oJ/ZYk/oJ;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/ZYk/oJ;->oJ(Lorg/json/JSONObject;)V

    .line 22
    const-string v5, "gdpr"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/jFA;->kkU()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 23
    const-string v5, "pa_consent"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/jFA;->dLZ()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 24
    invoke-interface {v4, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->tb(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 25
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/LpP;->ZYk()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v2

    .line 27
    const-string v5, "conn_type"

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->cFZ(I)I

    move-result p0

    invoke-virtual {v3, v5, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 28
    const-string p0, "os"

    const/4 v5, 0x1

    invoke-virtual {v3, p0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    const-string p0, "oversea_version_type"

    invoke-virtual {v3, p0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    const-string p0, "os_version"

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    const-string p0, "aos_api_level"

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 32
    const-string p0, "sdk_version"

    invoke-virtual {v3, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string p0, "language"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/BTZ;->ZYk()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    const-string p0, "time_zone"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->tb()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    const-string p0, "package_name"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ba()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ()Z

    move-result p0

    .line 37
    const-string v6, "position"

    if-eqz p0, :cond_1

    move p0, v5

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    invoke-virtual {v3, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    const-string p0, "app_version"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->so()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string p0, "vendor"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string p0, "uuid"

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/BTZ;->tB(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ex()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 42
    const-string v6, "app_id"

    invoke-virtual {v3, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 44
    const-string v8, "ts"

    invoke-virtual {v3, v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 45
    const-string v8, ""

    if-eqz p0, :cond_3

    .line 46
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 47
    :cond_3
    const-string p0, "req_sign"

    invoke-static {v8}, Lcom/bytedance/sdk/component/utils/Pfn;->oJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string p0, "tcstring"

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->tB(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string p0, "tcf_gdpr"

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ZYk(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v3, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50
    const-string p0, "lmt"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->tB()I

    move-result v1

    invoke-virtual {v3, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 51
    const-string p0, "locale_language"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->ex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string p0, "channel"

    const-string v1, "main"

    invoke-virtual {v3, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->Pfn()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 54
    const-string v1, "digest"

    invoke-virtual {v3, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    :cond_4
    const-string p0, "data_time"

    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->ba()J

    move-result-wide v6

    invoke-virtual {v3, p0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 56
    const-string p0, "app_set_id_scope"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/ex;->ZYk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string p0, "app_set_id"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/ex;->tB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string p0, "installed_source"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/ex;->ex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    invoke-interface {v4, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->tb(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 60
    const-string p0, "did"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ;->oJ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/ZYk/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/RZ/oJ/ZYk/oJ;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/ZYk/oJ;->ZYk()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/jFA;->cFZ()Ljava/lang/String;

    move-result-object p0

    .line 63
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 64
    const-string v0, "mediation"

    invoke-virtual {v3, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    :cond_6
    invoke-static {v2, v5}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->oJ(Landroid/content/Context;Z)Lorg/json/JSONObject;

    move-result-object p0

    .line 66
    const-string v0, "device"

    invoke-virtual {v3, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string p0, "adx_id"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/jFA;->jr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v3
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/settings/dLZ;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/settings/dLZ;->oJ(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private oJ(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 3
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 7
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    const-string p2, "active-control"

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 10
    const-string v2, "ts"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 11
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 12
    const-string v4, "pst"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/cFZ/ZYk;->oJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    move v0, p2

    .line 16
    :catchall_0
    :cond_2
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/jFA;->oJ(I)V

    return-void
.end method

.method public static oJ()Z
    .locals 1

    .line 72
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService;->oJ:Z

    return v0
.end method


# virtual methods
.method public oJ(Lorg/json/JSONObject;)Z
    .locals 2
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/dLZ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/kkU;->oJ(Lorg/json/JSONObject;)V

    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/dLZ;->tB:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn;

    if-eqz v1, :cond_0

    .line 70
    invoke-interface {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn;->oJ(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 71
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/dLZ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/kkU;->tB:Z

    return p1
.end method

.method public run()V
    .locals 5

    .line 1
    const-string v0, "Start Try"

    .line 2
    .line 3
    const-string v1, "TTAD.SdkSettingsFetch"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/component/utils/HL;->oJ(Landroid/content/Context;J)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const-string v0, "No net"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/settings/dLZ$oJ;

    .line 27
    .line 28
    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/dLZ$oJ;->oJ(Z)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/dLZ;->oJ(I)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->tB()Lcom/bytedance/sdk/component/cFZ/oJ;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cFZ/oJ;->ZYk()Lcom/bytedance/sdk/component/cFZ/ZYk/ex;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const/4 v3, 0x1

    .line 49
    :try_start_0
    const-string v4, "/api/ad/union/sdk/settings/"

    .line 50
    .line 51
    invoke-static {v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/so/ex;->oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/tB;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string v2, "User-Agent"

    .line 63
    .line 64
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ex()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v1, v2, v4}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    :catch_0
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/dLZ;->ZYk(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->Qu()Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_1

    .line 88
    .line 89
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/nke;->oJ()Lcom/bytedance/sdk/openadsdk/core/LpP;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/LpP;->ex()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-ne v2, v3, :cond_1

    .line 98
    .line 99
    const-string v2, "Pangle_Debug_Mode"

    .line 100
    .line 101
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-static {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 106
    .line 107
    .line 108
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->awB()Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/component/cFZ/ZYk/ex;->oJ(Ljava/lang/String;Z)V

    .line 117
    .line 118
    .line 119
    const/4 v0, 0x6

    .line 120
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->oJ(I)V

    .line 121
    .line 122
    .line 123
    const-string v0, "setting"

    .line 124
    .line 125
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->oJ(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/settings/dLZ$1;

    .line 129
    .line 130
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/dLZ$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/dLZ;)V

    .line 131
    .line 132
    .line 133
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/si/tB;->oJ(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    .line 134
    .line 135
    .line 136
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/settings/dLZ$2;

    .line 137
    .line 138
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/dLZ$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/dLZ;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/cFZ/ZYk/ex;->oJ(Lcom/bytedance/sdk/component/cFZ/oJ/oJ;)V

    .line 142
    .line 143
    .line 144
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ;->oJ(Landroid/content/Context;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ;->ZYk(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->BTZ()V

    .line 156
    .line 157
    .line 158
    return-void
.end method
