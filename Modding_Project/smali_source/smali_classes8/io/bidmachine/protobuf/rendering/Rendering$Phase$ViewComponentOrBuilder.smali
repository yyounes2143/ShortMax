.class public interface abstract Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponentOrBuilder;
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
    name = "ViewComponentOrBuilder"
.end annotation


# virtual methods
.method public abstract containsCustomParams(Ljava/lang/String;)Z
.end method

.method public abstract getAppearance()Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Appearance;
.end method

.method public abstract getAppearanceOrBuilder()Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$AppearanceOrBuilder;
.end method

.method public abstract getCustomParams()Ljava/util/Map;
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

.method public abstract getCustomParamsCount()I
.end method

.method public abstract getCustomParamsMap()Ljava/util/Map;
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

.method public abstract getCustomParamsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCustomParamsOrThrow(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getFeatures(I)Lio/bidmachine/protobuf/rendering/RenderingFeature;
.end method

.method public abstract getFeaturesCount()I
.end method

.method public abstract getFeaturesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/RenderingFeature;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFeaturesOrBuilder(I)Lio/bidmachine/protobuf/rendering/RenderingFeatureOrBuilder;
.end method

.method public abstract getFeaturesOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/rendering/RenderingFeatureOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLayout()Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout;
.end method

.method public abstract getLayoutOrBuilder()Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$LayoutOrBuilder;
.end method

.method public abstract getMeasurers(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Measurer;
.end method

.method public abstract getMeasurersCount()I
.end method

.method public abstract getMeasurersList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Measurer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMeasurersOrBuilder(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$MeasurerOrBuilder;
.end method

.method public abstract getMeasurersOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$MeasurerOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getPlaceholder()Ljava/lang/String;
.end method

.method public abstract getPlaceholderBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getResource()Lio/bidmachine/protobuf/rendering/Rendering$Resource;
.end method

.method public abstract getResourceOrBuilder()Lio/bidmachine/protobuf/rendering/Rendering$ResourceOrBuilder;
.end method

.method public abstract getSource()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSourceBytes()Lcom/explorestack/protobuf/ByteString;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getTextBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getType()Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;
.end method

.method public abstract getTypeValue()I
.end method

.method public abstract hasAppearance()Z
.end method

.method public abstract hasLayout()Z
.end method

.method public abstract hasResource()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
