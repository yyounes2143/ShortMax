.class public interface abstract Lcom/ss/ttvideoengine/model/IVideoInfo;
.super Ljava/lang/Object;
.source "IVideoInfo.java"


# virtual methods
.method public abstract fromMediaInfoJsonObject(Lorg/json/JSONObject;)I
.end method

.method public abstract getBitrateFitterInfo()Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getMediatype()I
.end method

.method public abstract getResolution()Lcom/ss/ttvideoengine/Resolution;
.end method

.method public abstract getValueBool(I)Z
.end method

.method public abstract getValueFloat(I)F
.end method

.method public abstract getValueInt(I)I
.end method

.method public abstract getValueLong(I)J
.end method

.method public abstract getValueStr(I)Ljava/lang/String;
.end method

.method public abstract getValueStrArr(I)[Ljava/lang/String;
.end method

.method public abstract toBashJsonObject()Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract toMediaInfo()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
