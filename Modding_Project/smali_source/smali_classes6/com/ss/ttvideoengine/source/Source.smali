.class public interface abstract Lcom/ss/ttvideoengine/source/Source;
.super Ljava/lang/Object;
.source "Source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/source/Source$EncodeType;,
        Lcom/ss/ttvideoengine/source/Source$Type;
    }
.end annotation


# static fields
.field public static final KEY_COST_SAVING_FIRST:I = 0x1

.field public static final KEY_HARDWARE_DECODE_FIRST:I = 0x2


# direct methods
.method public static isCodecStrategyValid(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public abstract codecStrategy()I
.end method

.method public isCodecStrategyValid()Z
    .locals 1

    .line 2
    invoke-interface {p0}, Lcom/ss/ttvideoengine/source/Source;->codecStrategy()I

    move-result v0

    invoke-static {v0}, Lcom/ss/ttvideoengine/source/Source;->isCodecStrategyValid(I)Z

    move-result v0

    return v0
.end method

.method public abstract tag()Ljava/lang/Object;
.end method

.method public abstract type()Lcom/ss/ttvideoengine/source/Source$Type;
.end method

.method public abstract vid()Ljava/lang/String;
.end method
