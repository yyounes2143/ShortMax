.class public Lcom/bytedance/sdk/openadsdk/core/settings/kkU;
.super Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;
.source "SourceFile"


# static fields
.field static final ex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Pfn:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tB:Z


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string v18, "pl"

    .line 4
    .line 5
    const-string v19, "tr"

    .line 6
    .line 7
    const-string v1, "ja"

    .line 8
    .line 9
    const-string v2, "en"

    .line 10
    .line 11
    const-string v3, "ko"

    .line 12
    .line 13
    const-string v4, "zh"

    .line 14
    .line 15
    const-string v5, "th"

    .line 16
    .line 17
    const-string v6, "vi"

    .line 18
    .line 19
    const-string v7, "id"

    .line 20
    .line 21
    const-string v8, "ru"

    .line 22
    .line 23
    const-string v9, "ar"

    .line 24
    .line 25
    const-string v10, "fr"

    .line 26
    .line 27
    const-string v11, "de"

    .line 28
    .line 29
    const-string v12, "it"

    .line 30
    .line 31
    const-string v13, "es"

    .line 32
    .line 33
    const-string v14, "hi"

    .line 34
    .line 35
    const-string v15, "pt"

    .line 36
    .line 37
    const-string v16, "zh-Hant"

    .line 38
    .line 39
    const-string v17, "ms"

    .line 40
    .line 41
    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/kkU;->ex:Ljava/util/ArrayList;

    .line 53
    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/settings/BTZ$oJ;)V
    .locals 1

    .line 1
    const-string v0, "tt_sdk_settings_sr.prop"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/settings/BTZ$oJ;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/kkU;->Pfn:Ljava/util/Set;

    .line 16
    .line 17
    return-void
.end method

.method public static oJ(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 298
    :try_start_0
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 299
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 300
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 301
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 302
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    return-object v0

    .line 303
    :catchall_0
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method


# virtual methods
.method public oJ(Lorg/json/JSONObject;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->Pfn()Lorg/json/JSONObject;

    move-result-object v1

    .line 3
    const-string v2, "digest"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/kkU;->tB:Z

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 7
    :goto_1
    const-string v1, "data_time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "data_time"

    invoke-interface {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;J)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 8
    const-string v1, "req_inter_min"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-wide/16 v2, 0xa

    .line 9
    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/32 v6, 0xea60

    mul-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-ltz v6, :cond_2

    const-wide/32 v6, 0x5265c00

    cmp-long v6, v2, v6

    if-lez v6, :cond_3

    :cond_2
    const-wide/32 v2, 0x927c0

    .line 10
    :cond_3
    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;J)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 11
    :cond_4
    const-string v1, "lp_new_style"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const v2, 0x7fffffff

    if-eqz v1, :cond_5

    .line 12
    const-string v1, "lp_new_style"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 13
    const-string v3, "landingpage_new_style"

    invoke-interface {v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 14
    :cond_5
    const-string v1, "blank_detect_rate"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x1e

    .line 15
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_6

    const/16 v6, 0x64

    if-le v3, v6, :cond_7

    :cond_6
    const/16 v3, 0x1e

    .line 16
    :cond_7
    invoke-interface {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 17
    :cond_8
    const-string v1, "feq_policy"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 18
    const-string v3, "duration"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 19
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    .line 20
    invoke-interface {v0, v3, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;J)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 21
    :cond_9
    const-string v3, "max"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 22
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 23
    invoke-interface {v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 24
    :cond_a
    const-string v1, "vbtt"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x5

    .line 25
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 26
    invoke-interface {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 27
    :cond_b
    const-string v1, "abtest"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 28
    const-string v3, "version"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 29
    const-string v3, "version"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 30
    const-string v6, "ab_test_version"

    invoke-interface {v0, v6, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 31
    :cond_c
    const-string v3, "param"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 32
    const-string v3, "param"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    const-string v3, "ab_test_param"

    invoke-interface {v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    goto :goto_2

    .line 34
    :cond_d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->cFZ()V

    .line 35
    :cond_e
    :goto_2
    const-string v1, "log_rate_conf"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 36
    const-string v3, "global_rate"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 37
    invoke-virtual {v1, v3, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-float v1, v6

    .line 38
    invoke-interface {v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;F)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 39
    :cond_f
    const-string v1, "pyload_h5"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 40
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-interface {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 42
    :cond_10
    const-string v1, "pure_pyload_h5"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 43
    const-string v1, "pure_pyload_h5"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    const-string v3, "playableLoadH5Url"

    invoke-interface {v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 45
    :cond_11
    const-string v1, "ads_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 46
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-interface {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 48
    :cond_12
    const-string v1, "settings_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 49
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-interface {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 51
    :cond_13
    const-string v1, "app_log_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 52
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-interface {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 54
    :cond_14
    const-string v1, "privacy_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 55
    const-string v1, "privacy_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    const-string v3, "policy_url"

    invoke-interface {v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 57
    :cond_15
    const-string v1, "consent_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 58
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-interface {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 60
    :cond_16
    const-string v1, "ivrv_downward"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 61
    invoke-virtual {p1, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 62
    invoke-interface {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 63
    :cond_17
    const-string v1, "dc"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 64
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-interface {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 66
    :cond_18
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;)V

    .line 67
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->ZYk(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;)V

    .line 68
    const-string v1, "if_both_open"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 69
    invoke-virtual {p1, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 70
    invoke-interface {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 71
    :cond_19
    const-string v1, "support_tnc"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 72
    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 73
    invoke-interface {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 74
    :cond_1a
    const-string v1, "insert_js_config"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v3, ""

    if-eqz v1, :cond_1b

    .line 75
    const-string v1, "insert_js_config"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    const-string v6, "insert_js_config"

    invoke-interface {v0, v6, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 77
    :cond_1b
    const-string v1, "max_tpl_cnts"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 78
    const-string v1, "max_tpl_cnts"

    const/16 v6, 0x64

    invoke-virtual {p1, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 79
    const-string v6, "max_tpl_cnts"

    invoke-interface {v0, v6, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 80
    :cond_1c
    const-string v1, "target_region"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 81
    const-string v1, "target_region"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    const-string v6, "target_region"

    invoke-interface {v0, v6, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 83
    :cond_1d
    const-string v1, "app_common_config"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 84
    const-string v6, "force_language"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 85
    const-string v6, "force_language"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 86
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1e

    sget-object v7, Lcom/bytedance/sdk/openadsdk/core/settings/kkU;->ex:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 87
    const-string v7, "force_language"

    invoke-interface {v0, v7, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 88
    :cond_1e
    const-string v6, "fetch_tpl_timeout_ctrl"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 89
    const-string v6, "fetch_tpl_timeout_ctrl"

    const/16 v7, 0xbb8

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 90
    const-string v7, "fetch_tpl_timeout_ctrl"

    invoke-interface {v0, v7, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 91
    :cond_1f
    const-string v6, "fetch_tpl_second"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 92
    const-string v6, "fetch_tpl_second"

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 93
    const-string v7, "fetch_tpl_second"

    invoke-interface {v0, v7, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 94
    :cond_20
    const-string v6, "support_gzip"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 95
    const-string v6, "support_gzip"

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 96
    const-string v7, "support_gzip"

    invoke-interface {v0, v7, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 97
    :cond_21
    const-string v6, "aes_key"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 98
    const-string v6, "aes_key"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 99
    const-string v7, "aes_key"

    invoke-interface {v0, v7, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 100
    :cond_22
    const-string v6, "support_rtl"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 101
    const-string v6, "support_rtl"

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 102
    const-string v7, "support_rtl"

    invoke-interface {v0, v7, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 103
    :cond_23
    const-string v6, "ad_revenue_enable"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 104
    const-string v6, "ad_revenue_enable"

    invoke-virtual {v1, v6, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 105
    const-string v7, "ad_revenue_enable"

    invoke-interface {v0, v7, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 106
    :cond_24
    const-string v6, "gecko_hosts"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 107
    :try_start_0
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/settings/kkU;->Pfn:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 108
    const-string v6, "gecko_hosts"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_25

    .line 109
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-eqz v7, :cond_25

    move v7, v5

    .line 110
    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_25

    .line 111
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/settings/kkU;->Pfn:Ljava/util/Set;

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :catchall_0
    move-exception v6

    goto :goto_4

    .line 112
    :cond_25
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/settings/kkU;->Pfn:Ljava/util/Set;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/settings/kkU;->oJ(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    iput-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/settings/kkU;->Pfn:Ljava/util/Set;

    .line 113
    const-string v7, "gecko_hosts"

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v7, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 114
    :goto_4
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "GeckoLog: settings json error "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    :cond_26
    :goto_5
    const-string v6, "read_video_from_cache"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 116
    const-string v6, "read_video_from_cache"

    invoke-virtual {p1, v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 117
    const-string v7, "read_video_from_cache"

    invoke-interface {v0, v7, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 118
    :cond_27
    const-string v6, "ad_slot_conf_list"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 119
    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/settings/tB;->oJ(Lorg/json/JSONArray;)V

    .line 120
    const-string v6, "privacy"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_31

    .line 121
    const-string v7, "ad_enable"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 122
    const-string v7, "ad_enable"

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 123
    const-string v8, "privacy_ad_enable"

    invoke-interface {v0, v8, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 124
    :cond_28
    const-string v7, "personalized_ad"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 125
    const-string v7, "personalized_ad"

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 126
    const-string v8, "privacy_personalized_ad"

    invoke-interface {v0, v8, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 127
    :cond_29
    const-string v7, "sladar_enable"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 128
    const-string v7, "sladar_enable"

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 129
    const-string v8, "privacy_sladar_enable"

    invoke-interface {v0, v8, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 130
    :cond_2a
    const-string v7, "app_log_enable"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 131
    const-string v7, "app_log_enable"

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 132
    const-string v8, "privacy_app_log_enable"

    invoke-interface {v0, v8, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 133
    :cond_2b
    const-string v7, "debug_unlock"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 134
    const-string v7, "debug_unlock"

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 135
    const-string v8, "privacy_debug_unlock"

    invoke-interface {v0, v8, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 136
    :cond_2c
    const-string v7, "fields_allowed"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 137
    const-string v7, "fields_allowed"

    invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 138
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2d

    .line 139
    const-string v8, "privacy_fields_allowed"

    invoke-interface {v0, v8, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    goto :goto_6

    .line 140
    :cond_2d
    const-string v7, "privacy_fields_allowed"

    invoke-interface {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 141
    :cond_2e
    :goto_6
    const-string v7, "app_reg"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 142
    const-string v7, "app_reg"

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_2f

    .line 143
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/nke;->oJ()Lcom/bytedance/sdk/openadsdk/core/LpP;

    move-result-object v7

    invoke-interface {v7}, Lcom/bytedance/sdk/openadsdk/core/LpP;->ex()I

    move-result v7

    if-ne v7, v4, :cond_2f

    .line 144
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/settings/kkU$1;

    invoke-direct {v7, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/kkU$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/kkU;)V

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ(Ljava/lang/Runnable;)V

    :cond_2f
    if-eqz v6, :cond_30

    move v6, v4

    goto :goto_7

    :cond_30
    move v6, v5

    .line 145
    :goto_7
    const-string v7, "privacy_app_reg"

    invoke-interface {v0, v7, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 146
    :cond_31
    const-string v6, "video_cache_config"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 147
    const-string v6, "video_cache_config"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 148
    const-string v7, "video_cache_config"

    invoke-interface {v0, v7, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 149
    :cond_32
    const-string v6, "loaded_recall_time"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 150
    const-string v6, "loaded_recall_time"

    invoke-virtual {p1, v6, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_33

    if-eq v6, v4, :cond_33

    move v6, v5

    .line 151
    :cond_33
    const-string v7, "loadedCallbackOpportunity"

    invoke-interface {v0, v7, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 152
    :cond_34
    const-string v6, "splash_video_load_strategy"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 153
    const-string v6, "splash_video_load_strategy"

    invoke-virtual {p1, v6, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    if-ltz v6, :cond_35

    const/4 v7, 0x3

    if-le v6, v7, :cond_36

    :cond_35
    move v6, v5

    .line 154
    :cond_36
    const-string v7, "splash_video_load_strategy"

    invoke-interface {v0, v7, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 155
    :cond_37
    const-string v6, "allow_blind_mode_request_ad"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 156
    const-string v6, "allow_blind_mode_request_ad"

    invoke-virtual {p1, v6, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 157
    const-string v7, "allow_blind_mode_request_ad"

    invoke-interface {v0, v7, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 158
    :cond_38
    const-string v6, "bus_con"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_47

    .line 159
    const-string v7, "bus_con_send_log_type"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 160
    const-string v7, "bus_con_send_log_type"

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 161
    const-string v8, "bus_con_send_log_type"

    invoke-interface {v0, v8, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 162
    :cond_39
    const-string v7, "bus_con_sec_type"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 163
    const-string v7, "bus_con_sec_type"

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 164
    const-string v7, "bus_con_sec_type"

    invoke-interface {v0, v7, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 165
    :cond_3a
    const-string v2, "bus_con_dislike_report_raw"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 166
    const-string v2, "bus_con_dislike_report_raw"

    invoke-virtual {v6, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 167
    const-string v7, "bus_con_dislike_report_raw"

    invoke-interface {v0, v7, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 168
    :cond_3b
    const-string v2, "bus_con_adshow_check_enable"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 169
    const-string v2, "bus_con_adshow_check_enable"

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 170
    const-string v7, "bus_con_adshow_check_enable"

    invoke-interface {v0, v7, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 171
    :cond_3c
    const-string v2, "bus_con_tnc_interval"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 172
    const-string v2, "bus_con_tnc_interval"

    const-wide/32 v7, 0x927c0

    invoke-virtual {v6, v2, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 173
    const-string v2, "bus_con_tnc_interval"

    invoke-interface {v0, v2, v7, v8}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;J)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 174
    :cond_3d
    const-string v2, "bus_con_token_thread_count"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 175
    const-string v2, "bus_con_token_thread_count"

    const/4 v7, 0x4

    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 176
    const-string v7, "bus_con_token_thread_count"

    invoke-interface {v0, v7, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 177
    :cond_3e
    const-string v2, "bus_con_video_keep_screen_on"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 178
    const-string v2, "bus_con_video_keep_screen_on"

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 179
    const-string v7, "bus_con_video_keep_screen_on"

    invoke-interface {v0, v7, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 180
    :cond_3f
    const-string v2, "bus_con_auto_click_delay"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 181
    const-string v2, "bus_con_auto_click_delay"

    const/16 v7, 0xbb8

    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 182
    const-string v7, "bus_con_auto_click_delay"

    invoke-interface {v0, v7, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 183
    :cond_40
    const-string v2, "bus_con_express_host"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 184
    const-string v2, "bus_con_express_host"

    const-string v7, "https://lf-static.tiktokpangle-cdn-us.com/obj/ad-pattern-tx/"

    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 185
    const-string v7, "bus_con_express_host"

    invoke-interface {v0, v7, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 186
    :cond_41
    const-string v2, "bus_con_check_clz"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 187
    const-string v2, "bus_con_check_clz"

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 188
    const-string v7, "bus_con_check_clz"

    invoke-interface {v0, v7, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 189
    :cond_42
    const-string v2, "bus_con_url_check"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 190
    const-string v2, "bus_con_url_check"

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 191
    const-string v7, "bus_con_url_check"

    invoke-interface {v0, v7, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 192
    :cond_43
    const-string v2, "bus_con_behavior_count"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 193
    const-string v2, "bus_con_behavior_count"

    const/16 v7, 0x12c

    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 194
    const-string v7, "bus_con_behavior_count"

    invoke-interface {v0, v7, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 195
    :cond_44
    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->oJ:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 196
    invoke-virtual {v6, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 197
    invoke-interface {v0, v2, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 198
    :cond_45
    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ZYk:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_46

    const/16 v7, 0x2710

    .line 199
    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 200
    invoke-interface {v0, v2, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 201
    :cond_46
    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->tB:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_47

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 202
    invoke-virtual {v6, v2, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 203
    invoke-interface {v0, v2, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;F)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 204
    :cond_47
    const-string v2, "perf_con"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 205
    :try_start_1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_5e

    .line 206
    const-string v7, "perf_con_stats_rate"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 207
    const-string v7, "perf_con_stats_rate"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 208
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_48

    .line 209
    const-string v8, "perf_con_stats_rate"

    invoke-interface {v0, v8, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    goto :goto_8

    :catchall_1
    move-exception v4

    goto/16 :goto_9

    .line 210
    :cond_48
    :goto_8
    const-string v7, "perf_con_applog_send"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 211
    const-string v7, "perf_con_applog_send"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 212
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_49

    .line 213
    const-string v8, "perf_con_applog_send"

    invoke-interface {v0, v8, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 214
    :cond_49
    const-string v7, "perf_con_apm_native"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 215
    const-string v7, "perf_con_apm_native"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 216
    const-string v8, "perf_con_apm_native"

    invoke-interface {v0, v8, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 217
    :cond_4a
    const-string v7, "perf_con_webview_preload_cache"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 218
    const-string v7, "perf_con_webview_preload_cache"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 219
    const-string v8, "perf_con_webview_preload_cache"

    invoke-interface {v0, v8, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 220
    :cond_4b
    const-string v7, "perf_con_webview_preload_cache_v3"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 221
    const-string v7, "perf_con_webview_preload_cache_v3"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 222
    const-string v8, "perf_con_webview_preload_cache_v3"

    invoke-interface {v0, v8, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 223
    :cond_4c
    const-string v7, "perf_con_webview_cache_count"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 224
    const-string v7, "perf_con_webview_cache_count"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 225
    const-string v8, "perf_con_webview_cache_count"

    invoke-interface {v0, v8, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 226
    :cond_4d
    const-string v7, "perf_con_webview_cache_count_v3"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 227
    const-string v7, "perf_con_webview_cache_count_v3"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 228
    const-string v8, "perf_con_webview_cache_count_v3"

    invoke-interface {v0, v8, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 229
    :cond_4e
    const-string v7, "perf_con_thread_stack_size"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 230
    const-string v7, "perf_con_thread_stack_size"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const/high16 v8, -0x80000

    if-lt v7, v8, :cond_4f

    if-gtz v7, :cond_4f

    .line 231
    const-string v8, "perf_con_thread_stack_size"

    invoke-interface {v0, v8, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 232
    :cond_4f
    const-string v7, "perf_con_use_new_thread_pool"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 233
    const-string v7, "perf_con_use_new_thread_pool"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 234
    const-string v8, "perf_con_use_new_thread_pool"

    invoke-interface {v0, v8, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 235
    :cond_50
    const-string v7, "perf_con_thread_pool_config"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 236
    const-string v7, "perf_con_thread_pool_config"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 237
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_51

    .line 238
    const-string v8, "perf_con_thread_pool_config"

    invoke-interface {v0, v8, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 239
    :cond_51
    const-string v7, "perf_con_is_new_net_thread"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 240
    const-string v7, "perf_con_is_new_net_thread"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 241
    const-string v8, "perf_con_is_new_net_thread"

    invoke-interface {v0, v8, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 242
    :cond_52
    const-string v7, "perf_con_use_prop"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 243
    const-string v7, "perf_con_use_prop"

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/HL;->oJ(I)V

    .line 244
    :cond_53
    const-string v4, "perf_con_adlog_expire_time"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 245
    const-string v4, "perf_con_adlog_expire_time"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 246
    const-string v4, "perf_con_adlog_expire_time"

    invoke-interface {v0, v4, v7, v8}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;J)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 247
    :cond_54
    const-string v4, "perf_con_adlog_turn_off_retry_ad"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 248
    const-string v4, "perf_con_adlog_turn_off_retry_ad"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 249
    const-string v4, "perf_con_adlog_turn_off_retry_ad"

    invoke-interface {v0, v4, v7, v8}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;J)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 250
    :cond_55
    const-string v4, "perf_con_adlog_turn_off_retry_stats"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 251
    const-string v4, "perf_con_adlog_turn_off_retry_stats"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 252
    const-string v4, "perf_con_adlog_turn_off_retry_stats"

    invoke-interface {v0, v4, v7, v8}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;J)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 253
    :cond_56
    const-string v4, "perf_con_applog_rate"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 254
    const-string v4, "perf_con_applog_rate"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 255
    const-string v7, "perf_con_applog_rate"

    invoke-interface {v0, v7, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 256
    :cond_57
    const-string v4, "perf_con_track_url_strategy"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 257
    const-string v4, "perf_con_track_url_strategy"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 258
    const-string v7, "perf_con_track_url_strategy"

    invoke-interface {v0, v7, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 259
    :cond_58
    const-string v4, "perf_con_drawable_code"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 260
    const-string v4, "perf_con_drawable_code"

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 261
    const-string v7, "perf_con_drawable_code"

    invoke-interface {v0, v7, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 262
    :cond_59
    const-string v4, "perf_con_close_button_delay_check_time"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 263
    const-string v4, "perf_con_close_button_delay_check_time"

    const/4 v7, -0x1

    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 264
    const-string v7, "perf_con_close_button_delay_check_time"

    invoke-interface {v0, v7, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 265
    :cond_5a
    const-string v4, "perf_con_drop2rt_skip_label_list"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 266
    const-string v4, "perf_con_drop2rt_skip_label_list"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 267
    const-string v7, "perf_con_drop2rt_skip_label_list"

    invoke-interface {v0, v7, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 268
    :cond_5b
    const-string v4, "perf_con_crypt_V4_get_ad"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 269
    const-string v4, "perf_con_crypt_V4_get_ad"

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 270
    const-string v7, "perf_con_crypt_V4_get_ad"

    invoke-interface {v0, v7, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 271
    :cond_5c
    const-string v4, "perf_con_crypt_V4_applog"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 272
    const-string v4, "perf_con_crypt_V4_applog"

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 273
    const-string v7, "perf_con_crypt_V4_applog"

    invoke-interface {v0, v7, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 274
    :cond_5d
    const-string v4, "perf_con_crypt_V4"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 275
    const-string v4, "perf_con_crypt_V4"

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 276
    const-string v5, "perf_con_crypt_V4"

    invoke-interface {v0, v5, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_a

    .line 277
    :goto_9
    const-string v5, "SettingsDefaultRepository"

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_5e
    :goto_a
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 279
    :try_start_2
    const-string v5, "app_common_config"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    const-string v1, "bus_con"

    const-string v2, "bus_con"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_b

    :catch_0
    move-exception v1

    .line 282
    const-string v2, "coreSettingJson"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SettingsDefaultRepository"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    :goto_b
    const-string v1, "core_settings"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 284
    const-string v1, "dual_event_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 285
    const-string v1, "dual_event_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 286
    const-string v2, "dual_event_url"

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 287
    :cond_5f
    const-string v1, "token_enable"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 288
    const-string v1, "token_enable"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 289
    const-string v2, "token_enable"

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 290
    :cond_60
    const-string v1, "token_adx_ids"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 291
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 292
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_61

    .line 293
    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    goto :goto_c

    .line 294
    :cond_61
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 295
    :cond_62
    :goto_c
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ()V

    .line 296
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->tb()V

    .line 297
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->ex()V

    return-void
.end method
