.class public Lio/bidmachine/iab/vast/view/IabVideoTexture;
.super Landroid/view/TextureView;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5

    .line 1
    iget v0, p0, Lio/bidmachine/iab/vast/view/IabVideoTexture;->a:I

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lio/bidmachine/iab/vast/view/IabVideoTexture;->b:I

    .line 8
    .line 9
    invoke-static {v1, p2}, Landroid/view/View;->getDefaultSize(II)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget v2, p0, Lio/bidmachine/iab/vast/view/IabVideoTexture;->a:I

    .line 14
    .line 15
    if-lez v2, :cond_8

    .line 16
    .line 17
    iget v2, p0, Lio/bidmachine/iab/vast/view/IabVideoTexture;->b:I

    .line 18
    .line 19
    if-lez v2, :cond_8

    .line 20
    .line 21
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    const/high16 v2, 0x40000000    # 2.0f

    .line 38
    .line 39
    if-ne v0, v2, :cond_1

    .line 40
    .line 41
    if-ne v1, v2, :cond_1

    .line 42
    .line 43
    iget v0, p0, Lio/bidmachine/iab/vast/view/IabVideoTexture;->a:I

    .line 44
    .line 45
    mul-int v1, v0, p2

    .line 46
    .line 47
    iget v2, p0, Lio/bidmachine/iab/vast/view/IabVideoTexture;->b:I

    .line 48
    .line 49
    mul-int v3, p1, v2

    .line 50
    .line 51
    if-ge v1, v3, :cond_0

    .line 52
    .line 53
    div-int v0, v1, v2

    .line 54
    .line 55
    :goto_0
    move v1, p2

    .line 56
    goto :goto_4

    .line 57
    :cond_0
    if-le v1, v3, :cond_4

    .line 58
    .line 59
    div-int v1, v3, v0

    .line 60
    .line 61
    :goto_1
    move v0, p1

    .line 62
    goto :goto_4

    .line 63
    :cond_1
    const/high16 v3, -0x80000000

    .line 64
    .line 65
    if-ne v0, v2, :cond_3

    .line 66
    .line 67
    iget v0, p0, Lio/bidmachine/iab/vast/view/IabVideoTexture;->b:I

    .line 68
    .line 69
    mul-int/2addr v0, p1

    .line 70
    iget v2, p0, Lio/bidmachine/iab/vast/view/IabVideoTexture;->a:I

    .line 71
    .line 72
    div-int/2addr v0, v2

    .line 73
    if-ne v1, v3, :cond_2

    .line 74
    .line 75
    if-le v0, p2, :cond_2

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    move v1, v0

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    if-ne v1, v2, :cond_6

    .line 81
    .line 82
    iget v1, p0, Lio/bidmachine/iab/vast/view/IabVideoTexture;->a:I

    .line 83
    .line 84
    mul-int/2addr v1, p2

    .line 85
    iget v2, p0, Lio/bidmachine/iab/vast/view/IabVideoTexture;->b:I

    .line 86
    .line 87
    div-int/2addr v1, v2

    .line 88
    if-ne v0, v3, :cond_5

    .line 89
    .line 90
    if-le v1, p1, :cond_5

    .line 91
    .line 92
    :cond_4
    :goto_2
    move v0, p1

    .line 93
    goto :goto_0

    .line 94
    :cond_5
    move v0, v1

    .line 95
    goto :goto_0

    .line 96
    :cond_6
    iget v2, p0, Lio/bidmachine/iab/vast/view/IabVideoTexture;->a:I

    .line 97
    .line 98
    iget v4, p0, Lio/bidmachine/iab/vast/view/IabVideoTexture;->b:I

    .line 99
    .line 100
    if-ne v1, v3, :cond_7

    .line 101
    .line 102
    if-le v4, p2, :cond_7

    .line 103
    .line 104
    mul-int v1, p2, v2

    .line 105
    .line 106
    div-int/2addr v1, v4

    .line 107
    goto :goto_3

    .line 108
    :cond_7
    move v1, v2

    .line 109
    move p2, v4

    .line 110
    :goto_3
    if-ne v0, v3, :cond_5

    .line 111
    .line 112
    if-le v1, p1, :cond_5

    .line 113
    .line 114
    mul-int/2addr v4, p1

    .line 115
    div-int v1, v4, v2

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_8
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string p2, "/"

    .line 127
    .line 128
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    const-string p2, "Size"

    .line 139
    .line 140
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method public setVideoSize(II)V
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/iab/vast/view/IabVideoTexture;->a:I

    .line 2
    .line 3
    iput p2, p0, Lio/bidmachine/iab/vast/view/IabVideoTexture;->b:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
