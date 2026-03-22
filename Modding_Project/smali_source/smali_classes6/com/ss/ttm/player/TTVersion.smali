.class public Lcom/ss/ttm/player/TTVersion;
.super Ljava/lang/Object;
.source "TTVersion.java"


# annotations
.annotation build Lcom/ss/ttm/player/Keep;
.end annotation


# static fields
.field public static final ENABLE_AUDIO_EFFECT:Z = false

.field public static final ENABLE_BORINGSSL:Z = true

.field public static final ENABLE_EXT_LIBYUV:Z = false

.field public static final ENABLE_EXT_SSL:Z = false

.field public static final ENABLE_SHARED_FFMPEG:Z = true

.field public static final VERSION:I = 0x1
    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation
.end field

.field public static final VERSION_INFO:Ljava/lang/String; = "2025-02-06 03:30:28"

.field public static final VERSION_NAME:Ljava/lang/String; = "2.10.172.321-tob-drm"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static saveVersionInfo()V
    .locals 2

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    const-string v1, "2025-02-06 03:30:28"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 v0, 0xd

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(II)V

    .line 12
    .line 13
    .line 14
    const/16 v0, 0xe

    .line 15
    .line 16
    const-string v1, "2.10.172.321-tob-drm"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
