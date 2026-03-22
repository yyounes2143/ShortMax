.class public Lcom/ss/ttvideoengine/model/BareVideoInfo;
.super Lcom/ss/ttvideoengine/model/VideoInfo;
.source "BareVideoInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;,
        Lcom/ss/ttvideoengine/model/BareVideoInfo$BareGearInfo;,
        Lcom/ss/ttvideoengine/model/BareVideoInfo$GearType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TTVideoEngine.BareVideoInfo"


# instance fields
.field private mBareGearInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/model/BareVideoInfo$BareGearInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBitrate:J

.field private mBuilder:Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;

.field private mCheckInfo:Ljava/lang/String;

.field private mCodecType:Ljava/lang/String;

.field private mDuration:J

.field private mExpire:J

.field private mFileHash:Ljava/lang/String;

.field private mFileId:Ljava/lang/String;

.field private mFormat:Ljava/lang/String;

.field private mGear:Ljava/lang/String;

.field private mMediaType:I

.field private mQuality:Ljava/lang/String;

.field private mQualityDesc:Ljava/lang/String;

.field private mResolution:Lcom/ss/ttvideoengine/Resolution;

.field private mSegmentSizeInfo:Ljava/lang/String;

.field private mSize:J

.field private mSpadea:Ljava/lang/String;

.field private mUrlExpires:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVHeight:I

.field private mVWidth:I


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/model/VideoInfo;-><init>(Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mMediaType:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mVWidth:I

    .line 5
    iput v1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mVHeight:I

    const-wide/16 v1, 0x0

    .line 6
    iput-wide v1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mBitrate:J

    .line 7
    iput-wide v1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mDuration:J

    .line 8
    iput-wide v1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mSize:J

    const-wide/16 v1, -0x1

    .line 9
    iput-wide v1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mExpire:J

    .line 10
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mFileHash:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mFileId:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mCodecType:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mFormat:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mCheckInfo:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 16
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mQuality:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mGear:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mSpadea:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mQualityDesc:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mSegmentSizeInfo:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mUrls:Ljava/util/List;

    .line 22
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mUrlExpires:Ljava/util/List;

    .line 23
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mBareGearInfo:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/model/BareVideoInfo$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/model/BareVideoInfo;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lcom/ss/ttvideoengine/model/BareVideoInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mCodecType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$102(Lcom/ss/ttvideoengine/model/BareVideoInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mMediaType:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1102(Lcom/ss/ttvideoengine/model/BareVideoInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mFormat:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1202(Lcom/ss/ttvideoengine/model/BareVideoInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mCheckInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1302(Lcom/ss/ttvideoengine/model/BareVideoInfo;Lcom/ss/ttvideoengine/Resolution;)Lcom/ss/ttvideoengine/Resolution;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1402(Lcom/ss/ttvideoengine/model/BareVideoInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mQuality:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1502(Lcom/ss/ttvideoengine/model/BareVideoInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mQualityDesc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1602(Lcom/ss/ttvideoengine/model/BareVideoInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mGear:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1702(Lcom/ss/ttvideoengine/model/BareVideoInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mSpadea:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1802(Lcom/ss/ttvideoengine/model/BareVideoInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mUrls:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1902(Lcom/ss/ttvideoengine/model/BareVideoInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mUrlExpires:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2002(Lcom/ss/ttvideoengine/model/BareVideoInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mBareGearInfo:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$202(Lcom/ss/ttvideoengine/model/BareVideoInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mVWidth:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2102(Lcom/ss/ttvideoengine/model/BareVideoInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mSegmentSizeInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2202(Lcom/ss/ttvideoengine/model/BareVideoInfo;Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mBuilder:Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$302(Lcom/ss/ttvideoengine/model/BareVideoInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mVHeight:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$402(Lcom/ss/ttvideoengine/model/BareVideoInfo;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mBitrate:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$502(Lcom/ss/ttvideoengine/model/BareVideoInfo;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mDuration:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$602(Lcom/ss/ttvideoengine/model/BareVideoInfo;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mSize:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$702(Lcom/ss/ttvideoengine/model/BareVideoInfo;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mExpire:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$802(Lcom/ss/ttvideoengine/model/BareVideoInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mFileHash:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$902(Lcom/ss/ttvideoengine/model/BareVideoInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mFileId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method


# virtual methods
.method public copyInfo()Lcom/ss/ttvideoengine/model/BareVideoInfo;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mBuilder:Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->build()Lcom/ss/ttvideoengine/model/BareVideoInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copyInfo()Lcom/ss/ttvideoengine/model/VideoInfo;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->copyInfo()Lcom/ss/ttvideoengine/model/BareVideoInfo;

    move-result-object v0

    return-object v0
.end method

.method public fromMediaInfoJsonObject(Lorg/json/JSONObject;)I
    .locals 5

    .line 1
    :try_start_0
    const-string v0, "file_id"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mFileId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "media_type"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "audio"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    sget v0, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_AUDIO:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_0
    sget v0, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_VIDEO:I

    .line 30
    .line 31
    :goto_0
    iput v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mMediaType:I

    .line 32
    .line 33
    const-string v0, "file_size"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    iput-wide v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mSize:J

    .line 40
    .line 41
    const-string v0, "bitrate"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    int-to-long v0, v0

    .line 48
    iput-wide v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mBitrate:J

    .line 49
    .line 50
    const-string v0, "quality"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mQuality:Ljava/lang/String;

    .line 57
    .line 58
    const-string v0, "definition"

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/VideoInfo;->mDefinition:Ljava/lang/String;

    .line 65
    .line 66
    const-string v0, "resolution"

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-static {v0}, Lcom/ss/ttvideoengine/Resolution;->valueOf(I)Lcom/ss/ttvideoengine/Resolution;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 78
    .line 79
    const-string/jumbo v0, "width"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iput v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mVWidth:I

    .line 87
    .line 88
    const-string v0, "height"

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iput v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mVHeight:I

    .line 95
    .line 96
    const-string v0, "codec"

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mCodecType:Ljava/lang/String;

    .line 103
    .line 104
    const-string/jumbo v0, "urls"

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    move v2, v1

    .line 112
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-ge v2, v3, :cond_3

    .line 117
    .line 118
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-nez v4, :cond_2

    .line 127
    .line 128
    iget-object v4, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mUrls:Ljava/util/List;

    .line 129
    .line 130
    if-nez v4, :cond_1

    .line 131
    .line 132
    new-instance v4, Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .line 136
    .line 137
    iput-object v4, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mUrls:Ljava/util/List;

    .line 138
    .line 139
    :cond_1
    iget-object v4, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mUrls:Ljava/util/List;

    .line 140
    .line 141
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_3
    const-string v0, "file_hash"

    .line 148
    .line 149
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mFileHash:Ljava/lang/String;

    .line 154
    .line 155
    const-string v0, "segment_size_info"

    .line 156
    .line 157
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mSegmentSizeInfo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .line 163
    return v1

    .line 164
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    const-string v1, "[GearStrategy]fromMediaInfoJsonObject exception="

    .line 170
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    const-string v0, "TTVideoEngine.BareVideoInfo"

    .line 182
    .line 183
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    const/4 p1, -0x1

    .line 187
    return p1
.end method

.method public getBitrateFitterInfo()Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getMediatype()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mMediaType:I

    .line 2
    .line 3
    return v0
.end method

.method public getResolution()Lcom/ss/ttvideoengine/Resolution;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 2
    .line 3
    return-object v0
.end method

.method public getValueBool(I)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public getValueInt(I)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_3

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const/16 v0, 0x1b

    .line 11
    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-wide v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mDuration:J

    .line 17
    .line 18
    :goto_0
    long-to-int p1, v0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mBitrate:J

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    iget p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mVHeight:I

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_3
    iget p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mVWidth:I

    .line 27
    .line 28
    :goto_1
    return p1
.end method

.method public getValueLong(I)J
    .locals 2

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x1e

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-wide v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mExpire:J

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mSize:J

    .line 16
    .line 17
    :goto_0
    return-wide v0
.end method

.method public getValueStr(I)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    if-eq p1, v0, :cond_9

    .line 3
    .line 4
    const/4 v0, 0x6

    .line 5
    if-eq p1, v0, :cond_8

    .line 6
    .line 7
    const/4 v0, 0x7

    .line 8
    if-eq p1, v0, :cond_7

    .line 9
    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    if-eq p1, v0, :cond_6

    .line 13
    .line 14
    const/16 v0, 0xf

    .line 15
    .line 16
    if-eq p1, v0, :cond_5

    .line 17
    .line 18
    const/16 v0, 0x12

    .line 19
    .line 20
    if-eq p1, v0, :cond_4

    .line 21
    .line 22
    const/16 v0, 0x1c

    .line 23
    .line 24
    if-eq p1, v0, :cond_3

    .line 25
    .line 26
    const/16 v0, 0x35

    .line 27
    .line 28
    if-eq p1, v0, :cond_2

    .line 29
    .line 30
    const/16 v0, 0x1f

    .line 31
    .line 32
    if-eq p1, v0, :cond_1

    .line 33
    .line 34
    const/16 v0, 0x20

    .line 35
    .line 36
    if-eq p1, v0, :cond_0

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mQualityDesc:Ljava/lang/String;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mCheckInfo:Ljava/lang/String;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mSegmentSizeInfo:Ljava/lang/String;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mFileId:Ljava/lang/String;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mQuality:Ljava/lang/String;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_5
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mFileHash:Ljava/lang/String;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_6
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mCodecType:Ljava/lang/String;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_7
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mGear:Ljava/lang/String;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_8
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mFormat:Ljava/lang/String;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_9
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mSpadea:Ljava/lang/String;

    .line 68
    .line 69
    :goto_0
    return-object p1
.end method

.method public getValueStrArr(I)[Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    const/16 v0, 0x33

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    new-array p1, v1, [Ljava/lang/String;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mUrlExpires:Ljava/util/List;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    new-array v0, v1, [Ljava/lang/String;

    .line 18
    .line 19
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, [Ljava/lang/String;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    new-array p1, v1, [Ljava/lang/String;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mUrls:Ljava/util/List;

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    new-array v0, v1, [Ljava/lang/String;

    .line 34
    .line 35
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, [Ljava/lang/String;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    new-array p1, v1, [Ljava/lang/String;

    .line 43
    .line 44
    :goto_0
    return-object p1
.end method

.method public setValue(I[Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x33

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mUrlExpires:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mUrls:Ljava/util/List;

    .line 27
    .line 28
    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public toBashJsonObject()Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/ss/ttvideoengine/model/VideoInfo;->toBashJsonObject()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public toMediaInfo()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x1c

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "file_id"

    .line 13
    .line 14
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->getMediatype()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    sget v2, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_VIDEO:I

    .line 22
    .line 23
    if-ne v1, v2, :cond_0

    .line 24
    .line 25
    const-string/jumbo v1, "video"

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v1, "audio"

    .line 30
    .line 31
    :goto_0
    const-string v2, "media_type"

    .line 32
    .line 33
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    const/16 v1, 0xc

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->getValueLong(I)J

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v2, "file_size"

    .line 47
    .line 48
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    const/4 v1, 0x3

    .line 52
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->getValueInt(I)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v2, "bitrate"

    .line 61
    .line 62
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    const/16 v1, 0x12

    .line 66
    .line 67
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string v2, "quality"

    .line 72
    .line 73
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    const/4 v1, 0x7

    .line 77
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const-string v2, "definition"

    .line 82
    .line 83
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 87
    .line 88
    if-eqz v1, :cond_1

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/Resolution;->getIndex()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    const/4 v1, 0x0

    .line 96
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const-string v2, "resolution"

    .line 101
    .line 102
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    const/4 v1, 0x1

    .line 106
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->getValueInt(I)I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const-string/jumbo v2, "width"

    .line 115
    .line 116
    .line 117
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    const/4 v1, 0x2

    .line 121
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->getValueInt(I)I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    const-string v2, "height"

    .line 130
    .line 131
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    const/16 v1, 0x8

    .line 135
    .line 136
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    const-string v2, "codec"

    .line 141
    .line 142
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    const/16 v1, 0x10

    .line 146
    .line 147
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->getValueStrArr(I)[Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    const-string/jumbo v2, "urls"

    .line 152
    .line 153
    .line 154
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    const/16 v1, 0xf

    .line 158
    .line 159
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    const-string v2, "file_hash"

    .line 164
    .line 165
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    const/16 v1, 0x35

    .line 169
    .line 170
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    const-string v2, "segment_size_info"

    .line 175
    .line 176
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/VideoInfo;->mPreloadGear:Lorg/json/JSONObject;

    .line 180
    .line 181
    const-string v2, "preload_gear_data"

    .line 182
    .line 183
    if-eqz v1, :cond_2

    .line 184
    .line 185
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    :cond_2
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mBareGearInfo:Ljava/util/List;

    .line 189
    .line 190
    if-eqz v1, :cond_6

    .line 191
    .line 192
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 193
    .line 194
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 195
    .line 196
    .line 197
    iget-object v3, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo;->mBareGearInfo:Ljava/util/List;

    .line 198
    .line 199
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    if-eqz v4, :cond_5

    .line 208
    .line 209
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    check-cast v4, Lcom/ss/ttvideoengine/model/BareVideoInfo$BareGearInfo;

    .line 214
    .line 215
    iget-object v5, v4, Lcom/ss/ttvideoengine/model/BareVideoInfo$BareGearInfo;->mGearType:Lcom/ss/ttvideoengine/model/BareVideoInfo$GearType;

    .line 216
    .line 217
    sget-object v6, Lcom/ss/ttvideoengine/model/BareVideoInfo$GearType;->Frame:Lcom/ss/ttvideoengine/model/BareVideoInfo$GearType;

    .line 218
    .line 219
    if-ne v5, v6, :cond_4

    .line 220
    .line 221
    new-instance v5, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .line 225
    .line 226
    const-string v6, "g_"

    .line 227
    .line 228
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    iget v6, v4, Lcom/ss/ttvideoengine/model/BareVideoInfo$BareGearInfo;->key:I

    .line 232
    .line 233
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    iget v4, v4, Lcom/ss/ttvideoengine/model/BareVideoInfo$BareGearInfo;->value:I

    .line 241
    .line 242
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 243
    .line 244
    .line 245
    goto :goto_2

    .line 246
    :catch_0
    move-exception v1

    .line 247
    goto :goto_3

    .line 248
    :cond_4
    sget-object v6, Lcom/ss/ttvideoengine/model/BareVideoInfo$GearType;->TimeInSecond:Lcom/ss/ttvideoengine/model/BareVideoInfo$GearType;

    .line 249
    .line 250
    if-ne v5, v6, :cond_3

    .line 251
    .line 252
    new-instance v5, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .line 256
    .line 257
    const-string/jumbo v6, "t_"

    .line 258
    .line 259
    .line 260
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    iget v6, v4, Lcom/ss/ttvideoengine/model/BareVideoInfo$BareGearInfo;->key:I

    .line 264
    .line 265
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    iget v4, v4, Lcom/ss/ttvideoengine/model/BareVideoInfo$BareGearInfo;->value:I

    .line 273
    .line 274
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 275
    .line 276
    .line 277
    goto :goto_2

    .line 278
    :cond_5
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .line 280
    .line 281
    goto :goto_4

    .line 282
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 283
    .line 284
    .line 285
    :cond_6
    :goto_4
    return-object v0
.end method
