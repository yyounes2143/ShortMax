.class public final Lcom/inmobi/media/v7;
.super Landroid/widget/VideoView;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final a:Lcom/inmobi/media/z5;

.field public b:Lcom/inmobi/media/t7;

.field public c:Landroid/view/ViewGroup;

.field public d:Lcom/inmobi/media/u7;

.field public e:Z

.field public final f:Ljava/lang/ref/WeakReference;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/inmobi/media/z5;)V
    .locals 2

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/inmobi/media/v7;->a:Lcom/inmobi/media/z5;

    .line 10
    .line 11
    const/4 p2, 0x1

    .line 12
    invoke-virtual {p0, p2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 19
    .line 20
    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v1, 0x1c

    .line 24
    .line 25
    if-ge v0, v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, p2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    const/16 p2, 0x64

    .line 31
    .line 32
    iput p2, p0, Lcom/inmobi/media/v7;->g:I

    .line 33
    .line 34
    const/4 p2, -0x1

    .line 35
    iput p2, p0, Lcom/inmobi/media/v7;->j:I

    .line 36
    .line 37
    const/4 p2, 0x0

    .line 38
    iput p2, p0, Lcom/inmobi/media/v7;->k:I

    .line 39
    .line 40
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 41
    .line 42
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iput-object p2, p0, Lcom/inmobi/media/v7;->f:Ljava/lang/ref/WeakReference;

    .line 46
    .line 47
    invoke-static {p1, p0}, Lcom/inmobi/media/Uc;->a(Landroid/content/Context;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static final a(Lcom/inmobi/media/v7;Landroid/media/MediaPlayer;II)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/v7;->a:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/inmobi/media/A5;

    const-string p2, "MediaRenderView"

    const-string p3, ">>> onVideoSizeChanged"

    invoke-virtual {p1, p2, p3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/v7;->b:Lcom/inmobi/media/t7;

    if-nez p1, :cond_1

    .line 3
    new-instance p1, Lcom/inmobi/media/t7;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/inmobi/media/t7;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/inmobi/media/v7;->b:Lcom/inmobi/media/t7;

    .line 4
    invoke-virtual {p1, p0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Lcom/inmobi/media/v7;->b:Lcom/inmobi/media/t7;

    invoke-virtual {p0, p1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/inmobi/media/v7;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 10
    invoke-virtual {p0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 11
    invoke-virtual {p0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 12
    iget-object v0, p0, Lcom/inmobi/media/v7;->b:Lcom/inmobi/media/t7;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/inmobi/media/t7;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/media/t7;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/media/v7;->b:Lcom/inmobi/media/t7;

    .line 14
    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 15
    iget-object v0, p0, Lcom/inmobi/media/v7;->b:Lcom/inmobi/media/t7;

    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/v7;->a:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lcom/inmobi/media/A5;

    .line 6
    .line 7
    const-string v1, "MediaRenderView"

    .line 8
    .line 9
    const-string v2, "Release the media render view"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/inmobi/media/v7;->c:Landroid/view/ViewGroup;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_5

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    instance-of v2, v0, Landroid/view/ViewGroup;

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    check-cast v0, Landroid/view/ViewGroup;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object v0, v1

    .line 34
    :goto_0
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v2, p0, Lcom/inmobi/media/v7;->c:Landroid/view/ViewGroup;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    instance-of v2, v0, Landroid/view/ViewGroup;

    .line 46
    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    check-cast v0, Landroid/view/ViewGroup;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    move-object v0, v1

    .line 53
    :goto_1
    if-eqz v0, :cond_4

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    :cond_4
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lcom/inmobi/media/v7;->c:Landroid/view/ViewGroup;

    .line 63
    .line 64
    :cond_5
    invoke-virtual {p0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Lcom/inmobi/media/v7;->b:Lcom/inmobi/media/t7;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/inmobi/media/v7;->d:Lcom/inmobi/media/u7;

    .line 70
    .line 71
    if-eqz v0, :cond_9

    .line 72
    .line 73
    check-cast v0, Lcom/inmobi/media/E7;

    .line 74
    .line 75
    const-string v2, "mp"

    .line 76
    .line 77
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, v0, Lcom/inmobi/media/E7;->a:Lcom/inmobi/media/F7;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/inmobi/media/F7;->b:Lcom/inmobi/media/z5;

    .line 83
    .line 84
    if-eqz v0, :cond_6

    .line 85
    .line 86
    check-cast v0, Lcom/inmobi/media/A5;

    .line 87
    .line 88
    const-string v2, "MraidMediaProcessor"

    .line 89
    .line 90
    const-string v3, ">>> onPlayerCompleted"

    .line 91
    .line 92
    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_6
    invoke-virtual {p0}, Lcom/inmobi/media/v7;->getViewContainer()Landroid/view/ViewGroup;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    if-eqz v0, :cond_8

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 106
    .line 107
    if-eqz v3, :cond_7

    .line 108
    .line 109
    check-cast v2, Landroid/view/ViewGroup;

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_7
    move-object v2, v1

    .line 113
    :goto_2
    if-eqz v2, :cond_8

    .line 114
    .line 115
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 116
    .line 117
    .line 118
    :cond_8
    invoke-virtual {p0, v1}, Lcom/inmobi/media/v7;->setViewContainer(Landroid/view/ViewGroup;)V

    .line 119
    .line 120
    .line 121
    :cond_9
    return-void
.end method

.method public final getCurrentAudioVolume()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/media/v7;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/v7;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getListener()Lcom/inmobi/media/u7;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/v7;->d:Lcom/inmobi/media/u7;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMCurrentPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/media/v7;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPlaybackUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/v7;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPreviousPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/media/v7;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public final getViewContainer()Landroid/view/ViewGroup;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/v7;->c:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string p2, "activity"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "bundle"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/inmobi/media/v7;->f:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/inmobi/media/v7;->f:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/inmobi/media/v7;->e:Z

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/inmobi/media/v7;->start()V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/inmobi/media/v7;->f:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/app/Activity;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/inmobi/media/v7;->e:Z

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/widget/VideoView;->getCurrentPosition()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/widget/VideoView;->getCurrentPosition()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iput p1, p0, Lcom/inmobi/media/v7;->k:I

    .line 36
    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/v7;->pause()V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    const-string v0, "mp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/inmobi/media/v7;->a:Lcom/inmobi/media/z5;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/inmobi/media/A5;

    .line 11
    .line 12
    const-string v0, "MediaRenderView"

    .line 13
    .line 14
    const-string v1, ">>> onCompletion"

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 1
    const-string v0, "mp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/inmobi/media/v7;->a:Lcom/inmobi/media/z5;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, ">>> onError ("

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p2, ", "

    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/16 p2, 0x29

    .line 29
    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    check-cast p1, Lcom/inmobi/media/A5;

    .line 38
    .line 39
    const-string p3, "MediaRenderView"

    .line 40
    .line 41
    invoke-virtual {p1, p3, p2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/v7;->b()V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    return p1
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/VideoView;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 1
    const-string v0, "mp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/inmobi/media/v7;->a:Lcom/inmobi/media/z5;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v1, Lcom/inmobi/media/A5;

    .line 11
    .line 12
    const-string v2, "MediaRenderView"

    .line 13
    .line 14
    const-string v3, ">>> onPrepared"

    .line 15
    .line 16
    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    new-instance v1, Lub/q7;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lub/q7;-><init>(Lcom/inmobi/media/v7;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 25
    .line 26
    .line 27
    iget p1, p0, Lcom/inmobi/media/v7;->k:I

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/widget/VideoView;->getDuration()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-ge p1, v1, :cond_1

    .line 34
    .line 35
    iput p1, p0, Lcom/inmobi/media/v7;->k:I

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/v7;->d:Lcom/inmobi/media/u7;

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    check-cast p1, Lcom/inmobi/media/E7;

    .line 45
    .line 46
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p1, Lcom/inmobi/media/E7;->a:Lcom/inmobi/media/F7;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/inmobi/media/F7;->b:Lcom/inmobi/media/z5;

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    check-cast p1, Lcom/inmobi/media/A5;

    .line 56
    .line 57
    const-string v0, "MraidMediaProcessor"

    .line 58
    .line 59
    const-string v1, ">>> onPlayerPrepared"

    .line 60
    .line 61
    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/v7;->start()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/inmobi/media/v7;->a:Lcom/inmobi/media/z5;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, ">>> onVisibilityChanged ("

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 v1, 0x29

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast p1, Lcom/inmobi/media/A5;

    .line 33
    .line 34
    const-string v1, "MediaRenderView"

    .line 35
    .line 36
    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    if-nez p2, :cond_1

    .line 40
    .line 41
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const/4 v0, 0x0

    .line 54
    invoke-direct {p2, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/inmobi/media/v7;->a:Lcom/inmobi/media/z5;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, ">>> onWindowVisibilityChanged ("

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 p1, 0x29

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast v0, Lcom/inmobi/media/A5;

    .line 28
    .line 29
    const-string v1, "MediaRenderView"

    .line 30
    .line 31
    invoke-virtual {v0, v1, p1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final pause()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/v7;->a:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lcom/inmobi/media/A5;

    .line 6
    .line 7
    const-string v1, "MediaRenderView"

    .line 8
    .line 9
    const-string v2, "Pause media playback"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0}, Landroid/widget/VideoView;->pause()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final setAudioMuted(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setCurrentAudioVolume(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/inmobi/media/v7;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/v7;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setListener(Lcom/inmobi/media/u7;)V
    .locals 0
    .param p1    # Lcom/inmobi/media/u7;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/v7;->d:Lcom/inmobi/media/u7;

    .line 2
    .line 3
    return-void
.end method

.method public final setMCurrentPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/inmobi/media/v7;->k:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPlaybackData(Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "url"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v1, "this as java.lang.String).getBytes(charset)"

    .line 14
    .line 15
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    array-length v3, p1

    .line 24
    const/4 v4, 0x0

    .line 25
    move v5, v4

    .line 26
    :goto_0
    if-ge v5, v3, :cond_1

    .line 27
    .line 28
    aget-byte v6, p1, v5

    .line 29
    .line 30
    and-int/lit8 v7, v6, -0x80

    .line 31
    .line 32
    int-to-byte v7, v7

    .line 33
    if-lez v7, :cond_0

    .line 34
    .line 35
    const-string v7, "%"

    .line 36
    .line 37
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const/16 v7, 0x10

    .line 41
    .line 42
    new-array v7, v7, [C

    .line 43
    .line 44
    fill-array-data v7, :array_0

    .line 45
    .line 46
    .line 47
    shr-int/lit8 v8, v6, 0x4

    .line 48
    .line 49
    and-int/lit8 v8, v8, 0xf

    .line 50
    .line 51
    aget-char v8, v7, v8

    .line 52
    .line 53
    and-int/lit8 v6, v6, 0xf

    .line 54
    .line 55
    int-to-byte v6, v6

    .line 56
    aget-char v6, v7, v6

    .line 57
    .line 58
    const/4 v7, 0x2

    .line 59
    new-array v7, v7, [C

    .line 60
    .line 61
    aput-char v8, v7, v4

    .line 62
    .line 63
    aput-char v6, v7, v0

    .line 64
    .line 65
    new-instance v6, Ljava/lang/String;

    .line 66
    .line 67
    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_0
    int-to-char v6, v6

    .line 75
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    :goto_1
    add-int/2addr v5, v0

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const-string v0, "toString(...)"

    .line 85
    .line 86
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    sget-object v0, Lkotlin/text/Charsets;->f:Ljava/nio/charset/Charset;

    .line 99
    .line 100
    new-instance v1, Ljava/lang/String;

    .line 101
    .line 102
    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :catch_0
    const-string v1, ""

    .line 107
    .line 108
    :goto_2
    iput-object v1, p0, Lcom/inmobi/media/v7;->i:Ljava/lang/String;

    .line 109
    .line 110
    const-string p1, "anonymous"

    .line 111
    .line 112
    iput-object p1, p0, Lcom/inmobi/media/v7;->h:Ljava/lang/String;

    .line 113
    .line 114
    return-void

    .line 115
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public final setPlaybackUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/v7;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPlayerPrepared(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setPreviousPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/inmobi/media/v7;->j:I

    .line 2
    .line 3
    return-void
.end method

.method public final setViewContainer(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/v7;->c:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-void
.end method

.method public final start()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/v7;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/v7;->a:Lcom/inmobi/media/z5;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    check-cast v0, Lcom/inmobi/media/A5;

    .line 11
    .line 12
    const-string v1, "MediaRenderView"

    .line 13
    .line 14
    const-string v2, "Start media playback"

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
