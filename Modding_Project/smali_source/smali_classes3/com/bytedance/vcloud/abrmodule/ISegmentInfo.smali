.class public interface abstract Lcom/bytedance/vcloud/abrmodule/ISegmentInfo;
.super Ljava/lang/Object;
.source "ISegmentInfo.java"


# virtual methods
.method public abstract getBitrate()J
.end method

.method public abstract getEndIndex()I
.end method

.method public abstract getFileId()Ljava/lang/String;
.end method

.method public abstract getItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/vcloud/abrmodule/ISegmentItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMediaType()I
.end method

.method public abstract getStartIndex()I
.end method

.method public abstract getTotalNum()I
.end method
