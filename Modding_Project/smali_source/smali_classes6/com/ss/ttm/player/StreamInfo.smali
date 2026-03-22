.class public Lcom/ss/ttm/player/StreamInfo;
.super Ljava/lang/Object;
.source "StreamInfo.java"


# annotations
.annotation build Lcom/ss/ttm/player/JNINamespace;
    value = "PLAYER"
.end annotation


# instance fields
.field private mBitrate:I

.field private mChannels:I

.field private mCodecName:Ljava/lang/String;

.field private mDuration:J

.field private mFrameRate:I

.field private mHeight:I

.field private mRotation:I

.field private mSampleRate:I

.field private mStreamIndex:I

.field private mStreamType:I

.field private mWidth:I


# direct methods
.method public constructor <init>(IILjava/lang/String;IIIIIIJI)V
    .locals 0
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/ss/ttm/player/StreamInfo;->mStreamType:I

    .line 5
    .line 6
    iput p2, p0, Lcom/ss/ttm/player/StreamInfo;->mStreamIndex:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/ss/ttm/player/StreamInfo;->mCodecName:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/ss/ttm/player/StreamInfo;->mFrameRate:I

    .line 11
    .line 12
    iput p5, p0, Lcom/ss/ttm/player/StreamInfo;->mBitrate:I

    .line 13
    .line 14
    iput p6, p0, Lcom/ss/ttm/player/StreamInfo;->mWidth:I

    .line 15
    .line 16
    iput p7, p0, Lcom/ss/ttm/player/StreamInfo;->mHeight:I

    .line 17
    .line 18
    iput p8, p0, Lcom/ss/ttm/player/StreamInfo;->mSampleRate:I

    .line 19
    .line 20
    iput p9, p0, Lcom/ss/ttm/player/StreamInfo;->mChannels:I

    .line 21
    .line 22
    iput-wide p10, p0, Lcom/ss/ttm/player/StreamInfo;->mDuration:J

    .line 23
    .line 24
    iput p12, p0, Lcom/ss/ttm/player/StreamInfo;->mRotation:I

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public convertToTrackInfo()Lcom/ss/ttm/player/MediaPlayer$TrackInfo;
    .locals 4

    .line 1
    new-instance v0, Lcom/ss/ttm/player/MediaFormat;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/ss/ttm/player/MediaFormat;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "track-id"

    .line 7
    .line 8
    .line 9
    iget v2, p0, Lcom/ss/ttm/player/StreamInfo;->mStreamIndex:I

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/ss/ttm/player/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    const-string v1, "frame-rate"

    .line 15
    .line 16
    iget v2, p0, Lcom/ss/ttm/player/StreamInfo;->mFrameRate:I

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/ss/ttm/player/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    const-string v1, "bitrate"

    .line 22
    .line 23
    iget v2, p0, Lcom/ss/ttm/player/StreamInfo;->mBitrate:I

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/ss/ttm/player/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    const-string/jumbo v1, "width"

    .line 29
    .line 30
    .line 31
    iget v2, p0, Lcom/ss/ttm/player/StreamInfo;->mWidth:I

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/ss/ttm/player/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    const-string v1, "height"

    .line 37
    .line 38
    iget v2, p0, Lcom/ss/ttm/player/StreamInfo;->mHeight:I

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/ss/ttm/player/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    const-string v1, "sample-rate"

    .line 44
    .line 45
    iget v2, p0, Lcom/ss/ttm/player/StreamInfo;->mSampleRate:I

    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/ss/ttm/player/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    const-string v1, "channel-count"

    .line 51
    .line 52
    iget v2, p0, Lcom/ss/ttm/player/StreamInfo;->mChannels:I

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/ss/ttm/player/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    const-string v1, "duration"

    .line 58
    .line 59
    iget-wide v2, p0, Lcom/ss/ttm/player/StreamInfo;->mDuration:J

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/ttm/player/MediaFormat;->setLong(Ljava/lang/String;J)V

    .line 62
    .line 63
    .line 64
    iget v1, p0, Lcom/ss/ttm/player/StreamInfo;->mRotation:I

    .line 65
    .line 66
    int-to-long v1, v1

    .line 67
    const-string v3, "rotation"

    .line 68
    .line 69
    invoke-virtual {v0, v3, v1, v2}, Lcom/ss/ttm/player/MediaFormat;->setLong(Ljava/lang/String;J)V

    .line 70
    .line 71
    .line 72
    const-string v1, "codec-name"

    .line 73
    .line 74
    iget-object v2, p0, Lcom/ss/ttm/player/StreamInfo;->mCodecName:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v0, v1, v2}, Lcom/ss/ttm/player/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-instance v1, Lcom/ss/ttm/player/MediaPlayer$TrackInfo;

    .line 80
    .line 81
    iget v2, p0, Lcom/ss/ttm/player/StreamInfo;->mStreamType:I

    .line 82
    .line 83
    invoke-direct {v1, v2, v0}, Lcom/ss/ttm/player/MediaPlayer$TrackInfo;-><init>(ILcom/ss/ttm/player/MediaFormat;)V

    .line 84
    .line 85
    .line 86
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "StreamInfo{mStreamType="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/ss/ttm/player/StreamInfo;->mStreamType:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", mStreamIndex="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/ss/ttm/player/StreamInfo;->mStreamIndex:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", mCodecName=\'"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/ss/ttm/player/StreamInfo;->mCodecName:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x27

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", mFrameRate="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v1, p0, Lcom/ss/ttm/player/StreamInfo;->mFrameRate:I

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ", mBitrate="

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget v1, p0, Lcom/ss/ttm/player/StreamInfo;->mBitrate:I

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, ", mWidth="

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget v1, p0, Lcom/ss/ttm/player/StreamInfo;->mWidth:I

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, ", mHeight="

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget v1, p0, Lcom/ss/ttm/player/StreamInfo;->mHeight:I

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v1, ", mSampleRate="

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget v1, p0, Lcom/ss/ttm/player/StreamInfo;->mSampleRate:I

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v1, ", mChannels="

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget v1, p0, Lcom/ss/ttm/player/StreamInfo;->mChannels:I

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v1, ", mDuration="

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-wide v1, p0, Lcom/ss/ttm/player/StreamInfo;->mDuration:J

    .line 107
    .line 108
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v1, ", mRotation="

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget v1, p0, Lcom/ss/ttm/player/StreamInfo;->mRotation:I

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const/16 v1, 0x7d

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    return-object v0
.end method
