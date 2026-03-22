.class final Lcom/bytedance/sdk/openadsdk/ex/tB$21;
.super Lcom/bytedance/sdk/component/so/so;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Pfn:Ljava/lang/String;

.field final synthetic ZYk:Ljava/lang/String;

.field final synthetic ex:J

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;JLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$21;->oJ:Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$21;->ZYk:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$21;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 6
    .line 7
    iput-wide p5, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$21;->ex:J

    .line 8
    .line 9
    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$21;->Pfn:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/so/so;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$21;->oJ:Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;->oJ()Lorg/json/JSONObject;

    .line 7
    .line 8
    .line 9
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    .line 13
    .line 14
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 15
    .line 16
    .line 17
    move-object v1, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    .line 20
    .line 21
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    :try_start_3
    const-string v2, "log_extra"

    .line 25
    .line 26
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$21;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->pe()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    const-string v2, "ua_policy"

    .line 36
    .line 37
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$21;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oG()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catch_0
    move-object v1, v0

    .line 52
    :catch_1
    :goto_1
    new-instance v2, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;

    .line 53
    .line 54
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$21;->ex:J

    .line 55
    .line 56
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$21;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 57
    .line 58
    invoke-direct {v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;-><init>(JLcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$21;->Pfn:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->ZYk(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$21;->ZYk:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->tB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$21;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->Pfn(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$21;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->cdg()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->so(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$21;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 94
    .line 95
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->eW()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$21;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 108
    .line 109
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->iPr()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->cFZ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/ZYk/oJ;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method
