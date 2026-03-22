.class public abstract Lcom/inmobi/media/P;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/RelativeLayout;

.field public b:Lcom/inmobi/media/pa;

.field public c:F

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/widget/RelativeLayout;)V
    .locals 1

    .line 1
    const-string v0, "adBackgroundView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/inmobi/media/P;->a:Landroid/widget/RelativeLayout;

    .line 10
    .line 11
    invoke-static {}, Lcom/inmobi/media/U3;->g()B

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p1}, Lcom/inmobi/media/qa;->a(B)Lcom/inmobi/media/pa;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/inmobi/media/P;->b:Lcom/inmobi/media/pa;

    .line 20
    .line 21
    const/high16 p1, 0x3f800000    # 1.0f

    .line 22
    .line 23
    iput p1, p0, Lcom/inmobi/media/P;->c:F

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Lcom/inmobi/media/pa;)V
    .locals 1

    const-string v0, "orientation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/P;->b:Lcom/inmobi/media/pa;

    return-void
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public final e()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/inmobi/media/P;->c:F

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    cmpg-float v0, v0, v1

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 13
    .line 14
    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/inmobi/media/P;->a:Landroid/widget/RelativeLayout;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-boolean v0, p0, Lcom/inmobi/media/P;->d:Z

    .line 27
    .line 28
    const-string v3, "context"

    .line 29
    .line 30
    const-string v4, "getContext(...)"

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    sget-object v0, Lcom/inmobi/media/U3;->a:Lcom/inmobi/media/V3;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/inmobi/media/P;->a:Landroid/widget/RelativeLayout;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/inmobi/media/U3;->a(Landroid/content/Context;)Landroid/view/Display;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    sget-object v0, Lcom/inmobi/media/U3;->b:Lcom/inmobi/media/T3;

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    new-instance v3, Landroid/util/DisplayMetrics;

    .line 58
    .line 59
    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 63
    .line 64
    .line 65
    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 66
    .line 67
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 68
    .line 69
    new-instance v4, Lcom/inmobi/media/T3;

    .line 70
    .line 71
    invoke-direct {v4, v0, v3}, Lcom/inmobi/media/T3;-><init>(II)V

    .line 72
    .line 73
    .line 74
    :goto_0
    move-object v0, v4

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    sget-object v0, Lcom/inmobi/media/U3;->a:Lcom/inmobi/media/V3;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/inmobi/media/P;->a:Landroid/widget/RelativeLayout;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v0}, Lcom/inmobi/media/U3;->a(Landroid/content/Context;)Landroid/view/Display;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-nez v0, :cond_3

    .line 95
    .line 96
    sget-object v0, Lcom/inmobi/media/U3;->b:Lcom/inmobi/media/T3;

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    new-instance v3, Landroid/util/DisplayMetrics;

    .line 100
    .line 101
    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 105
    .line 106
    .line 107
    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 108
    .line 109
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 110
    .line 111
    new-instance v4, Lcom/inmobi/media/T3;

    .line 112
    .line 113
    invoke-direct {v4, v0, v3}, Lcom/inmobi/media/T3;-><init>(II)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :goto_1
    iget-object v3, p0, Lcom/inmobi/media/P;->b:Lcom/inmobi/media/pa;

    .line 118
    .line 119
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    iget-object v3, p0, Lcom/inmobi/media/P;->b:Lcom/inmobi/media/pa;

    .line 123
    .line 124
    invoke-static {v3}, Lcom/inmobi/media/qa;->b(Lcom/inmobi/media/pa;)Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_4

    .line 129
    .line 130
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 131
    .line 132
    iget v0, v0, Lcom/inmobi/media/T3;->a:I

    .line 133
    .line 134
    int-to-float v0, v0

    .line 135
    iget v3, p0, Lcom/inmobi/media/P;->c:F

    .line 136
    .line 137
    mul-float/2addr v0, v3

    .line 138
    invoke-static {v0}, Lbt/a;->c(F)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 143
    .line 144
    .line 145
    const/16 v0, 0x9

    .line 146
    .line 147
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_4
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 152
    .line 153
    iget v0, v0, Lcom/inmobi/media/T3;->b:I

    .line 154
    .line 155
    int-to-float v0, v0

    .line 156
    iget v4, p0, Lcom/inmobi/media/P;->c:F

    .line 157
    .line 158
    mul-float/2addr v0, v4

    .line 159
    invoke-static {v0}, Lbt/a;->c(F)I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    invoke-direct {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 167
    .line 168
    .line 169
    move-object v1, v3

    .line 170
    :goto_2
    iget-object v0, p0, Lcom/inmobi/media/P;->a:Landroid/widget/RelativeLayout;

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    .line 174
    .line 175
    return-void
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method
