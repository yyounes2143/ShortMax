.class public Landroidx/webkit/internal/WebNavigationClientAdapter;
.super Ljava/lang/Object;
.source "WebNavigationClientAdapter.java"

# interfaces
.implements Lorg/chromium/support_lib_boundary/WebViewNavigationClientBoundaryInterface;


# annotations
.annotation build Landroidx/webkit/WebNavigationClient$ExperimentalNavigationCallback;
.end annotation


# instance fields
.field mWebNavigationClient:Landroidx/webkit/WebNavigationClient;


# direct methods
.method public constructor <init>(Landroidx/webkit/WebNavigationClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/webkit/internal/WebNavigationClientAdapter;->mWebNavigationClient:Landroidx/webkit/WebNavigationClient;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getSupportedFeatures()[Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "WEB_VIEW_NAVIGATION_CLIENT_BASIC_USAGE"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getWebNavigationClient()Landroidx/webkit/WebNavigationClient;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/WebNavigationClientAdapter;->mWebNavigationClient:Landroidx/webkit/WebNavigationClient;

    .line 2
    .line 3
    return-object v0
.end method

.method public onFirstContentfulPaint(Ljava/lang/reflect/InvocationHandler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/WebNavigationClientAdapter;->mWebNavigationClient:Landroidx/webkit/WebNavigationClient;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/webkit/internal/PageImpl;->forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/Page;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Landroidx/webkit/WebNavigationClient;->onFirstContentfulPaint(Landroidx/webkit/Page;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onNavigationCompleted(Ljava/lang/reflect/InvocationHandler;)V
    .locals 1
    .annotation build Landroidx/webkit/WebNavigationClient$ExperimentalNavigationCallback;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/WebNavigationClientAdapter;->mWebNavigationClient:Landroidx/webkit/WebNavigationClient;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/webkit/internal/NavigationImpl;->forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/Navigation;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Landroidx/webkit/WebNavigationClient;->onNavigationCompleted(Landroidx/webkit/Navigation;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onNavigationRedirected(Ljava/lang/reflect/InvocationHandler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/WebNavigationClientAdapter;->mWebNavigationClient:Landroidx/webkit/WebNavigationClient;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/webkit/internal/NavigationImpl;->forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/Navigation;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Landroidx/webkit/WebNavigationClient;->onNavigationRedirected(Landroidx/webkit/Navigation;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onNavigationStarted(Ljava/lang/reflect/InvocationHandler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/WebNavigationClientAdapter;->mWebNavigationClient:Landroidx/webkit/WebNavigationClient;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/webkit/internal/NavigationImpl;->forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/Navigation;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Landroidx/webkit/WebNavigationClient;->onNavigationStarted(Landroidx/webkit/Navigation;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onPageDOMContentLoadedEventFired(Ljava/lang/reflect/InvocationHandler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/WebNavigationClientAdapter;->mWebNavigationClient:Landroidx/webkit/WebNavigationClient;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/webkit/internal/PageImpl;->forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/Page;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Landroidx/webkit/WebNavigationClient;->onPageDomContentLoadedEventFired(Landroidx/webkit/Page;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onPageDeleted(Ljava/lang/reflect/InvocationHandler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/WebNavigationClientAdapter;->mWebNavigationClient:Landroidx/webkit/WebNavigationClient;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/webkit/internal/PageImpl;->forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/Page;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Landroidx/webkit/WebNavigationClient;->onPageDeleted(Landroidx/webkit/Page;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onPageLoadEventFired(Ljava/lang/reflect/InvocationHandler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/WebNavigationClientAdapter;->mWebNavigationClient:Landroidx/webkit/WebNavigationClient;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/webkit/internal/PageImpl;->forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/Page;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Landroidx/webkit/WebNavigationClient;->onPageLoadEventFired(Landroidx/webkit/Page;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
