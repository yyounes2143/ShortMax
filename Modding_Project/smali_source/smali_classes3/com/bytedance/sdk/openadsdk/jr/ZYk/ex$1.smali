.class final Lcom/bytedance/sdk/openadsdk/jr/ZYk/ex$1;
.super Lcom/bytedance/sdk/component/so/so;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/jr/ZYk/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/jr/ZYk/oJ;Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/jr/ZYk/oJ;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/jr/ZYk/oJ;Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/jr/ZYk/ex$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/jr/ZYk/ex$1;->ZYk:Lcom/bytedance/sdk/openadsdk/jr/ZYk/oJ;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/jr/ZYk/ex$1;->tB:Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/so/so;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/jr/ZYk/ex$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ai()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/jr/ZYk/ex$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->RQ()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/jr/ZYk/ex$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uaj()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;

    .line 24
    .line 25
    const-string v2, "show_urls"

    .line 26
    .line 27
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/jr/ZYk/ex$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 28
    .line 29
    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;->oJ(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/jr/ZYk/ex$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/jr/ZYk/ex$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Lorg/json/JSONObject;

    .line 48
    .line 49
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/jr/ZYk/ex$1;->ZYk:Lcom/bytedance/sdk/openadsdk/jr/ZYk/oJ;

    .line 53
    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    :try_start_0
    const-string v3, "root_view"

    .line 57
    .line 58
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/jr/ZYk/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/jr/ZYk/oJ;)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/jr/ZYk/ex$1;->tB:Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;

    .line 66
    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    iget v2, v2, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;->oJ:I

    .line 70
    .line 71
    const/4 v3, -0x1

    .line 72
    if-eq v2, v3, :cond_2

    .line 73
    .line 74
    const-string v4, "dynamic_show_type"

    .line 75
    .line 76
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77
    .line 78
    .line 79
    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/jr/ZYk/ex$1;->tB:Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;

    .line 80
    .line 81
    iget v2, v2, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;->ZYk:I

    .line 82
    .line 83
    if-eq v2, v3, :cond_3

    .line 84
    .line 85
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(ILorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    :catchall_0
    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/jr/ZYk/ex$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 91
    .line 92
    const-string v3, "mrc_show"

    .line 93
    .line 94
    invoke-static {v2, v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method
