.class public interface abstract Lcom/ss/ttvideoengine/model/IVideoModel;
.super Ljava/lang/Object;
.source "IVideoModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/model/IVideoModel$Format;,
        Lcom/ss/ttvideoengine/model/IVideoModel$Source;
    }
.end annotation


# virtual methods
.method public abstract allVideoURLs(Lcom/ss/ttvideoengine/Resolution;)[Ljava/lang/String;
.end method

.method public abstract allVideoURLs(Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/Resolution;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract fromMediaInfoJsonObject(Lorg/json/JSONObject;)I
.end method

.method public abstract fromMediaInfoJsonString(Ljava/lang/String;)I
.end method

.method public abstract getCodecs()[Ljava/lang/String;
.end method

.method public abstract getDnsInfo()Lorg/json/JSONObject;
.end method

.method public abstract getDynamicType()Ljava/lang/String;
.end method

.method public abstract getFormats()Ljava/util/Set;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/ss/ttvideoengine/model/IVideoModel$Format;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMediaInfo()Lorg/json/JSONObject;
.end method

.method public abstract getOriginalAudioInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSource()Lcom/ss/ttvideoengine/model/IVideoModel$Source;
.end method

.method public abstract getSpadea()Ljava/lang/String;
.end method

.method public abstract getSubInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/model/SubInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportInfoId(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportQualityInfos()[Ljava/lang/String;
.end method

.method public abstract getSupportResolutions()[Lcom/ss/ttvideoengine/Resolution;
.end method

.method public abstract getSupportSubtitleLangs()[I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSupportedTTSAudioInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVType()Ljava/lang/String;
.end method

.method public abstract getVideoInfo(Lcom/ss/ttvideoengine/Resolution;)Lcom/ss/ttvideoengine/model/VideoInfo;
.end method

.method public abstract getVideoInfo(Lcom/ss/ttvideoengine/Resolution;ILjava/util/Map;)Lcom/ss/ttvideoengine/model/VideoInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/Resolution;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ss/ttvideoengine/model/VideoInfo;"
        }
    .end annotation
.end method

.method public abstract getVideoInfo(Lcom/ss/ttvideoengine/Resolution;ILjava/util/Map;Z)Lcom/ss/ttvideoengine/model/VideoInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/Resolution;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/ss/ttvideoengine/model/VideoInfo;"
        }
    .end annotation
.end method

.method public abstract getVideoInfo(Lcom/ss/ttvideoengine/Resolution;IZ)Lcom/ss/ttvideoengine/model/VideoInfo;
.end method

.method public abstract getVideoInfo(Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;)Lcom/ss/ttvideoengine/model/VideoInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/Resolution;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ss/ttvideoengine/model/VideoInfo;"
        }
    .end annotation
.end method

.method public abstract getVideoInfo(Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;Z)Lcom/ss/ttvideoengine/model/VideoInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/Resolution;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/ss/ttvideoengine/model/VideoInfo;"
        }
    .end annotation
.end method

.method public abstract getVideoInfo(Lcom/ss/ttvideoengine/Resolution;Z)Lcom/ss/ttvideoengine/model/VideoInfo;
.end method

.method public abstract getVideoInfo(Ljava/util/Map;)Lcom/ss/ttvideoengine/model/VideoInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ss/ttvideoengine/model/VideoInfo;"
        }
    .end annotation
.end method

.method public abstract getVideoInfoByInfoId(I)Lcom/ss/ttvideoengine/model/VideoInfo;
.end method

.method public abstract getVideoInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/model/VideoInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVideoRefBool(I)Z
.end method

.method public abstract getVideoRefFloat(I)F
.end method

.method public abstract getVideoRefInt(I)I
.end method

.method public abstract getVideoRefLong(I)J
.end method

.method public abstract getVideoRefStr(I)Ljava/lang/String;
.end method

.method public abstract getVideoStyle()Lcom/ss/ttvideoengine/model/VideoStyle;
.end method

.method public abstract hasData()Z
.end method

.method public abstract hasFormat(Lcom/ss/ttvideoengine/model/IVideoModel$Format;)Z
.end method

.method public abstract isSupportBash()Z
.end method

.method public abstract isSupportHLSSeamlessSwitch()Z
.end method

.method public abstract resolutionToString(Lcom/ss/ttvideoengine/Resolution;)Ljava/lang/String;
.end method

.method public abstract setUpResolution(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ss/ttvideoengine/Resolution;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract toMediaInfoJsonString()Ljava/lang/String;
.end method
