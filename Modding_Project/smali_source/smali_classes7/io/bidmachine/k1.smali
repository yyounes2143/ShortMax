.class public final synthetic Lio/bidmachine/k1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/bidmachine/BidTokenCallback;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lio/bidmachine/AdPlacementConfig;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/BidTokenCallback;Landroid/content/Context;Lio/bidmachine/AdPlacementConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/k1;->a:Lio/bidmachine/BidTokenCallback;

    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/k1;->b:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lio/bidmachine/k1;->c:Lio/bidmachine/AdPlacementConfig;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/k1;->a:Lio/bidmachine/BidTokenCallback;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/k1;->b:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lio/bidmachine/k1;->c:Lio/bidmachine/AdPlacementConfig;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lio/bidmachine/BidMachine;->b(Lio/bidmachine/BidTokenCallback;Landroid/content/Context;Lio/bidmachine/AdPlacementConfig;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
