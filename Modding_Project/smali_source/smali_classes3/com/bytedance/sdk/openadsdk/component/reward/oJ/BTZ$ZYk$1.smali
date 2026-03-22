.class Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk$1;
.super Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$oJ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk;->oJ(Landroid/app/Activity;IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Pfn:Z

.field final synthetic ZYk:I

.field final synthetic ba:F

.field final synthetic cFZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk;

.field final synthetic ex:Z

.field oJ:Z

.field final synthetic tB:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk;ILandroid/app/Activity;ZZF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk$1;->cFZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk;

    .line 2
    .line 3
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk$1;->ZYk:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk$1;->tB:Landroid/app/Activity;

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk$1;->ex:Z

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk$1;->Pfn:Z

    .line 10
    .line 11
    iput p6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk$1;->ba:F

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$oJ;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$1;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method oJ(II)V
    .locals 6

    .line 1
    :try_start_0
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk$1;->ZYk:I

    .line 2
    .line 3
    const/4 p2, 0x2

    .line 4
    if-ne p1, p2, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk$1;->tB:Landroid/app/Activity;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 17
    .line 18
    if-ne p1, p2, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk$1;->tB:Landroid/app/Activity;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk$1;->tB:Landroid/app/Activity;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->PiB(Landroid/content/Context;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    sub-int/2addr v0, p1

    .line 41
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk$1;->tB:Landroid/app/Activity;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk$1;->tB:Landroid/app/Activity;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->BTZ(Landroid/content/Context;)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    sub-int/2addr v0, p1

    .line 67
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk$1;->tB:Landroid/app/Activity;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-nez p1, :cond_6

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk$1;->ZYk:I

    .line 100
    .line 101
    const/4 v5, 0x1

    .line 102
    if-ne v4, v5, :cond_1

    .line 103
    .line 104
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk$1;->tB:Landroid/app/Activity;

    .line 105
    .line 106
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    .line 115
    .line 116
    if-ne v4, v5, :cond_1

    .line 117
    .line 118
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ()F

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    :goto_1
    float-to-int p2, p2

    .line 123
    add-int/2addr p1, p2

    .line 124
    goto :goto_2

    .line 125
    :cond_1
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk$1;->ZYk:I

    .line 126
    .line 127
    if-ne v4, p2, :cond_3

    .line 128
    .line 129
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk$1;->tB:Landroid/app/Activity;

    .line 130
    .line 131
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    .line 140
    .line 141
    if-ne v4, p2, :cond_3

    .line 142
    .line 143
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk$1;->ex:Z

    .line 144
    .line 145
    if-eqz p2, :cond_2

    .line 146
    .line 147
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ()F

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    float-to-int p2, p2

    .line 152
    add-int/2addr v1, p2

    .line 153
    :cond_2
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk$1;->Pfn:Z

    .line 154
    .line 155
    if-eqz p2, :cond_3

    .line 156
    .line 157
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ()F

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    goto :goto_1

    .line 162
    :cond_3
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 163
    .line 164
    .line 165
    move-result p2

    .line 166
    if-eqz p2, :cond_4

    .line 167
    .line 168
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 169
    .line 170
    .line 171
    iput-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk$1;->oJ:Z

    .line 172
    .line 173
    :cond_4
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk$1;->ba:F

    .line 174
    .line 175
    const/high16 p2, 0x42c80000    # 100.0f

    .line 176
    .line 177
    cmpl-float p1, p1, p2

    .line 178
    .line 179
    if-nez p1, :cond_5

    .line 180
    .line 181
    const/high16 p1, -0x1000000

    .line 182
    .line 183
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 184
    .line 185
    .line 186
    :cond_5
    return-void

    .line 187
    :cond_6
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk$1;->oJ:Z

    .line 188
    .line 189
    if-eqz p1, :cond_7

    .line 190
    .line 191
    const/4 p1, 0x0

    .line 192
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 193
    .line 194
    .line 195
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk$1;->oJ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    .line 197
    :catchall_0
    :cond_7
    return-void
.end method
