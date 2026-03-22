.class Lcom/bytedance/sdk/openadsdk/activity/ex$15;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/ex;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/activity/ZYk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final ZYk:Landroid/graphics/Rect;

.field private ex:I

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

.field private tB:I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/ex;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->ZYk:Landroid/graphics/Rect;

    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->tB:I

    .line 15
    .line 16
    return-void
.end method

.method private oJ()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->Pfn(Lcom/bytedance/sdk/openadsdk/activity/ex;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->ba(Lcom/bytedance/sdk/openadsdk/activity/ex;)Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->ex()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/activity/ex;->cFZ(Lcom/bytedance/sdk/openadsdk/activity/ex;)Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 34
    .line 35
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/activity/ex;->cFZ(Lcom/bytedance/sdk/openadsdk/activity/ex;)Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    rem-int v3, v2, v0

    .line 44
    .line 45
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->tB:I

    .line 46
    .line 47
    if-le v3, v4, :cond_6

    .line 48
    .line 49
    move v3, v1

    .line 50
    :goto_0
    if-gt v3, v2, :cond_6

    .line 51
    .line 52
    rem-int v4, v3, v0

    .line 53
    .line 54
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->tB:I

    .line 55
    .line 56
    if-le v4, v5, :cond_5

    .line 57
    .line 58
    if-eq v3, v1, :cond_2

    .line 59
    .line 60
    if-ne v3, v2, :cond_3

    .line 61
    .line 62
    :cond_2
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 63
    .line 64
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/activity/ex;->cFZ(Lcom/bytedance/sdk/openadsdk/activity/ex;)Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    if-eqz v5, :cond_3

    .line 73
    .line 74
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->ZYk:Landroid/graphics/Rect;

    .line 75
    .line 76
    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 77
    .line 78
    .line 79
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->ZYk:Landroid/graphics/Rect;

    .line 80
    .line 81
    invoke-virtual {v5, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-lez v5, :cond_5

    .line 89
    .line 90
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->ZYk:Landroid/graphics/Rect;

    .line 91
    .line 92
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    int-to-float v6, v6

    .line 97
    const/high16 v7, 0x3f800000    # 1.0f

    .line 98
    .line 99
    mul-float/2addr v6, v7

    .line 100
    int-to-float v5, v5

    .line 101
    div-float/2addr v6, v5

    .line 102
    const/high16 v5, 0x3f000000    # 0.5f

    .line 103
    .line 104
    cmpg-float v5, v6, v5

    .line 105
    .line 106
    if-ltz v5, :cond_5

    .line 107
    .line 108
    :cond_3
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 109
    .line 110
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/activity/ex;->ex(Lcom/bytedance/sdk/openadsdk/activity/ex;)Landroidx/recyclerview/widget/RecyclerView;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    instance-of v6, v5, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;

    .line 119
    .line 120
    if-eqz v6, :cond_4

    .line 121
    .line 122
    check-cast v5, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;

    .line 123
    .line 124
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;)Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/activity/so;->Ln()V

    .line 129
    .line 130
    .line 131
    :cond_4
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->tB:I

    .line 132
    .line 133
    if-le v4, v5, :cond_5

    .line 134
    .line 135
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->tB:I

    .line 136
    .line 137
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_6
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/ex;->cFZ(Lcom/bytedance/sdk/openadsdk/activity/ex;)Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->cFZ(Lcom/bytedance/sdk/openadsdk/activity/ex;)Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->cFZ(Lcom/bytedance/sdk/openadsdk/activity/ex;)Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-gez p1, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    if-nez p2, :cond_4

    .line 37
    .line 38
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/activity/ex;->PiB(Lcom/bytedance/sdk/openadsdk/activity/ex;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eq p1, v1, :cond_4

    .line 45
    .line 46
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 47
    .line 48
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/activity/ex;->WcQ(Lcom/bytedance/sdk/openadsdk/activity/ex;)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const/4 v2, 0x1

    .line 53
    const/4 v3, 0x0

    .line 54
    if-ne p1, v1, :cond_1

    .line 55
    .line 56
    move v1, v2

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    move v1, v3

    .line 59
    :goto_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 60
    .line 61
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/activity/ex;->awB(Lcom/bytedance/sdk/openadsdk/activity/ex;)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_2

    .line 66
    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    move v2, v3

    .line 71
    :goto_1
    invoke-static {v4, p1, v2}, Lcom/bytedance/sdk/openadsdk/activity/ex;->oJ(Lcom/bytedance/sdk/openadsdk/activity/ex;IZ)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/ex;->awB(Lcom/bytedance/sdk/openadsdk/activity/ex;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    if-nez v1, :cond_3

    .line 83
    .line 84
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/ex;->eZI(Lcom/bytedance/sdk/openadsdk/activity/ex;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_3

    .line 91
    .line 92
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 93
    .line 94
    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/activity/ex;->tB(Lcom/bytedance/sdk/openadsdk/activity/ex;Z)Z

    .line 95
    .line 96
    .line 97
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 98
    .line 99
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/ex;->si(Lcom/bytedance/sdk/openadsdk/activity/ex;)Lcom/bytedance/sdk/openadsdk/activity/ex$ba;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-eqz p1, :cond_4

    .line 104
    .line 105
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 106
    .line 107
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/ex;->si(Lcom/bytedance/sdk/openadsdk/activity/ex;)Lcom/bytedance/sdk/openadsdk/activity/ex$ba;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/ex$ba;->ex()V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 115
    .line 116
    const/4 v1, 0x0

    .line 117
    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/activity/ex;->oJ(Lcom/bytedance/sdk/openadsdk/activity/ex;Lcom/bytedance/sdk/openadsdk/activity/ex$ba;)Lcom/bytedance/sdk/openadsdk/activity/ex$ba;

    .line 118
    .line 119
    .line 120
    :cond_4
    if-nez p2, :cond_5

    .line 121
    .line 122
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 123
    .line 124
    const/4 p2, -0x1

    .line 125
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/ex;->oJ(Lcom/bytedance/sdk/openadsdk/activity/ex;I)I

    .line 126
    .line 127
    .line 128
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 129
    .line 130
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/ex;->so(Lcom/bytedance/sdk/openadsdk/activity/ex;)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_6

    .line 135
    .line 136
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 137
    .line 138
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/ex;->jFA(Lcom/bytedance/sdk/openadsdk/activity/ex;)I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-lez p1, :cond_6

    .line 143
    .line 144
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 145
    .line 146
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/ex;->ba(Lcom/bytedance/sdk/openadsdk/activity/ex;)Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->oJ()I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 155
    .line 156
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/activity/ex;->jFA(Lcom/bytedance/sdk/openadsdk/activity/ex;)I

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    sub-int/2addr p1, p2

    .line 161
    if-lt v0, p1, :cond_6

    .line 162
    .line 163
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 164
    .line 165
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/ex;->kkU(Lcom/bytedance/sdk/openadsdk/activity/ex;)V

    .line 166
    .line 167
    .line 168
    :cond_6
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ()V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 11
    .line 12
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/activity/ex;->cFZ(Lcom/bytedance/sdk/openadsdk/activity/ex;)Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-lez p3, :cond_1

    .line 21
    .line 22
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 23
    .line 24
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/activity/ex;->so(Lcom/bytedance/sdk/openadsdk/activity/ex;)Z

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    if-eqz p3, :cond_1

    .line 29
    .line 30
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 31
    .line 32
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/activity/ex;->jFA(Lcom/bytedance/sdk/openadsdk/activity/ex;)I

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    if-lez p3, :cond_1

    .line 37
    .line 38
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 39
    .line 40
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/activity/ex;->ba(Lcom/bytedance/sdk/openadsdk/activity/ex;)Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->oJ()I

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->jFA(Lcom/bytedance/sdk/openadsdk/activity/ex;)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    sub-int/2addr p3, v0

    .line 55
    if-lt p2, p3, :cond_1

    .line 56
    .line 57
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 58
    .line 59
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/activity/ex;->kkU(Lcom/bytedance/sdk/openadsdk/activity/ex;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    iget p3, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->ex:I

    .line 63
    .line 64
    if-eq p3, p2, :cond_4

    .line 65
    .line 66
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->ex:I

    .line 67
    .line 68
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 69
    .line 70
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/activity/ex;->dLZ(Lcom/bytedance/sdk/openadsdk/activity/ex;)Ljava/util/HashSet;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    invoke-virtual {p3}, Ljava/util/HashSet;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    const/4 v0, 0x1

    .line 79
    if-nez p3, :cond_3

    .line 80
    .line 81
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 82
    .line 83
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/activity/ex;->dLZ(Lcom/bytedance/sdk/openadsdk/activity/ex;)Ljava/util/HashSet;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {p3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p3

    .line 95
    if-eqz p3, :cond_3

    .line 96
    .line 97
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 98
    .line 99
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/activity/ex;->dLZ(Lcom/bytedance/sdk/openadsdk/activity/ex;)Ljava/util/HashSet;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {p3, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    instance-of p2, p1, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;

    .line 115
    .line 116
    if-eqz p2, :cond_2

    .line 117
    .line 118
    check-cast p1, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;

    .line 119
    .line 120
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;)Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->Pfn(Z)V

    .line 125
    .line 126
    .line 127
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;)Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->nke()V

    .line 132
    .line 133
    .line 134
    :cond_2
    return-void

    .line 135
    :cond_3
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 136
    .line 137
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/activity/ex;->BTZ(Lcom/bytedance/sdk/openadsdk/activity/ex;)Z

    .line 138
    .line 139
    .line 140
    move-result p3

    .line 141
    if-eqz p3, :cond_4

    .line 142
    .line 143
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$15;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 144
    .line 145
    const/4 v1, 0x0

    .line 146
    invoke-static {p3, v1}, Lcom/bytedance/sdk/openadsdk/activity/ex;->ZYk(Lcom/bytedance/sdk/openadsdk/activity/ex;Z)Z

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    instance-of p2, p1, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;

    .line 154
    .line 155
    if-eqz p2, :cond_4

    .line 156
    .line 157
    check-cast p1, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;

    .line 158
    .line 159
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;)Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    instance-of p2, p2, Lcom/bytedance/sdk/openadsdk/activity/oJ;

    .line 164
    .line 165
    if-eqz p2, :cond_4

    .line 166
    .line 167
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;)Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->Pfn(Z)V

    .line 172
    .line 173
    .line 174
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;)Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    check-cast p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;

    .line 179
    .line 180
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->LpP()V

    .line 181
    .line 182
    .line 183
    :cond_4
    return-void
.end method
