.class Lio/bidmachine/iab/vast/activity/VastView$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$k;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$k;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->k0(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v2, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const-string v3, "MediaPlayer - onPrepared"

    .line 11
    .line 12
    invoke-static {v0, v3, v2}, Ltm/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$k;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 16
    .line 17
    iget-object v2, v0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$B;

    .line 18
    .line 19
    iget-boolean v2, v2, Lio/bidmachine/iab/vast/activity/VastView$B;->j:Z

    .line 20
    .line 21
    if-nez v2, :cond_3

    .line 22
    .line 23
    sget-object v2, Lio/bidmachine/iab/vast/TrackingEvent;->creativeView:Lio/bidmachine/iab/vast/TrackingEvent;

    .line 24
    .line 25
    invoke-static {v0, v2}, Lio/bidmachine/iab/vast/activity/VastView;->q(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/TrackingEvent;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$k;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 29
    .line 30
    sget-object v2, Lio/bidmachine/iab/vast/TrackingEvent;->fullscreen:Lio/bidmachine/iab/vast/TrackingEvent;

    .line 31
    .line 32
    invoke-static {v0, v2}, Lio/bidmachine/iab/vast/activity/VastView;->q(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/TrackingEvent;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$k;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 36
    .line 37
    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->U0(Lio/bidmachine/iab/vast/activity/VastView;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$k;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 41
    .line 42
    invoke-static {v0, v1}, Lio/bidmachine/iab/vast/activity/VastView;->c0(Lio/bidmachine/iab/vast/activity/VastView;Z)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$k;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    invoke-static {v0, v2}, Lio/bidmachine/iab/vast/activity/VastView;->j0(Lio/bidmachine/iab/vast/activity/VastView;Z)Z

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$k;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 52
    .line 53
    iget-object v0, v0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$B;

    .line 54
    .line 55
    iget-boolean v0, v0, Lio/bidmachine/iab/vast/activity/VastView$B;->g:Z

    .line 56
    .line 57
    if-nez v0, :cond_0

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$k;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 63
    .line 64
    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->W0(Lio/bidmachine/iab/vast/activity/VastView;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$k;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 68
    .line 69
    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->Y0(Lio/bidmachine/iab/vast/activity/VastView;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$k;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 73
    .line 74
    iget-object v0, v0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$B;

    .line 75
    .line 76
    iget v0, v0, Lio/bidmachine/iab/vast/activity/VastView$B;->d:I

    .line 77
    .line 78
    if-lez v0, :cond_1

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$k;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 84
    .line 85
    sget-object v0, Lio/bidmachine/iab/vast/TrackingEvent;->resume:Lio/bidmachine/iab/vast/TrackingEvent;

    .line 86
    .line 87
    invoke-static {p1, v0}, Lio/bidmachine/iab/vast/activity/VastView;->q(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/TrackingEvent;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$k;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 91
    .line 92
    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->r0(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/VastPlaybackListener;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-eqz p1, :cond_1

    .line 97
    .line 98
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$k;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 99
    .line 100
    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->r0(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/VastPlaybackListener;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-interface {p1}, Lio/bidmachine/iab/vast/VastPlaybackListener;->f0()V

    .line 105
    .line 106
    .line 107
    :cond_1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$k;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 108
    .line 109
    iget-object v0, p1, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$B;

    .line 110
    .line 111
    iget-boolean v0, v0, Lio/bidmachine/iab/vast/activity/VastView$B;->m:Z

    .line 112
    .line 113
    if-nez v0, :cond_2

    .line 114
    .line 115
    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->S0(Lio/bidmachine/iab/vast/activity/VastView;)V

    .line 116
    .line 117
    .line 118
    :cond_2
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$k;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 119
    .line 120
    iget-object v0, p1, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$B;

    .line 121
    .line 122
    iget-boolean v0, v0, Lio/bidmachine/iab/vast/activity/VastView$B;->k:Z

    .line 123
    .line 124
    if-nez v0, :cond_3

    .line 125
    .line 126
    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->c1(Lio/bidmachine/iab/vast/activity/VastView;)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$k;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 130
    .line 131
    iget-object p1, p1, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/a;

    .line 132
    .line 133
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/a;->a0()Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-eqz p1, :cond_3

    .line 138
    .line 139
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$k;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 140
    .line 141
    invoke-static {p1, v1}, Lio/bidmachine/iab/vast/activity/VastView;->m0(Lio/bidmachine/iab/vast/activity/VastView;Z)V

    .line 142
    .line 143
    .line 144
    :cond_3
    return-void
.end method
