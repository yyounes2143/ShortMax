.class public Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Xe;
.super Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/ba;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/ba;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;)V

    .line 2
    .line 3
    .line 4
    iget p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->so:I

    .line 5
    .line 6
    add-int/lit8 p2, p2, 0x6

    .line 7
    .line 8
    iput p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->so:I

    .line 9
    .line 10
    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->wd()Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    new-instance p2, Lcom/bytedance/sdk/component/adexpress/ba/oJ;

    .line 19
    .line 20
    iget-object p3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 21
    .line 22
    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->cFZ()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iget-object p3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 27
    .line 28
    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->Pfn()F

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    iget-object p3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 33
    .line 34
    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->so()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    const/4 v4, 0x1

    .line 39
    move-object v0, p2

    .line 40
    move-object v1, p1

    .line 41
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/adexpress/ba/oJ;-><init>(Landroid/content/Context;IFII)V

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 45
    .line 46
    const/4 p1, 0x1

    .line 47
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/adexpress/ba/oJ;->setMaxLines(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    new-instance p2, Landroid/widget/TextView;

    .line 52
    .line 53
    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 60
    .line 61
    .line 62
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->getClickArea()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/ba;->getWidgetLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method private dLZ()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 2
    .line 3
    instance-of v0, v0, Lcom/bytedance/sdk/component/adexpress/ba/oJ;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Xe;->getText()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    .line 18
    .line 19
    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-ge v3, v4, :cond_1

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 43
    .line 44
    check-cast v0, Lcom/bytedance/sdk/component/adexpress/ba/oJ;

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/adexpress/ba/oJ;->setMaxLines(I)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 51
    .line 52
    check-cast v0, Lcom/bytedance/sdk/component/adexpress/ba/oJ;

    .line 53
    .line 54
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->cFZ()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/adexpress/ba/oJ;->setTextColor(I)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 64
    .line 65
    check-cast v0, Lcom/bytedance/sdk/component/adexpress/ba/oJ;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->Pfn()F

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/adexpress/ba/oJ;->setTextSize(F)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 77
    .line 78
    check-cast v0, Lcom/bytedance/sdk/component/adexpress/ba/oJ;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/ba/oJ;->setAnimationText(Ljava/util/List;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 84
    .line 85
    check-cast v0, Lcom/bytedance/sdk/component/adexpress/ba/oJ;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->cdg()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/ba/oJ;->setAnimationType(I)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 97
    .line 98
    check-cast v0, Lcom/bytedance/sdk/component/adexpress/ba/oJ;

    .line 99
    .line 100
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->HyG()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    mul-int/lit16 v1, v1, 0x3e8

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/ba/oJ;->setAnimationDuration(I)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 112
    .line 113
    check-cast v0, Lcom/bytedance/sdk/component/adexpress/ba/oJ;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/ba/oJ;->oJ()V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method private kkU()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->PiB:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;->kkU()Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;->ZYk()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "source"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x2

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->PiB:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;->kkU()Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;->ZYk()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v3, "title"

    .line 31
    .line 32
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->PiB:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;->kkU()Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;->ZYk()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v3, "text_star"

    .line 49
    .line 50
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_8

    .line 55
    .line 56
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->ba()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 63
    .line 64
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->Pfn()F

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    const/4 v4, 0x1

    .line 69
    invoke-static {v0, v3, v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/Pfn/dLZ;->ZYk(Ljava/lang/String;FZ)[I

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    iget-object v5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 78
    .line 79
    invoke-virtual {v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->ZYk()I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    int-to-float v5, v5

    .line 84
    invoke-static {v3, v5}, Lcom/bytedance/sdk/component/adexpress/ex/cFZ;->oJ(Landroid/content/Context;F)F

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    float-to-int v3, v3

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    iget-object v6, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 94
    .line 95
    invoke-virtual {v6}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->tB()I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    int-to-float v6, v6

    .line 100
    invoke-static {v5, v6}, Lcom/bytedance/sdk/component/adexpress/ex/cFZ;->oJ(Landroid/content/Context;F)F

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    float-to-int v5, v5

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    iget-object v7, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 110
    .line 111
    invoke-virtual {v7}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->ex()I

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    int-to-float v7, v7

    .line 116
    invoke-static {v6, v7}, Lcom/bytedance/sdk/component/adexpress/ex/cFZ;->oJ(Landroid/content/Context;F)F

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    float-to-int v6, v6

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    iget-object v8, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 126
    .line 127
    invoke-virtual {v8}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->oJ()I

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    int-to-float v8, v8

    .line 132
    invoke-static {v7, v8}, Lcom/bytedance/sdk/component/adexpress/ex/cFZ;->oJ(Landroid/content/Context;F)F

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    float-to-int v7, v7

    .line 137
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    iget-object v9, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->PiB:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;

    .line 142
    .line 143
    invoke-virtual {v9}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;->kkU()Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    invoke-virtual {v9}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;->ZYk()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    invoke-static {v9, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_1

    .line 156
    .line 157
    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->so:I

    .line 158
    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    iget-object v10, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 164
    .line 165
    invoke-virtual {v10}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->Pfn()F

    .line 166
    .line 167
    .line 168
    move-result v10

    .line 169
    invoke-static {v9, v10}, Lcom/bytedance/sdk/component/adexpress/ex/cFZ;->oJ(Landroid/content/Context;F)F

    .line 170
    .line 171
    .line 172
    move-result v9

    .line 173
    float-to-int v9, v9

    .line 174
    sub-int/2addr v1, v9

    .line 175
    sub-int/2addr v1, v3

    .line 176
    sub-int/2addr v1, v7

    .line 177
    if-le v1, v4, :cond_1

    .line 178
    .line 179
    mul-int/lit8 v9, v8, 0x2

    .line 180
    .line 181
    if-gt v1, v9, :cond_1

    .line 182
    .line 183
    div-int/lit8 v0, v1, 0x2

    .line 184
    .line 185
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 186
    .line 187
    sub-int/2addr v3, v0

    .line 188
    sub-int/2addr v1, v0

    .line 189
    sub-int/2addr v7, v1

    .line 190
    invoke-virtual {v2, v5, v3, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :cond_1
    aget v0, v0, v4

    .line 195
    .line 196
    add-int/2addr v0, v3

    .line 197
    add-int/2addr v0, v7

    .line 198
    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->so:I

    .line 199
    .line 200
    sub-int/2addr v0, v1

    .line 201
    sub-int/2addr v0, v2

    .line 202
    if-gt v0, v4, :cond_2

    .line 203
    .line 204
    return-void

    .line 205
    :cond_2
    mul-int/lit8 v1, v8, 0x2

    .line 206
    .line 207
    if-gt v0, v1, :cond_3

    .line 208
    .line 209
    div-int/lit8 v1, v0, 0x2

    .line 210
    .line 211
    iget-object v4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 212
    .line 213
    sub-int/2addr v3, v1

    .line 214
    sub-int/2addr v0, v1

    .line 215
    sub-int/2addr v7, v0

    .line 216
    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 217
    .line 218
    .line 219
    goto :goto_0

    .line 220
    :cond_3
    add-int v1, v3, v7

    .line 221
    .line 222
    if-gt v0, v1, :cond_5

    .line 223
    .line 224
    if-le v3, v7, :cond_4

    .line 225
    .line 226
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 227
    .line 228
    sub-int/2addr v0, v8

    .line 229
    sub-int/2addr v3, v0

    .line 230
    sub-int/2addr v7, v8

    .line 231
    invoke-virtual {v1, v5, v3, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 232
    .line 233
    .line 234
    goto :goto_0

    .line 235
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 236
    .line 237
    sub-int/2addr v3, v8

    .line 238
    sub-int/2addr v0, v8

    .line 239
    sub-int/2addr v7, v0

    .line 240
    invoke-virtual {v1, v5, v3, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 241
    .line 242
    .line 243
    goto :goto_0

    .line 244
    :cond_5
    sub-int/2addr v0, v3

    .line 245
    sub-int/2addr v0, v7

    .line 246
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 247
    .line 248
    const/4 v3, 0x0

    .line 249
    invoke-virtual {v1, v5, v3, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    const/high16 v3, 0x3f800000    # 1.0f

    .line 257
    .line 258
    invoke-static {v1, v3}, Lcom/bytedance/sdk/component/adexpress/ex/cFZ;->oJ(Landroid/content/Context;F)F

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    float-to-int v1, v1

    .line 263
    add-int/2addr v1, v4

    .line 264
    if-gt v0, v1, :cond_6

    .line 265
    .line 266
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 267
    .line 268
    check-cast v0, Landroid/widget/TextView;

    .line 269
    .line 270
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 271
    .line 272
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->Pfn()F

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    sub-float/2addr v1, v3

    .line 277
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 278
    .line 279
    .line 280
    goto :goto_0

    .line 281
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-static {v1, v3}, Lcom/bytedance/sdk/component/adexpress/ex/cFZ;->oJ(Landroid/content/Context;F)F

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    float-to-int v1, v1

    .line 290
    add-int/2addr v1, v4

    .line 291
    mul-int/2addr v1, v2

    .line 292
    if-gt v0, v1, :cond_7

    .line 293
    .line 294
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 295
    .line 296
    check-cast v0, Landroid/widget/TextView;

    .line 297
    .line 298
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 299
    .line 300
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->Pfn()F

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    const/high16 v3, 0x40000000    # 2.0f

    .line 305
    .line 306
    sub-float/2addr v1, v3

    .line 307
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 308
    .line 309
    .line 310
    goto :goto_0

    .line 311
    :cond_7
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Xe$1;

    .line 312
    .line 313
    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Xe$1;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Xe;I)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 317
    .line 318
    .line 319
    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->PiB:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;

    .line 320
    .line 321
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;->kkU()Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;->ZYk()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    const-string v1, "fillButton"

    .line 330
    .line 331
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    if-eqz v0, :cond_9

    .line 336
    .line 337
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 338
    .line 339
    invoke-virtual {v0, v2}, Landroid/view/View;->setTextAlignment(I)V

    .line 340
    .line 341
    .line 342
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 343
    .line 344
    check-cast v0, Landroid/widget/TextView;

    .line 345
    .line 346
    const/16 v1, 0x11

    .line 347
    .line 348
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 349
    .line 350
    .line 351
    :cond_9
    return-void
.end method

.method private oJ()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->WcQ:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;->getRenderRequest()Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->WcQ:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;->getRenderRequest()Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->kkU()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->ba()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/ex;->ZYk()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->PiB:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;->kkU()Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;->ZYk()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "text_star"

    .line 30
    .line 31
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    const-string v0, "5"

    .line 38
    .line 39
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/ex;->ZYk()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->PiB:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;->kkU()Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;->ZYk()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "score-count"

    .line 56
    .line 57
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    const-string v0, "6870"

    .line 64
    .line 65
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->PiB:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;->kkU()Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;->ZYk()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const-string v2, "title"

    .line 76
    .line 77
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_2

    .line 82
    .line 83
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->PiB:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;->kkU()Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;->ZYk()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string v2, "subtitle"

    .line 94
    .line 95
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_3

    .line 100
    .line 101
    :cond_2
    const-string v1, "\n"

    .line 102
    .line 103
    const-string v2, ""

    .line 104
    .line 105
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    :cond_3
    return-object v0
.end method

.method public jFA()Z
    .locals 10

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/ba;->jFA()Z

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Xe;->getText()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 16
    .line 17
    const/4 v2, 0x4

    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    return v1

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->wd()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Xe;->dLZ()V

    .line 31
    .line 32
    .line 33
    return v1

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 35
    .line 36
    check-cast v0, Landroid/widget/TextView;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->ba()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 48
    .line 49
    check-cast v0, Landroid/widget/TextView;

    .line 50
    .line 51
    const/4 v2, 0x5

    .line 52
    invoke-virtual {v0, v2}, Landroid/view/View;->setTextDirection(I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->so()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-virtual {v0, v2}, Landroid/view/View;->setTextAlignment(I)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 67
    .line 68
    check-cast v0, Landroid/widget/TextView;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->cFZ()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 80
    .line 81
    check-cast v0, Landroid/widget/TextView;

    .line 82
    .line 83
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->Pfn()F

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->Id()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    const/16 v2, 0x11

    .line 99
    .line 100
    if-nez v0, :cond_2

    .line 101
    .line 102
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 103
    .line 104
    check-cast v0, Landroid/widget/TextView;

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 110
    .line 111
    check-cast v0, Landroid/widget/TextView;

    .line 112
    .line 113
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 117
    .line 118
    check-cast v0, Landroid/widget/TextView;

    .line 119
    .line 120
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 121
    .line 122
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->cY()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-lez v0, :cond_3

    .line 133
    .line 134
    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 135
    .line 136
    check-cast v3, Landroid/widget/TextView;

    .line 137
    .line 138
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 142
    .line 143
    check-cast v0, Landroid/widget/TextView;

    .line 144
    .line 145
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 146
    .line 147
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 148
    .line 149
    .line 150
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->PiB:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;

    .line 151
    .line 152
    if-eqz v0, :cond_13

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;->kkU()Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    if-nez v0, :cond_4

    .line 159
    .line 160
    goto/16 :goto_5

    .line 161
    .line 162
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/ex;->ZYk()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    const-string v3, "score-count"

    .line 167
    .line 168
    const-string v4, "text_star"

    .line 169
    .line 170
    const/16 v5, 0x8

    .line 171
    .line 172
    const-string v6, "score-count-type-2"

    .line 173
    .line 174
    if-eqz v0, :cond_6

    .line 175
    .line 176
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Xe;->oJ()Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_6

    .line 181
    .line 182
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->PiB:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;

    .line 183
    .line 184
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;->kkU()Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;->ZYk()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-nez v0, :cond_5

    .line 197
    .line 198
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->PiB:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;

    .line 199
    .line 200
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;->kkU()Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;->ZYk()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-nez v0, :cond_5

    .line 213
    .line 214
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->PiB:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;

    .line 215
    .line 216
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;->kkU()Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;->ZYk()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    const-string v7, "score-count-type-1"

    .line 225
    .line 226
    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-nez v0, :cond_5

    .line 231
    .line 232
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->PiB:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;

    .line 233
    .line 234
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;->kkU()Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;->ZYk()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_6

    .line 247
    .line 248
    :cond_5
    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 249
    .line 250
    .line 251
    return v1

    .line 252
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->PiB:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;

    .line 253
    .line 254
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;->kkU()Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;->ZYk()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    const/4 v3, 0x0

    .line 267
    if-nez v0, :cond_f

    .line 268
    .line 269
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->PiB:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;

    .line 270
    .line 271
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;->kkU()Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;->ZYk()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    if-eqz v0, :cond_7

    .line 284
    .line 285
    goto/16 :goto_2

    .line 286
    .line 287
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->PiB:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;

    .line 288
    .line 289
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;->kkU()Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;->ZYk()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    if-eqz v0, :cond_b

    .line 302
    .line 303
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Xe;->getText()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 308
    .line 309
    .line 310
    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    goto :goto_1

    .line 312
    :catch_0
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 313
    .line 314
    :goto_1
    const-wide/16 v8, 0x0

    .line 315
    .line 316
    cmpg-double v0, v6, v8

    .line 317
    .line 318
    if-ltz v0, :cond_8

    .line 319
    .line 320
    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    .line 321
    .line 322
    cmpl-double v0, v6, v8

    .line 323
    .line 324
    if-lez v0, :cond_a

    .line 325
    .line 326
    :cond_8
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/ex;->ZYk()Z

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    if-eqz v0, :cond_9

    .line 331
    .line 332
    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 333
    .line 334
    .line 335
    return v1

    .line 336
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 337
    .line 338
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 339
    .line 340
    .line 341
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 342
    .line 343
    check-cast v0, Landroid/widget/TextView;

    .line 344
    .line 345
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 346
    .line 347
    .line 348
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 349
    .line 350
    check-cast v0, Landroid/widget/TextView;

    .line 351
    .line 352
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    const-string v3, "%.1f"

    .line 361
    .line 362
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    .line 368
    .line 369
    goto/16 :goto_4

    .line 370
    .line 371
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->PiB:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;

    .line 372
    .line 373
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;->kkU()Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;->ZYk()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    const-string v2, "privacy-detail"

    .line 382
    .line 383
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    if-eqz v0, :cond_c

    .line 388
    .line 389
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 390
    .line 391
    check-cast v0, Landroid/widget/TextView;

    .line 392
    .line 393
    const-string v2, "Permission list | Privacy policy"

    .line 394
    .line 395
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    .line 397
    .line 398
    goto/16 :goto_4

    .line 399
    .line 400
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->PiB:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;

    .line 401
    .line 402
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;->kkU()Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;->ZYk()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    const-string v2, "development-name"

    .line 411
    .line 412
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 413
    .line 414
    .line 415
    move-result v0

    .line 416
    if-eqz v0, :cond_d

    .line 417
    .line 418
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 419
    .line 420
    check-cast v0, Landroid/widget/TextView;

    .line 421
    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    .line 423
    .line 424
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .line 426
    .line 427
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/ex;->oJ()Landroid/content/Context;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    const-string v4, "tt_text_privacy_development"

    .line 432
    .line 433
    invoke-static {v3, v4}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v3

    .line 437
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Xe;->getText()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v3

    .line 444
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v2

    .line 451
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    .line 453
    .line 454
    goto/16 :goto_4

    .line 455
    .line 456
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->PiB:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;

    .line 457
    .line 458
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;->kkU()Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;->ZYk()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    const-string v2, "app-version"

    .line 467
    .line 468
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 469
    .line 470
    .line 471
    move-result v0

    .line 472
    if-eqz v0, :cond_e

    .line 473
    .line 474
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 475
    .line 476
    check-cast v0, Landroid/widget/TextView;

    .line 477
    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    .line 479
    .line 480
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    .line 482
    .line 483
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/ex;->oJ()Landroid/content/Context;

    .line 484
    .line 485
    .line 486
    move-result-object v3

    .line 487
    const-string v4, "tt_text_privacy_app_version"

    .line 488
    .line 489
    invoke-static {v3, v4}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v3

    .line 493
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Xe;->getText()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v3

    .line 500
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    .line 509
    .line 510
    goto :goto_4

    .line 511
    :cond_e
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 512
    .line 513
    check-cast v0, Landroid/widget/TextView;

    .line 514
    .line 515
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Xe;->getText()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v2

    .line 519
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    .line 521
    .line 522
    goto :goto_4

    .line 523
    :cond_f
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Xe;->getText()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 528
    .line 529
    .line 530
    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 531
    goto :goto_3

    .line 532
    :catch_1
    const/4 v0, -0x1

    .line 533
    :goto_3
    if-gez v0, :cond_11

    .line 534
    .line 535
    :try_start_2
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/ex;->ZYk()Z

    .line 536
    .line 537
    .line 538
    move-result v4

    .line 539
    if-eqz v4, :cond_10

    .line 540
    .line 541
    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 542
    .line 543
    .line 544
    return v1

    .line 545
    :cond_10
    iget-object v4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 546
    .line 547
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 548
    .line 549
    .line 550
    :cond_11
    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->PiB:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;

    .line 551
    .line 552
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;->kkU()Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;

    .line 553
    .line 554
    .line 555
    move-result-object v3

    .line 556
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;->ZYk()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v3

    .line 560
    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 561
    .line 562
    .line 563
    move-result v3

    .line 564
    if-eqz v3, :cond_12

    .line 565
    .line 566
    new-instance v3, Ljava/text/DecimalFormat;

    .line 567
    .line 568
    const-string v4, "(###,###,###)"

    .line 569
    .line 570
    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    int-to-long v4, v0

    .line 574
    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v3

    .line 578
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 591
    .line 592
    check-cast v3, Landroid/widget/TextView;

    .line 593
    .line 594
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    .line 596
    .line 597
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 598
    .line 599
    check-cast v0, Landroid/widget/TextView;

    .line 600
    .line 601
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 602
    .line 603
    .line 604
    return v1

    .line 605
    :cond_12
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 606
    .line 607
    check-cast v2, Landroid/widget/TextView;

    .line 608
    .line 609
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 610
    .line 611
    .line 612
    move-result-object v3

    .line 613
    const-string v4, "tt_comment_num"

    .line 614
    .line 615
    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Xe;->oJ(Landroid/widget/TextView;ILandroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 616
    .line 617
    .line 618
    :catch_2
    :goto_4
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 619
    .line 620
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 621
    .line 622
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->so()I

    .line 623
    .line 624
    .line 625
    move-result v2

    .line 626
    invoke-virtual {v0, v2}, Landroid/view/View;->setTextAlignment(I)V

    .line 627
    .line 628
    .line 629
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 630
    .line 631
    check-cast v0, Landroid/widget/TextView;

    .line 632
    .line 633
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 634
    .line 635
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->jFA()I

    .line 636
    .line 637
    .line 638
    move-result v2

    .line 639
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 640
    .line 641
    .line 642
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/ex;->ZYk()Z

    .line 643
    .line 644
    .line 645
    move-result v0

    .line 646
    if-eqz v0, :cond_13

    .line 647
    .line 648
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Xe;->kkU()V

    .line 649
    .line 650
    .line 651
    :cond_13
    :goto_5
    return v1
.end method

.method public oJ(Landroid/widget/TextView;ILandroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-static {p3, p4}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 5
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    const/16 p2, 0x8

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
