.class Lec/a$d;
.super Ljava/lang/Object;
.source "AnimProcessor.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lec/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lec/a;


# direct methods
.method constructor <init>(Lec/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lec/a$d;->a:Lec/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lec/a$d;->a:Lec/a;

    .line 12
    .line 13
    invoke-static {v0}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->D()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lec/a$d;->a:Lec/a;

    .line 24
    .line 25
    invoke-static {v0}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->p()Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lec/a$d;->a:Lec/a;

    .line 40
    .line 41
    invoke-static {v0}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->p()Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lec/a$d;->a:Lec/a;

    .line 55
    .line 56
    invoke-static {v0}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->p()Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const/16 v1, 0x8

    .line 69
    .line 70
    if-eq v0, v1, :cond_1

    .line 71
    .line 72
    iget-object v0, p0, Lec/a$d;->a:Lec/a;

    .line 73
    .line 74
    invoke-static {v0}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->p()Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    :cond_1
    :goto_0
    iget-object v0, p0, Lec/a$d;->a:Lec/a;

    .line 86
    .line 87
    invoke-static {v0}, Lec/a;->q(Lec/a;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    iget-object v0, p0, Lec/a$d;->a:Lec/a;

    .line 94
    .line 95
    invoke-static {v0}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->y()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_2

    .line 104
    .line 105
    iget-object v0, p0, Lec/a$d;->a:Lec/a;

    .line 106
    .line 107
    int-to-float v1, p1

    .line 108
    invoke-static {v0, v1}, Lec/a;->l(Lec/a;F)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    iget-object v0, p0, Lec/a$d;->a:Lec/a;

    .line 113
    .line 114
    invoke-static {v0}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->p()Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 127
    .line 128
    iget-object v0, p0, Lec/a$d;->a:Lec/a;

    .line 129
    .line 130
    invoke-static {v0}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->p()Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lec/a$d;->a:Lec/a;

    .line 142
    .line 143
    invoke-static {v0}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->p()Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    const/4 v1, 0x0

    .line 152
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lec/a$d;->a:Lec/a;

    .line 156
    .line 157
    invoke-static {v0}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    int-to-float v1, p1

    .line 162
    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->R(F)V

    .line 163
    .line 164
    .line 165
    :goto_1
    iget-object v0, p0, Lec/a$d;->a:Lec/a;

    .line 166
    .line 167
    invoke-static {v0}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->v()Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    neg-int p1, p1

    .line 176
    int-to-float p1, p1

    .line 177
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 178
    .line 179
    .line 180
    return-void
.end method
