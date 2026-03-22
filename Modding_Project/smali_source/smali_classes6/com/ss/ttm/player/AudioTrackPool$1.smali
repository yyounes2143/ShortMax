.class Lcom/ss/ttm/player/AudioTrackPool$1;
.super Ljava/lang/Object;
.source "AudioTrackPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttm/player/AudioTrackPool;->releaseAudioTrack(Landroid/media/AudioTrack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttm/player/AudioTrackPool;

.field final synthetic val$releaseTrack:Landroid/media/AudioTrack;


# direct methods
.method constructor <init>(Lcom/ss/ttm/player/AudioTrackPool;Landroid/media/AudioTrack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/player/AudioTrackPool$1;->this$0:Lcom/ss/ttm/player/AudioTrackPool;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ss/ttm/player/AudioTrackPool$1;->val$releaseTrack:Landroid/media/AudioTrack;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    const-string v0, "AudioTrackPool"

    .line 2
    .line 3
    const-string v1, "AudioTrackPool log: release AudioTrack task"

    .line 4
    .line 5
    invoke-static {v0, p0, v1}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/ss/ttm/player/AudioTrackPool$1;->val$releaseTrack:Landroid/media/AudioTrack;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/ttm/player/AudioTrackPool$1;->val$releaseTrack:Landroid/media/AudioTrack;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
