.class public final Lcom/unity3d/ads/adplayer/WebViewAdPlayerKt;
.super Ljava/lang/Object;
.source "WebViewAdPlayer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final LOAD_EVENTS:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SHOW_EVENTS:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v4, "com.unity3d.services.ads.api.AdViewer.cancelShowTimeout"

    .line 2
    .line 3
    const-string v5, "com.unity3d.services.ads.api.AdViewer.leftApplication"

    .line 4
    .line 5
    const-string v0, "com.unity3d.services.ads.api.AdViewer.started"

    .line 6
    .line 7
    const-string v1, "com.unity3d.services.ads.api.AdViewer.clicked"

    .line 8
    .line 9
    const-string v2, "com.unity3d.services.ads.api.AdViewer.completed"

    .line 10
    .line 11
    const-string v3, "com.unity3d.services.ads.api.AdViewer.failed"

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayerKt;->SHOW_EVENTS:[Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "com.unity3d.services.ads.api.AdViewer.loadComplete"

    .line 20
    .line 21
    const-string v1, "com.unity3d.services.ads.api.AdViewer.loadError"

    .line 22
    .line 23
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayerKt;->LOAD_EVENTS:[Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method

.method public static final synthetic access$getLOAD_EVENTS$p()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayerKt;->LOAD_EVENTS:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getSHOW_EVENTS$p()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayerKt;->SHOW_EVENTS:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
