.class public interface abstract Lio/bidmachine/protobuf/CreativeExtension$PostbannerOrBuilder;
.super Ljava/lang/Object;
.source "CreativeExtension.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/CreativeExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PostbannerOrBuilder"
.end annotation


# virtual methods
.method public abstract getAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
.end method

.method public abstract getAssetOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearanceOrBuilder;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getFeatures(I)Lio/bidmachine/protobuf/CreativeExtension$Feature;
.end method

.method public abstract getFeaturesCount()I
.end method

.method public abstract getFeaturesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/CreativeExtension$Feature;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFeaturesOrBuilder(I)Lio/bidmachine/protobuf/CreativeExtension$FeatureOrBuilder;
.end method

.method public abstract getFeaturesOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/CreativeExtension$FeatureOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSequence()I
.end method

.method public abstract getTpe()Lio/bidmachine/protobuf/PostbannerType;
.end method

.method public abstract getTpeValue()I
.end method

.method public abstract hasAsset()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
