.class public Landroidx/webkit/internal/WebViewStartUpCallbackAdapter;
.super Ljava/lang/Object;
.source "WebViewStartUpCallbackAdapter.java"

# interfaces
.implements Lorg/chromium/support_lib_boundary/WebViewStartUpCallbackBoundaryInterface;


# annotations
.annotation build Landroidx/webkit/WebViewCompat$ExperimentalAsyncStartUp;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/internal/WebViewStartUpCallbackAdapter$StartUpLocationImpl;
    }
.end annotation


# instance fields
.field private final mWebViewStartUpCallback:Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;


# direct methods
.method public constructor <init>(Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter;->mWebViewStartUpCallback:Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;

    .line 5
    .line 6
    return-void
.end method

.method private convertFromThrowables(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/webkit/StartUpLocation;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/Throwable;

    .line 21
    .line 22
    new-instance v2, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter$StartUpLocationImpl;

    .line 23
    .line 24
    invoke-direct {v2, v1}, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter$StartUpLocationImpl;-><init>(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-object v0
.end method

.method private webViewStartUpResultFromBoundaryInterface(Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;)Landroidx/webkit/WebViewStartUpResult;
    .locals 3

    .line 1
    invoke-interface {p1}, Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;->getBlockingStartUpLocations()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter;->convertFromThrowables(Ljava/util/List;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Landroidx/webkit/internal/WebViewFeatureInternal;->ASYNC_WEBVIEW_STARTUP_ASYNC_STARTUP_LOCATIONS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {p1}, Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;->getAsyncStartUpLocations()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {p0, v1}, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter;->convertFromThrowables(Ljava/util/List;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    new-instance v2, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter$1;

    .line 28
    .line 29
    invoke-direct {v2, p0, v0, v1, p1}, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter$1;-><init>(Landroidx/webkit/internal/WebViewStartUpCallbackAdapter;Ljava/util/List;Ljava/util/List;Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;)V

    .line 30
    .line 31
    .line 32
    return-object v2
.end method


# virtual methods
.method public onSuccess(Ljava/lang/reflect/InvocationHandler;)V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lzt/a;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    check-cast p1, Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;

    .line 13
    .line 14
    invoke-direct {p0, p1}, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter;->webViewStartUpResultFromBoundaryInterface(Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;)Landroidx/webkit/WebViewStartUpResult;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p0, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter;->mWebViewStartUpCallback:Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;->onSuccess(Landroidx/webkit/WebViewStartUpResult;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
