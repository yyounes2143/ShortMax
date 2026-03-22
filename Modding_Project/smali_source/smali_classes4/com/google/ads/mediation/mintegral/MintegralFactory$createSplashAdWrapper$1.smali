.class public final Lcom/google/ads/mediation/mintegral/MintegralFactory$createSplashAdWrapper$1;
.super Ljava/lang/Object;
.source "MintegralFactory.kt"

# interfaces
.implements Lcom/google/ads/mediation/mintegral/MintegralSplashAdWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/mintegral/MintegralFactory;->createSplashAdWrapper()Lcom/google/ads/mediation/mintegral/MintegralSplashAdWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private instance:Lcom/mbridge/msdk/out/MBSplashHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createAd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "placementId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adUnitId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/mbridge/msdk/out/MBSplashHandler;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x5

    .line 15
    invoke-direct {v0, p1, p2, v1, v2}, Lcom/mbridge/msdk/out/MBSplashHandler;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/ads/mediation/mintegral/MintegralFactory$createSplashAdWrapper$1;->instance:Lcom/mbridge/msdk/out/MBSplashHandler;

    .line 19
    .line 20
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/mintegral/MintegralFactory$createSplashAdWrapper$1;->instance:Lcom/mbridge/msdk/out/MBSplashHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mbridge/msdk/out/MBSplashHandler;->onDestroy()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public preLoad()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/mintegral/MintegralFactory$createSplashAdWrapper$1;->instance:Lcom/mbridge/msdk/out/MBSplashHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mbridge/msdk/out/MBSplashHandler;->preLoad()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public preLoadByToken(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "token"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/ads/mediation/mintegral/MintegralFactory$createSplashAdWrapper$1;->instance:Lcom/mbridge/msdk/out/MBSplashHandler;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/out/MBSplashHandler;->preLoadByToken(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setExtraInfo(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    const-string v0, "jsonObject"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/ads/mediation/mintegral/MintegralFactory$createSplashAdWrapper$1;->instance:Lcom/mbridge/msdk/out/MBSplashHandler;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/out/MBSplashHandler;->setExtraInfo(Lorg/json/JSONObject;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setSplashLoadListener(Lcom/mbridge/msdk/out/MBSplashLoadWithCodeListener;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/ads/mediation/mintegral/MintegralFactory$createSplashAdWrapper$1;->instance:Lcom/mbridge/msdk/out/MBSplashHandler;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/out/MBSplashHandler;->setSplashLoadListener(Lcom/mbridge/msdk/out/MBSplashLoadListener;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setSplashShowListener(Lcom/mbridge/msdk/out/MBSplashShowListener;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/ads/mediation/mintegral/MintegralFactory$createSplashAdWrapper$1;->instance:Lcom/mbridge/msdk/out/MBSplashHandler;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/out/MBSplashHandler;->setSplashShowListener(Lcom/mbridge/msdk/out/MBSplashShowListener;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public show(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "group"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/mintegral/MintegralFactory$createSplashAdWrapper$1;->instance:Lcom/mbridge/msdk/out/MBSplashHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/out/MBSplashHandler;->show(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public show(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 1

    const-string v0, "group"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bidToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/ads/mediation/mintegral/MintegralFactory$createSplashAdWrapper$1;->instance:Lcom/mbridge/msdk/out/MBSplashHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/mbridge/msdk/out/MBSplashHandler;->show(Landroid/view/ViewGroup;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
