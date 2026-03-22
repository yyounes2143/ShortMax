.class public Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public BTZ:I

.field public HL:I

.field public IUZ:I

.field public Id:I

.field public Jc:I

.field public Ln:Z

.field public LpP:Z

.field public Pfn:I

.field public PiB:I

.field public QSm:I

.field public RZ:I

.field public Ry:I

.field public UN:Lorg/json/JSONObject;

.field public WcQ:I

.field public Xe:I

.field public ZYk:I

.field public awB:I

.field public ba:I

.field public cFZ:I

.field public cY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public dLZ:I

.field public eZI:I

.field public ex:I

.field public jFA:I

.field public jr:I

.field public kkU:I

.field public nke:Z

.field public oJ:Ljava/lang/String;

.field public oq:Z

.field public si:I

.field public so:I

.field public tB:I

.field public tb:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 73
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->ZYk:I

    .line 74
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->tB:I

    const/4 v1, 0x2

    .line 75
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->ex:I

    .line 76
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->Pfn:I

    const/16 v2, 0x64

    .line 77
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->ba:I

    const/4 v2, 0x0

    .line 78
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->cFZ:I

    .line 79
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->so:I

    .line 80
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->jFA:I

    const/4 v3, 0x3

    .line 81
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->kkU:I

    const/16 v3, 0x1e

    .line 82
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->dLZ:I

    .line 83
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->BTZ:I

    .line 84
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->PiB:I

    .line 85
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->WcQ:I

    .line 86
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->awB:I

    const/16 v3, 0x5dc

    .line 87
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->eZI:I

    .line 88
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->si:I

    const/16 v3, 0xdac

    .line 89
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->Ry:I

    .line 90
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->RZ:I

    const/4 v3, 0x5

    .line 91
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->QSm:I

    .line 92
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->oq:Z

    .line 93
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->Id:I

    .line 94
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->jr:I

    const/4 v1, -0x1

    .line 95
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->Xe:I

    .line 96
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->tb:I

    .line 97
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->HL:I

    .line 98
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->IUZ:I

    .line 99
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->Ln:Z

    .line 100
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->LpP:Z

    .line 101
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->nke:Z

    .line 102
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->Jc:I

    .line 103
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->UN:Lorg/json/JSONObject;

    .line 104
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->oJ:Ljava/lang/String;

    .line 105
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->tB:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->ZYk:I

    .line 3
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->tB:I

    const/4 v1, 0x2

    .line 4
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->ex:I

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->Pfn:I

    const/16 v2, 0x64

    .line 6
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->ba:I

    const/4 v3, 0x0

    .line 7
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->cFZ:I

    .line 8
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->so:I

    .line 9
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->jFA:I

    const/4 v4, 0x3

    .line 10
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->kkU:I

    const/16 v5, 0x1e

    .line 11
    iput v5, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->dLZ:I

    .line 12
    iput v5, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->BTZ:I

    .line 13
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->PiB:I

    .line 14
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->WcQ:I

    .line 15
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->awB:I

    const/16 v6, 0x5dc

    .line 16
    iput v6, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->eZI:I

    .line 17
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->si:I

    const/16 v7, 0xdac

    .line 18
    iput v7, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->Ry:I

    .line 19
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->RZ:I

    const/4 v7, 0x5

    .line 20
    iput v7, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->QSm:I

    .line 21
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->oq:Z

    .line 22
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->Id:I

    .line 23
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->jr:I

    const/4 v8, -0x1

    .line 24
    iput v8, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->Xe:I

    .line 25
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->tb:I

    .line 26
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->HL:I

    .line 27
    iput v7, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->IUZ:I

    .line 28
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->Ln:Z

    .line 29
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->LpP:Z

    .line 30
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->nke:Z

    .line 31
    iput v8, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->Jc:I

    .line 32
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->UN:Lorg/json/JSONObject;

    if-nez p1, :cond_0

    return-void

    .line 34
    :cond_0
    const-string v9, "code_id"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->oJ:Ljava/lang/String;

    .line 35
    const-string v9, "auto_play"

    invoke-virtual {p1, v9, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->ZYk:I

    .line 36
    const-string v9, "endcard_close_time"

    invoke-virtual {p1, v9, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->Jc:I

    .line 37
    const-string v9, "voice_control"

    invoke-virtual {p1, v9, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->tB:I

    .line 38
    const-string v10, "rv_preload"

    invoke-virtual {p1, v10, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->ex:I

    .line 39
    const-string v10, "nv_preload"

    invoke-virtual {p1, v10, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->Pfn:I

    .line 40
    const-string v10, "proportion_watching"

    invoke-virtual {p1, v10, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->ba:I

    .line 41
    const-string v2, "skip_time_displayed"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->cFZ:I

    .line 42
    const-string v2, "video_skip_result"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->so:I

    .line 43
    const-string v2, "reg_creative_control"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->jFA:I

    .line 44
    const-string v2, "play_bar_show_time"

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->kkU:I

    .line 45
    const-string v2, "rv_skip_time"

    invoke-virtual {p1, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->dLZ:I

    if-gez v2, :cond_1

    .line 46
    iput v5, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->dLZ:I

    .line 47
    :cond_1
    invoke-virtual {p1, v9, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->PiB:I

    .line 48
    const-string v2, "if_show_win"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->WcQ:I

    .line 49
    const-string v2, "sp_preload"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->awB:I

    .line 50
    const-string v2, "stop_time"

    invoke-virtual {p1, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->eZI:I

    .line 51
    const-string v2, "native_playable_delay"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->si:I

    .line 52
    const-string v2, "time_out_control"

    invoke-virtual {p1, v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->Ry:I

    .line 53
    const-string v2, "playable_close_time"

    invoke-virtual {p1, v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->Xe:I

    .line 54
    const-string v2, "playable_reward_type"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->RZ:I

    .line 55
    const-string v2, "reward_is_callback"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->Id:I

    .line 56
    const-string v2, "iv_skip_time"

    invoke-virtual {p1, v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->QSm:I

    if-gez v2, :cond_2

    .line 57
    iput v7, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->QSm:I

    .line 58
    :cond_2
    const-string v2, "parent_tpl_ids"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->oJ(Lorg/json/JSONArray;)V

    .line 59
    const-string v2, "slot_type"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->jr:I

    .line 60
    const-string v1, "close_on_click"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->oq:Z

    .line 61
    const-string v1, "allow_system_back"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->tb:I

    .line 62
    const-string v1, "splash_skip_time"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->HL:I

    .line 63
    const-string v1, "splash_image_count_down_time"

    invoke-virtual {p1, v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->IUZ:I

    .line 64
    const-string v1, "splash_count_down_time_off"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->LpP:Z

    .line 65
    const-string v1, "splash_close_on_click"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->nke:Z

    .line 66
    const-string v1, "allow_mediaview_click"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->Ln:Z

    .line 67
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->tB:I

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->oJ(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 68
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->tB:I

    .line 69
    :cond_3
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->PiB:I

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->oJ(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 70
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->PiB:I

    .line 71
    :cond_4
    const-string v0, "multi_rv_skip_time"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->BTZ:I

    return-void
.end method

.method private static oJ(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public oJ(Lorg/json/JSONArray;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->cY:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->cY:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    return-void
.end method
