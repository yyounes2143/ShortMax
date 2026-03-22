.class public final Lio/bidmachine/media3/exoplayer/audio/d$b;
.super Ljava/lang/Object;
.source "AudioOffloadSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic a(Lio/bidmachine/media3/exoplayer/audio/d$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/audio/d$b;->a:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lio/bidmachine/media3/exoplayer/audio/d$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/audio/d$b;->b:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lio/bidmachine/media3/exoplayer/audio/d$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/audio/d$b;->c:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public d()Lio/bidmachine/media3/exoplayer/audio/d;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/d$b;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/d$b;->b:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/d$b;->c:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v1, "Secondary offload attribute fields are true but primary isFormatSupported is false"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :cond_1
    :goto_0
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/d;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/exoplayer/audio/d;-><init>(Lio/bidmachine/media3/exoplayer/audio/d$b;Lio/bidmachine/media3/exoplayer/audio/d$a;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public e(Z)Lio/bidmachine/media3/exoplayer/audio/d$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/audio/d$b;->a:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public f(Z)Lio/bidmachine/media3/exoplayer/audio/d$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/audio/d$b;->b:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public g(Z)Lio/bidmachine/media3/exoplayer/audio/d$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/audio/d$b;->c:Z

    .line 2
    .line 3
    return-object p0
.end method
