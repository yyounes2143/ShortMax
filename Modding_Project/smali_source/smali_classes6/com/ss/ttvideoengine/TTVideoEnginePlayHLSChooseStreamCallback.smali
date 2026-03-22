.class public abstract Lcom/ss/ttvideoengine/TTVideoEnginePlayHLSChooseStreamCallback;
.super Ljava/lang/Object;
.source "TTVideoEnginePlayHLSChooseStreamCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static convert([Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;)Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;
    .locals 15

    .line 1
    if-eqz p0, :cond_7

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_5

    .line 7
    .line 8
    :cond_0
    new-instance v0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;-><init>()V

    .line 11
    .line 12
    .line 13
    array-length v1, p0

    .line 14
    new-array v2, v1, [Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;

    .line 15
    .line 16
    iput-object v2, v0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;->variantStreams:[Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;

    .line 17
    .line 18
    new-instance v2, Ljava/util/LinkedList;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    move v4, v3

    .line 25
    :goto_0
    if-ge v4, v1, :cond_5

    .line 26
    .line 27
    aget-object v5, p0, v4

    .line 28
    .line 29
    new-instance v6, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;

    .line 30
    .line 31
    invoke-direct {v6}, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v7, v5, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;->mAudioGroup:Ljava/lang/String;

    .line 35
    .line 36
    iput-object v7, v6, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;->audioGroupId:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v7, v5, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;->mVideoGroup:Ljava/lang/String;

    .line 39
    .line 40
    iput-object v7, v6, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;->videoGroupId:Ljava/lang/String;

    .line 41
    .line 42
    iget v7, v5, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;->mBandWidth:I

    .line 43
    .line 44
    iput v7, v6, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;->bandwidth:I

    .line 45
    .line 46
    iget v7, v5, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;->mAverageBandwidth:I

    .line 47
    .line 48
    iput v7, v6, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;->averageBandwidth:I

    .line 49
    .line 50
    iget-object v7, v5, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;->mCodecs:Ljava/lang/String;

    .line 51
    .line 52
    iput-object v7, v6, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;->codecs:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v7, v5, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;->mClosedCaptions:Ljava/lang/String;

    .line 55
    .line 56
    iput-object v7, v6, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;->closedCaptionsGroupId:Ljava/lang/String;

    .line 57
    .line 58
    iget v7, v5, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;->mFrameRate:F

    .line 59
    .line 60
    iput v7, v6, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;->frameRate:F

    .line 61
    .line 62
    iget-object v7, v5, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;->mHDCPLevel:Ljava/lang/String;

    .line 63
    .line 64
    iput-object v7, v6, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;->hdcpLevel:Ljava/lang/String;

    .line 65
    .line 66
    new-instance v7, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    iget v8, v5, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;->mWidth:I

    .line 72
    .line 73
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string/jumbo v8, "x"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget v8, v5, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;->mHeight:I

    .line 83
    .line 84
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    iput-object v7, v6, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;->resolution:Ljava/lang/String;

    .line 92
    .line 93
    iget-object v7, v5, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;->mSubtitlesGroup:Ljava/lang/String;

    .line 94
    .line 95
    iput-object v7, v6, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;->subtitleGroupId:Ljava/lang/String;

    .line 96
    .line 97
    iget-object v7, v0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;->variantStreams:[Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;

    .line 98
    .line 99
    aput-object v6, v7, v4

    .line 100
    .line 101
    iget-object v6, v5, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;->mPlaylists:[Lcom/ss/ttm/player/HLSChooseStreamInterface$Playlist;

    .line 102
    .line 103
    if-eqz v6, :cond_4

    .line 104
    .line 105
    array-length v7, v6

    .line 106
    if-nez v7, :cond_1

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_1
    array-length v6, v6

    .line 110
    move v7, v3

    .line 111
    :goto_1
    if-ge v7, v6, :cond_4

    .line 112
    .line 113
    iget-object v8, v5, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;->mPlaylists:[Lcom/ss/ttm/player/HLSChooseStreamInterface$Playlist;

    .line 114
    .line 115
    aget-object v8, v8, v7

    .line 116
    .line 117
    if-eqz v8, :cond_3

    .line 118
    .line 119
    iget-object v9, v8, Lcom/ss/ttm/player/HLSChooseStreamInterface$Playlist;->mRenditions:[Lcom/ss/ttm/player/HLSChooseStreamInterface$Rendition;

    .line 120
    .line 121
    if-eqz v9, :cond_3

    .line 122
    .line 123
    array-length v10, v9

    .line 124
    if-nez v10, :cond_2

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_2
    array-length v9, v9

    .line 128
    move v10, v3

    .line 129
    :goto_2
    if-ge v10, v9, :cond_3

    .line 130
    .line 131
    iget-object v11, v8, Lcom/ss/ttm/player/HLSChooseStreamInterface$Playlist;->mRenditions:[Lcom/ss/ttm/player/HLSChooseStreamInterface$Rendition;

    .line 132
    .line 133
    aget-object v11, v11, v10

    .line 134
    .line 135
    new-instance v12, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineRendition;

    .line 136
    .line 137
    invoke-direct {v12}, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineRendition;-><init>()V

    .line 138
    .line 139
    .line 140
    iget-object v13, v11, Lcom/ss/ttm/player/HLSChooseStreamInterface$Rendition;->mLanguage:Ljava/lang/String;

    .line 141
    .line 142
    iput-object v13, v12, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineRendition;->assocLanguage:Ljava/lang/String;

    .line 143
    .line 144
    iget-object v14, v11, Lcom/ss/ttm/player/HLSChooseStreamInterface$Rendition;->mGroupId:Ljava/lang/String;

    .line 145
    .line 146
    iput-object v14, v12, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineRendition;->groupId:Ljava/lang/String;

    .line 147
    .line 148
    iput-object v13, v12, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineRendition;->language:Ljava/lang/String;

    .line 149
    .line 150
    iget-object v13, v11, Lcom/ss/ttm/player/HLSChooseStreamInterface$Rendition;->mName:Ljava/lang/String;

    .line 151
    .line 152
    iput-object v13, v12, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineRendition;->name:Ljava/lang/String;

    .line 153
    .line 154
    iget v13, v11, Lcom/ss/ttm/player/HLSChooseStreamInterface$Rendition;->mInfoId:I

    .line 155
    .line 156
    iput v13, v12, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineRendition;->infoId:I

    .line 157
    .line 158
    iput v4, v12, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineRendition;->variantIndex:I

    .line 159
    .line 160
    iget v11, v11, Lcom/ss/ttm/player/HLSChooseStreamInterface$Rendition;->mMediaTrackType:I

    .line 161
    .line 162
    iput v11, v12, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineRendition;->trackType:I

    .line 163
    .line 164
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    add-int/lit8 v10, v10, 0x1

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    if-nez p0, :cond_6

    .line 182
    .line 183
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 184
    .line 185
    .line 186
    move-result p0

    .line 187
    new-array p0, p0, [Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineRendition;

    .line 188
    .line 189
    invoke-interface {v2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    check-cast p0, [Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineRendition;

    .line 194
    .line 195
    iput-object p0, v0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;->renditions:[Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineRendition;

    .line 196
    .line 197
    :cond_6
    return-object v0

    .line 198
    :cond_7
    :goto_5
    const/4 p0, 0x0

    .line 199
    return-object p0
.end method


# virtual methods
.method public abstract chooseRenditionInfoId(I)I
.end method

.method public abstract chooseVariantBandWidth()I
.end method

.method public abstract streamInfos(Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;)V
.end method
