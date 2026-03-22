.class public interface abstract Lcom/unity3d/ads/core/data/datasource/DynamicDeviceInfoDataSource;
.super Ljava/lang/Object;
.source "DynamicDeviceInfoDataSource.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract fetch()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getConnectionTypeStr()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getCurrentUiTheme()I
.end method

.method public abstract getLocaleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getOrientation()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getRingerMode()I
.end method

.method public abstract getVolumeSettingsChange()Lkt/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkt/b<",
            "Lcom/unity3d/ads/core/data/datasource/VolumeSettingsChange;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract hasInternet()Z
.end method
