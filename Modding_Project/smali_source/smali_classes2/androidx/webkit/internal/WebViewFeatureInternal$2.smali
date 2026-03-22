.class Landroidx/webkit/internal/WebViewFeatureInternal$2;
.super Landroidx/webkit/internal/ApiFeature$NoFramework;
.source "WebViewFeatureInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/internal/WebViewFeatureInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public isSupportedByWebView()Z
    .locals 6

    .line 1
    invoke-super {p0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {}, Landroidx/webkit/WebViewCompat;->getCurrentLoadedWebViewPackage()Landroid/content/pm/PackageInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    invoke-static {v0}, Landroidx/core/content/pm/PackageInfoCompat;->getLongVersionCode(Landroid/content/pm/PackageInfo;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    const-wide/32 v4, 0x25f34560

    .line 21
    .line 22
    .line 23
    cmp-long v0, v2, v4

    .line 24
    .line 25
    if-ltz v0, :cond_2

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    :cond_2
    return v1
.end method
