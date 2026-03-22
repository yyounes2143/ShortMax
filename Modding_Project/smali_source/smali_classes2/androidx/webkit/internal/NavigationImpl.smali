.class public Landroidx/webkit/internal/NavigationImpl;
.super Ljava/lang/Object;
.source "NavigationImpl.java"

# interfaces
.implements Landroidx/webkit/Navigation;


# annotations
.annotation build Landroidx/webkit/WebNavigationClient$ExperimentalNavigationCallback;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field mImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

.field mPage:Landroidx/webkit/Page;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>(Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/webkit/internal/NavigationImpl;->mImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/webkit/internal/NavigationImpl;->lambda$forInvocationHandler$0(Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/Navigation;
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lzt/a;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 8
    .line 9
    new-instance v0, Landroidx/webkit/internal/h0;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Landroidx/webkit/internal/h0;-><init>(Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v0}, Lorg/chromium/support_lib_boundary/IsomorphicObjectBoundaryInterface;->getOrCreatePeer(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    check-cast p0, Landroidx/webkit/Navigation;

    .line 22
    .line 23
    return-object p0
.end method

.method private static synthetic lambda$forInvocationHandler$0(Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/webkit/internal/NavigationImpl;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/webkit/internal/NavigationImpl;-><init>(Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public didCommit()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/NavigationImpl;->mImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->didCommit()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public didCommitErrorPage()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/NavigationImpl;->mImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->didCommitErrorPage()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getPage()Landroidx/webkit/Page;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/NavigationImpl;->mImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->getPage()Ljava/lang/reflect/InvocationHandler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/webkit/internal/NavigationImpl;->mPage:Landroidx/webkit/Page;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/webkit/internal/NavigationImpl;->mImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 16
    .line 17
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->getPage()Ljava/lang/reflect/InvocationHandler;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Landroidx/webkit/internal/PageImpl;->forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/Page;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Landroidx/webkit/internal/NavigationImpl;->mPage:Landroidx/webkit/Page;

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Landroidx/webkit/internal/NavigationImpl;->mPage:Landroidx/webkit/Page;

    .line 28
    .line 29
    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/NavigationImpl;->mImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->getStatusCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/NavigationImpl;->mImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->getUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isBack()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/NavigationImpl;->mImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->isBack()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isForward()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/NavigationImpl;->mImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->isForward()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isHistory()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/NavigationImpl;->mImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->isHistory()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isReload()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/NavigationImpl;->mImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->isReload()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isRestore()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/NavigationImpl;->mImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->isRestore()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isSameDocument()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/NavigationImpl;->mImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->isSameDocument()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public wasInitiatedByPage()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/NavigationImpl;->mImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->wasInitiatedByPage()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
