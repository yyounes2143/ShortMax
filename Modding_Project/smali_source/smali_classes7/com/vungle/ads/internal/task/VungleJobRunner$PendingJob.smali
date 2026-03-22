.class final Lcom/vungle/ads/internal/task/VungleJobRunner$PendingJob;
.super Ljava/lang/Object;
.source "VungleJobRunner.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/task/VungleJobRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingJob"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private info:Lcom/vungle/ads/internal/task/JobInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final uptimeMillis:J


# direct methods
.method public constructor <init>(JLcom/vungle/ads/internal/task/JobInfo;)V
    .locals 0
    .param p3    # Lcom/vungle/ads/internal/task/JobInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/vungle/ads/internal/task/VungleJobRunner$PendingJob;->uptimeMillis:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/vungle/ads/internal/task/VungleJobRunner$PendingJob;->info:Lcom/vungle/ads/internal/task/JobInfo;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getInfo()Lcom/vungle/ads/internal/task/JobInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/task/VungleJobRunner$PendingJob;->info:Lcom/vungle/ads/internal/task/JobInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUptimeMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/vungle/ads/internal/task/VungleJobRunner$PendingJob;->uptimeMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final setInfo(Lcom/vungle/ads/internal/task/JobInfo;)V
    .locals 0
    .param p1    # Lcom/vungle/ads/internal/task/JobInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/task/VungleJobRunner$PendingJob;->info:Lcom/vungle/ads/internal/task/JobInfo;

    .line 2
    .line 3
    return-void
.end method
