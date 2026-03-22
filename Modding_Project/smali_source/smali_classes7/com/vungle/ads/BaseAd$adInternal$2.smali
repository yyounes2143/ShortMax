.class final Lcom/vungle/ads/BaseAd$adInternal$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BaseAd.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/BaseAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/AdConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/vungle/ads/internal/AdInternal;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/ads/BaseAd;


# direct methods
.method constructor <init>(Lcom/vungle/ads/BaseAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/BaseAd$adInternal$2;->this$0:Lcom/vungle/ads/BaseAd;

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
.method public final invoke()Lcom/vungle/ads/internal/AdInternal;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/BaseAd$adInternal$2;->this$0:Lcom/vungle/ads/BaseAd;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/BaseAd;->constructAdInternal$vungle_ads_release(Landroid/content/Context;)Lcom/vungle/ads/internal/AdInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/ads/BaseAd$adInternal$2;->this$0:Lcom/vungle/ads/BaseAd;

    .line 3
    invoke-virtual {v1}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/LogEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/AdInternal;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/LogEntry;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd$adInternal$2;->invoke()Lcom/vungle/ads/internal/AdInternal;

    move-result-object v0

    return-object v0
.end method
