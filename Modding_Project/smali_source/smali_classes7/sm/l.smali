.class public Lsm/l;
.super Lsm/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsm/i<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lsm/i;-><init>(Landroid/view/View$OnClickListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method h(Landroid/content/Context;Lio/bidmachine/iab/utils/IabElementStyle;)Landroid/view/View;
    .locals 2
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

    .line 1
    invoke-virtual {p2}, Lio/bidmachine/iab/utils/IabElementStyle;->F()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "text"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    invoke-virtual {p2}, Lio/bidmachine/iab/utils/IabElementStyle;->F()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "text-reverse"

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {p2}, Lio/bidmachine/iab/utils/IabElementStyle;->F()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "circular"

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {p2}, Lio/bidmachine/iab/utils/IabElementStyle;->F()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    const-string v0, "circular-reverse"

    .line 43
    .line 44
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    new-instance p2, Lio/bidmachine/iab/vast/view/LinearCountdownView;

    .line 52
    .line 53
    invoke-direct {p2, p1}, Lio/bidmachine/iab/vast/view/LinearCountdownView;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    return-object p2

    .line 57
    :cond_2
    :goto_0
    new-instance p2, Lio/bidmachine/iab/vast/view/CircleCountdownView;

    .line 58
    .line 59
    invoke-direct {p2, p1}, Lio/bidmachine/iab/vast/view/CircleCountdownView;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    return-object p2

    .line 63
    :cond_3
    :goto_1
    new-instance p2, Lio/bidmachine/iab/vast/view/TextCountdownView;

    .line 64
    .line 65
    invoke-direct {p2, p1}, Lio/bidmachine/iab/vast/view/TextCountdownView;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    return-object p2
.end method

.method protected j(Landroid/content/Context;Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/utils/IabElementStyle;
    .locals 1
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

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    invoke-virtual {p2}, Lio/bidmachine/iab/utils/IabElementStyle;->F()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "text"

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p2}, Lio/bidmachine/iab/utils/IabElementStyle;->F()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "text-reverse"

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p2}, Lio/bidmachine/iab/utils/IabElementStyle;->F()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, "circular"

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p2}, Lio/bidmachine/iab/utils/IabElementStyle;->F()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string p2, "circular-reverse"

    .line 45
    .line 46
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    :cond_1
    sget-object p1, Lsm/a;->o:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 53
    .line 54
    return-object p1

    .line 55
    :cond_2
    :goto_0
    sget-object p1, Lsm/a;->m:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 56
    .line 57
    return-object p1

    .line 58
    :cond_3
    sget-object p1, Lsm/a;->n:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 59
    .line 60
    return-object p1
.end method

.method public r(FII)V
    .locals 6

    .line 1
    iget-object v0, p0, Lsm/i;->c:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lio/bidmachine/iab/utils/IabElementStyle;->F()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lsm/i;->c:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 15
    .line 16
    invoke-virtual {v0}, Lio/bidmachine/iab/utils/IabElementStyle;->F()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v3, "reverse"

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    move v0, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v0, v1

    .line 31
    :goto_0
    iget-object v3, p0, Lsm/i;->b:Landroid/view/View;

    .line 32
    .line 33
    instance-of v4, v3, Lio/bidmachine/iab/vast/view/TextCountdownView;

    .line 34
    .line 35
    if-eqz v4, :cond_4

    .line 36
    .line 37
    check-cast v3, Lio/bidmachine/iab/vast/view/TextCountdownView;

    .line 38
    .line 39
    if-nez p3, :cond_2

    .line 40
    .line 41
    const-string p1, ""

    .line 42
    .line 43
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    if-eqz v0, :cond_3

    .line 48
    .line 49
    sub-int p2, p3, p2

    .line 50
    .line 51
    :cond_3
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-virtual {v3, p1}, Lio/bidmachine/iab/vast/view/TextCountdownView;->setRemaining(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_4
    instance-of v4, v3, Lio/bidmachine/iab/vast/view/CircleCountdownView;

    .line 60
    .line 61
    const/high16 v5, 0x42c80000    # 100.0f

    .line 62
    .line 63
    if-eqz v4, :cond_7

    .line 64
    .line 65
    check-cast v3, Lio/bidmachine/iab/vast/view/CircleCountdownView;

    .line 66
    .line 67
    if-eqz v0, :cond_6

    .line 68
    .line 69
    if-eqz p3, :cond_5

    .line 70
    .line 71
    sub-int/2addr p3, p2

    .line 72
    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    :cond_5
    invoke-virtual {v3, p1, v1}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->g(FI)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_6
    sub-float/2addr v5, p1

    .line 81
    invoke-virtual {v3, v5, p2}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->g(FI)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_7
    instance-of p2, v3, Lio/bidmachine/iab/vast/view/LinearCountdownView;

    .line 86
    .line 87
    if-eqz p2, :cond_9

    .line 88
    .line 89
    check-cast v3, Lio/bidmachine/iab/vast/view/LinearCountdownView;

    .line 90
    .line 91
    if-eqz v0, :cond_8

    .line 92
    .line 93
    sub-float p1, v5, p1

    .line 94
    .line 95
    :cond_8
    invoke-virtual {v3, p1}, Lio/bidmachine/iab/vast/view/LinearCountdownView;->b(F)V

    .line 96
    .line 97
    .line 98
    :cond_9
    :goto_1
    return-void
.end method
