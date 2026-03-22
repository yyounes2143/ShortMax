.class Lcom/bytedance/sdk/openadsdk/si/Pfn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/si/ex;


# instance fields
.field private Pfn:I

.field private ZYk:I

.field private ba:I

.field private ex:I

.field oJ:J

.field private tB:Lcom/bytedance/sdk/openadsdk/si/ex;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/si/ex;III)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x80000000

    .line 5
    .line 6
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/si/Pfn;->ZYk:I

    .line 7
    .line 8
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/si/Pfn;->tB:Lcom/bytedance/sdk/openadsdk/si/ex;

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/si/Pfn;->oJ:J

    .line 15
    .line 16
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/si/Pfn;->ex:I

    .line 17
    .line 18
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/si/Pfn;->Pfn:I

    .line 19
    .line 20
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/si/Pfn;->ba:I

    .line 21
    .line 22
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/si/oJ;->oJ()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Ry;->tB(Landroid/content/Context;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/si/Pfn;->ZYk:I

    .line 33
    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public generatorModel()Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/si/Pfn;->tB:Lcom/bytedance/sdk/openadsdk/si/ex;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/si/ex;->generatorModel()Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "7.5.0.4"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->oJ(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/si/Pfn;->ex:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->oJ(I)V

    .line 15
    .line 16
    .line 17
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/si/Pfn;->Pfn:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->ZYk(I)V

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/si/Pfn;->ba:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->tB(I)V

    .line 25
    .line 26
    .line 27
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/si/Pfn;->oJ:J

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->ZYk(J)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/jFA;->cFZ()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->ba(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->ex()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->ex(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->tB()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->PiB()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/si/Pfn;->ZYk:I

    .line 59
    .line 60
    const/high16 v4, -0x80000000

    .line 61
    .line 62
    if-eq v3, v4, :cond_2

    .line 63
    .line 64
    const-string v3, "get_ad"

    .line 65
    .line 66
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-nez v3, :cond_0

    .line 71
    .line 72
    const-string v3, "dislike"

    .line 73
    .line 74
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-nez v3, :cond_0

    .line 79
    .line 80
    const-string v3, "stats"

    .line 81
    .line 82
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    :cond_0
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_1

    .line 93
    .line 94
    new-instance v1, Lorg/json/JSONObject;

    .line 95
    .line 96
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    .line 101
    .line 102
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :goto_0
    const-string v2, "nt"

    .line 106
    .line 107
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/si/Pfn;->ZYk:I

    .line 108
    .line 109
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->cFZ(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .line 118
    .line 119
    :catch_0
    :cond_2
    return-object v0
.end method
