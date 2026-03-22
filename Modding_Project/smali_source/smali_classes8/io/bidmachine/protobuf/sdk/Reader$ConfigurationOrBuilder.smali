.class public interface abstract Lio/bidmachine/protobuf/sdk/Reader$ConfigurationOrBuilder;
.super Ljava/lang/Object;
.source "Reader.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConfigurationOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getName()Lcom/explorestack/protobuf/StringValue;
.end method

.method public abstract getNameOrBuilder()Lcom/explorestack/protobuf/w1;
.end method

.method public abstract getRules(I)Lio/bidmachine/protobuf/sdk/Reader$Rule;
.end method

.method public abstract getRulesCount()I
.end method

.method public abstract getRulesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRulesOrBuilder(I)Lio/bidmachine/protobuf/sdk/Reader$RuleOrBuilder;
.end method

.method public abstract getRulesOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/sdk/Reader$RuleOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUniqueOnly()Lcom/explorestack/protobuf/BoolValue;
.end method

.method public abstract getUniqueOnlyOrBuilder()Lcom/explorestack/protobuf/i;
.end method

.method public abstract getUpdateInterval()Lcom/explorestack/protobuf/UInt32Value;
.end method

.method public abstract getUpdateIntervalOrBuilder()Lcom/explorestack/protobuf/g2;
.end method

.method public abstract getUrl()Lcom/explorestack/protobuf/StringValue;
.end method

.method public abstract getUrlOrBuilder()Lcom/explorestack/protobuf/w1;
.end method

.method public abstract hasName()Z
.end method

.method public abstract hasUniqueOnly()Z
.end method

.method public abstract hasUpdateInterval()Z
.end method

.method public abstract hasUrl()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
