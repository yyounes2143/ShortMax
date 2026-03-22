.class public final synthetic Lio/bidmachine/ads/networks/gam_dynamic/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lhr/b;


# instance fields
.field public final synthetic a:Lio/bidmachine/ads/networks/gam_dynamic/g;

.field public final synthetic b:Lio/bidmachine/NetworkAdUnit;

.field public final synthetic c:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/g;Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/b;->a:Lio/bidmachine/ads/networks/gam_dynamic/g;

    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/b;->b:Lio/bidmachine/NetworkAdUnit;

    .line 7
    .line 8
    iput-object p3, p0, Lio/bidmachine/ads/networks/gam_dynamic/b;->c:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/b;->a:Lio/bidmachine/ads/networks/gam_dynamic/g;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/b;->b:Lio/bidmachine/NetworkAdUnit;

    .line 4
    .line 5
    iget-object v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/b;->c:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lio/bidmachine/ads/networks/gam_dynamic/g;->f(Lio/bidmachine/ads/networks/gam_dynamic/g;Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
