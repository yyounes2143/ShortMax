.class public final synthetic Lcom/vungle/ads/internal/load/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/load/DefaultAdLoader;

.field public final synthetic b:Lcom/vungle/ads/internal/model/Placement;

.field public final synthetic c:Lcom/vungle/ads/internal/network/Response;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/load/DefaultAdLoader;Lcom/vungle/ads/internal/model/Placement;Lcom/vungle/ads/internal/network/Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/vungle/ads/internal/load/e;->a:Lcom/vungle/ads/internal/load/DefaultAdLoader;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/vungle/ads/internal/load/e;->b:Lcom/vungle/ads/internal/model/Placement;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/vungle/ads/internal/load/e;->c:Lcom/vungle/ads/internal/network/Response;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/load/e;->a:Lcom/vungle/ads/internal/load/DefaultAdLoader;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/vungle/ads/internal/load/e;->b:Lcom/vungle/ads/internal/model/Placement;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/vungle/ads/internal/load/e;->c:Lcom/vungle/ads/internal/network/Response;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/vungle/ads/internal/load/DefaultAdLoader$fetchAdMetadata$1;->b(Lcom/vungle/ads/internal/load/DefaultAdLoader;Lcom/vungle/ads/internal/model/Placement;Lcom/vungle/ads/internal/network/Response;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
