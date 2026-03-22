.class public Lsm/f;
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
    .locals 1
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
    move-result-object p2

    .line 5
    const-string v0, "text"

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    new-instance p2, Lio/bidmachine/iab/vast/view/TextCountdownView;

    .line 14
    .line 15
    invoke-direct {p2, p1}, Lio/bidmachine/iab/vast/view/TextCountdownView;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    return-object p2

    .line 19
    :cond_0
    new-instance p2, Lio/bidmachine/iab/vast/view/CircleCountdownView;

    .line 20
    .line 21
    invoke-direct {p2, p1}, Lio/bidmachine/iab/vast/view/CircleCountdownView;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    return-object p2
.end method

.method protected j(Landroid/content/Context;Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/utils/IabElementStyle;
    .locals 0
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
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Lio/bidmachine/iab/utils/IabElementStyle;->F()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string p2, "text"

    .line 8
    .line 9
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    sget-object p1, Lsm/a;->i:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    sget-object p1, Lsm/a;->h:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 19
    .line 20
    return-object p1
.end method

.method public r(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsm/i;->b:Landroid/view/View;

    .line 2
    .line 3
    instance-of v1, v0, Lio/bidmachine/iab/vast/view/TextCountdownView;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    check-cast v0, Lio/bidmachine/iab/vast/view/TextCountdownView;

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    const-string p1, ""

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p2}, Lio/bidmachine/iab/vast/view/TextCountdownView;->setRemaining(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    instance-of v1, v0, Lio/bidmachine/iab/vast/view/CircleCountdownView;

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    check-cast v0, Lio/bidmachine/iab/vast/view/CircleCountdownView;

    .line 26
    .line 27
    int-to-float p1, p1

    .line 28
    invoke-virtual {v0, p1, p2}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->g(FI)V

    .line 29
    .line 30
    .line 31
    :cond_2
    :goto_0
    return-void
.end method
