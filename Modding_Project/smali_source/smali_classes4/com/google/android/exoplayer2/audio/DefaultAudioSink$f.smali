.class public final Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field private a:Lq5/h;

.field private b:Lq5/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:I

.field f:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;

.field g:Lcom/google/android/exoplayer2/k$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lq5/h;->c:Lq5/h;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;->a:Lq5/h;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;->e:I

    .line 10
    .line 11
    sget-object v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->a:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;->f:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;

    .line 14
    .line 15
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;)Lq5/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;->a:Lq5/h;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;)Lq5/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;->b:Lq5/i;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;->e:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public f()Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;->b:Lq5/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$h;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v1, v1, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$h;-><init>([Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;->b:Lq5/i;

    .line 14
    .line 15
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public g(Lq5/h;)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;
    .locals 0

    .line 1
    invoke-static {p1}, Lb7/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;->a:Lq5/h;

    .line 5
    .line 6
    return-object p0
.end method

.method public h(Z)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;->d:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public i(Z)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;->c:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public j(I)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;->e:I

    .line 2
    .line 3
    return-object p0
.end method
