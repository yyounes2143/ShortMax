.class public final synthetic Lhm/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/bidmachine/ads/networks/gam_dynamic/x;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Lhm/o;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/x;Landroid/app/Activity;Lhm/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhm/n;->a:Lio/bidmachine/ads/networks/gam_dynamic/x;

    .line 5
    .line 6
    iput-object p2, p0, Lhm/n;->b:Landroid/app/Activity;

    .line 7
    .line 8
    iput-object p3, p0, Lhm/n;->c:Lhm/o;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lhm/n;->a:Lio/bidmachine/ads/networks/gam_dynamic/x;

    .line 2
    .line 3
    iget-object v1, p0, Lhm/n;->b:Landroid/app/Activity;

    .line 4
    .line 5
    iget-object v2, p0, Lhm/n;->c:Lhm/o;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lio/bidmachine/ads/networks/gam_dynamic/x;->K(Lio/bidmachine/ads/networks/gam_dynamic/x;Landroid/app/Activity;Lhm/o;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
