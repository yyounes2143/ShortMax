.class Lio/bidmachine/iab/vast/activity/VastView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$d;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$d;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/activity/VastView;->C0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$d;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 10
    .line 11
    iget-object v0, v0, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$d;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 20
    .line 21
    iget-object v0, v0, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView$d;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 28
    .line 29
    iget-object v1, v1, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-lez v1, :cond_0

    .line 36
    .line 37
    int-to-float v2, v1

    .line 38
    const/high16 v3, 0x42c80000    # 100.0f

    .line 39
    .line 40
    mul-float/2addr v2, v3

    .line 41
    int-to-float v3, v0

    .line 42
    div-float/2addr v2, v3

    .line 43
    iget-object v3, p0, Lio/bidmachine/iab/vast/activity/VastView$d;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 44
    .line 45
    invoke-static {v3}, Lio/bidmachine/iab/vast/activity/VastView;->T(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/activity/VastView$a;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-interface {v3, v0, v1, v2}, Lio/bidmachine/iab/vast/activity/VastView$a;->a(IIF)V

    .line 50
    .line 51
    .line 52
    iget-object v3, p0, Lio/bidmachine/iab/vast/activity/VastView$d;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 53
    .line 54
    invoke-static {v3}, Lio/bidmachine/iab/vast/activity/VastView;->a0(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/activity/VastView$a;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-interface {v3, v0, v1, v2}, Lio/bidmachine/iab/vast/activity/VastView$a;->a(IIF)V

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Lio/bidmachine/iab/vast/activity/VastView$d;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 62
    .line 63
    invoke-static {v3}, Lio/bidmachine/iab/vast/activity/VastView;->g0(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/activity/VastView$a;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-interface {v3, v0, v1, v2}, Lio/bidmachine/iab/vast/activity/VastView$a;->a(IIF)V

    .line 68
    .line 69
    .line 70
    const/high16 v0, 0x42d20000    # 105.0f

    .line 71
    .line 72
    cmpl-float v0, v2, v0

    .line 73
    .line 74
    if-lez v0, :cond_0

    .line 75
    .line 76
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$d;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 77
    .line 78
    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->k0(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v1, "Playback tracking: video hang detected"

    .line 83
    .line 84
    const/4 v2, 0x0

    .line 85
    new-array v2, v2, [Ljava/lang/Object;

    .line 86
    .line 87
    invoke-static {v0, v1, v2}, Ltm/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$d;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 91
    .line 92
    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->p0(Lio/bidmachine/iab/vast/activity/VastView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView$d;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 98
    .line 99
    invoke-static {v1}, Lio/bidmachine/iab/vast/activity/VastView;->k0(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const-string v2, "Playback tracking exception: %s"

    .line 112
    .line 113
    invoke-static {v1, v2, v0}, Ltm/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$d;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 117
    .line 118
    const-wide/16 v1, 0x10

    .line 119
    .line 120
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    .line 122
    .line 123
    return-void
.end method
