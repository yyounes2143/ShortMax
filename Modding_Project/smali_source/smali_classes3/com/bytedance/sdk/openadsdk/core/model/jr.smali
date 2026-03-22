.class public Lcom/bytedance/sdk/openadsdk/core/model/jr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;
    }
.end annotation


# instance fields
.field private BTZ:Lorg/json/JSONObject;

.field private Pfn:I

.field private PiB:I

.field private Ry:Lcom/bytedance/sdk/openadsdk/core/model/Jc;

.field private WcQ:I

.field private ZYk:I

.field private awB:I

.field private ba:I

.field private cFZ:Lorg/json/JSONObject;

.field private dLZ:Z

.field private eZI:Ljava/lang/String;

.field private ex:I

.field private jFA:Ljava/lang/String;

.field private kkU:Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;

.field private oJ:I

.field private si:Ljava/lang/String;

.field private so:I

.field private tB:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->ZYk:I

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->so:I

    .line 10
    .line 11
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;

    .line 17
    .line 18
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->awB:I

    .line 19
    .line 20
    const-string v0, "Next Ad"

    .line 21
    .line 22
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->eZI:Ljava/lang/String;

    .line 23
    .line 24
    const-string v0, "Next ad in %1$ds"

    .line 25
    .line 26
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->si:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method

.method public static oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/model/jr;
    .locals 4

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/jr;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/jr;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    const-string p0, "auto_switch"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->oJ:I

    .line 4
    const-string p0, "playable_preload_count"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->ZYk:I

    .line 5
    const-string p0, "disable_on_interaction"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->tB:I

    .line 6
    const-string p0, "ceiling_type"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->ex:I

    .line 7
    const-string p0, "can_loop"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->Pfn:I

    .line 8
    const-string p0, "multi_skip_time"

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->ba:I

    .line 9
    const-string p0, "load_more_strategy"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->so:I

    .line 10
    const-string p0, "report_show_by_percent"

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->awB:I

    .line 11
    const-string p0, "gesture_tpl_info"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->cFZ:Lorg/json/JSONObject;

    if-eqz p0, :cond_3

    .line 12
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/Jc;

    move-result-object p0

    iput-object p0, v0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/Jc;

    if-eqz p0, :cond_1

    .line 13
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->tB()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 14
    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;-><init>()V

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/Jc;

    .line 15
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->oJ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;

    move-result-object p0

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/Jc;

    .line 16
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->ZYk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;->ZYk(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;

    move-result-object p0

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/Jc;

    .line 17
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->tB()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;->tB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;

    move-result-object p0

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/Jc;

    .line 18
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->ex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;->ex(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;

    move-result-object p0

    .line 19
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/ZYk;->oJ()Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/ZYk;

    move-result-object v2

    const-string v3, "guide"

    invoke-virtual {v2, p0, v3}, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;Ljava/lang/String;)V

    .line 20
    :cond_1
    iget-object p0, v0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->cFZ:Lorg/json/JSONObject;

    const-string v2, "delay_show_time"

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->PiB:I

    if-gez p0, :cond_2

    .line 21
    iput v3, v0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->PiB:I

    .line 22
    :cond_2
    iget-object p0, v0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->cFZ:Lorg/json/JSONObject;

    const-string v2, "dismiss_after_idle_time"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->WcQ:I

    if-gtz p0, :cond_3

    .line 23
    iput v3, v0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->WcQ:I

    .line 24
    :cond_3
    const-string p0, "agg_endcard_url"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->jFA:Ljava/lang/String;

    .line 25
    const-string p0, "has_more"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->dLZ:Z

    .line 26
    const-string p0, "session_params"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->BTZ:Lorg/json/JSONObject;

    .line 27
    const-string p0, "layout_config"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;->oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;

    move-result-object p0

    iput-object p0, v0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public BTZ()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->BTZ:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public Pfn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->WcQ:I

    .line 2
    .line 3
    return v0
.end method

.method public PiB()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->dLZ:Z

    .line 2
    .line 3
    return v0
.end method

.method public WcQ()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->tB:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public ZYk()Lorg/json/JSONObject;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/Jc;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->ex()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    new-instance v2, Lorg/json/JSONObject;

    .line 18
    .line 19
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v2

    .line 23
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/ZYk;->oJ()Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/ZYk;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v2, "guide"

    .line 28
    .line 29
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/Jc;

    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->oJ()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/Jc;

    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->ZYk()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v0, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/ZYk;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    return-object v1

    .line 52
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    .line 53
    .line 54
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    return-object v2

    .line 58
    :catch_0
    return-object v1
.end method

.method public awB()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->oJ:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public ba()Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;

    .line 2
    .line 3
    return-object v0
.end method

.method public cFZ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->jFA:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public dLZ()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->ex:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public eZI()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->ZYk:I

    .line 2
    .line 3
    return v0
.end method

.method public ex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->PiB:I

    .line 2
    .line 3
    return v0
.end method

.method public jFA()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->ba:I

    .line 2
    .line 3
    return v0
.end method

.method public kkU()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->Pfn:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public oJ()Z
    .locals 2

    .line 28
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->awB:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public si()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "auto_switch"

    .line 7
    .line 8
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->oJ:I

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "playable_preload_count"

    .line 14
    .line 15
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->ZYk:I

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "disable_on_interaction"

    .line 21
    .line 22
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->tB:I

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "ceiling_type"

    .line 28
    .line 29
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->ex:I

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v1, "can_loop"

    .line 35
    .line 36
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->Pfn:I

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    const-string v1, "multi_skip_time"

    .line 42
    .line 43
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->ba:I

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    const-string v1, "load_more_strategy"

    .line 49
    .line 50
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->so:I

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    const-string v1, "report_show_by_percent"

    .line 56
    .line 57
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->awB:I

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    const-string v1, "gesture_tpl_info"

    .line 63
    .line 64
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->cFZ:Lorg/json/JSONObject;

    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    const-string v1, "agg_endcard_url"

    .line 70
    .line 71
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->jFA:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    .line 75
    .line 76
    const-string v1, "layoutConfig"

    .line 77
    .line 78
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;->ba()Lorg/json/JSONObject;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    const-string v1, "has_more"

    .line 88
    .line 89
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->dLZ:Z

    .line 90
    .line 91
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    const-string v1, "session_params"

    .line 95
    .line 96
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->BTZ:Lorg/json/JSONObject;

    .line 97
    .line 98
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    :catch_0
    return-object v0
.end method

.method public so()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->so:I

    .line 2
    .line 3
    return v0
.end method

.method public tB()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/Jc;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->Pfn()Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
