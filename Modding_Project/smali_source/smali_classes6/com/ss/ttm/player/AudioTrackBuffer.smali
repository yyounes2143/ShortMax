.class Lcom/ss/ttm/player/AudioTrackBuffer;
.super Ljava/lang/Object;
.source "AudioTrackPool.java"


# instance fields
.field AudioTrack:Landroid/media/AudioTrack;

.field audioFormat:I

.field channelsLayout:I

.field contentType:I

.field sampleRate:I

.field sessionId:I

.field streamType:I

.field trackBufferSize:I


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;IIIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/ttm/player/AudioTrackBuffer;->AudioTrack:Landroid/media/AudioTrack;

    .line 5
    .line 6
    iput p2, p0, Lcom/ss/ttm/player/AudioTrackBuffer;->streamType:I

    .line 7
    .line 8
    iput p3, p0, Lcom/ss/ttm/player/AudioTrackBuffer;->sampleRate:I

    .line 9
    .line 10
    iput p4, p0, Lcom/ss/ttm/player/AudioTrackBuffer;->channelsLayout:I

    .line 11
    .line 12
    iput p5, p0, Lcom/ss/ttm/player/AudioTrackBuffer;->audioFormat:I

    .line 13
    .line 14
    iput p6, p0, Lcom/ss/ttm/player/AudioTrackBuffer;->trackBufferSize:I

    .line 15
    .line 16
    iput p7, p0, Lcom/ss/ttm/player/AudioTrackBuffer;->sessionId:I

    .line 17
    .line 18
    iput p8, p0, Lcom/ss/ttm/player/AudioTrackBuffer;->contentType:I

    .line 19
    .line 20
    return-void
.end method
