.class public Landroidx/webkit/internal/BackForwardCacheSettingsImpl;
.super Ljava/lang/Object;
.source "BackForwardCacheSettingsImpl.java"

# interfaces
.implements Lorg/chromium/support_lib_boundary/WebViewBackForwardCacheSettingsBoundaryInterface;


# annotations
.annotation build Landroidx/webkit/WebSettingsCompat$ExperimentalBackForwardCacheSettings;
.end annotation


# instance fields
.field mSettings:Landroidx/webkit/BackForwardCacheSettings;


# direct methods
.method public constructor <init>(Landroidx/webkit/BackForwardCacheSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/webkit/internal/BackForwardCacheSettingsImpl;->mSettings:Landroidx/webkit/BackForwardCacheSettings;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getMaxPagesInCache()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/BackForwardCacheSettingsImpl;->mSettings:Landroidx/webkit/BackForwardCacheSettings;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/webkit/BackForwardCacheSettings;->getMaxPagesInCache()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getOrCreatePeer(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Landroidx/webkit/internal/BackForwardCacheSettingsImpl;->mSettings:Landroidx/webkit/BackForwardCacheSettings;

    .line 2
    .line 3
    return-object p1
.end method

.method public getTimeoutInSeconds()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/BackForwardCacheSettingsImpl;->mSettings:Landroidx/webkit/BackForwardCacheSettings;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/webkit/BackForwardCacheSettings;->getTimeoutSeconds()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    long-to-int v0, v0

    .line 8
    return v0
.end method
