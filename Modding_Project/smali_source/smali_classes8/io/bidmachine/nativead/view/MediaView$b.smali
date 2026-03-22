.class Lio/bidmachine/nativead/view/MediaView$b;
.super Ljava/lang/Object;
.source "MediaView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/view/MediaView;->F()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/nativead/view/MediaView;


# direct methods
.method constructor <init>(Lio/bidmachine/nativead/view/MediaView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView$b;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$b;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 2
    .line 3
    iget-object p1, p1, Lio/bidmachine/nativead/view/MediaView;->b:Lmp/g;

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    invoke-interface {p1}, Lmp/h;->n()Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const-string p1, "Video has been clicked"

    .line 15
    .line 16
    invoke-static {p1}, Lio/bidmachine/core/a;->d(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$b;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 20
    .line 21
    sput-object p1, Lio/bidmachine/nativead/view/MediaView;->B:Lio/bidmachine/nativead/view/VideoPlayerActivity$c;

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-static {p1, v0}, Lio/bidmachine/nativead/view/MediaView;->s(Lio/bidmachine/nativead/view/MediaView;Z)Z

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$b;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 28
    .line 29
    invoke-static {p1}, Lio/bidmachine/nativead/view/MediaView;->t(Lio/bidmachine/nativead/view/MediaView;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$b;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 36
    .line 37
    invoke-static {p1}, Lio/bidmachine/nativead/view/MediaView;->u(Lio/bidmachine/nativead/view/MediaView;)Landroid/media/MediaPlayer;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$b;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 48
    .line 49
    invoke-static {p1}, Lio/bidmachine/nativead/view/MediaView;->u(Lio/bidmachine/nativead/view/MediaView;)Landroid/media/MediaPlayer;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 p1, 0x0

    .line 59
    :goto_0
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$b;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 60
    .line 61
    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView;->v(Lio/bidmachine/nativead/view/MediaView;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$b;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView$b;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 71
    .line 72
    iget-object v1, v1, Lio/bidmachine/nativead/view/MediaView;->b:Lmp/g;

    .line 73
    .line 74
    invoke-interface {v1}, Lmp/h;->n()Landroid/net/Uri;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v0, v1, p1}, Lio/bidmachine/nativead/view/VideoPlayerActivity;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$b;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0, p1}, Lio/bidmachine/core/g;->o0(Landroid/content/Context;Landroid/content/Intent;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    :goto_1
    return-void
.end method
