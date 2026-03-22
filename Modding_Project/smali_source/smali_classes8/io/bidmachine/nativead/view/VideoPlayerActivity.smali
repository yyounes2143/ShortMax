.class public Lio/bidmachine/nativead/view/VideoPlayerActivity;
.super Landroid/app/Activity;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/nativead/view/VideoPlayerActivity$c;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/widget/VideoView;

.field private c:Lio/bidmachine/nativead/view/VideoPlayerActivity$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lio/bidmachine/nativead/view/VideoPlayerActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/nativead/view/VideoPlayerActivity;->f()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic b(Lio/bidmachine/nativead/view/VideoPlayerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/nativead/view/VideoPlayerActivity;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->c:Lio/bidmachine/nativead/view/VideoPlayerActivity$c;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    :goto_0
    iget-object v2, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->c:Lio/bidmachine/nativead/view/VideoPlayerActivity$c;

    .line 23
    .line 24
    invoke-interface {v2, v0, v1}, Lio/bidmachine/nativead/view/VideoPlayerActivity$c;->a(IZ)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-direct {p0}, Lio/bidmachine/nativead/view/VideoPlayerActivity;->d()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private d()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/nativead/view/VideoPlayerActivity$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/bidmachine/nativead/view/VideoPlayerActivity$b;-><init>(Lio/bidmachine/nativead/view/VideoPlayerActivity;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lio/bidmachine/nativead/view/VideoPlayerActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string p0, "io.bidmachine.fileUri"

    .line 9
    .line 10
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string p0, "io.bidmachine.seekTo"

    .line 14
    .line 15
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method private synthetic f()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->a:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "VideoPlayerActivity started, position: %s"

    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/nativead/view/VideoPlayerActivity;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->c:Lio/bidmachine/nativead/view/VideoPlayerActivity$c;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-interface {p1, v0, v1}, Lio/bidmachine/nativead/view/VideoPlayerActivity$c;->a(IZ)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/nativead/view/VideoPlayerActivity;->d()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/16 v0, 0x80

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "io.bidmachine.fileUri"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "io.bidmachine.seekTo"

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput p1, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->a:I

    .line 31
    .line 32
    new-instance p1, Lio/bidmachine/nativead/view/i;

    .line 33
    .line 34
    invoke-direct {p1, p0}, Lio/bidmachine/nativead/view/i;-><init>(Lio/bidmachine/nativead/view/VideoPlayerActivity;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lio/bidmachine/core/a;->a(Lhr/b;)V

    .line 38
    .line 39
    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    sget-object p1, Lio/bidmachine/nativead/view/MediaView;->B:Lio/bidmachine/nativead/view/VideoPlayerActivity$c;

    .line 44
    .line 45
    iput-object p1, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->c:Lio/bidmachine/nativead/view/VideoPlayerActivity$c;

    .line 46
    .line 47
    new-instance p1, Landroid/widget/RelativeLayout;

    .line 48
    .line 49
    invoke-direct {p1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 53
    .line 54
    const/4 v2, -0x1

    .line 55
    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    .line 60
    .line 61
    new-instance v1, Landroid/widget/VideoView;

    .line 62
    .line 63
    invoke-direct {v1, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    .line 67
    .line 68
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 69
    .line 70
    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 71
    .line 72
    .line 73
    const/16 v3, 0xd

    .line 74
    .line 75
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 76
    .line 77
    .line 78
    iget-object v3, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    .line 79
    .line 80
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    .line 84
    .line 85
    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    .line 89
    .line 90
    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    .line 94
    .line 95
    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    invoke-static {p0}, Lio/bidmachine/core/g;->C(Landroid/content/Context;)F

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    const/high16 v1, 0x41c00000    # 24.0f

    .line 108
    .line 109
    mul-float/2addr v1, v0

    .line 110
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    const/high16 v3, 0x41000000    # 8.0f

    .line 115
    .line 116
    mul-float/2addr v0, v3

    .line 117
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    new-instance v3, Lio/bidmachine/iab/vast/view/CircleCountdownView;

    .line 122
    .line 123
    invoke-direct {v3, p0}, Lio/bidmachine/iab/vast/view/CircleCountdownView;-><init>(Landroid/content/Context;)V

    .line 124
    .line 125
    .line 126
    sget v4, Lsm/a;->a:I

    .line 127
    .line 128
    sget v5, Lsm/a;->c:I

    .line 129
    .line 130
    invoke-virtual {v3, v4, v5}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->setColors(II)V

    .line 131
    .line 132
    .line 133
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 134
    .line 135
    invoke-direct {v4, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 136
    .line 137
    .line 138
    const/16 v1, 0xb

    .line 139
    .line 140
    invoke-virtual {v4, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 141
    .line 142
    .line 143
    const/16 v1, 0xa

    .line 144
    .line 145
    invoke-virtual {v4, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4, v0, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 149
    .line 150
    .line 151
    const-string v0, "iVBORw0KGgoAAAANSUhEUgAAAJAAAACQCAYAAADnRuK4AAACY0lEQVR4Ae3aAWRbURTH4YNiKIqggKEYCiiKYQQABQAMARRBAVAADEEBUAAEAADBAMMwBADFADAURXYQoZdoOLie+338PQK4fnmJ5wUAAAAAAAAAAAAAAAAAAAAAAHACrnJ3uWVunpvFuM5zX3Pf99fz4KiL3HNu1+w195A7i3Gc5R5zb81ZvO0/b86CWe6ljafZZpBv4GXu9wdn8UtE761zuxP2sxrRBOLZnngWjznSbXs4g0Z0Sjztz9lFEPe5XT2iIeJp9y2IVW5Xj2iMeJotguYOVIlogHiazYO4ye3qEQ0VT/MfiPUAEZXjafYjDpjl/k41og7x/Ml9inf4MsWIOsSzzV0G40QkHhGJR0Ti6U9E4hGRePoTkXhEJJ7+RCQeEYmnPxGJR0TiqROReOpEJJ46EYmnTkTiqROReMpEJJ4CEYmnQETiKRGReEpEJJ4kIvH0JyLxiEg8/YlIPCIST38iEo+IxEP9ZbA+L6UhHhGJR0T9iUdE4hFRf+IRkXhE1It4RNQQz7bysFFE4rksPLEWkXj2RFQgHhGViUdEZeIRUZl4RFQmHhGViUdEZeIRkXjqRCQeEXUnHhGJR0T9iUdE4hFRf+IRkXhEJJ5uRCQeEYlHROM47x/PpCLa5M7igKf+8Uwuoodc4rp/PJOM6DU3i2DRP57JRjSPYNU/nslGtIxgOXA81YjuIpgPHk8loqtcYjNqPIWInuOAz7l/o8VTiOgldxENER2/Ez0N9vR1llsfOYt1bhZHMc8tc6vcIncd47rJ3edW++ttAAAAAAAAAAAAAAAAAAAAAAAAfOA/5Zwc/aYfb7AAAAAASUVORK5CYII="

    .line 152
    .line 153
    invoke-static {v0}, Lsm/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v3, v0}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->setImage(Landroid/graphics/Bitmap;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    .line 162
    .line 163
    new-instance v0, Lio/bidmachine/nativead/view/VideoPlayerActivity$a;

    .line 164
    .line 165
    invoke-direct {v0, p0}, Lio/bidmachine/nativead/view/VideoPlayerActivity$a;-><init>(Lio/bidmachine/nativead/view/VideoPlayerActivity;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 175
    .line 176
    .line 177
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/nativead/view/VideoPlayerActivity;->d()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/VideoView;->canSeekForward()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    .line 12
    .line 13
    iget v0, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->a:I

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->seekTo(I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
