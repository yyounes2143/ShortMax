.class Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Landroid/view/View;

.field final synthetic oJ:Ljava/util/Map;

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;Ljava/util/Map;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$2;->oJ:Ljava/util/Map;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$2;->ZYk:Landroid/view/View;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$2;->oJ:Ljava/util/Map;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    new-instance v2, Lorg/json/JSONObject;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$2;->oJ:Ljava/util/Map;

    .line 17
    .line 18
    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    move-object v1, v2

    .line 22
    goto :goto_1

    .line 23
    :catchall_0
    move-exception v2

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    .line 26
    .line 27
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :goto_1
    new-instance v2, Lorg/json/JSONObject;

    .line 32
    .line 33
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v3, "width"

    .line 37
    .line 38
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$2;->ZYk:Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 45
    .line 46
    .line 47
    const-string v3, "height"

    .line 48
    .line 49
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$2;->ZYk:Landroid/view/View;

    .line 50
    .line 51
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    const-string v3, "alpha"

    .line 59
    .line 60
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$2;->ZYk:Landroid/view/View;

    .line 61
    .line 62
    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    float-to-double v4, v4

    .line 67
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    const-string v3, "root_view"

    .line 71
    .line 72
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    .line 80
    .line 81
    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    .line 84
    goto :goto_3

    .line 85
    :goto_2
    const-string v3, "TTAD.RFReportManager"

    .line 86
    .line 87
    const-string v4, "run: "

    .line 88
    .line 89
    invoke-static {v3, v4, v2}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    :goto_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    .line 93
    .line 94
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Pfn:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    .line 104
    .line 105
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cdg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    .line 110
    .line 111
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;->jFA()V

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    .line 115
    .line 116
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    .line 121
    .line 122
    if-eqz v1, :cond_1

    .line 123
    .line 124
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$2;->oJ:Ljava/util/Map;

    .line 125
    .line 126
    if-eqz v1, :cond_1

    .line 127
    .line 128
    const-string v2, "dynamic_show_type"

    .line 129
    .line 130
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_1

    .line 135
    .line 136
    const/4 v1, 0x1

    .line 137
    goto :goto_4

    .line 138
    :cond_1
    const/4 v1, 0x0

    .line 139
    :goto_4
    new-instance v2, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;

    .line 140
    .line 141
    if-eqz v1, :cond_2

    .line 142
    .line 143
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    .line 144
    .line 145
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->kkU()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    goto :goto_5

    .line 156
    :cond_2
    const/4 v1, -0x1

    .line 157
    :goto_5
    invoke-direct {v2, v1}, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;-><init>(I)V

    .line 158
    .line 159
    .line 160
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    .line 161
    .line 162
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;)V

    .line 163
    .line 164
    .line 165
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    .line 166
    .line 167
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 172
    .line 173
    const v3, 0x1020002

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn;->oJ(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;)V

    .line 181
    .line 182
    .line 183
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/jr/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 184
    .line 185
    .line 186
    return-void
.end method
