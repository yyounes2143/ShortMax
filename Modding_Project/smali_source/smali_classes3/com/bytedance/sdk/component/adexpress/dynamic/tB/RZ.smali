.class public Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/dynamic/tB/cFZ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/adexpress/dynamic/tB/cFZ<",
        "Lcom/bytedance/sdk/component/adexpress/ba/HL;",
        ">;"
    }
.end annotation


# instance fields
.field private Pfn:Ljava/lang/String;

.field private ZYk:Landroid/content/Context;

.field private ba:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/kkU;

.field private ex:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

.field private oJ:Lcom/bytedance/sdk/component/adexpress/ba/HL;

.field private tB:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/kkU;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->ZYk:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->tB:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->ex:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->Pfn:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->ba:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/kkU;

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->Pfn()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private Pfn()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->ex:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->bgF()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->tB:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->getDynamicClickListener()Lcom/bytedance/sdk/component/adexpress/dynamic/ba/oJ;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 14
    .line 15
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v3, "convertActionType"

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    :catchall_0
    const-string v2, "18"

    .line 25
    .line 26
    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->Pfn:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    new-instance v2, Lcom/bytedance/sdk/component/adexpress/ba/HL;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->ZYk:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {v3}, Lcom/bytedance/sdk/component/adexpress/tB/oJ;->jFA(Landroid/content/Context;)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    iget-object v5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->ba:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/kkU;

    .line 43
    .line 44
    invoke-direct {v2, v3, v4, v5}, Lcom/bytedance/sdk/component/adexpress/ba/HL;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/kkU;)V

    .line 45
    .line 46
    .line 47
    iput-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->oJ:Lcom/bytedance/sdk/component/adexpress/ba/HL;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/ba/HL;->getWriggleLayout()Landroid/widget/LinearLayout;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->oJ:Lcom/bytedance/sdk/component/adexpress/ba/HL;

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/ba/HL;->getWriggleLayout()Landroid/widget/LinearLayout;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    move-object v3, v1

    .line 62
    check-cast v3, Landroid/view/View$OnClickListener;

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->oJ:Lcom/bytedance/sdk/component/adexpress/ba/HL;

    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/ba/HL;->getTopTextView()Landroid/widget/TextView;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->ex:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->VSB()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_1

    .line 86
    .line 87
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->oJ:Lcom/bytedance/sdk/component/adexpress/ba/HL;

    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/ba/HL;->getTopTextView()Landroid/widget/TextView;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->ZYk:Landroid/content/Context;

    .line 94
    .line 95
    const-string v4, "tt_splash_wriggle_top_text_style_17"

    .line 96
    .line 97
    invoke-static {v3, v4}, Lcom/bytedance/sdk/component/utils/cY;->ZYk(Landroid/content/Context;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->oJ:Lcom/bytedance/sdk/component/adexpress/ba/HL;

    .line 106
    .line 107
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/ba/HL;->getTopTextView()Landroid/widget/TextView;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->ex:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->VSB()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_2
    new-instance v2, Lcom/bytedance/sdk/component/adexpress/ba/HL;

    .line 122
    .line 123
    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->ZYk:Landroid/content/Context;

    .line 124
    .line 125
    invoke-static {v3}, Lcom/bytedance/sdk/component/adexpress/tB/oJ;->jFA(Landroid/content/Context;)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    iget-object v5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->ba:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/kkU;

    .line 130
    .line 131
    invoke-direct {v2, v3, v4, v5}, Lcom/bytedance/sdk/component/adexpress/ba/HL;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/kkU;)V

    .line 132
    .line 133
    .line 134
    iput-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->oJ:Lcom/bytedance/sdk/component/adexpress/ba/HL;

    .line 135
    .line 136
    :cond_3
    :goto_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 137
    .line 138
    const/4 v3, -0x2

    .line 139
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 140
    .line 141
    .line 142
    const/16 v3, 0x51

    .line 143
    .line 144
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 145
    .line 146
    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->oJ:Lcom/bytedance/sdk/component/adexpress/ba/HL;

    .line 147
    .line 148
    iget-object v4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->ZYk:Landroid/content/Context;

    .line 149
    .line 150
    int-to-float v0, v0

    .line 151
    invoke-static {v4, v0}, Lcom/bytedance/sdk/component/adexpress/ex/cFZ;->oJ(Landroid/content/Context;F)F

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    float-to-int v0, v0

    .line 156
    neg-int v0, v0

    .line 157
    int-to-float v0, v0

    .line 158
    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->oJ:Lcom/bytedance/sdk/component/adexpress/ba/HL;

    .line 162
    .line 163
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->oJ:Lcom/bytedance/sdk/component/adexpress/ba/HL;

    .line 167
    .line 168
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->ex:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 169
    .line 170
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->oTd()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/adexpress/ba/HL;->setShakeText(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->oJ:Lcom/bytedance/sdk/component/adexpress/ba/HL;

    .line 178
    .line 179
    const/4 v2, 0x0

    .line 180
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->oJ:Lcom/bytedance/sdk/component/adexpress/ba/HL;

    .line 184
    .line 185
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/ba/HL;->getWriggleProgressIv()Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->oJ:Lcom/bytedance/sdk/component/adexpress/ba/HL;

    .line 190
    .line 191
    new-instance v3, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ$1;

    .line 192
    .line 193
    invoke-direct {v3, p0, v0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ$1;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/ba/oJ;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/adexpress/ba/HL;->setOnShakeViewListener(Lcom/bytedance/sdk/component/adexpress/ba/HL$oJ;)V

    .line 197
    .line 198
    .line 199
    return-void
.end method


# virtual methods
.method public ZYk()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->oJ:Lcom/bytedance/sdk/component/adexpress/ba/HL;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public ex()Lcom/bytedance/sdk/component/adexpress/ba/HL;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->oJ:Lcom/bytedance/sdk/component/adexpress/ba/HL;

    .line 2
    .line 3
    return-object v0
.end method

.method public oJ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->oJ:Lcom/bytedance/sdk/component/adexpress/ba/HL;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/ba/HL;->oJ()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic tB()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;->ex()Lcom/bytedance/sdk/component/adexpress/ba/HL;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
