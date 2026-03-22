.class final Lcom/vungle/ads/VungleBannerView$impressionTracker$2;
.super Lkotlin/jvm/internal/Lambda;
.source "VungleBannerView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/VungleBannerView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/VungleAdSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/vungle/ads/internal/ImpressionTracker;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/VungleBannerView$impressionTracker$2;->$context:Landroid/content/Context;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Lcom/vungle/ads/internal/ImpressionTracker;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/ImpressionTracker;

    iget-object v1, p0, Lcom/vungle/ads/VungleBannerView$impressionTracker$2;->$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/ImpressionTracker;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/vungle/ads/VungleBannerView$impressionTracker$2;->invoke()Lcom/vungle/ads/internal/ImpressionTracker;

    move-result-object v0

    return-object v0
.end method
