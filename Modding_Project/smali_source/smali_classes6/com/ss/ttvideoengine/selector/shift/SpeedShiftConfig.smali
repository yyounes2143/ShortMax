.class public interface abstract Lcom/ss/ttvideoengine/selector/shift/SpeedShiftConfig;
.super Ljava/lang/Object;
.source "SpeedShiftConfig.java"


# virtual methods
.method public abstract getIAutoBitrateSet()Lcom/ss/ttvideoengine/selector/shift/IAutoBitrateSet;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getIBandwidthSets()Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ttvideoengine/selector/shift/IBandwidthSet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIGearConfig()Lcom/ss/ttvideoengine/selector/shift/IGearConfig;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getIGearSets()Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ttvideoengine/selector/shift/IGearSet;",
            ">;"
        }
    .end annotation
.end method
