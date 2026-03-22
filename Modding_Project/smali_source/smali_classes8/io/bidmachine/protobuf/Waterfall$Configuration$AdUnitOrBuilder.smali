.class public interface abstract Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnitOrBuilder;
.super Ljava/lang/Object;
.source "Waterfall.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/Waterfall$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdUnitOrBuilder"
.end annotation


# virtual methods
.method public abstract containsCustomTargeting(Ljava/lang/String;)Z
.end method

.method public abstract getAdUnitId()Ljava/lang/String;
.end method

.method public abstract getAdUnitIdBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getCustomTargeting()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCustomTargetingCount()I
.end method

.method public abstract getCustomTargetingMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCustomTargetingOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCustomTargetingOrThrow(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getExpirationTime()I
.end method

.method public abstract getOverrideCallbacks()Z
.end method

.method public abstract getPrice()D
.end method

.method public abstract getRequestAgent()Ljava/lang/String;
.end method

.method public abstract getRequestAgentBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getServerParams()Lcom/explorestack/protobuf/StringValue;
.end method

.method public abstract getServerParamsOrBuilder()Lcom/explorestack/protobuf/w1;
.end method

.method public abstract getSleepTimeAfter()Lcom/explorestack/protobuf/UInt32Value;
.end method

.method public abstract getSleepTimeAfterOrBuilder()Lcom/explorestack/protobuf/g2;
.end method

.method public abstract getSleepTimeBefore()Lcom/explorestack/protobuf/UInt32Value;
.end method

.method public abstract getSleepTimeBeforeOrBuilder()Lcom/explorestack/protobuf/g2;
.end method

.method public abstract hasServerParams()Z
.end method

.method public abstract hasSleepTimeAfter()Z
.end method

.method public abstract hasSleepTimeBefore()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
