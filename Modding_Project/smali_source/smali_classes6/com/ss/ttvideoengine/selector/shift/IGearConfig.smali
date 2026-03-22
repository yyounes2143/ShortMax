.class public interface abstract Lcom/ss/ttvideoengine/selector/shift/IGearConfig;
.super Ljava/lang/Object;
.source "IGearConfig.java"


# virtual methods
.method public abstract getBitrateInterval()Landroid/util/Pair;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultBitrate()D
.end method

.method public abstract getDefaultGearName()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getGearGroup()Ljava/util/Set;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
