.class public final Lcom/inmobi/media/e9;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lcom/inmobi/media/a9;

.field public final c:Lcom/inmobi/media/d9;

.field public d:Lcom/inmobi/media/l9;

.field public e:Z

.field public final f:Lcom/inmobi/media/y3;

.field public final g:Lcom/inmobi/media/y3;

.field public final h:Landroid/widget/ProgressBar;

.field public final i:Landroid/widget/RelativeLayout;

.field public j:Z

.field public final k:F

.field public final l:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7
    .line 8
    .line 9
    const-class p2, Lcom/inmobi/media/e9;

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iput-object p2, p0, Lcom/inmobi/media/e9;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {}, Lcom/inmobi/media/U3;->d()Lcom/inmobi/media/V3;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iget p2, p2, Lcom/inmobi/media/V3;->c:F

    .line 22
    .line 23
    iput p2, p0, Lcom/inmobi/media/e9;->k:F

    .line 24
    .line 25
    new-instance p2, Landroid/widget/RelativeLayout;

    .line 26
    .line 27
    invoke-direct {p2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lcom/inmobi/media/e9;->i:Landroid/widget/RelativeLayout;

    .line 31
    .line 32
    new-instance p3, Lcom/inmobi/media/y3;

    .line 33
    .line 34
    const/16 v0, 0x9

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-direct {p3, p1, v0, v1}, Lcom/inmobi/media/y3;-><init>(Landroid/content/Context;BLcom/inmobi/media/z5;)V

    .line 38
    .line 39
    .line 40
    iput-object p3, p0, Lcom/inmobi/media/e9;->f:Lcom/inmobi/media/y3;

    .line 41
    .line 42
    new-instance p3, Lcom/inmobi/media/y3;

    .line 43
    .line 44
    const/16 v0, 0xa

    .line 45
    .line 46
    invoke-direct {p3, p1, v0, v1}, Lcom/inmobi/media/y3;-><init>(Landroid/content/Context;BLcom/inmobi/media/z5;)V

    .line 47
    .line 48
    .line 49
    iput-object p3, p0, Lcom/inmobi/media/e9;->g:Lcom/inmobi/media/y3;

    .line 50
    .line 51
    new-instance p3, Landroid/widget/ProgressBar;

    .line 52
    .line 53
    const v0, 0x1010078

    .line 54
    .line 55
    .line 56
    invoke-direct {p3, p1, v1, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    .line 58
    .line 59
    iput-object p3, p0, Lcom/inmobi/media/e9;->h:Landroid/widget/ProgressBar;

    .line 60
    .line 61
    const p1, 0x3f4ccccd    # 0.8f

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3, p1}, Landroid/view/View;->setScaleY(F)V

    .line 65
    .line 66
    .line 67
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 68
    .line 69
    const/4 v0, -0x1

    .line 70
    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    .line 75
    .line 76
    const/4 p1, 0x0

    .line 77
    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/inmobi/media/e9;->a()V

    .line 81
    .line 82
    .line 83
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 84
    .line 85
    const/4 v3, -0x2

    .line 86
    invoke-direct {v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 87
    .line 88
    .line 89
    const/16 v3, 0xc

    .line 90
    .line 91
    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lcom/inmobi/media/U3;->d()Lcom/inmobi/media/V3;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    iget v3, v3, Lcom/inmobi/media/V3;->c:F

    .line 99
    .line 100
    const/4 v4, -0x6

    .line 101
    int-to-float v4, v4

    .line 102
    mul-float/2addr v4, v3

    .line 103
    float-to-int v4, v4

    .line 104
    const/4 v5, -0x8

    .line 105
    int-to-float v5, v5

    .line 106
    mul-float/2addr v5, v3

    .line 107
    float-to-int v3, v5

    .line 108
    invoke-virtual {v2, p1, v4, p1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p3}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    instance-of v4, v3, Landroid/graphics/drawable/LayerDrawable;

    .line 116
    .line 117
    if-eqz v4, :cond_0

    .line 118
    .line 119
    move-object v1, v3

    .line 120
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 121
    .line 122
    :cond_0
    if-eqz v1, :cond_1

    .line 123
    .line 124
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    .line 129
    .line 130
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 131
    .line 132
    invoke-direct {v3, v0, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 136
    .line 137
    .line 138
    const/4 p1, 0x2

    .line 139
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 144
    .line 145
    const v1, -0x4fffa

    .line 146
    .line 147
    .line 148
    invoke-direct {v0, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 152
    .line 153
    .line 154
    :cond_1
    invoke-virtual {p2, p3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    .line 156
    .line 157
    new-instance p1, Lcom/inmobi/media/d9;

    .line 158
    .line 159
    invoke-direct {p1, p0}, Lcom/inmobi/media/d9;-><init>(Lcom/inmobi/media/e9;)V

    .line 160
    .line 161
    .line 162
    iput-object p1, p0, Lcom/inmobi/media/e9;->c:Lcom/inmobi/media/d9;

    .line 163
    .line 164
    new-instance p1, Lub/z3;

    .line 165
    .line 166
    invoke-direct {p1, p0}, Lub/z3;-><init>(Lcom/inmobi/media/e9;)V

    .line 167
    .line 168
    .line 169
    iput-object p1, p0, Lcom/inmobi/media/e9;->l:Landroid/view/View$OnClickListener;

    .line 170
    .line 171
    return-void
.end method

.method public static final a(Lcom/inmobi/media/e9;Landroid/view/View;)V
    .locals 5

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/inmobi/media/e9;->d:Lcom/inmobi/media/l9;

    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/inmobi/media/c9;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/inmobi/media/c9;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    iget-boolean v0, p0, Lcom/inmobi/media/e9;->j:Z

    const-string v1, "event"

    const-string v2, "TAG"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/inmobi/media/e9;->d:Lcom/inmobi/media/l9;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/media/l9;->k()V

    .line 12
    :cond_1
    iput-boolean v4, p0, Lcom/inmobi/media/e9;->j:Z

    .line 13
    iget-object v0, p0, Lcom/inmobi/media/e9;->i:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/inmobi/media/e9;->g:Lcom/inmobi/media/y3;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 14
    iget-object v0, p0, Lcom/inmobi/media/e9;->i:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/inmobi/media/e9;->f:Lcom/inmobi/media/y3;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 15
    invoke-virtual {p0}, Lcom/inmobi/media/e9;->a()V

    if-eqz p1, :cond_4

    .line 16
    iget-object v0, p0, Lcom/inmobi/media/e9;->b:Lcom/inmobi/media/a9;

    if-eqz v0, :cond_4

    .line 17
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/inmobi/media/a9;->i(Lcom/inmobi/media/c9;)V

    .line 18
    iput-boolean v3, p1, Lcom/inmobi/media/c9;->z:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 19
    iget-object p0, p0, Lcom/inmobi/media/e9;->a:Ljava/lang/String;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object p0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 21
    invoke-static {p1, v1}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object p0

    .line 22
    sget-object p1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {p1, p0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    goto :goto_1

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/e9;->d:Lcom/inmobi/media/l9;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/inmobi/media/l9;->c()V

    .line 24
    :cond_3
    iput-boolean v3, p0, Lcom/inmobi/media/e9;->j:Z

    .line 25
    iget-object v0, p0, Lcom/inmobi/media/e9;->i:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/inmobi/media/e9;->f:Lcom/inmobi/media/y3;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 26
    iget-object v0, p0, Lcom/inmobi/media/e9;->i:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/inmobi/media/e9;->g:Lcom/inmobi/media/y3;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 27
    invoke-virtual {p0}, Lcom/inmobi/media/e9;->b()V

    if-eqz p1, :cond_4

    .line 28
    iget-object v0, p0, Lcom/inmobi/media/e9;->b:Lcom/inmobi/media/a9;

    if-eqz v0, :cond_4

    .line 29
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/inmobi/media/a9;->e(Lcom/inmobi/media/c9;)V

    .line 30
    iput-boolean v4, p1, Lcom/inmobi/media/c9;->z:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 31
    iget-object p0, p0, Lcom/inmobi/media/e9;->a:Ljava/lang/String;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object p0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 33
    invoke-static {p1, v1}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object p0

    .line 34
    sget-object p1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {p1, p0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x1e

    int-to-float v1, v1

    .line 2
    iget v2, p0, Lcom/inmobi/media/e9;->k:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 3
    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    const/4 v2, -0x1

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xc

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6
    iget-object v1, p0, Lcom/inmobi/media/e9;->i:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/inmobi/media/e9;->f:Lcom/inmobi/media/y3;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object v0, p0, Lcom/inmobi/media/e9;->f:Lcom/inmobi/media/y3;

    iget-object v1, p0, Lcom/inmobi/media/e9;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    iget v2, p0, Lcom/inmobi/media/e9;->k:F

    .line 7
    .line 8
    mul-float/2addr v1, v2

    .line 9
    float-to-int v1, v1

    .line 10
    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x9

    .line 14
    .line 15
    const/4 v2, -0x1

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17
    .line 18
    .line 19
    const/16 v1, 0xc

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/inmobi/media/e9;->i:Landroid/widget/RelativeLayout;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/inmobi/media/e9;->g:Lcom/inmobi/media/y3;

    .line 27
    .line 28
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/inmobi/media/e9;->g:Lcom/inmobi/media/y3;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/inmobi/media/e9;->l:Landroid/view/View$OnClickListener;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/e9;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/e9;->c:Lcom/inmobi/media/d9;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    const/16 v0, 0x8

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_2

    .line 22
    :goto_1
    iget-object v1, p0, Lcom/inmobi/media/e9;->a:Ljava/lang/String;

    .line 23
    .line 24
    const-string v2, "TAG"

    .line 25
    .line 26
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 30
    .line 31
    new-instance v1, Lcom/inmobi/media/f2;

    .line 32
    .line 33
    invoke-direct {v1, v0}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "event"

    .line 37
    .line 38
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 44
    .line 45
    .line 46
    :goto_2
    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/inmobi/media/e9;->e:Z

    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public final d()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/e9;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Lcom/inmobi/media/e9;->d:Lcom/inmobi/media/l9;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/inmobi/media/l9;->getCurrentPosition()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0}, Lcom/inmobi/media/l9;->getDuration()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Lcom/inmobi/media/e9;->h:Landroid/widget/ProgressBar;

    .line 20
    .line 21
    mul-int/lit8 v1, v1, 0x64

    .line 22
    .line 23
    div-int/2addr v1, v0

    .line 24
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/inmobi/media/e9;->e:Z

    .line 29
    .line 30
    iget-object v0, p0, Lcom/inmobi/media/e9;->d:Lcom/inmobi/media/l9;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object v0, v1

    .line 41
    :goto_0
    instance-of v2, v0, Lcom/inmobi/media/c9;

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    move-object v1, v0

    .line 46
    check-cast v1, Lcom/inmobi/media/c9;

    .line 47
    .line 48
    :cond_2
    const/4 v0, 0x0

    .line 49
    if-eqz v1, :cond_5

    .line 50
    .line 51
    iget-object v2, p0, Lcom/inmobi/media/e9;->f:Lcom/inmobi/media/y3;

    .line 52
    .line 53
    iget-boolean v3, v1, Lcom/inmobi/media/c9;->A:Z

    .line 54
    .line 55
    const/4 v4, 0x4

    .line 56
    if-eqz v3, :cond_3

    .line 57
    .line 58
    move v3, v0

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    move v3, v4

    .line 61
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lcom/inmobi/media/e9;->h:Landroid/widget/ProgressBar;

    .line 65
    .line 66
    iget-boolean v1, v1, Lcom/inmobi/media/c9;->C:Z

    .line 67
    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    move v4, v0

    .line 71
    :cond_4
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    :cond_5
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    :cond_6
    iget-object v0, p0, Lcom/inmobi/media/e9;->c:Lcom/inmobi/media/d9;

    .line 78
    .line 79
    if-eqz v0, :cond_7

    .line 80
    .line 81
    const/4 v1, 0x2

    .line 82
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 83
    .line 84
    .line 85
    :cond_7
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    move v1, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    const/16 v3, 0x18

    .line 27
    .line 28
    if-eq v0, v3, :cond_b

    .line 29
    .line 30
    const/16 v3, 0x19

    .line 31
    .line 32
    if-eq v0, v3, :cond_b

    .line 33
    .line 34
    const/16 v3, 0x1b

    .line 35
    .line 36
    if-eq v0, v3, :cond_b

    .line 37
    .line 38
    const/16 v3, 0x3e

    .line 39
    .line 40
    if-eq v0, v3, :cond_7

    .line 41
    .line 42
    const/16 v3, 0x4f

    .line 43
    .line 44
    if-eq v0, v3, :cond_7

    .line 45
    .line 46
    const/16 v3, 0xa4

    .line 47
    .line 48
    if-eq v0, v3, :cond_b

    .line 49
    .line 50
    const/16 v3, 0x55

    .line 51
    .line 52
    if-eq v0, v3, :cond_7

    .line 53
    .line 54
    const/16 v3, 0x56

    .line 55
    .line 56
    if-eq v0, v3, :cond_4

    .line 57
    .line 58
    const/16 v3, 0x7e

    .line 59
    .line 60
    if-eq v0, v3, :cond_1

    .line 61
    .line 62
    const/16 v3, 0x7f

    .line 63
    .line 64
    if-eq v0, v3, :cond_4

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/inmobi/media/e9;->d()V

    .line 67
    .line 68
    .line 69
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    return p1

    .line 74
    :cond_1
    if-eqz v1, :cond_3

    .line 75
    .line 76
    iget-object p1, p0, Lcom/inmobi/media/e9;->d:Lcom/inmobi/media/l9;

    .line 77
    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/inmobi/media/l9;->isPlaying()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_3

    .line 85
    .line 86
    iget-object p1, p0, Lcom/inmobi/media/e9;->d:Lcom/inmobi/media/l9;

    .line 87
    .line 88
    if-eqz p1, :cond_2

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/inmobi/media/l9;->start()V

    .line 91
    .line 92
    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/e9;->d()V

    .line 94
    .line 95
    .line 96
    :cond_3
    return v2

    .line 97
    :cond_4
    if-eqz v1, :cond_6

    .line 98
    .line 99
    iget-object p1, p0, Lcom/inmobi/media/e9;->d:Lcom/inmobi/media/l9;

    .line 100
    .line 101
    if-eqz p1, :cond_6

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/inmobi/media/l9;->isPlaying()Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-ne p1, v2, :cond_6

    .line 108
    .line 109
    iget-object p1, p0, Lcom/inmobi/media/e9;->d:Lcom/inmobi/media/l9;

    .line 110
    .line 111
    if-eqz p1, :cond_5

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/inmobi/media/l9;->pause()V

    .line 114
    .line 115
    .line 116
    :cond_5
    invoke-virtual {p0}, Lcom/inmobi/media/e9;->d()V

    .line 117
    .line 118
    .line 119
    :cond_6
    return v2

    .line 120
    :cond_7
    if-eqz v1, :cond_a

    .line 121
    .line 122
    iget-object p1, p0, Lcom/inmobi/media/e9;->d:Lcom/inmobi/media/l9;

    .line 123
    .line 124
    if-eqz p1, :cond_9

    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/inmobi/media/l9;->isPlaying()Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_8

    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/inmobi/media/l9;->pause()V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_8
    invoke-virtual {p1}, Lcom/inmobi/media/l9;->start()V

    .line 137
    .line 138
    .line 139
    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/inmobi/media/e9;->d()V

    .line 140
    .line 141
    .line 142
    :cond_a
    return v2

    .line 143
    :cond_b
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    return p1
.end method

.method public final getFriendlyViews()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/e9;->h:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    sget-object v1, Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;->VIDEO_CONTROLS:Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v2, p0, Lcom/inmobi/media/e9;->f:Lcom/inmobi/media/y3;

    .line 10
    .line 11
    invoke-static {v2, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/inmobi/media/e9;->g:Lcom/inmobi/media/y3;

    .line 16
    .line 17
    invoke-static {v3, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    filled-new-array {v0, v2, v1}, [Lkotlin/Pair;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lkotlin/collections/p0;->k([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7
    .line 8
    .line 9
    const-class v0, Lcom/inmobi/media/e9;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    const-string v0, "info"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 7
    .line 8
    .line 9
    const-class v0, Lcom/inmobi/media/e9;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const-string v0, "ev"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/inmobi/media/e9;->d:Lcom/inmobi/media/l9;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/inmobi/media/l9;->a()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x1

    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    iget-boolean p1, p0, Lcom/inmobi/media/e9;->e:Z

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/inmobi/media/e9;->c()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/e9;->d()V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 29
    return p1
.end method

.method public final setMediaPlayer(Lcom/inmobi/media/l9;)V
    .locals 2
    .param p1    # Lcom/inmobi/media/l9;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "videoView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/inmobi/media/e9;->d:Lcom/inmobi/media/l9;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object p1, v0

    .line 17
    :goto_0
    instance-of v1, p1, Lcom/inmobi/media/c9;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    move-object v0, p1

    .line 22
    check-cast v0, Lcom/inmobi/media/c9;

    .line 23
    .line 24
    :cond_1
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-boolean p1, v0, Lcom/inmobi/media/c9;->A:Z

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/inmobi/media/c9;->c()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/inmobi/media/e9;->j:Z

    .line 38
    .line 39
    iget-object p1, p0, Lcom/inmobi/media/e9;->i:Landroid/widget/RelativeLayout;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/inmobi/media/e9;->g:Lcom/inmobi/media/y3;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/inmobi/media/e9;->i:Landroid/widget/RelativeLayout;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/inmobi/media/e9;->f:Lcom/inmobi/media/y3;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/inmobi/media/e9;->b()V

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method public final setVideoAd(Lcom/inmobi/media/a9;)V
    .locals 0
    .param p1    # Lcom/inmobi/media/a9;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/e9;->b:Lcom/inmobi/media/a9;

    .line 2
    .line 3
    return-void
.end method
