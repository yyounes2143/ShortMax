.class public Landroidx/webkit/internal/WebViewStartUpConfigAdapter;
.super Ljava/lang/Object;
.source "WebViewStartUpConfigAdapter.java"

# interfaces
.implements Lorg/chromium/support_lib_boundary/WebViewStartUpConfigBoundaryInterface;


# annotations
.annotation build Landroidx/webkit/WebViewCompat$ExperimentalAsyncStartUp;
.end annotation


# instance fields
.field private final mWebViewStartUpConfig:Landroidx/webkit/WebViewStartUpConfig;


# direct methods
.method public constructor <init>(Landroidx/webkit/WebViewStartUpConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/webkit/internal/WebViewStartUpConfigAdapter;->mWebViewStartUpConfig:Landroidx/webkit/WebViewStartUpConfig;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getBackgroundExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/WebViewStartUpConfigAdapter;->mWebViewStartUpConfig:Landroidx/webkit/WebViewStartUpConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/webkit/WebViewStartUpConfig;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getProfileNamesToLoad()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/WebViewStartUpConfigAdapter;->mWebViewStartUpConfig:Landroidx/webkit/WebViewStartUpConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/webkit/WebViewStartUpConfig;->getProfilesToLoadDuringStartup()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public shouldRunUiThreadStartUpTasks()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/WebViewStartUpConfigAdapter;->mWebViewStartUpConfig:Landroidx/webkit/WebViewStartUpConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/webkit/WebViewStartUpConfig;->shouldRunUiThreadStartUpTasks()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
