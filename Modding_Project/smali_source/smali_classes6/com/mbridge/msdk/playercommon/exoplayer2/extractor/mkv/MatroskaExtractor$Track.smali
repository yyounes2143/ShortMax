.class final Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Track"
.end annotation


# static fields
.field private static final DEFAULT_MAX_CLL:I = 0x3e8

.field private static final DEFAULT_MAX_FALL:I = 0xc8

.field private static final DISPLAY_UNIT_PIXELS:I = 0x0

.field private static final MAX_CHROMATICITY:I = 0xc350


# instance fields
.field public audioBitDepth:I

.field public channelCount:I

.field public codecDelayNs:J

.field public codecId:Ljava/lang/String;

.field public codecPrivate:[B

.field public colorRange:I

.field public colorSpace:I

.field public colorTransfer:I

.field public cryptoData:Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput$CryptoData;

.field public defaultSampleDurationNs:I

.field public displayHeight:I

.field public displayUnit:I

.field public displayWidth:I

.field public drmInitData:Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

.field public flagDefault:Z

.field public flagForced:Z

.field public hasColorInfo:Z

.field public hasContentEncryption:Z

.field public height:I

.field private language:Ljava/lang/String;

.field public maxContentLuminance:I

.field public maxFrameAverageLuminance:I

.field public maxMasteringLuminance:F

.field public minMasteringLuminance:F

.field public nalUnitLengthFieldLength:I

.field public number:I

.field public output:Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

.field public primaryBChromaticityX:F

.field public primaryBChromaticityY:F

.field public primaryGChromaticityX:F

.field public primaryGChromaticityY:F

.field public primaryRChromaticityX:F

.field public primaryRChromaticityY:F

.field public projectionData:[B

.field public sampleRate:I

.field public sampleStrippedBytes:[B

.field public seekPreRollNs:J

.field public stereoMode:I

.field public trueHdSampleRechunker:Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public type:I

.field public whitePointChromaticityX:F

.field public whitePointChromaticityY:F

.field public width:I


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    .line 3
    iput v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    .line 4
    iput v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 5
    iput v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    const/4 v2, 0x0

    .line 7
    iput-object v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    .line 8
    iput v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 9
    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    .line 10
    iput v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    .line 11
    iput v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    .line 12
    iput v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    const/16 v1, 0x3e8

    .line 13
    iput v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    const/16 v1, 0xc8

    .line 14
    iput v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 15
    iput v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    .line 16
    iput v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    .line 17
    iput v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    .line 18
    iput v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    .line 19
    iput v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    .line 20
    iput v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    .line 21
    iput v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    .line 22
    iput v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    .line 23
    iput v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    .line 24
    iput v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    const/4 v1, 0x1

    .line 25
    iput v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 26
    iput v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    const/16 v0, 0x1f40

    .line 27
    iput v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    const-wide/16 v2, 0x0

    .line 28
    iput-wide v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    .line 29
    iput-wide v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    .line 30
    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    .line 31
    const-string v0, "eng"

    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$1;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method private getHdrStaticInfo()[B
    .locals 5

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    .line 2
    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    .line 5
    cmpl-float v0, v0, v1

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    .line 10
    .line 11
    cmpl-float v0, v0, v1

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    .line 16
    .line 17
    cmpl-float v0, v0, v1

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    .line 22
    .line 23
    cmpl-float v0, v0, v1

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    .line 28
    .line 29
    cmpl-float v0, v0, v1

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    .line 34
    .line 35
    cmpl-float v0, v0, v1

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    .line 40
    .line 41
    cmpl-float v0, v0, v1

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    .line 46
    .line 47
    cmpl-float v0, v0, v1

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    .line 52
    .line 53
    cmpl-float v0, v0, v1

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    .line 58
    .line 59
    cmpl-float v0, v0, v1

    .line 60
    .line 61
    if-nez v0, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const/16 v0, 0x19

    .line 65
    .line 66
    new-array v0, v0, [B

    .line 67
    .line 68
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const/4 v2, 0x0

    .line 73
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 74
    .line 75
    .line 76
    iget v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    .line 77
    .line 78
    const v3, 0x47435000    # 50000.0f

    .line 79
    .line 80
    .line 81
    mul-float/2addr v2, v3

    .line 82
    const/high16 v4, 0x3f000000    # 0.5f

    .line 83
    .line 84
    add-float/2addr v2, v4

    .line 85
    float-to-int v2, v2

    .line 86
    int-to-short v2, v2

    .line 87
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 88
    .line 89
    .line 90
    iget v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    .line 91
    .line 92
    mul-float/2addr v2, v3

    .line 93
    add-float/2addr v2, v4

    .line 94
    float-to-int v2, v2

    .line 95
    int-to-short v2, v2

    .line 96
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 97
    .line 98
    .line 99
    iget v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    .line 100
    .line 101
    mul-float/2addr v2, v3

    .line 102
    add-float/2addr v2, v4

    .line 103
    float-to-int v2, v2

    .line 104
    int-to-short v2, v2

    .line 105
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 106
    .line 107
    .line 108
    iget v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    .line 109
    .line 110
    mul-float/2addr v2, v3

    .line 111
    add-float/2addr v2, v4

    .line 112
    float-to-int v2, v2

    .line 113
    int-to-short v2, v2

    .line 114
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 115
    .line 116
    .line 117
    iget v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    .line 118
    .line 119
    mul-float/2addr v2, v3

    .line 120
    add-float/2addr v2, v4

    .line 121
    float-to-int v2, v2

    .line 122
    int-to-short v2, v2

    .line 123
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 124
    .line 125
    .line 126
    iget v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    .line 127
    .line 128
    mul-float/2addr v2, v3

    .line 129
    add-float/2addr v2, v4

    .line 130
    float-to-int v2, v2

    .line 131
    int-to-short v2, v2

    .line 132
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 133
    .line 134
    .line 135
    iget v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    .line 136
    .line 137
    mul-float/2addr v2, v3

    .line 138
    add-float/2addr v2, v4

    .line 139
    float-to-int v2, v2

    .line 140
    int-to-short v2, v2

    .line 141
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 142
    .line 143
    .line 144
    iget v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    .line 145
    .line 146
    mul-float/2addr v2, v3

    .line 147
    add-float/2addr v2, v4

    .line 148
    float-to-int v2, v2

    .line 149
    int-to-short v2, v2

    .line 150
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 151
    .line 152
    .line 153
    iget v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    .line 154
    .line 155
    add-float/2addr v2, v4

    .line 156
    float-to-int v2, v2

    .line 157
    int-to-short v2, v2

    .line 158
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 159
    .line 160
    .line 161
    iget v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    .line 162
    .line 163
    add-float/2addr v2, v4

    .line 164
    float-to-int v2, v2

    .line 165
    int-to-short v2, v2

    .line 166
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 167
    .line 168
    .line 169
    iget v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    .line 170
    .line 171
    int-to-short v2, v2

    .line 172
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 173
    .line 174
    .line 175
    iget v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    .line 176
    .line 177
    int-to-short v2, v2

    .line 178
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 179
    .line 180
    .line 181
    return-object v0

    .line 182
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 183
    return-object v0
.end method

.method private static parseFourCcPrivate(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide/32 v2, 0x58564944

    .line 11
    .line 12
    .line 13
    cmp-long v2, v0, v2

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    new-instance p0, Landroid/util/Pair;

    .line 19
    .line 20
    const-string/jumbo v0, "video/3gpp"

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    const-wide/32 v4, 0x31435657

    .line 28
    .line 29
    .line 30
    cmp-long v0, v0, v4

    .line 31
    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    add-int/lit8 v0, v0, 0x14

    .line 39
    .line 40
    iget-object p0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    .line 41
    .line 42
    :goto_0
    array-length v1, p0

    .line 43
    add-int/lit8 v1, v1, -0x4

    .line 44
    .line 45
    if-ge v0, v1, :cond_2

    .line 46
    .line 47
    aget-byte v1, p0, v0

    .line 48
    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    add-int/lit8 v1, v0, 0x1

    .line 52
    .line 53
    aget-byte v1, p0, v1

    .line 54
    .line 55
    if-nez v1, :cond_1

    .line 56
    .line 57
    add-int/lit8 v1, v0, 0x2

    .line 58
    .line 59
    aget-byte v1, p0, v1

    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    if-ne v1, v2, :cond_1

    .line 63
    .line 64
    add-int/lit8 v1, v0, 0x3

    .line 65
    .line 66
    aget-byte v1, p0, v1

    .line 67
    .line 68
    const/16 v2, 0xf

    .line 69
    .line 70
    if-ne v1, v2, :cond_1

    .line 71
    .line 72
    array-length v1, p0

    .line 73
    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    new-instance v0, Landroid/util/Pair;

    .line 78
    .line 79
    const-string/jumbo v1, "video/wvc1"

    .line 80
    .line 81
    .line 82
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    return-object v0

    .line 90
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    new-instance p0, Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    .line 94
    .line 95
    const-string v0, "Failed to find FourCC VC1 initialization data"

    .line 96
    .line 97
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_3
    const-string p0, "MatroskaExtractor"

    .line 102
    .line 103
    const-string v0, "Unknown FourCC. Setting mimeType to video/x-unknown"

    .line 104
    .line 105
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    new-instance p0, Landroid/util/Pair;

    .line 109
    .line 110
    const-string/jumbo v0, "video/x-unknown"

    .line 111
    .line 112
    .line 113
    invoke-direct {p0, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    return-object p0

    .line 117
    :catch_0
    new-instance p0, Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    .line 118
    .line 119
    const-string v0, "Error parsing FourCC private data"

    .line 120
    .line 121
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p0
.end method

.method private static parseMsAcmCodecPrivate(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const v2, 0xfffe

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-ne v0, v2, :cond_2

    .line 14
    .line 15
    const/16 v0, 0x18

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readLong()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    invoke-static {}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->access$400()Ljava/util/UUID;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    .line 29
    .line 30
    .line 31
    move-result-wide v6

    .line 32
    cmp-long v0, v4, v6

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readLong()J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    invoke-static {}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->access$400()Ljava/util/UUID;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    .line 45
    .line 46
    .line 47
    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    cmp-long p0, v4, v6

    .line 49
    .line 50
    if-nez p0, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move v1, v3

    .line 54
    :goto_0
    return v1

    .line 55
    :cond_2
    return v3

    .line 56
    :catch_0
    new-instance p0, Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    .line 57
    .line 58
    const-string v0, "Error parsing MS/ACM codec private"

    .line 59
    .line 60
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p0
.end method

.method private static parseVorbisCodecPrivate([B)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    const-string v0, "Error parsing vorbis codec private"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    aget-byte v2, p0, v1

    .line 5
    .line 6
    const/4 v3, 0x2

    .line 7
    if-ne v2, v3, :cond_5

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    move v5, v1

    .line 11
    move v4, v2

    .line 12
    :goto_0
    aget-byte v6, p0, v4

    .line 13
    .line 14
    const/4 v7, -0x1

    .line 15
    if-ne v6, v7, :cond_0

    .line 16
    .line 17
    add-int/lit16 v5, v5, 0xff

    .line 18
    .line 19
    add-int/lit8 v4, v4, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    add-int/2addr v4, v2

    .line 23
    add-int/2addr v5, v6

    .line 24
    move v6, v1

    .line 25
    :goto_1
    aget-byte v8, p0, v4

    .line 26
    .line 27
    if-ne v8, v7, :cond_1

    .line 28
    .line 29
    add-int/lit16 v6, v6, 0xff

    .line 30
    .line 31
    add-int/lit8 v4, v4, 0x1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    add-int/2addr v4, v2

    .line 35
    add-int/2addr v6, v8

    .line 36
    aget-byte v7, p0, v4

    .line 37
    .line 38
    if-ne v7, v2, :cond_4

    .line 39
    .line 40
    new-array v2, v5, [B

    .line 41
    .line 42
    invoke-static {p0, v4, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    .line 44
    .line 45
    add-int/2addr v4, v5

    .line 46
    aget-byte v5, p0, v4

    .line 47
    .line 48
    const/4 v7, 0x3

    .line 49
    if-ne v5, v7, :cond_3

    .line 50
    .line 51
    add-int/2addr v4, v6

    .line 52
    aget-byte v5, p0, v4

    .line 53
    .line 54
    const/4 v6, 0x5

    .line 55
    if-ne v5, v6, :cond_2

    .line 56
    .line 57
    array-length v5, p0

    .line 58
    sub-int/2addr v5, v4

    .line 59
    new-array v5, v5, [B

    .line 60
    .line 61
    array-length v6, p0

    .line 62
    sub-int/2addr v6, v4

    .line 63
    invoke-static {p0, v4, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    .line 65
    .line 66
    new-instance p0, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {p0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    return-object p0

    .line 78
    :cond_2
    new-instance p0, Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    .line 79
    .line 80
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :cond_3
    new-instance p0, Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    .line 85
    .line 86
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0

    .line 90
    :cond_4
    new-instance p0, Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    .line 91
    .line 92
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0

    .line 96
    :cond_5
    new-instance p0, Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    .line 97
    .line 98
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :catch_0
    new-instance p0, Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    .line 103
    .line 104
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p0
.end method


# virtual methods
.method public initializeOutput(Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;I)V
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    iget-object v3, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    const/4 v6, 0x0

    .line 11
    const-string v7, "application/dvbsubs"

    .line 12
    .line 13
    const-string v8, "application/vobsub"

    .line 14
    .line 15
    const-string v9, "application/pgs"

    .line 16
    .line 17
    const-string v10, ". Setting mimeType to "

    .line 18
    .line 19
    const-string v11, "Unsupported PCM bit depth: "

    .line 20
    .line 21
    const-string v12, "audio/raw"

    .line 22
    .line 23
    const-string/jumbo v13, "text/x-ssa"

    .line 24
    .line 25
    .line 26
    const-string v14, "application/x-subrip"

    .line 27
    .line 28
    const-string v15, "MatroskaExtractor"

    .line 29
    .line 30
    const-string v4, "audio/x-unknown"

    .line 31
    .line 32
    const/4 v2, 0x3

    .line 33
    const/16 v16, 0x0

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v17

    .line 39
    sparse-switch v17, :sswitch_data_0

    .line 40
    .line 41
    .line 42
    :goto_0
    const/4 v3, -0x1

    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    :sswitch_0
    const-string v5, "A_OPUS"

    .line 46
    .line 47
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/16 v3, 0x1c

    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :sswitch_1
    const-string v5, "A_FLAC"

    .line 59
    .line 60
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-nez v3, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/16 v3, 0x1b

    .line 68
    .line 69
    goto/16 :goto_1

    .line 70
    .line 71
    :sswitch_2
    const-string v5, "A_EAC3"

    .line 72
    .line 73
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-nez v3, :cond_2

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    const/16 v3, 0x1a

    .line 81
    .line 82
    goto/16 :goto_1

    .line 83
    .line 84
    :sswitch_3
    const-string v5, "V_MPEG2"

    .line 85
    .line 86
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-nez v3, :cond_3

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    const/16 v3, 0x19

    .line 94
    .line 95
    goto/16 :goto_1

    .line 96
    .line 97
    :sswitch_4
    const-string v5, "S_TEXT/UTF8"

    .line 98
    .line 99
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-nez v3, :cond_4

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    const/16 v3, 0x18

    .line 107
    .line 108
    goto/16 :goto_1

    .line 109
    .line 110
    :sswitch_5
    const-string v5, "V_MPEGH/ISO/HEVC"

    .line 111
    .line 112
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-nez v3, :cond_5

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_5
    const/16 v3, 0x17

    .line 120
    .line 121
    goto/16 :goto_1

    .line 122
    .line 123
    :sswitch_6
    const-string v5, "S_TEXT/ASS"

    .line 124
    .line 125
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-nez v3, :cond_6

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_6
    const/16 v3, 0x16

    .line 133
    .line 134
    goto/16 :goto_1

    .line 135
    .line 136
    :sswitch_7
    const-string v5, "A_PCM/INT/LIT"

    .line 137
    .line 138
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-nez v3, :cond_7

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_7
    const/16 v3, 0x15

    .line 146
    .line 147
    goto/16 :goto_1

    .line 148
    .line 149
    :sswitch_8
    const-string v5, "A_DTS/EXPRESS"

    .line 150
    .line 151
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-nez v3, :cond_8

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_8
    const/16 v3, 0x14

    .line 159
    .line 160
    goto/16 :goto_1

    .line 161
    .line 162
    :sswitch_9
    const-string v5, "V_THEORA"

    .line 163
    .line 164
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-nez v3, :cond_9

    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_9
    const/16 v3, 0x13

    .line 173
    .line 174
    goto/16 :goto_1

    .line 175
    .line 176
    :sswitch_a
    const-string v5, "S_HDMV/PGS"

    .line 177
    .line 178
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-nez v3, :cond_a

    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :cond_a
    const/16 v3, 0x12

    .line 187
    .line 188
    goto/16 :goto_1

    .line 189
    .line 190
    :sswitch_b
    const-string v5, "V_VP9"

    .line 191
    .line 192
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-nez v3, :cond_b

    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :cond_b
    const/16 v3, 0x11

    .line 201
    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :sswitch_c
    const-string v5, "V_VP8"

    .line 205
    .line 206
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    if-nez v3, :cond_c

    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_c
    const/16 v3, 0x10

    .line 215
    .line 216
    goto/16 :goto_1

    .line 217
    .line 218
    :sswitch_d
    const-string v5, "A_DTS"

    .line 219
    .line 220
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    if-nez v3, :cond_d

    .line 225
    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :cond_d
    const/16 v3, 0xf

    .line 229
    .line 230
    goto/16 :goto_1

    .line 231
    .line 232
    :sswitch_e
    const-string v5, "A_AC3"

    .line 233
    .line 234
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    if-nez v3, :cond_e

    .line 239
    .line 240
    goto/16 :goto_0

    .line 241
    .line 242
    :cond_e
    const/16 v3, 0xe

    .line 243
    .line 244
    goto/16 :goto_1

    .line 245
    .line 246
    :sswitch_f
    const-string v5, "A_AAC"

    .line 247
    .line 248
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    if-nez v3, :cond_f

    .line 253
    .line 254
    goto/16 :goto_0

    .line 255
    .line 256
    :cond_f
    const/16 v3, 0xd

    .line 257
    .line 258
    goto/16 :goto_1

    .line 259
    .line 260
    :sswitch_10
    const-string v5, "A_DTS/LOSSLESS"

    .line 261
    .line 262
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    if-nez v3, :cond_10

    .line 267
    .line 268
    goto/16 :goto_0

    .line 269
    .line 270
    :cond_10
    const/16 v3, 0xc

    .line 271
    .line 272
    goto/16 :goto_1

    .line 273
    .line 274
    :sswitch_11
    const-string v5, "S_VOBSUB"

    .line 275
    .line 276
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    if-nez v3, :cond_11

    .line 281
    .line 282
    goto/16 :goto_0

    .line 283
    .line 284
    :cond_11
    const/16 v3, 0xb

    .line 285
    .line 286
    goto/16 :goto_1

    .line 287
    .line 288
    :sswitch_12
    const-string v5, "V_MPEG4/ISO/AVC"

    .line 289
    .line 290
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    if-nez v3, :cond_12

    .line 295
    .line 296
    goto/16 :goto_0

    .line 297
    .line 298
    :cond_12
    const/16 v3, 0xa

    .line 299
    .line 300
    goto/16 :goto_1

    .line 301
    .line 302
    :sswitch_13
    const-string v5, "V_MPEG4/ISO/ASP"

    .line 303
    .line 304
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    if-nez v3, :cond_13

    .line 309
    .line 310
    goto/16 :goto_0

    .line 311
    .line 312
    :cond_13
    const/16 v3, 0x9

    .line 313
    .line 314
    goto/16 :goto_1

    .line 315
    .line 316
    :sswitch_14
    const-string v5, "S_DVBSUB"

    .line 317
    .line 318
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    if-nez v3, :cond_14

    .line 323
    .line 324
    goto/16 :goto_0

    .line 325
    .line 326
    :cond_14
    move v3, v1

    .line 327
    goto/16 :goto_1

    .line 328
    .line 329
    :sswitch_15
    const-string v5, "V_MS/VFW/FOURCC"

    .line 330
    .line 331
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v3

    .line 335
    if-nez v3, :cond_15

    .line 336
    .line 337
    goto/16 :goto_0

    .line 338
    .line 339
    :cond_15
    const/4 v3, 0x7

    .line 340
    goto :goto_1

    .line 341
    :sswitch_16
    const-string v5, "A_MPEG/L3"

    .line 342
    .line 343
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v3

    .line 347
    if-nez v3, :cond_16

    .line 348
    .line 349
    goto/16 :goto_0

    .line 350
    .line 351
    :cond_16
    const/4 v3, 0x6

    .line 352
    goto :goto_1

    .line 353
    :sswitch_17
    const-string v5, "A_MPEG/L2"

    .line 354
    .line 355
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v3

    .line 359
    if-nez v3, :cond_17

    .line 360
    .line 361
    goto/16 :goto_0

    .line 362
    .line 363
    :cond_17
    const/4 v3, 0x5

    .line 364
    goto :goto_1

    .line 365
    :sswitch_18
    const-string v5, "A_VORBIS"

    .line 366
    .line 367
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v3

    .line 371
    if-nez v3, :cond_18

    .line 372
    .line 373
    goto/16 :goto_0

    .line 374
    .line 375
    :cond_18
    const/4 v3, 0x4

    .line 376
    goto :goto_1

    .line 377
    :sswitch_19
    const-string v5, "A_TRUEHD"

    .line 378
    .line 379
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result v3

    .line 383
    if-nez v3, :cond_19

    .line 384
    .line 385
    goto/16 :goto_0

    .line 386
    .line 387
    :cond_19
    move v3, v2

    .line 388
    goto :goto_1

    .line 389
    :sswitch_1a
    const-string v5, "A_MS/ACM"

    .line 390
    .line 391
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result v3

    .line 395
    if-nez v3, :cond_1a

    .line 396
    .line 397
    goto/16 :goto_0

    .line 398
    .line 399
    :cond_1a
    const/4 v3, 0x2

    .line 400
    goto :goto_1

    .line 401
    :sswitch_1b
    const-string v5, "V_MPEG4/ISO/SP"

    .line 402
    .line 403
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v3

    .line 407
    if-nez v3, :cond_1b

    .line 408
    .line 409
    goto/16 :goto_0

    .line 410
    .line 411
    :cond_1b
    const/4 v3, 0x1

    .line 412
    goto :goto_1

    .line 413
    :sswitch_1c
    const-string v5, "V_MPEG4/ISO/AP"

    .line 414
    .line 415
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result v3

    .line 419
    if-nez v3, :cond_1c

    .line 420
    .line 421
    goto/16 :goto_0

    .line 422
    .line 423
    :cond_1c
    move v3, v6

    .line 424
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 425
    .line 426
    .line 427
    new-instance v1, Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    .line 428
    .line 429
    const-string v2, "Unrecognized codec identifier."

    .line 430
    .line 431
    invoke-direct {v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    throw v1

    .line 435
    :pswitch_0
    new-instance v3, Ljava/util/ArrayList;

    .line 436
    .line 437
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 438
    .line 439
    .line 440
    iget-object v4, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    .line 441
    .line 442
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 446
    .line 447
    .line 448
    move-result-object v4

    .line 449
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 450
    .line 451
    .line 452
    move-result-object v5

    .line 453
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 454
    .line 455
    .line 456
    move-result-object v4

    .line 457
    iget-wide v10, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    .line 458
    .line 459
    invoke-virtual {v4, v10, v11}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 460
    .line 461
    .line 462
    move-result-object v4

    .line 463
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    .line 464
    .line 465
    .line 466
    move-result-object v4

    .line 467
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 475
    .line 476
    .line 477
    move-result-object v4

    .line 478
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    iget-wide v4, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    .line 483
    .line 484
    invoke-virtual {v1, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    .line 494
    .line 495
    const-string v1, "audio/opus"

    .line 496
    .line 497
    const/16 v4, 0x1680

    .line 498
    .line 499
    move/from16 v22, v4

    .line 500
    .line 501
    const/4 v5, 0x1

    .line 502
    :goto_2
    const/16 v25, -0x1

    .line 503
    .line 504
    goto/16 :goto_10

    .line 505
    .line 506
    :pswitch_1
    iget-object v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    .line 507
    .line 508
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 509
    .line 510
    .line 511
    move-result-object v1

    .line 512
    const-string v3, "audio/flac"

    .line 513
    .line 514
    :goto_3
    move-object v4, v1

    .line 515
    :goto_4
    const/4 v1, -0x1

    .line 516
    const/4 v5, 0x1

    .line 517
    goto/16 :goto_f

    .line 518
    .line 519
    :pswitch_2
    const-string v12, "audio/eac3"

    .line 520
    .line 521
    :goto_5
    const/4 v1, -0x1

    .line 522
    goto :goto_8

    .line 523
    :pswitch_3
    const-string/jumbo v12, "video/mpeg2"

    .line 524
    .line 525
    .line 526
    goto :goto_5

    .line 527
    :pswitch_4
    move-object v12, v14

    .line 528
    goto :goto_5

    .line 529
    :pswitch_5
    new-instance v1, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 530
    .line 531
    iget-object v3, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    .line 532
    .line 533
    invoke-direct {v1, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 534
    .line 535
    .line 536
    invoke-static {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/video/HevcConfig;->parse(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/video/HevcConfig;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    iget-object v3, v1, Lcom/mbridge/msdk/playercommon/exoplayer2/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 541
    .line 542
    iget v1, v1, Lcom/mbridge/msdk/playercommon/exoplayer2/video/HevcConfig;->nalUnitLengthFieldLength:I

    .line 543
    .line 544
    iput v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    .line 545
    .line 546
    const-string/jumbo v1, "video/hevc"

    .line 547
    .line 548
    .line 549
    :goto_6
    move-object v4, v3

    .line 550
    const/4 v5, 0x1

    .line 551
    move-object v3, v1

    .line 552
    :goto_7
    const/4 v1, -0x1

    .line 553
    goto/16 :goto_f

    .line 554
    .line 555
    :pswitch_6
    move-object v12, v13

    .line 556
    goto :goto_5

    .line 557
    :pswitch_7
    iget v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    .line 558
    .line 559
    invoke-static {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getPcmEncoding(I)I

    .line 560
    .line 561
    .line 562
    move-result v1

    .line 563
    if-nez v1, :cond_1d

    .line 564
    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    .line 566
    .line 567
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    iget v3, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    .line 574
    .line 575
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v1

    .line 588
    invoke-static {v15, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    .line 590
    .line 591
    move-object v12, v4

    .line 592
    goto :goto_5

    .line 593
    :cond_1d
    :goto_8
    const/4 v5, 0x1

    .line 594
    goto/16 :goto_d

    .line 595
    .line 596
    :pswitch_8
    const-string/jumbo v12, "video/x-unknown"

    .line 597
    .line 598
    .line 599
    goto :goto_5

    .line 600
    :pswitch_9
    move-object v12, v9

    .line 601
    goto :goto_5

    .line 602
    :pswitch_a
    const-string/jumbo v12, "video/x-vnd.on2.vp9"

    .line 603
    .line 604
    .line 605
    goto :goto_5

    .line 606
    :pswitch_b
    const-string/jumbo v12, "video/x-vnd.on2.vp8"

    .line 607
    .line 608
    .line 609
    goto :goto_5

    .line 610
    :pswitch_c
    const-string v12, "audio/vnd.dts"

    .line 611
    .line 612
    goto :goto_5

    .line 613
    :pswitch_d
    const-string v12, "audio/ac3"

    .line 614
    .line 615
    goto :goto_5

    .line 616
    :pswitch_e
    iget-object v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    .line 617
    .line 618
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 619
    .line 620
    .line 621
    move-result-object v1

    .line 622
    const-string v3, "audio/mp4a-latm"

    .line 623
    .line 624
    goto :goto_3

    .line 625
    :pswitch_f
    const-string v12, "audio/vnd.dts.hd"

    .line 626
    .line 627
    goto :goto_5

    .line 628
    :pswitch_10
    iget-object v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    .line 629
    .line 630
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 631
    .line 632
    .line 633
    move-result-object v1

    .line 634
    move-object v4, v1

    .line 635
    move-object v3, v8

    .line 636
    goto :goto_4

    .line 637
    :pswitch_11
    new-instance v1, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 638
    .line 639
    iget-object v3, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    .line 640
    .line 641
    invoke-direct {v1, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 642
    .line 643
    .line 644
    invoke-static {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/video/AvcConfig;->parse(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/video/AvcConfig;

    .line 645
    .line 646
    .line 647
    move-result-object v1

    .line 648
    iget-object v3, v1, Lcom/mbridge/msdk/playercommon/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 649
    .line 650
    iget v1, v1, Lcom/mbridge/msdk/playercommon/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    .line 651
    .line 652
    iput v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    .line 653
    .line 654
    const-string/jumbo v1, "video/avc"

    .line 655
    .line 656
    .line 657
    goto :goto_6

    .line 658
    :pswitch_12
    iget-object v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    .line 659
    .line 660
    aget-byte v3, v1, v6

    .line 661
    .line 662
    const/4 v5, 0x1

    .line 663
    aget-byte v4, v1, v5

    .line 664
    .line 665
    const/4 v10, 0x2

    .line 666
    aget-byte v11, v1, v10

    .line 667
    .line 668
    aget-byte v1, v1, v2

    .line 669
    .line 670
    const/4 v12, 0x4

    .line 671
    new-array v12, v12, [B

    .line 672
    .line 673
    aput-byte v3, v12, v6

    .line 674
    .line 675
    aput-byte v4, v12, v5

    .line 676
    .line 677
    aput-byte v11, v12, v10

    .line 678
    .line 679
    aput-byte v1, v12, v2

    .line 680
    .line 681
    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 682
    .line 683
    .line 684
    move-result-object v1

    .line 685
    move-object v4, v1

    .line 686
    move-object v3, v7

    .line 687
    goto/16 :goto_7

    .line 688
    .line 689
    :pswitch_13
    const/4 v5, 0x1

    .line 690
    new-instance v1, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 691
    .line 692
    iget-object v3, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    .line 693
    .line 694
    invoke-direct {v1, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 695
    .line 696
    .line 697
    invoke-static {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->parseFourCcPrivate(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;

    .line 698
    .line 699
    .line 700
    move-result-object v1

    .line 701
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 702
    .line 703
    check-cast v3, Ljava/lang/String;

    .line 704
    .line 705
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 706
    .line 707
    check-cast v1, Ljava/util/List;

    .line 708
    .line 709
    :goto_9
    move-object v4, v1

    .line 710
    goto/16 :goto_7

    .line 711
    .line 712
    :pswitch_14
    const/4 v5, 0x1

    .line 713
    const-string v1, "audio/mpeg"

    .line 714
    .line 715
    :goto_a
    move-object/from16 v3, v16

    .line 716
    .line 717
    const/16 v22, 0x1000

    .line 718
    .line 719
    goto/16 :goto_2

    .line 720
    .line 721
    :pswitch_15
    const/4 v5, 0x1

    .line 722
    const-string v1, "audio/mpeg-L2"

    .line 723
    .line 724
    goto :goto_a

    .line 725
    :pswitch_16
    const/4 v5, 0x1

    .line 726
    iget-object v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    .line 727
    .line 728
    invoke-static {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->parseVorbisCodecPrivate([B)Ljava/util/List;

    .line 729
    .line 730
    .line 731
    move-result-object v3

    .line 732
    const-string v1, "audio/vorbis"

    .line 733
    .line 734
    const/16 v4, 0x2000

    .line 735
    .line 736
    move/from16 v22, v4

    .line 737
    .line 738
    goto/16 :goto_2

    .line 739
    .line 740
    :pswitch_17
    const/4 v5, 0x1

    .line 741
    new-instance v1, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    .line 742
    .line 743
    invoke-direct {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;-><init>()V

    .line 744
    .line 745
    .line 746
    iput-object v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    .line 747
    .line 748
    const-string v12, "audio/true-hd"

    .line 749
    .line 750
    :goto_b
    const/4 v1, -0x1

    .line 751
    goto :goto_d

    .line 752
    :pswitch_18
    const/4 v5, 0x1

    .line 753
    new-instance v1, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 754
    .line 755
    iget-object v3, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    .line 756
    .line 757
    invoke-direct {v1, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 758
    .line 759
    .line 760
    invoke-static {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->parseMsAcmCodecPrivate(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Z

    .line 761
    .line 762
    .line 763
    move-result v1

    .line 764
    if-eqz v1, :cond_1e

    .line 765
    .line 766
    iget v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    .line 767
    .line 768
    invoke-static {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getPcmEncoding(I)I

    .line 769
    .line 770
    .line 771
    move-result v1

    .line 772
    if-nez v1, :cond_1f

    .line 773
    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    .line 775
    .line 776
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    .line 781
    .line 782
    iget v3, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    .line 783
    .line 784
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 785
    .line 786
    .line 787
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    .line 789
    .line 790
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    .line 792
    .line 793
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 794
    .line 795
    .line 796
    move-result-object v1

    .line 797
    invoke-static {v15, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    .line 799
    .line 800
    :goto_c
    move-object v12, v4

    .line 801
    goto :goto_b

    .line 802
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    .line 803
    .line 804
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 805
    .line 806
    .line 807
    const-string v3, "Non-PCM MS/ACM is unsupported. Setting mimeType to "

    .line 808
    .line 809
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    .line 811
    .line 812
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    .line 814
    .line 815
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 816
    .line 817
    .line 818
    move-result-object v1

    .line 819
    invoke-static {v15, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    .line 821
    .line 822
    goto :goto_c

    .line 823
    :cond_1f
    :goto_d
    move-object v3, v12

    .line 824
    move-object/from16 v4, v16

    .line 825
    .line 826
    goto :goto_f

    .line 827
    :pswitch_19
    const/4 v5, 0x1

    .line 828
    iget-object v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    .line 829
    .line 830
    if-nez v1, :cond_20

    .line 831
    .line 832
    move-object/from16 v1, v16

    .line 833
    .line 834
    goto :goto_e

    .line 835
    :cond_20
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 836
    .line 837
    .line 838
    move-result-object v1

    .line 839
    :goto_e
    const-string/jumbo v3, "video/mp4v-es"

    .line 840
    .line 841
    .line 842
    goto/16 :goto_9

    .line 843
    .line 844
    :goto_f
    move/from16 v25, v1

    .line 845
    .line 846
    move-object v1, v3

    .line 847
    move-object v3, v4

    .line 848
    const/16 v22, -0x1

    .line 849
    .line 850
    :goto_10
    iget-boolean v4, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    .line 851
    .line 852
    iget-boolean v10, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagForced:Z

    .line 853
    .line 854
    if-eqz v10, :cond_21

    .line 855
    .line 856
    const/4 v6, 0x2

    .line 857
    :cond_21
    or-int/2addr v4, v6

    .line 858
    invoke-static {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    .line 859
    .line 860
    .line 861
    move-result v6

    .line 862
    if-eqz v6, :cond_22

    .line 863
    .line 864
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 865
    .line 866
    .line 867
    move-result-object v18

    .line 868
    iget v2, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 869
    .line 870
    iget v6, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    .line 871
    .line 872
    iget-object v7, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    .line 873
    .line 874
    iget-object v8, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    .line 875
    .line 876
    const/16 v20, 0x0

    .line 877
    .line 878
    const/16 v21, -0x1

    .line 879
    .line 880
    move-object/from16 v19, v1

    .line 881
    .line 882
    move/from16 v23, v2

    .line 883
    .line 884
    move/from16 v24, v6

    .line 885
    .line 886
    move-object/from16 v26, v3

    .line 887
    .line 888
    move-object/from16 v27, v7

    .line 889
    .line 890
    move/from16 v28, v4

    .line 891
    .line 892
    move-object/from16 v29, v8

    .line 893
    .line 894
    invoke-static/range {v18 .. v29}, Lcom/mbridge/msdk/playercommon/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 895
    .line 896
    .line 897
    move-result-object v1

    .line 898
    goto/16 :goto_17

    .line 899
    .line 900
    :cond_22
    invoke-static {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    .line 901
    .line 902
    .line 903
    move-result v5

    .line 904
    if-eqz v5, :cond_28

    .line 905
    .line 906
    iget v2, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    .line 907
    .line 908
    if-nez v2, :cond_25

    .line 909
    .line 910
    iget v2, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 911
    .line 912
    const/4 v4, -0x1

    .line 913
    if-ne v2, v4, :cond_23

    .line 914
    .line 915
    iget v2, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    .line 916
    .line 917
    :cond_23
    iput v2, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 918
    .line 919
    iget v2, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    .line 920
    .line 921
    if-ne v2, v4, :cond_24

    .line 922
    .line 923
    iget v2, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    .line 924
    .line 925
    :cond_24
    iput v2, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    .line 926
    .line 927
    goto :goto_11

    .line 928
    :cond_25
    const/4 v4, -0x1

    .line 929
    :goto_11
    iget v2, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 930
    .line 931
    if-eq v2, v4, :cond_26

    .line 932
    .line 933
    iget v5, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    .line 934
    .line 935
    if-eq v5, v4, :cond_26

    .line 936
    .line 937
    iget v4, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    .line 938
    .line 939
    mul-int/2addr v4, v2

    .line 940
    int-to-float v2, v4

    .line 941
    iget v4, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    .line 942
    .line 943
    mul-int/2addr v4, v5

    .line 944
    int-to-float v4, v4

    .line 945
    div-float/2addr v2, v4

    .line 946
    :goto_12
    move/from16 v28, v2

    .line 947
    .line 948
    goto :goto_13

    .line 949
    :cond_26
    const/high16 v2, -0x40800000    # -1.0f

    .line 950
    .line 951
    goto :goto_12

    .line 952
    :goto_13
    iget-boolean v2, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    .line 953
    .line 954
    if-eqz v2, :cond_27

    .line 955
    .line 956
    invoke-direct/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getHdrStaticInfo()[B

    .line 957
    .line 958
    .line 959
    move-result-object v2

    .line 960
    new-instance v4, Lcom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;

    .line 961
    .line 962
    iget v5, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    .line 963
    .line 964
    iget v6, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    .line 965
    .line 966
    iget v7, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    .line 967
    .line 968
    invoke-direct {v4, v5, v6, v7, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;-><init>(III[B)V

    .line 969
    .line 970
    .line 971
    move-object/from16 v31, v4

    .line 972
    .line 973
    goto :goto_14

    .line 974
    :cond_27
    move-object/from16 v31, v16

    .line 975
    .line 976
    :goto_14
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 977
    .line 978
    .line 979
    move-result-object v18

    .line 980
    iget v2, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    .line 981
    .line 982
    iget v4, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    .line 983
    .line 984
    iget-object v5, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    .line 985
    .line 986
    iget v6, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 987
    .line 988
    iget-object v7, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    .line 989
    .line 990
    const/high16 v25, -0x40800000    # -1.0f

    .line 991
    .line 992
    const/16 v27, -0x1

    .line 993
    .line 994
    const/16 v20, 0x0

    .line 995
    .line 996
    const/16 v21, -0x1

    .line 997
    .line 998
    move-object/from16 v19, v1

    .line 999
    .line 1000
    move/from16 v23, v2

    .line 1001
    .line 1002
    move/from16 v24, v4

    .line 1003
    .line 1004
    move-object/from16 v26, v3

    .line 1005
    .line 1006
    move-object/from16 v29, v5

    .line 1007
    .line 1008
    move/from16 v30, v6

    .line 1009
    .line 1010
    move-object/from16 v32, v7

    .line 1011
    .line 1012
    invoke-static/range {v18 .. v32}, Lcom/mbridge/msdk/playercommon/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lcom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v1

    .line 1016
    const/4 v5, 0x2

    .line 1017
    goto/16 :goto_17

    .line 1018
    .line 1019
    :cond_28
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1020
    .line 1021
    .line 1022
    move-result v5

    .line 1023
    if-eqz v5, :cond_29

    .line 1024
    .line 1025
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v3

    .line 1029
    iget-object v5, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    .line 1030
    .line 1031
    iget-object v6, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    .line 1032
    .line 1033
    invoke-static {v3, v1, v4, v5, v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lcom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v1

    .line 1037
    :goto_15
    move v5, v2

    .line 1038
    goto/16 :goto_17

    .line 1039
    .line 1040
    :cond_29
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1041
    .line 1042
    .line 1043
    move-result v5

    .line 1044
    if-eqz v5, :cond_2a

    .line 1045
    .line 1046
    new-instance v3, Ljava/util/ArrayList;

    .line 1047
    .line 1048
    const/4 v5, 0x2

    .line 1049
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1050
    .line 1051
    .line 1052
    invoke-static {}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->access$300()[B

    .line 1053
    .line 1054
    .line 1055
    move-result-object v5

    .line 1056
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1057
    .line 1058
    .line 1059
    iget-object v5, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    .line 1060
    .line 1061
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1062
    .line 1063
    .line 1064
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v18

    .line 1068
    iget-object v5, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    .line 1069
    .line 1070
    iget-object v6, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    .line 1071
    .line 1072
    const/16 v24, -0x1

    .line 1073
    .line 1074
    const-wide v26, 0x7fffffffffffffffL

    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    const/16 v20, 0x0

    .line 1080
    .line 1081
    const/16 v21, -0x1

    .line 1082
    .line 1083
    move-object/from16 v19, v1

    .line 1084
    .line 1085
    move/from16 v22, v4

    .line 1086
    .line 1087
    move-object/from16 v23, v5

    .line 1088
    .line 1089
    move-object/from16 v25, v6

    .line 1090
    .line 1091
    move-object/from16 v28, v3

    .line 1092
    .line 1093
    invoke-static/range {v18 .. v28}, Lcom/mbridge/msdk/playercommon/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lcom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v1

    .line 1097
    goto :goto_15

    .line 1098
    :cond_2a
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1099
    .line 1100
    .line 1101
    move-result v5

    .line 1102
    if-nez v5, :cond_2c

    .line 1103
    .line 1104
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1105
    .line 1106
    .line 1107
    move-result v5

    .line 1108
    if-nez v5, :cond_2c

    .line 1109
    .line 1110
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1111
    .line 1112
    .line 1113
    move-result v5

    .line 1114
    if-eqz v5, :cond_2b

    .line 1115
    .line 1116
    goto :goto_16

    .line 1117
    :cond_2b
    new-instance v1, Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    .line 1118
    .line 1119
    const-string v2, "Unexpected MIME type."

    .line 1120
    .line 1121
    invoke-direct {v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    .line 1122
    .line 1123
    .line 1124
    throw v1

    .line 1125
    :cond_2c
    :goto_16
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v18

    .line 1129
    iget-object v5, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    .line 1130
    .line 1131
    iget-object v6, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    .line 1132
    .line 1133
    const/16 v20, 0x0

    .line 1134
    .line 1135
    const/16 v21, -0x1

    .line 1136
    .line 1137
    move-object/from16 v19, v1

    .line 1138
    .line 1139
    move/from16 v22, v4

    .line 1140
    .line 1141
    move-object/from16 v23, v3

    .line 1142
    .line 1143
    move-object/from16 v24, v5

    .line 1144
    .line 1145
    move-object/from16 v25, v6

    .line 1146
    .line 1147
    invoke-static/range {v18 .. v25}, Lcom/mbridge/msdk/playercommon/exoplayer2/Format;->createImageSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lcom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v1

    .line 1151
    goto :goto_15

    .line 1152
    :goto_17
    iget v2, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->number:I

    .line 1153
    .line 1154
    move-object/from16 v3, p1

    .line 1155
    .line 1156
    invoke-interface {v3, v2, v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v2

    .line 1160
    iput-object v2, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    .line 1161
    .line 1162
    invoke-interface {v2, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->format(Lcom/mbridge/msdk/playercommon/exoplayer2/Format;)V

    .line 1163
    .line 1164
    .line 1165
    return-void

    .line 1166
    nop

    .line 1167
    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_1c
        -0x7ce7f3b0 -> :sswitch_1b
        -0x76567dc0 -> :sswitch_1a
        -0x6a615338 -> :sswitch_19
        -0x672350af -> :sswitch_18
        -0x585f4fce -> :sswitch_17
        -0x585f4fcd -> :sswitch_16
        -0x51dc40b2 -> :sswitch_15
        -0x37a9c464 -> :sswitch_14
        -0x2016c535 -> :sswitch_13
        -0x2016c4e5 -> :sswitch_12
        -0x19552dbd -> :sswitch_11
        -0x1538b2ba -> :sswitch_10
        0x3c02325 -> :sswitch_f
        0x3c02353 -> :sswitch_e
        0x3c030c5 -> :sswitch_d
        0x4e86155 -> :sswitch_c
        0x4e86156 -> :sswitch_b
        0x5e8da3e -> :sswitch_a
        0x1a8350d6 -> :sswitch_9
        0x2056f406 -> :sswitch_8
        0x2b453ce4 -> :sswitch_7
        0x2c0618eb -> :sswitch_6
        0x32fdf009 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_19
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_c
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public outputPendingSampleMetadata()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->outputPendingSampleMetadata(Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->reset()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
