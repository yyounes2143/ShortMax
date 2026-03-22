.class public final Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;
.super Ljava/lang/Object;
.source "AssetDownloadListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/downloader/AssetDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Progress"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus;,
        Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private progressPercent:I

.field private sizeBytes:J

.field private startBytes:J

.field private status:I

.field private timestampDownloadStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic getStatus$annotations()V
    .locals 0
    .annotation runtime Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus;
    .end annotation

    .line 1
    return-void
.end method


# virtual methods
.method public final getProgressPercent()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->progressPercent:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSizeBytes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->sizeBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getStartBytes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->startBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->status:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTimestampDownloadStart()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->timestampDownloadStart:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final setProgressPercent(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->progressPercent:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSizeBytes(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->sizeBytes:J

    .line 2
    .line 3
    return-void
.end method

.method public final setStartBytes(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->startBytes:J

    .line 2
    .line 3
    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->status:I

    .line 2
    .line 3
    return-void
.end method

.method public final setTimestampDownloadStart(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->timestampDownloadStart:J

    .line 2
    .line 3
    return-void
.end method
