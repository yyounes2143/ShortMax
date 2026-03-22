.class final Lio/bidmachine/media3/exoplayer/g;
.super Ljava/lang/Object;
.source "AudioFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/g$a;
    }
.end annotation


# instance fields
.field private final a:Lh7/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh7/n<",
            "Landroid/media/AudioManager;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/os/Handler;

.field private c:Lio/bidmachine/media3/exoplayer/g$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Lzm/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:F

.field private h:Lan/a;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/g$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, Lio/bidmachine/media3/exoplayer/g;->g:F

    .line 7
    .line 8
    new-instance v0, Lio/bidmachine/media3/exoplayer/f;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lio/bidmachine/media3/exoplayer/f;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/common/base/Suppliers;->a(Lh7/n;)Lh7/n;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/g;->a:Lh7/n;

    .line 18
    .line 19
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/g;->c:Lio/bidmachine/media3/exoplayer/g$a;

    .line 20
    .line 21
    new-instance p1, Landroid/os/Handler;

    .line 22
    .line 23
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/g;->b:Landroid/os/Handler;

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lio/bidmachine/media3/exoplayer/g;->e:I

    .line 30
    .line 31
    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/g;->h(Landroid/content/Context;)Landroid/media/AudioManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lio/bidmachine/media3/exoplayer/g;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/g;->g(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/g;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/g;->h:Lan/a;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/g;->a:Lh7/n;

    .line 14
    .line 15
    invoke-interface {v0}, Lh7/n;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/media/AudioManager;

    .line 20
    .line 21
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/g;->h:Lan/a;

    .line 22
    .line 23
    invoke-static {v0, v1}, Lan/d;->b(Landroid/media/AudioManager;Lan/a;)I

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method private static d(Lzm/c;)I
    .locals 6
    .param p0    # Lzm/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget v1, p0, Lzm/c;->c:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const-string v4, "AudioFocusManager"

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "Unidentified audio usage: "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget p0, p0, Lzm/c;->c:I

    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {v4, p0}, Lcn/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return v0

    .line 38
    :pswitch_1
    const/4 p0, 0x4

    .line 39
    return p0

    .line 40
    :pswitch_2
    iget p0, p0, Lzm/c;->a:I

    .line 41
    .line 42
    if-ne p0, v5, :cond_1

    .line 43
    .line 44
    return v3

    .line 45
    :cond_1
    :pswitch_3
    return v2

    .line 46
    :pswitch_4
    return v0

    .line 47
    :pswitch_5
    return v3

    .line 48
    :pswitch_6
    return v5

    .line 49
    :pswitch_7
    const-string p0, "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default."

    .line 50
    .line 51
    invoke-static {v4, p0}, Lcn/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return v5

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private e(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/g;->c:Lio/bidmachine/media3/exoplayer/g$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/g$a;->v(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private g(I)V
    .locals 2

    .line 1
    const/4 v0, -0x3

    .line 2
    const/4 v1, -0x2

    .line 3
    if-eq p1, v0, :cond_2

    .line 4
    .line 5
    if-eq p1, v1, :cond_2

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    if-eq p1, v1, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "Unknown focus change type: "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "AudioFocusManager"

    .line 31
    .line 32
    invoke-static {v0, p1}, Lcn/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    const/4 p1, 0x2

    .line 37
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/g;->m(I)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v1}, Lio/bidmachine/media3/exoplayer/g;->e(I)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/g;->e(I)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/g;->c()V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v1}, Lio/bidmachine/media3/exoplayer/g;->m(I)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    if-eq p1, v1, :cond_4

    .line 55
    .line 56
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/g;->p()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const/4 p1, 0x4

    .line 64
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/g;->m(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 69
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/g;->e(I)V

    .line 70
    .line 71
    .line 72
    const/4 p1, 0x3

    .line 73
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/g;->m(I)V

    .line 74
    .line 75
    .line 76
    :goto_1
    return-void
.end method

.method private static synthetic h(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 0

    .line 1
    invoke-static {p0}, Lan/d;->c(Landroid/content/Context;)Landroid/media/AudioManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private j()I
    .locals 3

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/g;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/g;->k()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    invoke-direct {p0, v2}, Lio/bidmachine/media3/exoplayer/g;->m(I)V

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    invoke-direct {p0, v1}, Lio/bidmachine/media3/exoplayer/g;->m(I)V

    .line 19
    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    return v0
.end method

.method private k()I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/g;->h:Lan/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/g;->i:Z

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    :cond_0
    if-nez v0, :cond_1

    .line 10
    .line 11
    new-instance v0, Lan/a$b;

    .line 12
    .line 13
    iget v1, p0, Lio/bidmachine/media3/exoplayer/g;->f:I

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lan/a$b;-><init>(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {v0}, Lan/a;->a()Lan/a$b;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/g;->p()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/g;->d:Lzm/c;

    .line 28
    .line 29
    invoke-static {v2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lzm/c;

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Lan/a$b;->b(Lzm/c;)Lan/a$b;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, v1}, Lan/a$b;->d(Z)Lan/a$b;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v1, Lio/bidmachine/media3/exoplayer/e;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lio/bidmachine/media3/exoplayer/e;-><init>(Lio/bidmachine/media3/exoplayer/g;)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/g;->b:Landroid/os/Handler;

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Lan/a$b;->c(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Lan/a$b;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lan/a$b;->a()Lan/a;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/g;->h:Lan/a;

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/g;->i:Z

    .line 62
    .line 63
    :cond_2
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/g;->a:Lh7/n;

    .line 64
    .line 65
    invoke-interface {v0}, Lh7/n;->get()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroid/media/AudioManager;

    .line 70
    .line 71
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/g;->h:Lan/a;

    .line 72
    .line 73
    invoke-static {v0, v1}, Lan/d;->i(Landroid/media/AudioManager;Lan/a;)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    return v0
.end method

.method private m(I)V
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/g;->e:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lio/bidmachine/media3/exoplayer/g;->e:I

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    const p1, 0x3e4ccccd    # 0.2f

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 16
    .line 17
    :goto_0
    iget v0, p0, Lio/bidmachine/media3/exoplayer/g;->g:F

    .line 18
    .line 19
    cmpl-float v0, v0, p1

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    iput p1, p0, Lio/bidmachine/media3/exoplayer/g;->g:F

    .line 25
    .line 26
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/g;->c:Lio/bidmachine/media3/exoplayer/g$a;

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/g$a;->s(F)V

    .line 31
    .line 32
    .line 33
    :cond_3
    return-void
.end method

.method private n(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    iget p1, p0, Lio/bidmachine/media3/exoplayer/g;->f:I

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method private p()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/g;->d:Lzm/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Lzm/c;->a:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    return v1
.end method


# virtual methods
.method public f()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/g;->g:F

    .line 2
    .line 3
    return v0
.end method

.method public i()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/g;->c:Lio/bidmachine/media3/exoplayer/g$a;

    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/g;->c()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/g;->m(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public l(Lzm/c;)V
    .locals 1
    .param p1    # Lzm/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/g;->d:Lzm/c;

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/g;->d:Lzm/c;

    .line 10
    .line 11
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/g;->d(Lzm/c;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Lio/bidmachine/media3/exoplayer/g;->f:I

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    if-eq p1, v0, :cond_1

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :cond_1
    :goto_0
    const-string p1, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME."

    .line 25
    .line 26
    invoke-static {v0, p1}, Lcn/a;->b(ZLjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    return-void
.end method

.method public o(ZI)I
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lio/bidmachine/media3/exoplayer/g;->n(I)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/g;->c()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/g;->m(I)V

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/g;->j()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_1
    iget p1, p0, Lio/bidmachine/media3/exoplayer/g;->e:I

    .line 24
    .line 25
    if-eq p1, v1, :cond_3

    .line 26
    .line 27
    const/4 p2, 0x3

    .line 28
    if-eq p1, p2, :cond_2

    .line 29
    .line 30
    return v1

    .line 31
    :cond_2
    return v0

    .line 32
    :cond_3
    const/4 p1, -0x1

    .line 33
    return p1
.end method
