.class final Lcom/vungle/ads/internal/downloader/AssetDownloader$okHttpClient$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AssetDownloader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/downloader/AssetDownloader;-><init>(Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;Lcom/vungle/ads/internal/util/PathProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lokhttp3/OkHttpClient;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/ads/internal/downloader/AssetDownloader;


# direct methods
.method constructor <init>(Lcom/vungle/ads/internal/downloader/AssetDownloader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader$okHttpClient$2;->this$0:Lcom/vungle/ads/internal/downloader/AssetDownloader;

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
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/downloader/AssetDownloader$okHttpClient$2;->invoke()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lokhttp3/OkHttpClient;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lcom/vungle/ads/internal/downloader/AssetDownloader$OkHttpSingleton;->INSTANCE:Lcom/vungle/ads/internal/downloader/AssetDownloader$OkHttpSingleton;

    iget-object v1, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader$okHttpClient$2;->this$0:Lcom/vungle/ads/internal/downloader/AssetDownloader;

    invoke-static {v1}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->access$getPathProvider$p(Lcom/vungle/ads/internal/downloader/AssetDownloader;)Lcom/vungle/ads/internal/util/PathProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/downloader/AssetDownloader$OkHttpSingleton;->createOkHttpClient(Lcom/vungle/ads/internal/util/PathProvider;)Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
