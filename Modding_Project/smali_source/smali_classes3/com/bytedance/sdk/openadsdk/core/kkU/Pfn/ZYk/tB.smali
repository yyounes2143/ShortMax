.class public Lcom/bytedance/sdk/openadsdk/core/kkU/Pfn/ZYk/tB;
.super Lcom/bytedance/adsdk/ugeno/ex/ex/tB;
.source "SourceFile"


# instance fields
.field private dLZ:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public varargs oJ([Ljava/lang/Object;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->Pfn:Ljava/util/Map;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :cond_0
    aget-object v0, p1, v1

    .line 15
    .line 16
    check-cast v0, Ljava/lang/Long;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    const-wide/16 v4, 0x3e8

    .line 23
    .line 24
    div-long/2addr v2, v4

    .line 25
    const/4 v0, 0x1

    .line 26
    aget-object p1, p1, v0

    .line 27
    .line 28
    check-cast p1, Ljava/lang/Long;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 31
    .line 32
    .line 33
    move-result-wide v6

    .line 34
    div-long/2addr v6, v4

    .line 35
    const-wide/16 v4, 0x0

    .line 36
    .line 37
    cmp-long p1, v2, v4

    .line 38
    .line 39
    if-gtz p1, :cond_1

    .line 40
    .line 41
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/Pfn/ZYk/tB;->dLZ:Z

    .line 42
    .line 43
    :cond_1
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->Pfn:Ljava/util/Map;

    .line 44
    .line 45
    const-string v1, "percent"

    .line 46
    .line 47
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->Pfn:Ljava/util/Map;

    .line 54
    .line 55
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Ljava/lang/String;

    .line 60
    .line 61
    const/high16 v1, -0x40800000    # -1.0f

    .line 62
    .line 63
    invoke-static {p1, v1}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;F)F

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    const/4 v1, 0x0

    .line 68
    cmpl-float v1, p1, v1

    .line 69
    .line 70
    if-ltz v1, :cond_3

    .line 71
    .line 72
    const/high16 v1, 0x42c80000    # 100.0f

    .line 73
    .line 74
    div-float/2addr p1, v1

    .line 75
    long-to-float v1, v6

    .line 76
    mul-float/2addr p1, v1

    .line 77
    long-to-float v1, v2

    .line 78
    cmpl-float p1, v1, p1

    .line 79
    .line 80
    if-ltz p1, :cond_3

    .line 81
    .line 82
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/Pfn/ZYk/tB;->dLZ:Z

    .line 83
    .line 84
    if-nez p1, :cond_3

    .line 85
    .line 86
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/Pfn/ZYk/tB;->dLZ:Z

    .line 87
    .line 88
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ:Lcom/bytedance/adsdk/ugeno/ex/dLZ;

    .line 89
    .line 90
    if-eqz p1, :cond_3

    .line 91
    .line 92
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ZYk:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 93
    .line 94
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ba:Ljava/lang/String;

    .line 95
    .line 96
    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->tB:Lcom/bytedance/adsdk/ugeno/ex/ba;

    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/bytedance/adsdk/ugeno/ex/ba;->ZYk()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-interface {p1, v1, v2, v3}, Lcom/bytedance/adsdk/ugeno/ex/dLZ;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Ljava/lang/String;Ljava/util/List;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->Pfn:Ljava/util/Map;

    .line 107
    .line 108
    const-string v1, "interval"

    .line 109
    .line 110
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Ljava/lang/String;

    .line 115
    .line 116
    const/4 v1, -0x1

    .line 117
    invoke-static {p1, v1}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;I)I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    int-to-long v4, p1

    .line 122
    cmp-long p1, v2, v4

    .line 123
    .line 124
    if-ltz p1, :cond_3

    .line 125
    .line 126
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/Pfn/ZYk/tB;->dLZ:Z

    .line 127
    .line 128
    if-nez p1, :cond_3

    .line 129
    .line 130
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/Pfn/ZYk/tB;->dLZ:Z

    .line 131
    .line 132
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ:Lcom/bytedance/adsdk/ugeno/ex/dLZ;

    .line 133
    .line 134
    if-eqz p1, :cond_3

    .line 135
    .line 136
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ZYk:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 137
    .line 138
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ba:Ljava/lang/String;

    .line 139
    .line 140
    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->tB:Lcom/bytedance/adsdk/ugeno/ex/ba;

    .line 141
    .line 142
    invoke-virtual {v3}, Lcom/bytedance/adsdk/ugeno/ex/ba;->ZYk()Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-interface {p1, v1, v2, v3}, Lcom/bytedance/adsdk/ugeno/ex/dLZ;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Ljava/lang/String;Ljava/util/List;)V

    .line 147
    .line 148
    .line 149
    :cond_3
    :goto_0
    return v0

    .line 150
    :cond_4
    :goto_1
    return v1
.end method
