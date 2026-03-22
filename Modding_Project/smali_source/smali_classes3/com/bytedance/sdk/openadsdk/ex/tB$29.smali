.class final Lcom/bytedance/sdk/openadsdk/ex/tB$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/ex/tB;->ex(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Ljava/lang/String;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$29;->oJ:Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$29;->ZYk:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public oJ()Lorg/json/JSONObject;
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "arbi_current_url"

    .line 12
    .line 13
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$29;->oJ:Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;

    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->tB()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    const-string v2, "current_url_index"

    .line 23
    .line 24
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$29;->oJ:Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->ex()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    const-string v2, "trigger_scroll_x"

    .line 34
    .line 35
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$29;->oJ:Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->jFA()F

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    float-to-double v3, v3

    .line 42
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    const-string v2, "trigger_scroll_y"

    .line 46
    .line 47
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$29;->oJ:Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->kkU()F

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    float-to-double v3, v3

    .line 54
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    const-string v2, "arbi_offset_y"

    .line 58
    .line 59
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$29;->oJ:Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;

    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->dLZ()F

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    float-to-double v3, v3

    .line 66
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    const-string v2, "scroll_type"

    .line 70
    .line 71
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$29;->oJ:Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;

    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->BTZ()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 78
    .line 79
    .line 80
    const-string v2, "scroll_duration"

    .line 81
    .line 82
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$29;->oJ:Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;

    .line 83
    .line 84
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->PiB()F

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    float-to-double v3, v3

    .line 89
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 90
    .line 91
    .line 92
    const-string v2, "ad_extra_data"

    .line 93
    .line 94
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catchall_0
    move-exception v1

    .line 103
    const-string v2, "onWebBehaviorScroll"

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    const-string v2, "TTAD.AdEvent"

    .line 114
    .line 115
    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    :goto_0
    return-object v0
.end method
