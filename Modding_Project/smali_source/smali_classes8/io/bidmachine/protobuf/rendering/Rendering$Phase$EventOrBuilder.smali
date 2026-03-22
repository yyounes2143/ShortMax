.class public interface abstract Lio/bidmachine/protobuf/rendering/Rendering$Phase$EventOrBuilder;
.super Ljava/lang/Object;
.source "Rendering.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/rendering/Rendering$Phase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getName()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;
.end method

.method public abstract getNameValue()I
.end method

.method public abstract getSource()Ljava/lang/String;
.end method

.method public abstract getSourceBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getTasks(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;
.end method

.method public abstract getTasksCount()I
.end method

.method public abstract getTasksList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTasksOrBuilder(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskOrBuilder;
.end method

.method public abstract getTasksOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic isInitialized()Z
.end method
