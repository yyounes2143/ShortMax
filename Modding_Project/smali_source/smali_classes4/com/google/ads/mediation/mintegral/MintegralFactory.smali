.class public final Lcom/google/ads/mediation/mintegral/MintegralFactory;
.super Ljava/lang/Object;
.source "MintegralFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/ads/mediation/mintegral/MintegralFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/mediation/mintegral/MintegralFactory;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/ads/mediation/mintegral/MintegralFactory;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/ads/mediation/mintegral/MintegralFactory;->INSTANCE:Lcom/google/ads/mediation/mintegral/MintegralFactory;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final createBidInterstitialHandler()Lcom/google/ads/mediation/mintegral/MintegralBidNewInterstitialAdWrapper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/ads/mediation/mintegral/MintegralFactory$createBidInterstitialHandler$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/ads/mediation/mintegral/MintegralFactory$createBidInterstitialHandler$1;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final createInterstitialHandler()Lcom/google/ads/mediation/mintegral/MintegralNewInterstitialAdWrapper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/ads/mediation/mintegral/MintegralFactory$createInterstitialHandler$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/ads/mediation/mintegral/MintegralFactory$createInterstitialHandler$1;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final createSplashAdWrapper()Lcom/google/ads/mediation/mintegral/MintegralSplashAdWrapper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/ads/mediation/mintegral/MintegralFactory$createSplashAdWrapper$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/ads/mediation/mintegral/MintegralFactory$createSplashAdWrapper$1;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
