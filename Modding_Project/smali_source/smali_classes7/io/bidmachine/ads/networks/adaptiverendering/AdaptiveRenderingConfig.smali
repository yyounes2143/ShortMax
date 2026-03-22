.class public final Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingConfig;
.super Lio/bidmachine/NetworkConfig;
.source "AdaptiveRenderingConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingConfig$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingConfig$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingConfig$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingConfig$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingConfig;->a:Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingConfig$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "adaptive_rendering"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lio/bidmachine/NetworkConfig;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method protected createNetworkAdapter()Lio/bidmachine/NetworkAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
