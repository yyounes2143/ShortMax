.class public interface abstract Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskOrBuilder;
.super Ljava/lang/Object;
.source "Rendering.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TaskOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getName()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;
.end method

.method public abstract getNameValue()I
.end method

.method public abstract getStateGroups(I)Ljava/lang/String;
.end method

.method public abstract getStateGroupsBytes(I)Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getStateGroupsCount()I
.end method

.method public abstract getStateGroupsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTarget()Ljava/lang/String;
.end method

.method public abstract getTargetBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract getValueBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract synthetic isInitialized()Z
.end method
