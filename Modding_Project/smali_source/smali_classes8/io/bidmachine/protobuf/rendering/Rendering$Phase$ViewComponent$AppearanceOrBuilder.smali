.class public interface abstract Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$AppearanceOrBuilder;
.super Ljava/lang/Object;
.source "Rendering.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppearanceOrBuilder"
.end annotation


# virtual methods
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

.method public abstract getClickable()Z
.end method

.method public abstract getCornerRadius()D
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getFillColor()Ljava/lang/String;
.end method

.method public abstract getFillColorBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getFontSize()D
.end method

.method public abstract getFontStyle()Ljava/lang/String;
.end method

.method public abstract getFontStyleBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getOpacity()D
.end method

.method public abstract getOutlined()Z
.end method

.method public abstract getPadding()Ljava/lang/String;
.end method

.method public abstract getPaddingBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getShadowColor()Ljava/lang/String;
.end method

.method public abstract getShadowColorBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getStrokeColor()Ljava/lang/String;
.end method

.method public abstract getStrokeColorBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getStrokeWidth()D
.end method

.method public abstract getTextAlignment()Ljava/lang/String;
.end method

.method public abstract getTextAlignmentBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getTextLineSpacing()D
.end method

.method public abstract getTextNumberOfLines()I
.end method

.method public abstract getVisible()Z
.end method

.method public abstract hasBackground()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
