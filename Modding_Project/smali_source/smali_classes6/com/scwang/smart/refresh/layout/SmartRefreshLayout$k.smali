.class public Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Lsc/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "k"
.end annotation


# instance fields
.field final synthetic a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;


# direct methods
.method public constructor <init>(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(I)Landroid/animation/ValueAnimator;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z:Landroid/view/animation/Interpolator;

    .line 4
    .line 5
    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->f:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public b(Lsc/a;Z)Lsc/e;
    .locals 2
    .param p1    # Lsc/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 13
    .line 14
    iget-boolean v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->W:Z

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iput-boolean v1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->W:Z

    .line 19
    .line 20
    iput-boolean p2, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->F:Z

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 34
    .line 35
    iget-boolean v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->a0:Z

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    iput-boolean v1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->a0:Z

    .line 40
    .line 41
    iput-boolean p2, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->G:Z

    .line 42
    .line 43
    :cond_1
    :goto_0
    return-object p0
.end method

.method public c(Lsc/a;I)Lsc/e;
    .locals 2
    .param p1    # Lsc/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x0:Landroid/graphics/Paint;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    new-instance v1, Landroid/graphics/Paint;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x0:Landroid/graphics/Paint;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 27
    .line 28
    iput p2, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->D0:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 42
    .line 43
    iput p2, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->E0:I

    .line 44
    .line 45
    :cond_2
    :goto_0
    return-object p0
.end method

.method public d()Lsc/f;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Lsc/e;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 4
    .line 5
    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 6
    .line 7
    if-ne v1, v2, :cond_1

    .line 8
    .line 9
    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 10
    .line 11
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->TwoLevelFinish:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 12
    .line 13
    invoke-interface {v0, v1}, Lsc/e;->g(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lsc/e;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 17
    .line 18
    iget v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, v1, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->f(IZ)Lsc/e;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 27
    .line 28
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a(I)Landroid/animation/ValueAnimator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 39
    .line 40
    iget v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->e:I

    .line 41
    .line 42
    int-to-long v1, v1

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    return-object p0
.end method

.method public f(IZ)Lsc/e;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 6
    .line 7
    iget v3, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 8
    .line 9
    if-ne v3, v1, :cond_2

    .line 10
    .line 11
    iget-object v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-interface {v2}, Lsc/a;->f()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_2

    .line 20
    .line 21
    :cond_0
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 22
    .line 23
    iget-object v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v2}, Lsc/a;->f()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    :cond_1
    return-object v0

    .line 34
    :cond_2
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 35
    .line 36
    iget v3, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 37
    .line 38
    iput v1, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 39
    .line 40
    const/high16 v4, 0x41200000    # 10.0f

    .line 41
    .line 42
    if-eqz p2, :cond_9

    .line 43
    .line 44
    iget-object v5, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 45
    .line 46
    iget-boolean v6, v5, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isDragging:Z

    .line 47
    .line 48
    if-nez v6, :cond_3

    .line 49
    .line 50
    iget-boolean v5, v5, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    .line 51
    .line 52
    if-eqz v5, :cond_9

    .line 53
    .line 54
    :cond_3
    int-to-float v5, v1

    .line 55
    iget v6, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->r0:F

    .line 56
    .line 57
    cmpg-float v7, v6, v4

    .line 58
    .line 59
    if-gez v7, :cond_4

    .line 60
    .line 61
    iget v7, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j0:I

    .line 62
    .line 63
    int-to-float v7, v7

    .line 64
    mul-float/2addr v6, v7

    .line 65
    :cond_4
    cmpl-float v5, v5, v6

    .line 66
    .line 67
    if-lez v5, :cond_5

    .line 68
    .line 69
    iget-object v5, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 70
    .line 71
    sget-object v6, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 72
    .line 73
    if-eq v5, v6, :cond_9

    .line 74
    .line 75
    iget-object v5, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 76
    .line 77
    sget-object v6, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 78
    .line 79
    invoke-interface {v5, v6}, Lsc/e;->g(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lsc/e;

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    neg-int v5, v1

    .line 84
    int-to-float v5, v5

    .line 85
    iget v6, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s0:F

    .line 86
    .line 87
    cmpg-float v7, v6, v4

    .line 88
    .line 89
    if-gez v7, :cond_6

    .line 90
    .line 91
    iget v7, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l0:I

    .line 92
    .line 93
    int-to-float v7, v7

    .line 94
    mul-float/2addr v6, v7

    .line 95
    :cond_6
    cmpl-float v5, v5, v6

    .line 96
    .line 97
    if-lez v5, :cond_7

    .line 98
    .line 99
    iget-boolean v5, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->T:Z

    .line 100
    .line 101
    if-nez v5, :cond_7

    .line 102
    .line 103
    iget-object v5, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 104
    .line 105
    sget-object v6, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 106
    .line 107
    invoke-interface {v5, v6}, Lsc/e;->g(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lsc/e;

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_7
    if-gez v1, :cond_8

    .line 112
    .line 113
    iget-boolean v5, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->T:Z

    .line 114
    .line 115
    if-nez v5, :cond_8

    .line 116
    .line 117
    iget-object v5, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 118
    .line 119
    sget-object v6, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 120
    .line 121
    invoke-interface {v5, v6}, Lsc/e;->g(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lsc/e;

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_8
    if-lez v1, :cond_9

    .line 126
    .line 127
    iget-object v5, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 128
    .line 129
    sget-object v6, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 130
    .line 131
    invoke-interface {v5, v6}, Lsc/e;->g(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lsc/e;

    .line 132
    .line 133
    .line 134
    :cond_9
    :goto_0
    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 135
    .line 136
    iget-object v6, v5, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 137
    .line 138
    const/4 v8, 0x0

    .line 139
    if-eqz v6, :cond_15

    .line 140
    .line 141
    if-ltz v1, :cond_b

    .line 142
    .line 143
    iget-boolean v6, v5, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->F:Z

    .line 144
    .line 145
    iget-object v9, v5, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 146
    .line 147
    invoke-virtual {v5, v6, v9}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->t(ZLsc/a;)Z

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    if-eqz v5, :cond_a

    .line 152
    .line 153
    move v5, v1

    .line 154
    :goto_1
    const/4 v6, 0x1

    .line 155
    goto :goto_2

    .line 156
    :cond_a
    if-gez v3, :cond_b

    .line 157
    .line 158
    move v5, v8

    .line 159
    goto :goto_1

    .line 160
    :cond_b
    move v5, v8

    .line 161
    move v6, v5

    .line 162
    :goto_2
    if-gtz v1, :cond_d

    .line 163
    .line 164
    iget-object v9, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 165
    .line 166
    iget-boolean v10, v9, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->G:Z

    .line 167
    .line 168
    iget-object v11, v9, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 169
    .line 170
    invoke-virtual {v9, v10, v11}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->t(ZLsc/a;)Z

    .line 171
    .line 172
    .line 173
    move-result v9

    .line 174
    if-eqz v9, :cond_c

    .line 175
    .line 176
    move v5, v1

    .line 177
    :goto_3
    const/4 v6, 0x1

    .line 178
    goto :goto_4

    .line 179
    :cond_c
    if-lez v3, :cond_d

    .line 180
    .line 181
    move v5, v8

    .line 182
    goto :goto_3

    .line 183
    :cond_d
    :goto_4
    if-eqz v6, :cond_15

    .line 184
    .line 185
    iget-object v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 186
    .line 187
    iget-object v9, v6, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 188
    .line 189
    iget v10, v6, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s:I

    .line 190
    .line 191
    iget v6, v6, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->t:I

    .line 192
    .line 193
    invoke-interface {v9, v5, v10, v6}, Lsc/b;->d(III)V

    .line 194
    .line 195
    .line 196
    iget-object v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 197
    .line 198
    iget-boolean v9, v6, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->T:Z

    .line 199
    .line 200
    if-eqz v9, :cond_e

    .line 201
    .line 202
    iget-boolean v9, v6, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->U:Z

    .line 203
    .line 204
    if-eqz v9, :cond_e

    .line 205
    .line 206
    iget-boolean v9, v6, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->H:Z

    .line 207
    .line 208
    if-eqz v9, :cond_e

    .line 209
    .line 210
    iget-object v6, v6, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 211
    .line 212
    instance-of v9, v6, Lsc/c;

    .line 213
    .line 214
    if-eqz v9, :cond_e

    .line 215
    .line 216
    invoke-interface {v6}, Lsc/a;->getSpinnerStyle()Ltc/b;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    sget-object v9, Ltc/b;->d:Ltc/b;

    .line 221
    .line 222
    if-ne v6, v9, :cond_e

    .line 223
    .line 224
    iget-object v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 225
    .line 226
    iget-boolean v9, v6, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 227
    .line 228
    invoke-virtual {v6, v9}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    if-eqz v6, :cond_e

    .line 233
    .line 234
    iget-object v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 235
    .line 236
    iget-object v6, v6, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 237
    .line 238
    invoke-interface {v6}, Lsc/a;->getView()Landroid/view/View;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    .line 243
    .line 244
    .line 245
    move-result v9

    .line 246
    int-to-float v9, v9

    .line 247
    invoke-virtual {v6, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 248
    .line 249
    .line 250
    :cond_e
    iget-object v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 251
    .line 252
    iget-boolean v9, v6, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->D:Z

    .line 253
    .line 254
    if-eqz v9, :cond_f

    .line 255
    .line 256
    iget-object v6, v6, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 257
    .line 258
    if-eqz v6, :cond_f

    .line 259
    .line 260
    invoke-interface {v6}, Lsc/a;->getSpinnerStyle()Ltc/b;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    sget-object v9, Ltc/b;->f:Ltc/b;

    .line 265
    .line 266
    if-ne v6, v9, :cond_f

    .line 267
    .line 268
    goto :goto_5

    .line 269
    :cond_f
    iget-object v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 270
    .line 271
    iget v6, v6, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->D0:I

    .line 272
    .line 273
    if-eqz v6, :cond_10

    .line 274
    .line 275
    :goto_5
    const/4 v6, 0x1

    .line 276
    goto :goto_6

    .line 277
    :cond_10
    move v6, v8

    .line 278
    :goto_6
    iget-object v9, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 279
    .line 280
    iget-boolean v10, v9, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->E:Z

    .line 281
    .line 282
    if-eqz v10, :cond_11

    .line 283
    .line 284
    iget-object v9, v9, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 285
    .line 286
    if-eqz v9, :cond_11

    .line 287
    .line 288
    invoke-interface {v9}, Lsc/a;->getSpinnerStyle()Ltc/b;

    .line 289
    .line 290
    .line 291
    move-result-object v9

    .line 292
    sget-object v10, Ltc/b;->f:Ltc/b;

    .line 293
    .line 294
    if-ne v9, v10, :cond_11

    .line 295
    .line 296
    goto :goto_7

    .line 297
    :cond_11
    iget-object v9, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 298
    .line 299
    iget v9, v9, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->E0:I

    .line 300
    .line 301
    if-eqz v9, :cond_12

    .line 302
    .line 303
    :goto_7
    const/4 v9, 0x1

    .line 304
    goto :goto_8

    .line 305
    :cond_12
    move v9, v8

    .line 306
    :goto_8
    if-eqz v6, :cond_13

    .line 307
    .line 308
    if-gez v5, :cond_14

    .line 309
    .line 310
    if-gtz v3, :cond_14

    .line 311
    .line 312
    :cond_13
    if-eqz v9, :cond_15

    .line 313
    .line 314
    if-lez v5, :cond_14

    .line 315
    .line 316
    if-gez v3, :cond_15

    .line 317
    .line 318
    :cond_14
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 319
    .line 320
    .line 321
    :cond_15
    const/high16 v5, 0x3f800000    # 1.0f

    .line 322
    .line 323
    const/high16 v6, 0x40000000    # 2.0f

    .line 324
    .line 325
    if-gez v1, :cond_16

    .line 326
    .line 327
    if-lez v3, :cond_20

    .line 328
    .line 329
    :cond_16
    iget-object v9, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 330
    .line 331
    iget-object v9, v9, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 332
    .line 333
    if-eqz v9, :cond_20

    .line 334
    .line 335
    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    .line 336
    .line 337
    .line 338
    move-result v13

    .line 339
    iget-object v9, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 340
    .line 341
    iget v14, v9, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j0:I

    .line 342
    .line 343
    iget v10, v9, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->p0:F

    .line 344
    .line 345
    cmpg-float v11, v10, v4

    .line 346
    .line 347
    if-gez v11, :cond_17

    .line 348
    .line 349
    int-to-float v11, v14

    .line 350
    mul-float/2addr v10, v11

    .line 351
    :cond_17
    float-to-int v15, v10

    .line 352
    int-to-float v10, v13

    .line 353
    mul-float/2addr v10, v5

    .line 354
    iget v11, v9, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->r0:F

    .line 355
    .line 356
    cmpg-float v12, v11, v4

    .line 357
    .line 358
    if-gez v12, :cond_18

    .line 359
    .line 360
    int-to-float v12, v14

    .line 361
    mul-float/2addr v11, v12

    .line 362
    :cond_18
    div-float v12, v10, v11

    .line 363
    .line 364
    iget-boolean v10, v9, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B:Z

    .line 365
    .line 366
    invoke-virtual {v9, v10}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    .line 367
    .line 368
    .line 369
    move-result v9

    .line 370
    if-nez v9, :cond_19

    .line 371
    .line 372
    iget-object v9, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 373
    .line 374
    iget-object v9, v9, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 375
    .line 376
    sget-object v10, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->RefreshFinish:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 377
    .line 378
    if-ne v9, v10, :cond_1f

    .line 379
    .line 380
    if-nez p2, :cond_1f

    .line 381
    .line 382
    :cond_19
    iget-object v9, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 383
    .line 384
    iget v10, v9, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 385
    .line 386
    if-eq v3, v10, :cond_1d

    .line 387
    .line 388
    iget-object v9, v9, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 389
    .line 390
    invoke-interface {v9}, Lsc/a;->getSpinnerStyle()Ltc/b;

    .line 391
    .line 392
    .line 393
    move-result-object v9

    .line 394
    sget-object v10, Ltc/b;->d:Ltc/b;

    .line 395
    .line 396
    if-ne v9, v10, :cond_1a

    .line 397
    .line 398
    iget-object v9, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 399
    .line 400
    iget-object v9, v9, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 401
    .line 402
    invoke-interface {v9}, Lsc/a;->getView()Landroid/view/View;

    .line 403
    .line 404
    .line 405
    move-result-object v9

    .line 406
    iget-object v10, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 407
    .line 408
    iget v10, v10, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 409
    .line 410
    int-to-float v10, v10

    .line 411
    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 412
    .line 413
    .line 414
    iget-object v9, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 415
    .line 416
    iget v10, v9, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->D0:I

    .line 417
    .line 418
    if-eqz v10, :cond_1c

    .line 419
    .line 420
    iget-object v10, v9, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x0:Landroid/graphics/Paint;

    .line 421
    .line 422
    if-eqz v10, :cond_1c

    .line 423
    .line 424
    iget-boolean v10, v9, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->F:Z

    .line 425
    .line 426
    iget-object v11, v9, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 427
    .line 428
    invoke-virtual {v9, v10, v11}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->t(ZLsc/a;)Z

    .line 429
    .line 430
    .line 431
    move-result v9

    .line 432
    if-nez v9, :cond_1c

    .line 433
    .line 434
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 435
    .line 436
    .line 437
    goto :goto_a

    .line 438
    :cond_1a
    iget-object v9, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 439
    .line 440
    iget-object v9, v9, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 441
    .line 442
    invoke-interface {v9}, Lsc/a;->getSpinnerStyle()Ltc/b;

    .line 443
    .line 444
    .line 445
    move-result-object v9

    .line 446
    iget-boolean v9, v9, Ltc/b;->c:Z

    .line 447
    .line 448
    if-eqz v9, :cond_1c

    .line 449
    .line 450
    iget-object v9, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 451
    .line 452
    iget-object v9, v9, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 453
    .line 454
    invoke-interface {v9}, Lsc/a;->getView()Landroid/view/View;

    .line 455
    .line 456
    .line 457
    move-result-object v9

    .line 458
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 459
    .line 460
    .line 461
    move-result-object v10

    .line 462
    instance-of v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 463
    .line 464
    if-eqz v11, :cond_1b

    .line 465
    .line 466
    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 467
    .line 468
    goto :goto_9

    .line 469
    :cond_1b
    sget-object v10, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->Q0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 470
    .line 471
    :goto_9
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    .line 472
    .line 473
    .line 474
    move-result v11

    .line 475
    invoke-static {v11, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 476
    .line 477
    .line 478
    move-result v11

    .line 479
    iget-object v7, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 480
    .line 481
    iget v7, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 482
    .line 483
    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 484
    .line 485
    sub-int/2addr v7, v5

    .line 486
    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 487
    .line 488
    sub-int/2addr v7, v5

    .line 489
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 490
    .line 491
    .line 492
    move-result v5

    .line 493
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 494
    .line 495
    .line 496
    move-result v5

    .line 497
    invoke-virtual {v9, v11, v5}, Landroid/view/View;->measure(II)V

    .line 498
    .line 499
    .line 500
    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 501
    .line 502
    iget v7, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 503
    .line 504
    iget-object v10, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 505
    .line 506
    iget v10, v10, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->n0:I

    .line 507
    .line 508
    add-int/2addr v7, v10

    .line 509
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    .line 510
    .line 511
    .line 512
    move-result v10

    .line 513
    add-int/2addr v10, v5

    .line 514
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    .line 515
    .line 516
    .line 517
    move-result v11

    .line 518
    add-int/2addr v11, v7

    .line 519
    invoke-virtual {v9, v5, v7, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 520
    .line 521
    .line 522
    :cond_1c
    :goto_a
    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 523
    .line 524
    iget-object v10, v5, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 525
    .line 526
    move/from16 v11, p2

    .line 527
    .line 528
    invoke-interface/range {v10 .. v15}, Lsc/a;->i(ZFIII)V

    .line 529
    .line 530
    .line 531
    :cond_1d
    if-eqz p2, :cond_1f

    .line 532
    .line 533
    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 534
    .line 535
    iget-object v5, v5, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 536
    .line 537
    invoke-interface {v5}, Lsc/a;->f()Z

    .line 538
    .line 539
    .line 540
    move-result v5

    .line 541
    if-eqz v5, :cond_1f

    .line 542
    .line 543
    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 544
    .line 545
    iget v5, v5, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j:F

    .line 546
    .line 547
    float-to-int v5, v5

    .line 548
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 549
    .line 550
    .line 551
    move-result v7

    .line 552
    iget-object v9, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 553
    .line 554
    iget v10, v9, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j:F

    .line 555
    .line 556
    if-nez v7, :cond_1e

    .line 557
    .line 558
    const/4 v11, 0x1

    .line 559
    goto :goto_b

    .line 560
    :cond_1e
    move v11, v7

    .line 561
    :goto_b
    int-to-float v11, v11

    .line 562
    div-float/2addr v10, v11

    .line 563
    iget-object v9, v9, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 564
    .line 565
    invoke-interface {v9, v10, v5, v7}, Lsc/a;->e(FII)V

    .line 566
    .line 567
    .line 568
    :cond_1f
    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 569
    .line 570
    iget v7, v5, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 571
    .line 572
    if-eq v3, v7, :cond_20

    .line 573
    .line 574
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 575
    .line 576
    .line 577
    :cond_20
    if-lez v1, :cond_21

    .line 578
    .line 579
    if-gez v3, :cond_2b

    .line 580
    .line 581
    :cond_21
    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 582
    .line 583
    iget-object v5, v5, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 584
    .line 585
    if-eqz v5, :cond_2b

    .line 586
    .line 587
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    .line 588
    .line 589
    .line 590
    move-result v1

    .line 591
    neg-int v12, v1

    .line 592
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 593
    .line 594
    iget v13, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l0:I

    .line 595
    .line 596
    iget v5, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->q0:F

    .line 597
    .line 598
    cmpg-float v7, v5, v4

    .line 599
    .line 600
    if-gez v7, :cond_22

    .line 601
    .line 602
    int-to-float v7, v13

    .line 603
    mul-float/2addr v5, v7

    .line 604
    :cond_22
    float-to-int v14, v5

    .line 605
    int-to-float v5, v12

    .line 606
    const/high16 v7, 0x3f800000    # 1.0f

    .line 607
    .line 608
    mul-float/2addr v5, v7

    .line 609
    iget v7, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s0:F

    .line 610
    .line 611
    cmpg-float v4, v7, v4

    .line 612
    .line 613
    if-gez v4, :cond_23

    .line 614
    .line 615
    int-to-float v4, v13

    .line 616
    mul-float/2addr v7, v4

    .line 617
    :cond_23
    div-float v11, v5, v7

    .line 618
    .line 619
    iget-boolean v4, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 620
    .line 621
    invoke-virtual {v1, v4}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    .line 622
    .line 623
    .line 624
    move-result v1

    .line 625
    if-nez v1, :cond_24

    .line 626
    .line 627
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 628
    .line 629
    iget-object v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 630
    .line 631
    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 632
    .line 633
    if-ne v1, v4, :cond_2a

    .line 634
    .line 635
    if-nez p2, :cond_2a

    .line 636
    .line 637
    :cond_24
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 638
    .line 639
    iget v4, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 640
    .line 641
    if-eq v3, v4, :cond_28

    .line 642
    .line 643
    iget-object v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 644
    .line 645
    invoke-interface {v1}, Lsc/a;->getSpinnerStyle()Ltc/b;

    .line 646
    .line 647
    .line 648
    move-result-object v1

    .line 649
    sget-object v4, Ltc/b;->d:Ltc/b;

    .line 650
    .line 651
    if-ne v1, v4, :cond_25

    .line 652
    .line 653
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 654
    .line 655
    iget-object v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 656
    .line 657
    invoke-interface {v1}, Lsc/a;->getView()Landroid/view/View;

    .line 658
    .line 659
    .line 660
    move-result-object v1

    .line 661
    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 662
    .line 663
    iget v4, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 664
    .line 665
    int-to-float v4, v4

    .line 666
    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 667
    .line 668
    .line 669
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 670
    .line 671
    iget v4, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->E0:I

    .line 672
    .line 673
    if-eqz v4, :cond_27

    .line 674
    .line 675
    iget-object v4, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x0:Landroid/graphics/Paint;

    .line 676
    .line 677
    if-eqz v4, :cond_27

    .line 678
    .line 679
    iget-boolean v4, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->G:Z

    .line 680
    .line 681
    iget-object v5, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 682
    .line 683
    invoke-virtual {v1, v4, v5}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->t(ZLsc/a;)Z

    .line 684
    .line 685
    .line 686
    move-result v1

    .line 687
    if-nez v1, :cond_27

    .line 688
    .line 689
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 690
    .line 691
    .line 692
    goto :goto_d

    .line 693
    :cond_25
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 694
    .line 695
    iget-object v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 696
    .line 697
    invoke-interface {v1}, Lsc/a;->getSpinnerStyle()Ltc/b;

    .line 698
    .line 699
    .line 700
    move-result-object v1

    .line 701
    iget-boolean v1, v1, Ltc/b;->c:Z

    .line 702
    .line 703
    if-eqz v1, :cond_27

    .line 704
    .line 705
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 706
    .line 707
    iget-object v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 708
    .line 709
    invoke-interface {v1}, Lsc/a;->getView()Landroid/view/View;

    .line 710
    .line 711
    .line 712
    move-result-object v1

    .line 713
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 714
    .line 715
    .line 716
    move-result-object v4

    .line 717
    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 718
    .line 719
    if-eqz v5, :cond_26

    .line 720
    .line 721
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 722
    .line 723
    goto :goto_c

    .line 724
    :cond_26
    sget-object v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->Q0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 725
    .line 726
    :goto_c
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 727
    .line 728
    .line 729
    move-result v5

    .line 730
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 731
    .line 732
    .line 733
    move-result v5

    .line 734
    iget-object v7, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 735
    .line 736
    iget v7, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 737
    .line 738
    neg-int v7, v7

    .line 739
    iget v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 740
    .line 741
    sub-int/2addr v7, v9

    .line 742
    iget v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 743
    .line 744
    sub-int/2addr v7, v9

    .line 745
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 746
    .line 747
    .line 748
    move-result v7

    .line 749
    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 750
    .line 751
    .line 752
    move-result v6

    .line 753
    invoke-virtual {v1, v5, v6}, Landroid/view/View;->measure(II)V

    .line 754
    .line 755
    .line 756
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 757
    .line 758
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 759
    .line 760
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 761
    .line 762
    .line 763
    move-result v6

    .line 764
    add-int/2addr v4, v6

    .line 765
    iget-object v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 766
    .line 767
    iget v6, v6, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->o0:I

    .line 768
    .line 769
    sub-int/2addr v4, v6

    .line 770
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 771
    .line 772
    .line 773
    move-result v6

    .line 774
    sub-int v6, v4, v6

    .line 775
    .line 776
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 777
    .line 778
    .line 779
    move-result v7

    .line 780
    add-int/2addr v7, v5

    .line 781
    invoke-virtual {v1, v5, v6, v7, v4}, Landroid/view/View;->layout(IIII)V

    .line 782
    .line 783
    .line 784
    :cond_27
    :goto_d
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 785
    .line 786
    iget-object v9, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 787
    .line 788
    move/from16 v10, p2

    .line 789
    .line 790
    invoke-interface/range {v9 .. v14}, Lsc/a;->i(ZFIII)V

    .line 791
    .line 792
    .line 793
    :cond_28
    if-eqz p2, :cond_2a

    .line 794
    .line 795
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 796
    .line 797
    iget-object v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 798
    .line 799
    invoke-interface {v1}, Lsc/a;->f()Z

    .line 800
    .line 801
    .line 802
    move-result v1

    .line 803
    if-eqz v1, :cond_2a

    .line 804
    .line 805
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 806
    .line 807
    iget v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j:F

    .line 808
    .line 809
    float-to-int v1, v1

    .line 810
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 811
    .line 812
    .line 813
    move-result v2

    .line 814
    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 815
    .line 816
    iget v5, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j:F

    .line 817
    .line 818
    if-nez v2, :cond_29

    .line 819
    .line 820
    const/4 v7, 0x1

    .line 821
    goto :goto_e

    .line 822
    :cond_29
    move v7, v2

    .line 823
    :goto_e
    int-to-float v6, v7

    .line 824
    div-float/2addr v5, v6

    .line 825
    iget-object v4, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 826
    .line 827
    invoke-interface {v4, v5, v1, v2}, Lsc/a;->e(FII)V

    .line 828
    .line 829
    .line 830
    :cond_2a
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 831
    .line 832
    iget v2, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 833
    .line 834
    if-eq v3, v2, :cond_2b

    .line 835
    .line 836
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 837
    .line 838
    .line 839
    :cond_2b
    return-object v0
.end method

.method public g(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lsc/e;
    .locals 2
    .param p1    # Lcom/scwang/smart/refresh/layout/constant/RefreshState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :pswitch_0
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setStateLoading(Z)V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :pswitch_1
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setStateRefreshing(Z)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :pswitch_2
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 35
    .line 36
    iget-object v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 37
    .line 38
    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    .line 39
    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    iget-boolean v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 51
    .line 52
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :cond_0
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 60
    .line 61
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :pswitch_3
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 69
    .line 70
    iget-object v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 71
    .line 72
    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    .line 73
    .line 74
    if-nez v0, :cond_1

    .line 75
    .line 76
    iget-boolean v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B:Z

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_1

    .line 83
    .line 84
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 85
    .line 86
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_0

    .line 92
    .line 93
    :cond_1
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 94
    .line 95
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_0

    .line 101
    .line 102
    :pswitch_4
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 103
    .line 104
    iget-object v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 105
    .line 106
    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    .line 107
    .line 108
    if-nez v0, :cond_2

    .line 109
    .line 110
    iget-boolean v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B:Z

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_2

    .line 117
    .line 118
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 119
    .line 120
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_0

    .line 126
    .line 127
    :cond_2
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 128
    .line 129
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 132
    .line 133
    .line 134
    goto/16 :goto_0

    .line 135
    .line 136
    :pswitch_5
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 137
    .line 138
    iget-boolean v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 139
    .line 140
    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-eqz p1, :cond_4

    .line 145
    .line 146
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 147
    .line 148
    iget-object v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 149
    .line 150
    iget-boolean v1, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    .line 151
    .line 152
    if-nez v1, :cond_4

    .line 153
    .line 154
    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFinishing:Z

    .line 155
    .line 156
    if-nez v0, :cond_4

    .line 157
    .line 158
    iget-boolean v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->T:Z

    .line 159
    .line 160
    if-eqz v0, :cond_3

    .line 161
    .line 162
    iget-boolean v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->H:Z

    .line 163
    .line 164
    if-eqz v0, :cond_3

    .line 165
    .line 166
    iget-boolean v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->U:Z

    .line 167
    .line 168
    if-nez v0, :cond_4

    .line 169
    .line 170
    :cond_3
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 171
    .line 172
    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :cond_4
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 178
    .line 179
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 180
    .line 181
    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 182
    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :pswitch_6
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 187
    .line 188
    iget-object v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 189
    .line 190
    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    .line 191
    .line 192
    if-nez v0, :cond_5

    .line 193
    .line 194
    iget-boolean v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B:Z

    .line 195
    .line 196
    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-eqz p1, :cond_5

    .line 201
    .line 202
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 203
    .line 204
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 205
    .line 206
    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :cond_5
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 212
    .line 213
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 214
    .line 215
    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :pswitch_7
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 221
    .line 222
    iget-boolean v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 223
    .line 224
    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    if-eqz p1, :cond_7

    .line 229
    .line 230
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 231
    .line 232
    iget-object v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 233
    .line 234
    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    .line 235
    .line 236
    if-nez v0, :cond_7

    .line 237
    .line 238
    iget-boolean v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->T:Z

    .line 239
    .line 240
    if-eqz v0, :cond_6

    .line 241
    .line 242
    iget-boolean v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->H:Z

    .line 243
    .line 244
    if-eqz v0, :cond_6

    .line 245
    .line 246
    iget-boolean v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->U:Z

    .line 247
    .line 248
    if-nez v0, :cond_7

    .line 249
    .line 250
    :cond_6
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 251
    .line 252
    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 253
    .line 254
    .line 255
    sget-object p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 256
    .line 257
    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->g(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lsc/e;

    .line 258
    .line 259
    .line 260
    goto/16 :goto_0

    .line 261
    .line 262
    :cond_7
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 263
    .line 264
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 265
    .line 266
    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 267
    .line 268
    .line 269
    goto/16 :goto_0

    .line 270
    .line 271
    :pswitch_8
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 272
    .line 273
    iget-object v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 274
    .line 275
    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    .line 276
    .line 277
    if-nez v0, :cond_8

    .line 278
    .line 279
    iget-boolean v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B:Z

    .line 280
    .line 281
    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    if-eqz p1, :cond_8

    .line 286
    .line 287
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 288
    .line 289
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 290
    .line 291
    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 292
    .line 293
    .line 294
    sget-object p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 295
    .line 296
    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->g(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lsc/e;

    .line 297
    .line 298
    .line 299
    goto/16 :goto_0

    .line 300
    .line 301
    :cond_8
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 302
    .line 303
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 304
    .line 305
    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 306
    .line 307
    .line 308
    goto/16 :goto_0

    .line 309
    .line 310
    :pswitch_9
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 311
    .line 312
    iget-boolean v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 313
    .line 314
    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    .line 315
    .line 316
    .line 317
    move-result p1

    .line 318
    if-eqz p1, :cond_a

    .line 319
    .line 320
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 321
    .line 322
    iget-object v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 323
    .line 324
    iget-boolean v1, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    .line 325
    .line 326
    if-nez v1, :cond_a

    .line 327
    .line 328
    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFinishing:Z

    .line 329
    .line 330
    if-nez v0, :cond_a

    .line 331
    .line 332
    iget-boolean v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->T:Z

    .line 333
    .line 334
    if-eqz v0, :cond_9

    .line 335
    .line 336
    iget-boolean v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->H:Z

    .line 337
    .line 338
    if-eqz v0, :cond_9

    .line 339
    .line 340
    iget-boolean v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->U:Z

    .line 341
    .line 342
    if-nez v0, :cond_a

    .line 343
    .line 344
    :cond_9
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 345
    .line 346
    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 347
    .line 348
    .line 349
    goto :goto_0

    .line 350
    :cond_a
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 351
    .line 352
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 353
    .line 354
    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 355
    .line 356
    .line 357
    goto :goto_0

    .line 358
    :pswitch_a
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 359
    .line 360
    iget-object v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 361
    .line 362
    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    .line 363
    .line 364
    if-nez v0, :cond_b

    .line 365
    .line 366
    iget-boolean v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B:Z

    .line 367
    .line 368
    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    .line 369
    .line 370
    .line 371
    move-result p1

    .line 372
    if-eqz p1, :cond_b

    .line 373
    .line 374
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 375
    .line 376
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 377
    .line 378
    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 379
    .line 380
    .line 381
    goto :goto_0

    .line 382
    :cond_b
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 383
    .line 384
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 385
    .line 386
    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 387
    .line 388
    .line 389
    goto :goto_0

    .line 390
    :pswitch_b
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 391
    .line 392
    iget-object v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 393
    .line 394
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 395
    .line 396
    if-eq v0, v1, :cond_c

    .line 397
    .line 398
    iget v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 399
    .line 400
    if-nez v0, :cond_c

    .line 401
    .line 402
    invoke-virtual {p1, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 403
    .line 404
    .line 405
    goto :goto_0

    .line 406
    :cond_c
    iget p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 407
    .line 408
    if-eqz p1, :cond_d

    .line 409
    .line 410
    const/4 p1, 0x0

    .line 411
    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;->a(I)Landroid/animation/ValueAnimator;

    .line 412
    .line 413
    .line 414
    :cond_d
    :goto_0
    const/4 p1, 0x0

    .line 415
    return-object p1

    .line 416
    nop

    .line 417
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
