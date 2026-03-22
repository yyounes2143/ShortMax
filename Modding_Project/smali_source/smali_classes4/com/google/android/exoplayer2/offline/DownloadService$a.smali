.class final Lcom/google/android/exoplayer2/offline/DownloadService$a;
.super Ljava/lang/Object;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/google/android/exoplayer2/offline/DownloadService;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static synthetic a(Lcom/google/android/exoplayer2/offline/DownloadService$a;)Lm6/a;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method


# virtual methods
.method public b(Lcom/google/android/exoplayer2/offline/DownloadService;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$a;->a:Lcom/google/android/exoplayer2/offline/DownloadService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, Lb7/a;->g(Z)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadService$a;->a:Lcom/google/android/exoplayer2/offline/DownloadService;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    throw p1
.end method

.method public c(Lcom/google/android/exoplayer2/offline/DownloadService;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$a;->a:Lcom/google/android/exoplayer2/offline/DownloadService;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    invoke-static {p1}, Lb7/a;->g(Z)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadService$a;->a:Lcom/google/android/exoplayer2/offline/DownloadService;

    .line 13
    .line 14
    return-void
.end method
