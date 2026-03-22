.class public abstract Lsm/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected b:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected c:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Z

.field private final e:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final f:Landroid/animation/Animator$AnimatorListener;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lsm/i;->d:Z

    .line 6
    .line 7
    new-instance v0, Lsm/i$a;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lsm/i$a;-><init>(Lsm/i;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lsm/i;->e:Ljava/lang/Runnable;

    .line 13
    .line 14
    new-instance v0, Lsm/i$b;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lsm/i$b;-><init>(Lsm/i;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lsm/i;->f:Landroid/animation/Animator$AnimatorListener;

    .line 20
    .line 21
    iput-object p1, p0, Lsm/i;->a:Landroid/view/View$OnClickListener;

    .line 22
    .line 23
    return-void
.end method

.method static synthetic a(Lsm/i;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsm/i;->f:Landroid/animation/Animator$AnimatorListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lsm/i;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsm/i;->d:Z

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method protected b(Landroid/content/Context;Lio/bidmachine/iab/utils/IabElementStyle;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/iab/utils/IabElementStyle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->H(Landroid/content/Context;)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p2, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->n(Landroid/content/Context;)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method protected c(Landroid/content/Context;Landroid/view/View;Lio/bidmachine/iab/utils/IabElementStyle;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/iab/utils/IabElementStyle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;",
            "Lio/bidmachine/iab/utils/IabElementStyle;",
            ")V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method protected d(Landroid/view/View;Lio/bidmachine/iab/utils/IabElementStyle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/iab/utils/IabElementStyle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/bidmachine/iab/utils/IabElementStyle;",
            ")V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lsm/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lsm/h;

    .line 6
    .line 7
    invoke-interface {p1, p2}, Lsm/h;->setStyle(Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method protected e(Landroid/view/View;Lio/bidmachine/iab/utils/IabElementStyle;Lio/bidmachine/iab/utils/IabElementStyle;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/iab/utils/IabElementStyle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/iab/utils/IabElementStyle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/bidmachine/iab/utils/IabElementStyle;",
            "Lio/bidmachine/iab/utils/IabElementStyle;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lio/bidmachine/iab/utils/IabElementStyle;->F()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p3}, Lio/bidmachine/iab/utils/IabElementStyle;->F()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    xor-int/lit8 p1, p1, 0x1

    .line 14
    .line 15
    return p1
.end method

.method public g(Landroid/content/Context;Landroid/view/ViewGroup;Lio/bidmachine/iab/utils/IabElementStyle;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/iab/utils/IabElementStyle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1, p3}, Lsm/i;->j(Landroid/content/Context;Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/utils/IabElementStyle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p3}, Lio/bidmachine/iab/utils/IabElementStyle;->g(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/utils/IabElementStyle;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    invoke-virtual {p3}, Lio/bidmachine/iab/utils/IabElementStyle;->L()Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lsm/i;->l()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    instance-of v0, p2, Landroid/widget/FrameLayout;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 28
    .line 29
    invoke-virtual {p0, p1, p3}, Lsm/i;->b(Landroid/content/Context;Lio/bidmachine/iab/utils/IabElementStyle;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, v0}, Lio/bidmachine/iab/utils/IabElementStyle;->b(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    instance-of v0, p2, Landroid/widget/RelativeLayout;

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 45
    .line 46
    invoke-virtual {p0, p1, p3}, Lsm/i;->b(Landroid/content/Context;Lio/bidmachine/iab/utils/IabElementStyle;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, v0}, Lio/bidmachine/iab/utils/IabElementStyle;->f(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {p3, p1, v0}, Lio/bidmachine/iab/utils/IabElementStyle;->d(Landroid/content/Context;Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lsm/i;->b:Landroid/view/View;

    .line 60
    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    iget-object v2, p0, Lsm/i;->c:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 64
    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    invoke-virtual {p0, v1, v2, p3}, Lsm/i;->e(Landroid/view/View;Lio/bidmachine/iab/utils/IabElementStyle;Lio/bidmachine/iab/utils/IabElementStyle;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    iget-object p2, p0, Lsm/i;->b:Landroid/view/View;

    .line 75
    .line 76
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    .line 78
    .line 79
    iget-object p2, p0, Lsm/i;->b:Landroid/view/View;

    .line 80
    .line 81
    const/4 v0, 0x0

    .line 82
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    :goto_1
    iget-object v1, p0, Lsm/i;->b:Landroid/view/View;

    .line 87
    .line 88
    invoke-static {v1}, Lsm/q;->J(Landroid/view/View;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1, p3}, Lsm/i;->h(Landroid/content/Context;Lio/bidmachine/iab/utils/IabElementStyle;)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iput-object v1, p0, Lsm/i;->b:Landroid/view/View;

    .line 96
    .line 97
    invoke-virtual {p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    .line 99
    .line 100
    :goto_2
    iget-object p2, p0, Lsm/i;->b:Landroid/view/View;

    .line 101
    .line 102
    invoke-virtual {p3}, Lio/bidmachine/iab/utils/IabElementStyle;->y()Ljava/lang/Float;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 111
    .line 112
    .line 113
    iget-object p2, p0, Lsm/i;->b:Landroid/view/View;

    .line 114
    .line 115
    invoke-virtual {p3, p1, p2}, Lio/bidmachine/iab/utils/IabElementStyle;->e(Landroid/content/Context;Landroid/view/View;)V

    .line 116
    .line 117
    .line 118
    iget-object p2, p0, Lsm/i;->b:Landroid/view/View;

    .line 119
    .line 120
    iget-object v0, p0, Lsm/i;->a:Landroid/view/View$OnClickListener;

    .line 121
    .line 122
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    .line 124
    .line 125
    iput-object p3, p0, Lsm/i;->c:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 126
    .line 127
    iget-object p2, p0, Lsm/i;->b:Landroid/view/View;

    .line 128
    .line 129
    invoke-virtual {p0, p2, p3}, Lsm/i;->d(Landroid/view/View;Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 130
    .line 131
    .line 132
    iget-object p2, p0, Lsm/i;->b:Landroid/view/View;

    .line 133
    .line 134
    invoke-virtual {p0, p1, p2, p3}, Lsm/i;->c(Landroid/content/Context;Landroid/view/View;Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 139
    .line 140
    const-string p2, "Parent should be instance of FrameLayout or RelativeLayout"

    .line 141
    .line 142
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p1
.end method

.method abstract h(Landroid/content/Context;Lio/bidmachine/iab/utils/IabElementStyle;)Landroid/view/View;
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/iab/utils/IabElementStyle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/bidmachine/iab/utils/IabElementStyle;",
            ")TT;"
        }
    .end annotation
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsm/i;->b:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected abstract j(Landroid/content/Context;Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/utils/IabElementStyle;
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/iab/utils/IabElementStyle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public k()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lsm/i;->d:Z

    .line 3
    .line 4
    iget-object v0, p0, Lsm/i;->b:Landroid/view/View;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lsm/i;->c:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lsm/i;->b:Landroid/view/View;

    .line 21
    .line 22
    iget-object v1, p0, Lsm/i;->e:Ljava/lang/Runnable;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lsm/i;->b:Landroid/view/View;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lsm/i;->b:Landroid/view/View;

    .line 34
    .line 35
    iget-object v1, p0, Lsm/i;->c:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 36
    .line 37
    invoke-virtual {v1}, Lio/bidmachine/iab/utils/IabElementStyle;->y()Ljava/lang/Float;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsm/i;->b:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lsm/i;->k()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lsm/i;->b:Landroid/view/View;

    .line 9
    .line 10
    invoke-static {v0}, Lsm/q;->J(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lsm/i;->b:Landroid/view/View;

    .line 15
    .line 16
    iput-object v0, p0, Lsm/i;->c:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public m()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lsm/i;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lsm/i;->b:Landroid/view/View;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lsm/i;->c:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lsm/i;->b:Landroid/view/View;

    .line 20
    .line 21
    iget-object v2, p0, Lsm/i;->c:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 22
    .line 23
    invoke-virtual {p0, v0, v1, v2}, Lsm/i;->c(Landroid/content/Context;Landroid/view/View;Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsm/i;->b:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public o(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsm/i;->b:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public p()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lsm/i;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lsm/i;->b:Landroid/view/View;

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lsm/i;->c:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v0}, Lio/bidmachine/iab/utils/IabElementStyle;->q()Ljava/lang/Float;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    cmpl-float v1, v1, v2

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 v1, 0x1

    .line 32
    iput-boolean v1, p0, Lsm/i;->d:Z

    .line 33
    .line 34
    iget-object v1, p0, Lsm/i;->b:Landroid/view/View;

    .line 35
    .line 36
    iget-object v2, p0, Lsm/i;->e:Ljava/lang/Runnable;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 43
    .line 44
    mul-float/2addr v0, v3

    .line 45
    float-to-long v3, v0

    .line 46
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    .line 48
    .line 49
    :cond_3
    :goto_0
    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsm/i;->b:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lsm/i;->c:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lsm/i;->k()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lsm/i;->p()V

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    return-void
.end method
