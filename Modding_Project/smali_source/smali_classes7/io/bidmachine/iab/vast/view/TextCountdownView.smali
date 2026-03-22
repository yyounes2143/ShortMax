.class public Lio/bidmachine/iab/vast/view/TextCountdownView;
.super Lio/bidmachine/iab/vast/view/IabTextView;
.source "SourceFile"

# interfaces
.implements Lsm/h;


# instance fields
.field private e:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/view/IabTextView;-><init>(Landroid/content/Context;)V

    .line 2
    const-string p1, "%1.0fs"

    iput-object p1, p0, Lio/bidmachine/iab/vast/view/TextCountdownView;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Lio/bidmachine/iab/vast/view/IabTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const-string p1, "%1.0fs"

    iput-object p1, p0, Lio/bidmachine/iab/vast/view/TextCountdownView;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    const/high16 p2, 0x40000000    # 2.0f

    .line 13
    .line 14
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-super {p0, v0, p1}, Lio/bidmachine/iab/vast/view/IabTextView;->onMeasure(II)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-super {p0, p1, p2}, Lio/bidmachine/iab/vast/view/IabTextView;->onMeasure(II)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/TextCountdownView;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "%1.0f"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setProgress(II)V
    .locals 0

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/view/TextCountdownView;->setProgress(I)V

    return-void
.end method

.method public setRemaining(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/TextCountdownView;->e:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v1, "%1.0f"

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setStyle(Lio/bidmachine/iab/utils/IabElementStyle;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/utils/IabElementStyle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/iab/vast/view/IabTextView;->setStyle(Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementStyle;->h()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iput-object p1, p0, Lio/bidmachine/iab/vast/view/TextCountdownView;->e:Ljava/lang/String;

    .line 11
    .line 12
    :cond_0
    return-void
.end method
