.class public Lcom/ss/ttvideoengine/utils/MDLExtraInfoHelper;
.super Ljava/lang/Object;
.source "MDLExtraInfoHelper.java"


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

.method public static addPCDNFlag(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    if-lez p0, :cond_1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, "fp=1"

    if-nez p0, :cond_0

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static addPCDNFlag(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getCdnType()I

    move-result p0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVidItem:Lcom/ss/ttvideoengine/PreloaderVidItem;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/PreloaderVidItem;->getCdnType()I

    move-result p0

    goto :goto_0

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoModelItem:Lcom/ss/ttvideoengine/PreloaderVideoModelItem;

    if-eqz p0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->getCdnType()I

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 7
    :goto_0
    iget-object v0, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mExternalInfo:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/ss/ttvideoengine/utils/MDLExtraInfoHelper;->addPCDNFlag(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mExternalInfo:Ljava/lang/String;

    return-void
.end method

.method public static addTags(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTag:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mExternalInfo:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string/jumbo v1, "tag="

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTag:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/ss/ttvideoengine/utils/TTHelper;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mExternalInfo:Ljava/lang/String;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v1, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mExternalInfo:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, "&tag="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTag:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/ss/ttvideoengine/utils/TTHelper;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mExternalInfo:Ljava/lang/String;

    .line 65
    .line 66
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mSubTag:Ljava/lang/String;

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    iget-object v0, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mExternalInfo:Ljava/lang/String;

    .line 71
    .line 72
    if-nez v0, :cond_2

    .line 73
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string/jumbo v1, "stag="

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object p0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mSubTag:Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {p0}, Lcom/ss/ttvideoengine/utils/TTHelper;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    iput-object p0, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mExternalInfo:Ljava/lang/String;

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    iget-object v1, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mExternalInfo:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v1, "&stag="

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget-object p0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mSubTag:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {p0}, Lcom/ss/ttvideoengine/utils/TTHelper;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    iput-object p0, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mExternalInfo:Ljava/lang/String;

    .line 130
    .line 131
    :cond_3
    :goto_1
    return-void
.end method

.method public static createMDLExtraInfo(Lcom/ss/ttvideoengine/model/VideoInfo;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x1c

    .line 2
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    const/16 v3, 0x1d

    .line 4
    invoke-virtual {p0, v3}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 5
    :goto_0
    const-string v3, "fileId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    const-string v1, "&bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    .line 8
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string p0, "&pcrc="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {v2}, Lcom/ss/ttvideoengine/utils/TTHelper;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createMDLExtraInfo(Lcom/ss/ttvideoengine/model/VideoInfo;Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)Ljava/lang/String;
    .locals 4

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x1c

    .line 13
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    move-result-object v1

    .line 14
    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    const/16 v3, 0x1d

    .line 15
    invoke-virtual {p0, v3}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    const/16 v3, 0x2c

    .line 16
    invoke-virtual {p0, v3}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    move-result p0

    .line 17
    const-string v3, "fileId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, "&bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string p0, "&pcrc="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-static {v2}, Lcom/ss/ttvideoengine/utils/TTHelper;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string p0, "&tag="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object p0, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTag:Ljava/lang/String;

    invoke-static {p0}, Lcom/ss/ttvideoengine/utils/TTHelper;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget-object p0, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mSubTag:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 26
    const-string p0, "&stag="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object p0, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mSubTag:Ljava/lang/String;

    invoke-static {p0}, Lcom/ss/ttvideoengine/utils/TTHelper;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
