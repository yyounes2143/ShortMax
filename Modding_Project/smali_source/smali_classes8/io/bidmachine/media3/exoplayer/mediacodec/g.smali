.class public final Lio/bidmachine/media3/exoplayer/mediacodec/g;
.super Ljava/lang/Object;
.source "DefaultMediaCodecAdapterFactory.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/mediacodec/h$b;


# instance fields
.field private final b:Landroid/content/Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Lh7/n;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh7/n<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lh7/n;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh7/n<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/g;->e:I

    .line 3
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/g;->f:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/g;->b:Landroid/content/Context;

    .line 5
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/g;->c:Lh7/n;

    .line 6
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/g;->d:Lh7/n;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/g;-><init>(Landroid/content/Context;Lh7/n;Lh7/n;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lh7/n;Lh7/n;)V
    .locals 0
    .param p2    # Lh7/n;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lh7/n;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lh7/n<",
            "Landroid/os/HandlerThread;",
            ">;",
            "Lh7/n<",
            "Landroid/os/HandlerThread;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/g;->b:Landroid/content/Context;

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/g;->e:I

    .line 11
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/g;->f:Z

    .line 12
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/g;->c:Lh7/n;

    .line 13
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/g;->d:Lh7/n;

    return-void
.end method

.method private c()Z
    .locals 4

    .line 1
    sget v0, Lcn/m0;->a:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/g;->b:Landroid/content/Context;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    const/16 v3, 0x1c

    .line 14
    .line 15
    if-lt v0, v3, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "com.amazon.hardware.tv_screen"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    return v2

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    return v0
.end method


# virtual methods
.method public b(Lio/bidmachine/media3/exoplayer/mediacodec/h$a;)Lio/bidmachine/media3/exoplayer/mediacodec/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget v0, Lcn/m0;->a:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-lt v0, v1, :cond_2

    .line 6
    .line 7
    iget v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/g;->e:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/g;->c()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    :cond_0
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/mediacodec/h$a;->c:Lio/bidmachine/media3/common/a;

    .line 21
    .line 22
    iget-object v0, v0, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0}, Lzm/u;->k(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "Creating an asynchronous MediaCodec adapter for track type "

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcn/m0;->t0(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "DMCodecAdapterFactory"

    .line 50
    .line 51
    invoke-static {v2, v1}, Lcn/r;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/g;->c:Lh7/n;

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/g;->d:Lh7/n;

    .line 59
    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    new-instance v0, Lio/bidmachine/media3/exoplayer/mediacodec/b$b;

    .line 63
    .line 64
    invoke-direct {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/mediacodec/b$b;-><init>(Lh7/n;Lh7/n;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    new-instance v1, Lio/bidmachine/media3/exoplayer/mediacodec/b$b;

    .line 69
    .line 70
    invoke-direct {v1, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/b$b;-><init>(I)V

    .line 71
    .line 72
    .line 73
    move-object v0, v1

    .line 74
    :goto_0
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/g;->f:Z

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/mediacodec/b$b;->f(Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/b$b;->e(Lio/bidmachine/media3/exoplayer/mediacodec/h$a;)Lio/bidmachine/media3/exoplayer/mediacodec/b;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    :cond_2
    new-instance v0, Lio/bidmachine/media3/exoplayer/mediacodec/q$b;

    .line 85
    .line 86
    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/q$b;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/q$b;->b(Lio/bidmachine/media3/exoplayer/mediacodec/h$a;)Lio/bidmachine/media3/exoplayer/mediacodec/h;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    return-object p1
.end method
