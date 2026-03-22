.class Lio/bidmachine/nativead/view/MediaView$g;
.super Ljava/lang/Object;
.source "MediaView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/view/MediaView;->E()V
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
    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView$g;->a:Lio/bidmachine/nativead/view/MediaView;

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
    .locals 1

    .line 1
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$g;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/nativead/view/MediaView;->t(Lio/bidmachine/nativead/view/MediaView;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$g;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 10
    .line 11
    invoke-static {p1}, Lio/bidmachine/nativead/view/MediaView;->h(Lio/bidmachine/nativead/view/MediaView;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$g;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 18
    .line 19
    invoke-static {p1}, Lio/bidmachine/nativead/view/MediaView;->u(Lio/bidmachine/nativead/view/MediaView;)Landroid/media/MediaPlayer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/high16 v0, 0x3f800000    # 1.0f

    .line 24
    .line 25
    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$g;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-static {p1, v0}, Lio/bidmachine/nativead/view/MediaView;->i(Lio/bidmachine/nativead/view/MediaView;Z)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$g;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 36
    .line 37
    invoke-static {p1}, Lio/bidmachine/nativead/view/MediaView;->u(Lio/bidmachine/nativead/view/MediaView;)Landroid/media/MediaPlayer;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$g;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    invoke-static {p1, v0}, Lio/bidmachine/nativead/view/MediaView;->i(Lio/bidmachine/nativead/view/MediaView;Z)Z

    .line 49
    .line 50
    .line 51
    :goto_0
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$g;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 52
    .line 53
    invoke-static {p1}, Lio/bidmachine/nativead/view/MediaView;->j(Lio/bidmachine/nativead/view/MediaView;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method
