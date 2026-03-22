.class public Lcom/ss/ttvideoengine/utils/DisplayMode;
.super Ljava/lang/Object;
.source "DisplayMode.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayMode"


# instance fields
.field private final applyDisplayMode:Ljava/lang/Runnable;

.field private mDisplayMode:I

.field private mDisplayView:Landroid/view/View;

.field private mEnable:Z

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/ss/ttvideoengine/utils/DisplayMode;->mDisplayMode:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/utils/DisplayMode;->mEnable:Z

    .line 9
    .line 10
    new-instance v0, Lcom/ss/ttvideoengine/utils/a;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/utils/a;-><init>(Lcom/ss/ttvideoengine/utils/DisplayMode;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/ss/ttvideoengine/utils/DisplayMode;->applyDisplayMode:Ljava/lang/Runnable;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic a(Lcom/ss/ttvideoengine/utils/DisplayMode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/utils/DisplayMode;->applyDisplayMode()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private applyDisplayMode()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/utils/DisplayMode;->mEnable:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/DisplayMode;->mDisplayView:Landroid/view/View;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    instance-of v2, v1, Landroid/view/View;

    .line 16
    .line 17
    const-string v3, "DisplayMode"

    .line 18
    .line 19
    if-nez v2, :cond_2

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v2, "containerView error "

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v3, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    check-cast v1, Landroid/view/View;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    iget v4, p0, Lcom/ss/ttvideoengine/utils/DisplayMode;->mDisplayMode:I

    .line 53
    .line 54
    iget v5, p0, Lcom/ss/ttvideoengine/utils/DisplayMode;->mVideoWidth:I

    .line 55
    .line 56
    iget v6, p0, Lcom/ss/ttvideoengine/utils/DisplayMode;->mVideoHeight:I

    .line 57
    .line 58
    if-lez v5, :cond_c

    .line 59
    .line 60
    if-lez v6, :cond_c

    .line 61
    .line 62
    if-lez v2, :cond_c

    .line 63
    .line 64
    if-gtz v1, :cond_3

    .line 65
    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :cond_3
    int-to-float v5, v5

    .line 69
    int-to-float v6, v6

    .line 70
    div-float/2addr v5, v6

    .line 71
    int-to-float v6, v2

    .line 72
    int-to-float v7, v1

    .line 73
    div-float v8, v6, v7

    .line 74
    .line 75
    if-eqz v4, :cond_8

    .line 76
    .line 77
    const/4 v9, 0x1

    .line 78
    if-eq v4, v9, :cond_9

    .line 79
    .line 80
    const/4 v9, 0x2

    .line 81
    if-eq v4, v9, :cond_7

    .line 82
    .line 83
    const/4 v8, 0x3

    .line 84
    if-eq v4, v8, :cond_6

    .line 85
    .line 86
    const/4 v2, 0x4

    .line 87
    if-ne v4, v2, :cond_5

    .line 88
    .line 89
    :cond_4
    :goto_0
    mul-float/2addr v7, v5

    .line 90
    float-to-int v2, v7

    .line 91
    goto :goto_2

    .line 92
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 93
    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string/jumbo v2, "unknown displayMode = "

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v0

    .line 116
    :cond_6
    :goto_1
    div-float/2addr v6, v5

    .line 117
    float-to-int v1, v6

    .line 118
    goto :goto_2

    .line 119
    :cond_7
    cmpl-float v4, v5, v8

    .line 120
    .line 121
    if-ltz v4, :cond_6

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_8
    cmpl-float v4, v5, v8

    .line 125
    .line 126
    if-ltz v4, :cond_4

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_9
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 134
    .line 135
    if-nez v4, :cond_a

    .line 136
    .line 137
    return-void

    .line 138
    :cond_a
    iget v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 139
    .line 140
    const/16 v6, 0x11

    .line 141
    .line 142
    if-ne v5, v1, :cond_b

    .line 143
    .line 144
    iget v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 145
    .line 146
    if-ne v5, v2, :cond_b

    .line 147
    .line 148
    iget v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 149
    .line 150
    if-eq v5, v6, :cond_c

    .line 151
    .line 152
    :cond_b
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 153
    .line 154
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 155
    .line 156
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 157
    .line 158
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    .line 160
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string v1, "applyDisplayMode width:"

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget v1, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v1, ", height:"

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget v1, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-static {v3, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :cond_c
    :goto_3
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/DisplayMode;->mDisplayView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/ss/ttvideoengine/utils/DisplayMode;->mEnable:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/utils/DisplayMode;->applyDisplayMode:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/DisplayMode;->mDisplayView:Landroid/view/View;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/ss/ttvideoengine/utils/DisplayMode;->applyDisplayMode:Ljava/lang/Runnable;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method public setDisplayMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/utils/DisplayMode;->mDisplayMode:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/utils/DisplayMode;->apply()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDisplayView(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "setDisplayView "

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "DisplayMode"

    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/ss/ttvideoengine/utils/DisplayMode;->mDisplayView:Landroid/view/View;

    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/utils/DisplayMode;->apply()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/utils/DisplayMode;->mEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVideoSize(II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "setVideoSize videoWidth:"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", videoHeight:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "DisplayMode"

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iput p1, p0, Lcom/ss/ttvideoengine/utils/DisplayMode;->mVideoWidth:I

    .line 33
    .line 34
    iput p2, p0, Lcom/ss/ttvideoengine/utils/DisplayMode;->mVideoHeight:I

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/utils/DisplayMode;->apply()V

    .line 37
    .line 38
    .line 39
    return-void
.end method
