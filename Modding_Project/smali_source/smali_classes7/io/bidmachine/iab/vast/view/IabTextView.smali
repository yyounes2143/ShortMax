.class public Lio/bidmachine/iab/vast/view/IabTextView;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Lsm/h;


# instance fields
.field private final a:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private b:Landroid/graphics/drawable/GradientDrawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/vast/view/IabTextView;->a:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/view/IabTextView;->d:Z

    .line 4
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/view/IabTextView;->a(Landroid/content/Context;)V

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

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lio/bidmachine/iab/vast/view/IabTextView;->a:Landroid/graphics/RectF;

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p0, Lio/bidmachine/iab/vast/view/IabTextView;->d:Z

    .line 8
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/view/IabTextView;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    .line 2
    .line 3
    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lio/bidmachine/iab/vast/view/IabTextView;->b:Landroid/graphics/drawable/GradientDrawable;

    .line 7
    .line 8
    sget v0, Lsm/a;->c:I

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lio/bidmachine/iab/vast/view/IabTextView;->b:Landroid/graphics/drawable/GradientDrawable;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lio/bidmachine/iab/vast/view/IabTextView;->b:Landroid/graphics/drawable/GradientDrawable;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    .line 23
    .line 24
    const/16 p1, 0x11

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/view/IabTextView;->d:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/IabTextView;->c:Landroid/graphics/Paint;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    int-to-float v0, v0

    .line 17
    const/high16 v1, 0x40000000    # 2.0f

    .line 18
    .line 19
    div-float/2addr v0, v1

    .line 20
    iget-object v1, p0, Lio/bidmachine/iab/vast/view/IabTextView;->a:Landroid/graphics/RectF;

    .line 21
    .line 22
    iget-object v2, p0, Lio/bidmachine/iab/vast/view/IabTextView;->c:Landroid/graphics/Paint;

    .line 23
    .line 24
    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/high16 v3, 0x40000000    # 2.0f

    .line 11
    .line 12
    if-ne v1, v3, :cond_0

    .line 13
    .line 14
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    sub-int/2addr v1, v4

    .line 23
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    sub-int/2addr v1, v4

    .line 28
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    int-to-float v1, v1

    .line 33
    cmpl-float v4, v4, v1

    .line 34
    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 38
    .line 39
    .line 40
    :cond_0
    if-ne v0, v3, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    sub-int/2addr v0, v1

    .line 57
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    sub-int/2addr v0, v1

    .line 62
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    invoke-virtual {v1, v3, v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    int-to-float v0, v0

    .line 83
    cmpg-float v3, v0, v1

    .line 84
    .line 85
    if-gez v3, :cond_1

    .line 86
    .line 87
    div-float/2addr v0, v1

    .line 88
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    mul-float/2addr v1, v0

    .line 93
    float-to-int v0, v1

    .line 94
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    int-to-float v0, v0

    .line 99
    cmpl-float v1, v1, v0

    .line 100
    .line 101
    if-eqz v1, :cond_1

    .line 102
    .line 103
    invoke-virtual {p0, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 104
    .line 105
    .line 106
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lio/bidmachine/iab/vast/view/IabTextView;->b:Landroid/graphics/drawable/GradientDrawable;

    .line 5
    .line 6
    const/high16 p4, 0x40000000    # 2.0f

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    int-to-float v0, p2

    .line 11
    div-float/2addr v0, p4

    .line 12
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-boolean p3, p0, Lio/bidmachine/iab/vast/view/IabTextView;->d:Z

    .line 16
    .line 17
    if-eqz p3, :cond_1

    .line 18
    .line 19
    iget-object p3, p0, Lio/bidmachine/iab/vast/view/IabTextView;->c:Landroid/graphics/Paint;

    .line 20
    .line 21
    if-eqz p3, :cond_1

    .line 22
    .line 23
    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    div-float/2addr p3, p4

    .line 28
    iget-object p4, p0, Lio/bidmachine/iab/vast/view/IabTextView;->a:Landroid/graphics/RectF;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    add-float/2addr v0, p3

    .line 32
    int-to-float p1, p1

    .line 33
    sub-float/2addr p1, p3

    .line 34
    int-to-float p2, p2

    .line 35
    sub-float/2addr p2, p3

    .line 36
    invoke-virtual {p4, v0, v0, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/IabTextView;->b:Landroid/graphics/drawable/GradientDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setStyle(Lio/bidmachine/iab/utils/IabElementStyle;)V
    .locals 4
    .param p1    # Lio/bidmachine/iab/utils/IabElementStyle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementStyle;->K()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/view/IabTextView;->d:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Landroid/graphics/Paint;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lio/bidmachine/iab/vast/view/IabTextView;->c:Landroid/graphics/Paint;

    .line 20
    .line 21
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/IabTextView;->c:Landroid/graphics/Paint;

    .line 27
    .line 28
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementStyle;->D()Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/IabTextView;->c:Landroid/graphics/Paint;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p1, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->E(Landroid/content/Context;)Ljava/lang/Float;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementStyle;->D()Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementStyle;->i()Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/view/IabTextView;->setBackgroundColor(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {p1, v0}, Lio/bidmachine/iab/utils/IabElementStyle;->j(Landroid/content/Context;)Ljava/lang/Float;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    const/4 v1, 0x0

    .line 91
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 92
    .line 93
    .line 94
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 95
    .line 96
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementStyle;->k()Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementStyle;->y()Ljava/lang/Float;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {p1, v0}, Lio/bidmachine/iab/utils/IabElementStyle;->A(Landroid/content/Context;)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {p1, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->C(Landroid/content/Context;)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {p1, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->B(Landroid/content/Context;)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-virtual {p1, v3}, Lio/bidmachine/iab/utils/IabElementStyle;->z(Landroid/content/Context;)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 171
    .line 172
    .line 173
    return-void
.end method
