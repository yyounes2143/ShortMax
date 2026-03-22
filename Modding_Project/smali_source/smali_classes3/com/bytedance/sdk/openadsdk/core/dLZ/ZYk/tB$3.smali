.class final Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$3;
.super Lcom/bytedance/sdk/component/so/so;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;->ZYk(ZLjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Pfn:Z

.field final synthetic ZYk:Z

.field final synthetic ba:Ljava/lang/String;

.field final synthetic cFZ:Ljava/lang/String;

.field final synthetic ex:Z

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;

.field final synthetic so:Ljava/lang/String;

.field final synthetic tB:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;ZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$3;->oJ:Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;

    .line 2
    .line 3
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$3;->ZYk:Z

    .line 4
    .line 5
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$3;->tB:Ljava/lang/String;

    .line 6
    .line 7
    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$3;->ex:Z

    .line 8
    .line 9
    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$3;->Pfn:Z

    .line 10
    .line 11
    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$3;->ba:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p8, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$3;->cFZ:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p9, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$3;->so:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/so/so;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "type"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$3;->oJ:Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;->ZYk:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    const-string v1, "success"

    .line 16
    .line 17
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$3;->ZYk:Z

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    const-string v1, "url"

    .line 23
    .line 24
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$3;->tB:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$3;->ex:Z

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    new-instance v1, Lorg/json/JSONObject;

    .line 34
    .line 35
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v2, "retry"

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    const-string v2, "pag_json_data"

    .line 45
    .line 46
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$3;->Pfn:Z

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$3;->ba:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_1

    .line 64
    .line 65
    const-string v1, "description"

    .line 66
    .line 67
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$3;->ba:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$3;->oJ:Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;

    .line 73
    .line 74
    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;->tB:F

    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    cmpl-float v2, v1, v2

    .line 78
    .line 79
    if-ltz v2, :cond_2

    .line 80
    .line 81
    const-string v2, "progress"

    .line 82
    .line 83
    const/high16 v3, 0x42c80000    # 100.0f

    .line 84
    .line 85
    mul-float/2addr v1, v3

    .line 86
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    int-to-double v3, v1

    .line 91
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    .line 92
    .line 93
    div-double/2addr v3, v5

    .line 94
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .line 96
    .line 97
    :catchall_0
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$3;->oJ:Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;

    .line 98
    .line 99
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 100
    .line 101
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$3;->cFZ:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$3;->so:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method
