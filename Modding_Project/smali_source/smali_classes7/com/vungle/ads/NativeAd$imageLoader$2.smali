.class final Lcom/vungle/ads/NativeAd$imageLoader$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NativeAd.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/AdConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/vungle/ads/internal/util/ImageLoader;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/ads/NativeAd;


# direct methods
.method constructor <init>(Lcom/vungle/ads/NativeAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/NativeAd$imageLoader$2;->this$0:Lcom/vungle/ads/NativeAd;

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
.method public final invoke()Lcom/vungle/ads/internal/util/ImageLoader;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/ImageLoader;->Companion:Lcom/vungle/ads/internal/util/ImageLoader$Companion;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/util/ImageLoader$Companion;->getInstance()Lcom/vungle/ads/internal/util/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/ads/NativeAd$imageLoader$2;->this$0:Lcom/vungle/ads/NativeAd;

    invoke-static {v1}, Lcom/vungle/ads/NativeAd;->access$getExecutors(Lcom/vungle/ads/NativeAd;)Lcom/vungle/ads/internal/executor/Executors;

    move-result-object v1

    invoke-interface {v1}, Lcom/vungle/ads/internal/executor/Executors;->getIoExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/util/ImageLoader;->init(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/vungle/ads/NativeAd$imageLoader$2;->invoke()Lcom/vungle/ads/internal/util/ImageLoader;

    move-result-object v0

    return-object v0
.end method
