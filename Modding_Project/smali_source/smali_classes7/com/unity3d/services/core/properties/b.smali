.class public final synthetic Lcom/unity3d/services/core/properties/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/unity3d/ads/IUnityAdsInitializationListener;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/IUnityAdsInitializationListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/unity3d/services/core/properties/b;->a:Lcom/unity3d/ads/IUnityAdsInitializationListener;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/core/properties/b;->a:Lcom/unity3d/ads/IUnityAdsInitializationListener;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/unity3d/ads/IUnityAdsInitializationListener;->onInitializationComplete()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
