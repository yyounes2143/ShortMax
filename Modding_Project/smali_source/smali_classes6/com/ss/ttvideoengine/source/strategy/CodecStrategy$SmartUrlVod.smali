.class public final Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$SmartUrlVod;
.super Ljava/lang/Object;
.source "CodecStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/source/strategy/CodecStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SmartUrlVod"
.end annotation


# static fields
.field private static final SMART_URL_DEFAULT_RESOLUTION:Lcom/ss/ttvideoengine/Resolution;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/Resolution;->SuperHigh:Lcom/ss/ttvideoengine/Resolution;

    .line 2
    .line 3
    sput-object v0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$SmartUrlVod;->SMART_URL_DEFAULT_RESOLUTION:Lcom/ss/ttvideoengine/Resolution;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static encodeType()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "h265"

    .line 2
    .line 3
    return-object v0
.end method

.method public static findTargetResolution(Lcom/ss/ttvideoengine/model/IVideoModel;)Lcom/ss/ttvideoengine/Resolution;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$SmartUrlVod;->videoResolution()Lcom/ss/ttvideoengine/Resolution;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lcom/ss/ttvideoengine/selector/BestResolution;->findDefaultResolution(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;)Lcom/ss/ttvideoengine/Resolution;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static getApiHost()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/AppInfo;->getSmartUrlApiHost()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static isEnable(Lcom/ss/ttvideoengine/source/DirectUrlSource;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/source/DirectUrlSource;->isSmartUrlValid()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$SmartUrlVod;->isSettingsEnable()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public static isSettingsEnable()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->getSmartUrlEnabled()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    return v1
.end method

.method public static videoResolution()Lcom/ss/ttvideoengine/Resolution;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$SmartUrlVod;->SMART_URL_DEFAULT_RESOLUTION:Lcom/ss/ttvideoengine/Resolution;

    .line 2
    .line 3
    return-object v0
.end method
