.class public Lio/bidmachine/nativead/view/MediaView;
.super Landroid/widget/RelativeLayout;
.source "MediaView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lio/bidmachine/nativead/view/VideoPlayerActivity$c;


# static fields
.field public static B:Lio/bidmachine/nativead/view/VideoPlayerActivity$c;


# instance fields
.field private A:Lio/bidmachine/nativead/view/NativeState;

.field a:Lmp/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field b:Lmp/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field c:Lmp/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field d:Z

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ProgressBar;

.field private g:Landroid/widget/ImageView;

.field private h:Lio/bidmachine/iab/vast/view/CircleCountdownView;

.field private i:Landroid/media/MediaPlayer;

.field private j:Landroid/view/TextureView;

.field private k:Ljava/util/Timer;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private volatile t:Z

.field private u:Z

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->d:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->n:Z

    .line 4
    iput p1, p0, Lio/bidmachine/nativead/view/MediaView;->x:I

    .line 5
    iput p1, p0, Lio/bidmachine/nativead/view/MediaView;->y:I

    .line 6
    iput-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->z:Z

    .line 7
    sget-object p1, Lio/bidmachine/nativead/view/NativeState;->Image:Lio/bidmachine/nativead/view/NativeState;

    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->A:Lio/bidmachine/nativead/view/NativeState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->d:Z

    const/4 p2, 0x1

    .line 10
    iput-boolean p2, p0, Lio/bidmachine/nativead/view/MediaView;->n:Z

    .line 11
    iput p1, p0, Lio/bidmachine/nativead/view/MediaView;->x:I

    .line 12
    iput p1, p0, Lio/bidmachine/nativead/view/MediaView;->y:I

    .line 13
    iput-boolean p2, p0, Lio/bidmachine/nativead/view/MediaView;->z:Z

    .line 14
    sget-object p1, Lio/bidmachine/nativead/view/NativeState;->Image:Lio/bidmachine/nativead/view/NativeState;

    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->A:Lio/bidmachine/nativead/view/NativeState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->d:Z

    const/4 p2, 0x1

    .line 17
    iput-boolean p2, p0, Lio/bidmachine/nativead/view/MediaView;->n:Z

    .line 18
    iput p1, p0, Lio/bidmachine/nativead/view/MediaView;->x:I

    .line 19
    iput p1, p0, Lio/bidmachine/nativead/view/MediaView;->y:I

    .line 20
    iput-boolean p2, p0, Lio/bidmachine/nativead/view/MediaView;->z:Z

    .line 21
    sget-object p1, Lio/bidmachine/nativead/view/NativeState;->Image:Lio/bidmachine/nativead/view/NativeState;

    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->A:Lio/bidmachine/nativead/view/NativeState;

    return-void
.end method

.method private B()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->i:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lio/bidmachine/nativead/view/MediaView;->t:Z

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->i:Landroid/media/MediaPlayer;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->i:Landroid/media/MediaPlayer;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->i:Landroid/media/MediaPlayer;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->i:Landroid/media/MediaPlayer;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->i:Landroid/media/MediaPlayer;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->i:Landroid/media/MediaPlayer;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->i:Landroid/media/MediaPlayer;

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->i:Landroid/media/MediaPlayer;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :goto_1
    invoke-static {v1}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    :goto_2
    iput-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->i:Landroid/media/MediaPlayer;

    .line 61
    .line 62
    :cond_2
    return-void
.end method

.method private C()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/nativead/view/MediaView$f;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/bidmachine/nativead/view/MediaView$f;-><init>(Lio/bidmachine/nativead/view/MediaView;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private D()V
    .locals 2

    .line 1
    new-instance v0, Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->i:Landroid/media/MediaPlayer;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->i:Landroid/media/MediaPlayer;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->i:Landroid/media/MediaPlayer;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->i:Landroid/media/MediaPlayer;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->i:Landroid/media/MediaPlayer;

    .line 27
    .line 28
    const/4 v1, 0x3

    .line 29
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->a0()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private E()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lio/bidmachine/core/g;->C(Landroid/content/Context;)F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/high16 v2, 0x42200000    # 40.0f

    .line 10
    .line 11
    mul-float/2addr v2, v1

    .line 12
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/high16 v3, 0x41000000    # 8.0f

    .line 17
    .line 18
    mul-float/2addr v1, v3

    .line 19
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    new-instance v3, Lio/bidmachine/iab/vast/view/CircleCountdownView;

    .line 24
    .line 25
    invoke-direct {v3, v0}, Lio/bidmachine/iab/vast/view/CircleCountdownView;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object v3, p0, Lio/bidmachine/nativead/view/MediaView;->h:Lio/bidmachine/iab/vast/view/CircleCountdownView;

    .line 29
    .line 30
    sget v0, Lsm/a;->a:I

    .line 31
    .line 32
    sget v4, Lsm/a;->c:I

    .line 33
    .line 34
    invoke-virtual {v3, v0, v4}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->setColors(II)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->h:Lio/bidmachine/iab/vast/view/CircleCountdownView;

    .line 38
    .line 39
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 43
    .line 44
    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45
    .line 46
    .line 47
    const/16 v1, 0x9

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50
    .line 51
    .line 52
    const/16 v1, 0xa

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->h:Lio/bidmachine/iab/vast/view/CircleCountdownView;

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->X()V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->h:Lio/bidmachine/iab/vast/view/CircleCountdownView;

    .line 66
    .line 67
    new-instance v1, Lio/bidmachine/nativead/view/MediaView$g;

    .line 68
    .line 69
    invoke-direct {v1, p0}, Lio/bidmachine/nativead/view/MediaView$g;-><init>(Lio/bidmachine/nativead/view/MediaView;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->h:Lio/bidmachine/iab/vast/view/CircleCountdownView;

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method private G(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lop/b;->a()Lop/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lop/b;->execute(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private H(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {}, Lop/b;->a()Lop/b;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lio/bidmachine/core/g;->n0(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method private I()Z
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0
.end method

.method private J()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->t:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->i:Landroid/media/MediaPlayer;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method private static synthetic K(IZ)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string p1, "MediaView videoPlayerActivityClosed, position: %s, finished: %s"

    .line 14
    .line 15
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method private L()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->m:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lio/bidmachine/iab/vast/TrackingEvent;->complete:Lio/bidmachine/iab/vast/TrackingEvent;

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lio/bidmachine/nativead/view/MediaView;->R(Lio/bidmachine/iab/vast/TrackingEvent;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->m:Z

    .line 12
    .line 13
    const-string v0, "MediaView: video finished"

    .line 14
    .line 15
    invoke-static {v0}, Lio/bidmachine/core/a;->d(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private M()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->l:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->S()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->l:Z

    .line 10
    .line 11
    const-string v0, "MediaView: video started"

    .line 12
    .line 13
    invoke-static {v0}, Lio/bidmachine/core/a;->d(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private O()V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->J()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->i:Landroid/media/MediaPlayer;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->i:Landroid/media/MediaPlayer;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->A:Lio/bidmachine/nativead/view/NativeState;

    .line 24
    .line 25
    sget-object v1, Lio/bidmachine/nativead/view/NativeState;->Loading:Lio/bidmachine/nativead/view/NativeState;

    .line 26
    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    .line 29
    sget-object v0, Lio/bidmachine/nativead/view/NativeState;->Paused:Lio/bidmachine/nativead/view/NativeState;

    .line 30
    .line 31
    invoke-direct {p0, v0}, Lio/bidmachine/nativead/view/MediaView;->Z(Lio/bidmachine/nativead/view/NativeState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_2
    return-void
.end method

.method private P()V
    .locals 3

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->o:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->b:Lmp/g;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lmp/h;->n()Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->p:Z

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->t:Z

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->i:Landroid/media/MediaPlayer;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lio/bidmachine/nativead/view/MediaView;->b:Lmp/g;

    .line 30
    .line 31
    invoke-interface {v2}, Lmp/h;->n()Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->i:Landroid/media/MediaPlayer;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->p:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    :goto_0
    return-void
.end method

.method private Q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->b:Lmp/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lmp/g;->c()Lio/bidmachine/iab/vast/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->b:Lmp/g;

    .line 12
    .line 13
    invoke-interface {v0}, Lmp/g;->c()Lio/bidmachine/iab/vast/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Ltm/g;->l:Ltm/g;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/vast/a;->X(Ltm/g;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private R(Lio/bidmachine/iab/vast/TrackingEvent;)V
    .locals 1
    .param p1    # Lio/bidmachine/iab/vast/TrackingEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->b:Lmp/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lmp/g;->c()Lio/bidmachine/iab/vast/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->b:Lmp/g;

    .line 12
    .line 13
    invoke-interface {v0}, Lmp/g;->c()Lio/bidmachine/iab/vast/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/a;->M()Lio/bidmachine/iab/vast/processor/VastAd;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->b:Lmp/g;

    .line 24
    .line 25
    invoke-interface {v0}, Lmp/g;->c()Lio/bidmachine/iab/vast/a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/a;->M()Lio/bidmachine/iab/vast/processor/VastAd;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/processor/VastAd;->y()Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/util/List;

    .line 42
    .line 43
    invoke-direct {p0, v0}, Lio/bidmachine/nativead/view/MediaView;->H(Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    sget-object v0, Lio/bidmachine/iab/vast/TrackingEvent;->complete:Lio/bidmachine/iab/vast/TrackingEvent;

    .line 47
    .line 48
    if-ne p1, v0, :cond_1

    .line 49
    .line 50
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->c:Lmp/f;

    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    invoke-interface {p1}, Lmp/f;->h()V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method private S()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->b:Lmp/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lmp/g;->c()Lio/bidmachine/iab/vast/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->b:Lmp/g;

    .line 12
    .line 13
    invoke-interface {v0}, Lmp/g;->c()Lio/bidmachine/iab/vast/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/a;->M()Lio/bidmachine/iab/vast/processor/VastAd;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->b:Lmp/g;

    .line 24
    .line 25
    invoke-interface {v0}, Lmp/g;->c()Lio/bidmachine/iab/vast/a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/a;->M()Lio/bidmachine/iab/vast/processor/VastAd;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/processor/VastAd;->w()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {p0, v0}, Lio/bidmachine/nativead/view/MediaView;->H(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method private W()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->i:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->D()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->o:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->P()V

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->J()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->o:Z

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->q:Z

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->I()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->i:Landroid/media/MediaPlayer;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->i:Landroid/media/MediaPlayer;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->M()V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->k:Ljava/util/Timer;

    .line 55
    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->U()V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->i:Landroid/media/MediaPlayer;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-lez v0, :cond_3

    .line 68
    .line 69
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->A:Lio/bidmachine/nativead/view/NativeState;

    .line 70
    .line 71
    sget-object v1, Lio/bidmachine/nativead/view/NativeState;->Playing:Lio/bidmachine/nativead/view/NativeState;

    .line 72
    .line 73
    if-eq v0, v1, :cond_3

    .line 74
    .line 75
    invoke-direct {p0, v1}, Lio/bidmachine/nativead/view/MediaView;->Z(Lio/bidmachine/nativead/view/NativeState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :goto_1
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->C()V

    .line 83
    .line 84
    .line 85
    :cond_3
    :goto_2
    return-void
.end method

.method private X()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->h:Lio/bidmachine/iab/vast/view/CircleCountdownView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Lio/bidmachine/nativead/view/MediaView;->n:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "iVBORw0KGgoAAAANSUhEUgAAAJAAAACQCAMAAADQmBKKAAAAwFBMVEUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALOy8QAAAAQHRSTlMAT5vPRxSr/1OTn4c4s9cYEMu/XwTDu3fbYwjvt+NA8wwg3/fHKOdLj/tbPDBv03+jl4sca2d7NCTrLINDr6dz72VdRQAAA8FJREFUeAHt2dWW6zgURdEd3GFmZqZi7O7//6rmW7ZiK2VHkYo8X0MreI5GENAiEAgEAoFAIBAIhSORcBSfRSzOf8VjOFMimUpncDFZ/i+XxzkKRZJkKYrLKJNKRZUq/xdJVKAONaoV1WlpNFtQ1qZaUYd23R5U9alUVOlTlBxATZVKRUMeG/WgpE61ojEF6i9SJaJWNKHTKAMF05lSUYgu+vMPLFrQxXJlpGhdLm/gsG3TxVZ/UbRLkrsejhX2bkkL3UVb/meZgLekQ0VrUb7P/43z8JZ0Ba1F67eia7i5qfFY01DRBO5uxxQte2aK2pCYFimaDc0UQaaSpCgyMFIEuT1FcZgowglbiu5MFOGU1ZJ27ZiBIpyUEIvC0F+E0+5pt3zQX4R3xGk3gfYivGOwo11TU5EPj23aPBVMFk0e4CJBuz0MFpHh2DvnT3YrBotIjjZweF7SZg5zRSQ5LsMhSZsslKV4XDSAK9kGXXiizRCKFnSouhdRVnRHmzQ8qzRrI0p4KZIO0VabllkFHuWLFPgukk+IJG1C8KhEqhXxl9EAoudzFv47UrGIbw6njv0ReFOjalGfb9YQlWlTgCdtqhatraISRK2x/w8Recmi0IkPaNp/kHpRCaIX/1sRL1s0hCBKy7LlP0i9aA9BgTYZfUHyohxEEVrKGoPkRTH5j/WtziBp0Vx+jt1rDZIVvcgHwZXeIElRHIIVLQe9QZKiEgQ9Wkp6gyRFOwg2vscrL1w0kv8TMtIYJC/KQXBDS1djkLxoqucVUijSH6RUtKZlpx6kXhTS8rVXKLqlJaUepF6UpOVaPUi9qErLncagmdeiPi2vGoOmHos2tIlpDILHojtautAZ5LEoS8tveoM8FbX6tNThSYPngLeikP9DB154DngpEq/RhjeFEc8A/0UHeDSN0D/4L1rBq0q92qdP8F00HkDNgqfAd9HvgM4i+C6KQmsR/BZ1Aa1F8Fv0B/QWwWdRrgC9RfBZNAD0FsFvETQX4bMV4bMV4bMV4bMV4bMV4bMV4bMV4ZMVtSHxyo8pKsLd/IkfU5SEm1iKFqNFy0c4VZpP5AcVNeEU2pE0XXQ3JsluAsdazRwtBosGq/19tIVjqyeSxovk7kl+pqIH8nMVxen01JxRlIQxT3So3jinyBqm8NjyvgI4ihYwpU9RceM6aaswpUO79l0FEIqMB73SMl4UZNvIAsak33KSefl+tIY5t22SnL2IOWJREia1Qvf3vRZcPE74r9QAn0TlNvvUiEcRCAQCgUAgEAgEdPgLbm7XQrhD8bcAAAAASUVORK5CYII="

    .line 10
    .line 11
    invoke-static {v1}, Lsm/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->setImage(Landroid/graphics/Bitmap;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v1, "iVBORw0KGgoAAAANSUhEUgAAAJAAAACQCAMAAADQmBKKAAAAw1BMVEUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAcKsgAAAAQXRSTlMABFeXn38wGNP/u0AMw8tP11+/3/eTOPNH+0tnc3fvb+tDi49TEKMcY8drKCCvFJt7qyQ047eHCCw8g89bp9vns9m2qsEAAAOSSURBVHgB7drVYuNKEEXR03YMJ0aBQXHAYWbm/P9PXZyZBimOHiTVQK9H4zZDFTzP8zzP8zzP83JQtfpSo4mfRqvNfy138HPo9vhNf4CfQYPaMFAQF9IUdSAtpm3UhSza5O+kmBb5O6nPtGgMOQNmmEwhp84MSQ0VUCuz1bGCQ62tM8MGSlebk+RwE67WVlbSNkq2xf8lO0jZbWQk7SmUaZvfxS3kS6pX00NuIct+SNdBNT08RLajmLakU0kP1/GJ40Pa5idV9JD4jBrR1u5W0UN8rkHbaRU9xAIbtM0q6CEWqSU0rZ+V30MstGMXnZffQyx2Qcu49B7iC5c09UvvIb7QbdN0UHYP8ZWrdRrmuyX3EIbDa2TYoalRcg9hIM/PkLZMw40qt8cJYtREynFCw6DcHjeIcfDF+W/L7UkFkRtw7c5pOCm1xw3KLprRcIfc1MFyxMXyBHEGx/06tfk9cmr1SRYRlFzDMaJhBzmFLCiIURe2BxrqyGfGwoK4B8chtTbyWS4wiI+wBTTsIpf1IoNC2O5jagPkwiKDOFjwBN2SCAphe6J2KBHEE1im1JJ7iaAGLLs0jCWChrA9UwskgngGy4jakUjQCiwNag2RoCdYZtTqIkGXsLxQ2xMJCmHpUAtFgtqwNKk9iwRFsJxQi0SCbmDZt46SCBrC8uA+mv5JfQpLjdqrSNAWLAfUzkWCBj/bR8c+LNvUNiSCItgOpb9+bMHSTah1JIIeYOnQsCsQ1IftgtozBIIC2G6pbQsEPStY1IRaDbm8FRm0AtsODS3k8lRg0C0WPGJvyGc3KizovQXbCQ1LyOn4uaigKRx3NATIS631JkUEPcGh3qlNulX/6bkNV42GUdV/C6d77iMaHqr94zy5+GJodljtaGG+iZT9mIaXSocvp/tIe6Vhfl/heGq4iQwdmraqHOApZGjd0DDZlx5xqpCmNfEh8IimNyU9Jg9omUovEjzGNJ1Kr1o8TmiKT4SXUXYSWi6E13UCp6enRBeasErbTUt05evskrZJE6igqI9sK3M6akAVRSNk6S7R1QCqKEqukKaCiK5ToJKig6ycN6aEXZRrFpPkzQ5c90dvTLtUKFv3pXExvYfrJWKGbQUh28yy9nOtwCcHENNj2voAciZM+diHILrWA4gSv3tc7/J3j61u5jTOIG5/zm/eN+7xM7i+4b/eAoWfRHf1I1wawPM8z/M8z/M872/KUtAsVj+VvQAAAABJRU5ErkJggg=="

    .line 20
    .line 21
    invoke-static {v1}, Lsm/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->setImage(Landroid/graphics/Bitmap;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method private Y()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-boolean v2, p0, Lio/bidmachine/nativead/view/MediaView;->z:Z

    .line 15
    .line 16
    if-eqz v2, :cond_3

    .line 17
    .line 18
    iget v2, p0, Lio/bidmachine/nativead/view/MediaView;->x:I

    .line 19
    .line 20
    if-eqz v2, :cond_3

    .line 21
    .line 22
    iget v2, p0, Lio/bidmachine/nativead/view/MediaView;->y:I

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 v2, 0x0

    .line 28
    iput-boolean v2, p0, Lio/bidmachine/nativead/view/MediaView;->z:Z

    .line 29
    .line 30
    iget-object v2, p0, Lio/bidmachine/nativead/view/MediaView;->j:Landroid/view/TextureView;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget v3, p0, Lio/bidmachine/nativead/view/MediaView;->x:I

    .line 37
    .line 38
    iget v4, p0, Lio/bidmachine/nativead/view/MediaView;->y:I

    .line 39
    .line 40
    if-le v3, v4, :cond_2

    .line 41
    .line 42
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 43
    .line 44
    mul-int/2addr v0, v4

    .line 45
    div-int/2addr v0, v3

    .line 46
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    mul-int/2addr v3, v1

    .line 50
    div-int/2addr v3, v4

    .line 51
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 52
    .line 53
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 54
    .line 55
    :goto_0
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->j:Landroid/view/TextureView;

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    :goto_1
    return-void
.end method

.method private Z(Lio/bidmachine/nativead/view/NativeState;)V
    .locals 3
    .param p1    # Lio/bidmachine/nativead/view/NativeState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->A:Lio/bidmachine/nativead/view/NativeState;

    .line 2
    .line 3
    sget-object v0, Lio/bidmachine/nativead/view/MediaView$i;->a:[I

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    aget p1, v0, p1

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x4

    .line 14
    if-eq p1, v0, :cond_6

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    if-eq p1, v0, :cond_4

    .line 18
    .line 19
    const/4 v0, 0x3

    .line 20
    if-eq p1, v0, :cond_2

    .line 21
    .line 22
    if-eq p1, v2, :cond_0

    .line 23
    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->e:Landroid/widget/ImageView;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->e:Landroid/widget/ImageView;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->s:Z

    .line 39
    .line 40
    if-eqz p1, :cond_8

    .line 41
    .line 42
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->g:Landroid/widget/ImageView;

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->g:Landroid/widget/ImageView;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->j:Landroid/view/TextureView;

    .line 53
    .line 54
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->f:Landroid/widget/ProgressBar;

    .line 58
    .line 59
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->h:Lio/bidmachine/iab/vast/view/CircleCountdownView;

    .line 63
    .line 64
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :cond_2
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->e:Landroid/widget/ImageView;

    .line 70
    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    :cond_3
    iget-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->s:Z

    .line 77
    .line 78
    if-eqz p1, :cond_8

    .line 79
    .line 80
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->j:Landroid/view/TextureView;

    .line 81
    .line 82
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->j:Landroid/view/TextureView;

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->h:Lio/bidmachine/iab/vast/view/CircleCountdownView;

    .line 91
    .line 92
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->h:Lio/bidmachine/iab/vast/view/CircleCountdownView;

    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 98
    .line 99
    .line 100
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->X()V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->f:Landroid/widget/ProgressBar;

    .line 104
    .line 105
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->g:Landroid/widget/ImageView;

    .line 109
    .line 110
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_4
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->e:Landroid/widget/ImageView;

    .line 115
    .line 116
    if-eqz p1, :cond_5

    .line 117
    .line 118
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->e:Landroid/widget/ImageView;

    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 124
    .line 125
    .line 126
    :cond_5
    iget-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->s:Z

    .line 127
    .line 128
    if-eqz p1, :cond_8

    .line 129
    .line 130
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->f:Landroid/widget/ProgressBar;

    .line 131
    .line 132
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->f:Landroid/widget/ProgressBar;

    .line 136
    .line 137
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->j:Landroid/view/TextureView;

    .line 141
    .line 142
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->g:Landroid/widget/ImageView;

    .line 146
    .line 147
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->h:Lio/bidmachine/iab/vast/view/CircleCountdownView;

    .line 151
    .line 152
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_6
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->e:Landroid/widget/ImageView;

    .line 157
    .line 158
    if-eqz p1, :cond_7

    .line 159
    .line 160
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    .line 162
    .line 163
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->e:Landroid/widget/ImageView;

    .line 164
    .line 165
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 166
    .line 167
    .line 168
    :cond_7
    iget-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->s:Z

    .line 169
    .line 170
    if-eqz p1, :cond_8

    .line 171
    .line 172
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->j:Landroid/view/TextureView;

    .line 173
    .line 174
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 175
    .line 176
    .line 177
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->f:Landroid/widget/ProgressBar;

    .line 178
    .line 179
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 180
    .line 181
    .line 182
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->g:Landroid/widget/ImageView;

    .line 183
    .line 184
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->h:Lio/bidmachine/iab/vast/view/CircleCountdownView;

    .line 188
    .line 189
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 190
    .line 191
    .line 192
    :cond_8
    :goto_0
    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->J()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->n:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->i:Landroid/media/MediaPlayer;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->i:Landroid/media/MediaPlayer;

    .line 19
    .line 20
    const/high16 v1, 0x3f800000    # 1.0f

    .line 21
    .line 22
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic b(IZ)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/nativead/view/MediaView;->K(IZ)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private b0()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->L()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->V()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->O()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->J()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->i:Landroid/media/MediaPlayer;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->u:Z

    .line 24
    .line 25
    return-void
.end method

.method static synthetic c(Lio/bidmachine/nativead/view/MediaView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->r:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic d(Lio/bidmachine/nativead/view/MediaView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->W()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e(Lio/bidmachine/nativead/view/MediaView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/nativead/view/MediaView;->t:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Lio/bidmachine/nativead/view/MediaView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->t:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic g(Lio/bidmachine/nativead/view/MediaView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->Q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h(Lio/bidmachine/nativead/view/MediaView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/nativead/view/MediaView;->n:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic i(Lio/bidmachine/nativead/view/MediaView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->n:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic j(Lio/bidmachine/nativead/view/MediaView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->X()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic k(Lio/bidmachine/nativead/view/MediaView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->C()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic l(Lio/bidmachine/nativead/view/MediaView;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->I()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic m(Lio/bidmachine/nativead/view/MediaView;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/nativead/view/MediaView;->v:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic n(Lio/bidmachine/nativead/view/MediaView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/nativead/view/MediaView;->v:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic o(Lio/bidmachine/nativead/view/MediaView;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/nativead/view/MediaView;->w:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic p(Lio/bidmachine/nativead/view/MediaView;)I
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/nativead/view/MediaView;->w:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lio/bidmachine/nativead/view/MediaView;->w:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic q(Lio/bidmachine/nativead/view/MediaView;Lio/bidmachine/iab/vast/TrackingEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/nativead/view/MediaView;->R(Lio/bidmachine/iab/vast/TrackingEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic r(Lio/bidmachine/nativead/view/MediaView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/nativead/view/MediaView;->u:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic s(Lio/bidmachine/nativead/view/MediaView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->u:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic t(Lio/bidmachine/nativead/view/MediaView;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->J()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic u(Lio/bidmachine/nativead/view/MediaView;)Landroid/media/MediaPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/nativead/view/MediaView;->i:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic v(Lio/bidmachine/nativead/view/MediaView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->O()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic w(Lio/bidmachine/nativead/view/MediaView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->P()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic x(Lio/bidmachine/nativead/view/MediaView;Lio/bidmachine/nativead/view/NativeState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/nativead/view/MediaView;->Z(Lio/bidmachine/nativead/view/NativeState;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic y(Lio/bidmachine/nativead/view/MediaView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->s:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic z(Lio/bidmachine/nativead/view/MediaView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->B()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public A(Lmp/e;Lmp/g;Lmp/f;)V
    .locals 0
    .param p1    # Lmp/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lmp/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lmp/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->a:Lmp/e;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/nativead/view/MediaView;->b:Lmp/g;

    .line 4
    .line 5
    iput-object p3, p0, Lio/bidmachine/nativead/view/MediaView;->c:Lmp/f;

    .line 6
    .line 7
    invoke-interface {p2}, Lmp/h;->n()Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Lmp/e;->g()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    invoke-interface {p1}, Lmp/e;->o()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    :cond_0
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->s:Z

    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->F()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method F()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->d:Z

    .line 7
    .line 8
    new-instance v1, Landroid/widget/ImageView;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->e:Landroid/widget/ImageView;

    .line 18
    .line 19
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 20
    .line 21
    const/4 v3, -0x1

    .line 22
    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->e:Landroid/widget/ImageView;

    .line 29
    .line 30
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->e:Landroid/widget/ImageView;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->e:Landroid/widget/ImageView;

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    iget-boolean v1, p0, Lio/bidmachine/nativead/view/MediaView;->s:Z

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1}, Lio/bidmachine/core/g;->C(Landroid/content/Context;)F

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const/high16 v2, 0x42480000    # 50.0f

    .line 58
    .line 59
    mul-float/2addr v1, v2

    .line 60
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    new-instance v2, Landroid/widget/ProgressBar;

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    const/4 v5, 0x0

    .line 71
    const v6, 0x101007a

    .line 72
    .line 73
    .line 74
    invoke-direct {v2, v4, v5, v6}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    .line 76
    .line 77
    iput-object v2, p0, Lio/bidmachine/nativead/view/MediaView;->f:Landroid/widget/ProgressBar;

    .line 78
    .line 79
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 80
    .line 81
    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 82
    .line 83
    .line 84
    const/16 v4, 0xd

    .line 85
    .line 86
    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 87
    .line 88
    .line 89
    iget-object v5, p0, Lio/bidmachine/nativead/view/MediaView;->f:Landroid/widget/ProgressBar;

    .line 90
    .line 91
    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    .line 93
    .line 94
    iget-object v2, p0, Lio/bidmachine/nativead/view/MediaView;->f:Landroid/widget/ProgressBar;

    .line 95
    .line 96
    const-string v5, "#6b000000"

    .line 97
    .line 98
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 103
    .line 104
    .line 105
    iget-object v2, p0, Lio/bidmachine/nativead/view/MediaView;->f:Landroid/widget/ProgressBar;

    .line 106
    .line 107
    const/4 v5, 0x4

    .line 108
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    iget-object v2, p0, Lio/bidmachine/nativead/view/MediaView;->f:Landroid/widget/ProgressBar;

    .line 112
    .line 113
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 114
    .line 115
    .line 116
    new-instance v2, Landroid/widget/ImageView;

    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    invoke-direct {v2, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 123
    .line 124
    .line 125
    iput-object v2, p0, Lio/bidmachine/nativead/view/MediaView;->g:Landroid/widget/ImageView;

    .line 126
    .line 127
    const v6, 0x1080024

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    .line 132
    .line 133
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 134
    .line 135
    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 139
    .line 140
    .line 141
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->g:Landroid/widget/ImageView;

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    .line 145
    .line 146
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->g:Landroid/widget/ImageView;

    .line 147
    .line 148
    new-instance v2, Lio/bidmachine/nativead/view/MediaView$a;

    .line 149
    .line 150
    invoke-direct {v2, p0}, Lio/bidmachine/nativead/view/MediaView$a;-><init>(Lio/bidmachine/nativead/view/MediaView;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    .line 155
    .line 156
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->g:Landroid/widget/ImageView;

    .line 157
    .line 158
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    .line 160
    .line 161
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->g:Landroid/widget/ImageView;

    .line 162
    .line 163
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 164
    .line 165
    .line 166
    new-instance v1, Landroid/view/TextureView;

    .line 167
    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-direct {v1, v2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 173
    .line 174
    .line 175
    iput-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->j:Landroid/view/TextureView;

    .line 176
    .line 177
    invoke-virtual {v1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 178
    .line 179
    .line 180
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 181
    .line 182
    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 186
    .line 187
    .line 188
    iget-object v2, p0, Lio/bidmachine/nativead/view/MediaView;->j:Landroid/view/TextureView;

    .line 189
    .line 190
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    .line 192
    .line 193
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->j:Landroid/view/TextureView;

    .line 194
    .line 195
    new-instance v2, Lio/bidmachine/nativead/view/MediaView$b;

    .line 196
    .line 197
    invoke-direct {v2, p0}, Lio/bidmachine/nativead/view/MediaView$b;-><init>(Lio/bidmachine/nativead/view/MediaView;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    .line 202
    .line 203
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->j:Landroid/view/TextureView;

    .line 204
    .line 205
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 206
    .line 207
    .line 208
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->E()V

    .line 209
    .line 210
    .line 211
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->D()V

    .line 212
    .line 213
    .line 214
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->b:Lmp/g;

    .line 215
    .line 216
    if-eqz v1, :cond_0

    .line 217
    .line 218
    invoke-interface {v1}, Lmp/h;->n()Landroid/net/Uri;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    if-eqz v1, :cond_0

    .line 223
    .line 224
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->b:Lmp/g;

    .line 225
    .line 226
    invoke-interface {v1}, Lmp/h;->n()Landroid/net/Uri;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    if-eqz v1, :cond_0

    .line 235
    .line 236
    new-instance v1, Ljava/io/File;

    .line 237
    .line 238
    iget-object v2, p0, Lio/bidmachine/nativead/view/MediaView;->b:Lmp/g;

    .line 239
    .line 240
    invoke-interface {v2}, Lmp/h;->n()Landroid/net/Uri;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-eqz v1, :cond_0

    .line 256
    .line 257
    iput-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->r:Z

    .line 258
    .line 259
    goto :goto_0

    .line 260
    :cond_0
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->a:Lmp/e;

    .line 261
    .line 262
    if-eqz v0, :cond_3

    .line 263
    .line 264
    sget-object v0, Lio/bidmachine/nativead/view/NativeState;->Loading:Lio/bidmachine/nativead/view/NativeState;

    .line 265
    .line 266
    invoke-direct {p0, v0}, Lio/bidmachine/nativead/view/MediaView;->Z(Lio/bidmachine/nativead/view/NativeState;)V

    .line 267
    .line 268
    .line 269
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->a:Lmp/e;

    .line 270
    .line 271
    invoke-interface {v0}, Lmp/e;->g()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-nez v0, :cond_1

    .line 280
    .line 281
    new-instance v0, Lio/bidmachine/nativead/view/MediaView$c;

    .line 282
    .line 283
    invoke-direct {v0, p0}, Lio/bidmachine/nativead/view/MediaView$c;-><init>(Lio/bidmachine/nativead/view/MediaView;)V

    .line 284
    .line 285
    .line 286
    new-instance v1, Lnp/e;

    .line 287
    .line 288
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    iget-object v3, p0, Lio/bidmachine/nativead/view/MediaView;->a:Lmp/e;

    .line 293
    .line 294
    invoke-interface {v3}, Lmp/e;->g()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    invoke-direct {v1, v2, v0, v3}, Lnp/e;-><init>(Landroid/content/Context;Lnp/e$b;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-direct {p0, v1}, Lio/bidmachine/nativead/view/MediaView;->G(Ljava/lang/Runnable;)V

    .line 302
    .line 303
    .line 304
    goto :goto_0

    .line 305
    :cond_1
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->a:Lmp/e;

    .line 306
    .line 307
    invoke-interface {v0}, Lmp/e;->o()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-nez v0, :cond_3

    .line 316
    .line 317
    new-instance v0, Lio/bidmachine/nativead/view/MediaView$d;

    .line 318
    .line 319
    invoke-direct {v0, p0}, Lio/bidmachine/nativead/view/MediaView$d;-><init>(Lio/bidmachine/nativead/view/MediaView;)V

    .line 320
    .line 321
    .line 322
    new-instance v1, Lnp/d;

    .line 323
    .line 324
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    iget-object v3, p0, Lio/bidmachine/nativead/view/MediaView;->a:Lmp/e;

    .line 329
    .line 330
    invoke-interface {v3}, Lmp/e;->o()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    invoke-direct {v1, v2, v0, v3}, Lnp/d;-><init>(Landroid/content/Context;Lnp/d$b;Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    invoke-direct {p0, v1}, Lio/bidmachine/nativead/view/MediaView;->G(Ljava/lang/Runnable;)V

    .line 338
    .line 339
    .line 340
    goto :goto_0

    .line 341
    :cond_2
    sget-object v0, Lio/bidmachine/nativead/view/NativeState;->Image:Lio/bidmachine/nativead/view/NativeState;

    .line 342
    .line 343
    invoke-direct {p0, v0}, Lio/bidmachine/nativead/view/MediaView;->Z(Lio/bidmachine/nativead/view/NativeState;)V

    .line 344
    .line 345
    .line 346
    :cond_3
    :goto_0
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->b:Lmp/g;

    .line 347
    .line 348
    if-eqz v0, :cond_4

    .line 349
    .line 350
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->e:Landroid/widget/ImageView;

    .line 355
    .line 356
    iget-object v2, p0, Lio/bidmachine/nativead/view/MediaView;->b:Lmp/g;

    .line 357
    .line 358
    invoke-interface {v2}, Lmp/h;->getImageUri()Landroid/net/Uri;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    iget-object v3, p0, Lio/bidmachine/nativead/view/MediaView;->b:Lmp/g;

    .line 363
    .line 364
    invoke-interface {v3}, Lmp/h;->d()Landroid/graphics/drawable/Drawable;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    invoke-static {v0, v1, v2, v3}, Lop/a;->d(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;)V

    .line 369
    .line 370
    .line 371
    :cond_4
    return-void
.end method

.method public N()V
    .locals 2

    .line 1
    const-string v0, "MediaView: onViewAppearOnScreen"

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/core/a;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->q:Z

    .line 8
    .line 9
    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->r:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->W()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->A:Lio/bidmachine/nativead/view/NativeState;

    .line 18
    .line 19
    sget-object v1, Lio/bidmachine/nativead/view/NativeState;->Loading:Lio/bidmachine/nativead/view/NativeState;

    .line 20
    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    sget-object v0, Lio/bidmachine/nativead/view/NativeState;->Paused:Lio/bidmachine/nativead/view/NativeState;

    .line 24
    .line 25
    invoke-direct {p0, v0}, Lio/bidmachine/nativead/view/MediaView;->Z(Lio/bidmachine/nativead/view/NativeState;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public T()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lio/bidmachine/nativead/view/MediaView$e;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lio/bidmachine/nativead/view/MediaView$e;-><init>(Lio/bidmachine/nativead/view/MediaView;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public U()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->s:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Ljava/util/Timer;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->k:Ljava/util/Timer;

    .line 12
    .line 13
    new-instance v2, Lio/bidmachine/nativead/view/MediaView$h;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lio/bidmachine/nativead/view/MediaView$h;-><init>(Lio/bidmachine/nativead/view/MediaView;)V

    .line 16
    .line 17
    .line 18
    const-wide/16 v3, 0x0

    .line 19
    .line 20
    const/16 v0, 0x1f4

    .line 21
    .line 22
    int-to-long v5, v0

    .line 23
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public V()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->k:Ljava/util/Timer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->k:Ljava/util/Timer;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/nativead/view/a;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lio/bidmachine/nativead/view/a;-><init>(IZ)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/a;->a(Lhr/b;)V

    .line 7
    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->b0()V

    .line 12
    .line 13
    .line 14
    goto :goto_1

    .line 15
    :catch_0
    move-exception p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->J()Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    iget-object p2, p0, Lio/bidmachine/nativead/view/MediaView;->i:Landroid/media/MediaPlayer;

    .line 24
    .line 25
    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :goto_0
    invoke-static {p1}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_1
    const/4 p1, 0x0

    .line 33
    sput-object p1, Lio/bidmachine/nativead/view/MediaView;->B:Lio/bidmachine/nativead/view/VideoPlayerActivity$c;

    .line 34
    .line 35
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->b0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 1
    const-string p1, "MediaView: onError"

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/core/a;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->C()V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->Y()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

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
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    const/high16 v6, 0x40000000    # 2.0f

    .line 26
    .line 27
    if-ne v0, v6, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/high16 v7, -0x80000000

    .line 31
    .line 32
    if-ne v0, v7, :cond_1

    .line 33
    .line 34
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v2, v4

    .line 40
    :goto_0
    const/high16 v0, 0x3f100000    # 0.5625f

    .line 41
    .line 42
    int-to-float v7, v2

    .line 43
    mul-float/2addr v7, v0

    .line 44
    float-to-int v0, v7

    .line 45
    if-ne v1, v6, :cond_2

    .line 46
    .line 47
    if-ge v3, v0, :cond_2

    .line 48
    .line 49
    const v0, 0x3fe38e39

    .line 50
    .line 51
    .line 52
    int-to-float v1, v3

    .line 53
    mul-float/2addr v1, v0

    .line 54
    float-to-int v2, v1

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    move v3, v0

    .line 57
    :goto_1
    sub-int v0, v3, v5

    .line 58
    .line 59
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const/4 v1, 0x2

    .line 64
    if-ge v0, v1, :cond_3

    .line 65
    .line 66
    sub-int v0, v2, v4

    .line 67
    .line 68
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-lt v0, v1, :cond_4

    .line 73
    .line 74
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 85
    .line 86
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    const-string p1, "MediaView: onPrepared"

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/core/a;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->o:Z

    .line 8
    .line 9
    iget-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->r:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->W()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object p1, Lio/bidmachine/nativead/view/NativeState;->Paused:Lio/bidmachine/nativead/view/NativeState;

    .line 18
    .line 19
    invoke-direct {p0, p1}, Lio/bidmachine/nativead/view/MediaView;->Z(Lio/bidmachine/nativead/view/NativeState;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object p2, p0, Lio/bidmachine/nativead/view/MediaView;->i:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->D()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    new-instance p2, Landroid/view/Surface;

    .line 12
    .line 13
    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->i:Landroid/media/MediaPlayer;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->P()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_2

    .line 25
    :goto_1
    invoke-static {p1}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lio/bidmachine/nativead/view/NativeState;->Image:Lio/bidmachine/nativead/view/NativeState;

    .line 29
    .line 30
    invoke-direct {p0, p1}, Lio/bidmachine/nativead/view/MediaView;->Z(Lio/bidmachine/nativead/view/NativeState;)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->s:Z

    .line 35
    .line 36
    :goto_2
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 1
    iput p2, p0, Lio/bidmachine/nativead/view/MediaView;->x:I

    .line 2
    .line 3
    iput p3, p0, Lio/bidmachine/nativead/view/MediaView;->y:I

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->z:Z

    .line 7
    .line 8
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->Y()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->r:Z

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->W()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->O()V

    .line 12
    .line 13
    .line 14
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setNativeAdObject(Lmp/d;)V
    .locals 0
    .param p1    # Lmp/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1, p1, p1}, Lio/bidmachine/nativead/view/MediaView;->A(Lmp/e;Lmp/g;Lmp/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
