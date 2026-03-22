.class public final Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$Companion;
.super Ljava/lang/Object;
.source "AssetDownloadListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final copy(Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;)Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;
    .locals 3
    .param p1    # Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "progress"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->getStatus()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->setStatus(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->getProgressPercent()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->setProgressPercent(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->getTimestampDownloadStart()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->setTimestampDownloadStart(J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->getSizeBytes()J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->setSizeBytes(J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->getStartBytes()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->setStartBytes(J)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method
