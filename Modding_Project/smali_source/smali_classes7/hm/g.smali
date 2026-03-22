.class public final synthetic Lhm/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lhm/q;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Landroid/content/Context;Lhm/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhm/g;->a:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    .line 5
    .line 6
    iput-object p2, p0, Lhm/g;->b:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lhm/g;->c:Lhm/q;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lhm/g;->a:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    .line 2
    .line 3
    iget-object v1, p0, Lhm/g;->b:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lhm/g;->c:Lhm/q;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->e(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Landroid/content/Context;Lhm/q;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
