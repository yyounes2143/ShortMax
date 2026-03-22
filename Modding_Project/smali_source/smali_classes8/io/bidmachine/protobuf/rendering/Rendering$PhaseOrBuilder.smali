.class public interface abstract Lio/bidmachine/protobuf/rendering/Rendering$PhaseOrBuilder;
.super Ljava/lang/Object;
.source "Rendering.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/rendering/Rendering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhaseOrBuilder"
.end annotation


# virtual methods
.method public abstract containsCustomParams(Ljava/lang/String;)Z
.end method

.method public abstract getAds(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;
.end method

.method public abstract getAdsCount()I
.end method

.method public abstract getAdsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAdsOrBuilder(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponentOrBuilder;
.end method

.method public abstract getAdsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponentOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAnimations(I)Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation;
.end method

.method public abstract getAnimationsCount()I
.end method

.method public abstract getAnimationsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAnimationsOrBuilder(I)Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimationOrBuilder;
.end method

.method public abstract getAnimationsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimationOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBackground()Lio/bidmachine/protobuf/rendering/Rendering$Background;
.end method

.method public abstract getBackgroundColor()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getBackgroundColorBytes()Lcom/explorestack/protobuf/ByteString;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getBackgroundOrBuilder()Lio/bidmachine/protobuf/rendering/Rendering$BackgroundOrBuilder;
.end method

.method public abstract getControls(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;
.end method

.method public abstract getControlsCount()I
.end method

.method public abstract getControlsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getControlsOrBuilder(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponentOrBuilder;
.end method

.method public abstract getControlsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponentOrBuilder;",
            ">;"
        }
    .end annotation
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

.method public abstract getEvents(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event;
.end method

.method public abstract getEventsCount()I
.end method

.method public abstract getEventsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEventsOrBuilder(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$EventOrBuilder;
.end method

.method public abstract getEventsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$EventOrBuilder;",
            ">;"
        }
    .end annotation
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

.method public abstract getMethods(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$MethodComponent;
.end method

.method public abstract getMethodsCount()I
.end method

.method public abstract getMethodsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$MethodComponent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMethodsOrBuilder(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$MethodComponentOrBuilder;
.end method

.method public abstract getMethodsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$MethodComponentOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSequence()I
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

.method public abstract hasBackground()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
