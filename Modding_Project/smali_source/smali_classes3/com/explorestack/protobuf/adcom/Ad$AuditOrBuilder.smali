.class public interface abstract Lcom/explorestack/protobuf/adcom/Ad$AuditOrBuilder;
.super Ljava/lang/Object;
.source "Ad.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AuditOrBuilder"
.end annotation


# virtual methods
.method public abstract getCorr()Lcom/explorestack/protobuf/adcom/Ad;
.end method

.method public abstract getCorrOrBuilder()Lcom/explorestack/protobuf/adcom/a;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getExt()Lcom/explorestack/protobuf/Struct;
.end method

.method public abstract getExtOrBuilder()Lcom/explorestack/protobuf/x1;
.end method

.method public abstract getExtProto(I)Lcom/explorestack/protobuf/Any;
.end method

.method public abstract getExtProtoCount()I
.end method

.method public abstract getExtProtoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/e;
.end method

.method public abstract getExtProtoOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/e;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFeedback(I)Ljava/lang/String;
.end method

.method public abstract getFeedbackBytes(I)Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getFeedbackCount()I
.end method

.method public abstract getFeedbackList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInit()Ljava/lang/String;
.end method

.method public abstract getInitBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getLastmod()Ljava/lang/String;
.end method

.method public abstract getLastmodBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getStatus()Lcom/explorestack/protobuf/adcom/AuditStatusCode;
.end method

.method public abstract getStatusValue()I
.end method

.method public abstract hasCorr()Z
.end method

.method public abstract hasExt()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
