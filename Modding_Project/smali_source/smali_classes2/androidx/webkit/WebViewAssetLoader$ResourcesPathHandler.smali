.class public final Landroidx/webkit/WebViewAssetLoader$ResourcesPathHandler;
.super Ljava/lang/Object;
.source "WebViewAssetLoader.java"

# interfaces
.implements Landroidx/webkit/WebViewAssetLoader$PathHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/WebViewAssetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResourcesPathHandler"
.end annotation


# instance fields
.field private final mAssetHelper:Landroidx/webkit/internal/AssetHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/webkit/internal/AssetHelper;

    invoke-direct {v0, p1}, Landroidx/webkit/internal/AssetHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/webkit/WebViewAssetLoader$ResourcesPathHandler;->mAssetHelper:Landroidx/webkit/internal/AssetHelper;

    return-void
.end method

.method constructor <init>(Landroidx/webkit/internal/AssetHelper;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/webkit/WebViewAssetLoader$ResourcesPathHandler;->mAssetHelper:Landroidx/webkit/internal/AssetHelper;

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    const-string v0, "WebViewAssetLoader"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Landroidx/webkit/WebViewAssetLoader$ResourcesPathHandler;->mAssetHelper:Landroidx/webkit/internal/AssetHelper;

    .line 5
    .line 6
    invoke-virtual {v2, p1}, Landroidx/webkit/internal/AssetHelper;->openResource(Ljava/lang/String;)Ljava/io/InputStream;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-static {p1}, Landroidx/webkit/internal/AssetHelper;->guessMimeType(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    new-instance v4, Landroid/webkit/WebResourceResponse;

    .line 15
    .line 16
    invoke-direct {v4, v3, v1, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    return-object v4

    .line 20
    :catch_0
    move-exception v2

    .line 21
    goto :goto_0

    .line 22
    :catch_1
    move-exception v2

    .line 23
    goto :goto_1

    .line 24
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v4, "Error opening resource from the path: "

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {v0, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v4, "Resource not found from the path: "

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {v0, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .line 64
    .line 65
    :goto_2
    new-instance p1, Landroid/webkit/WebResourceResponse;

    .line 66
    .line 67
    invoke-direct {p1, v1, v1, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 68
    .line 69
    .line 70
    return-object p1
.end method
