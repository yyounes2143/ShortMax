.class public final Lcom/unity3d/services/store/core/WebViewStoreExceptionHandler;
.super Ljava/lang/Object;
.source "WebViewStoreExceptionHandler.kt"

# interfaces
.implements Lcom/unity3d/services/store/core/StoreExceptionHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final _webViewErrorHandler:Lcom/unity3d/services/ads/gmascar/handlers/WebViewErrorHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/services/ads/gmascar/handlers/WebViewErrorHandler;)V
    .locals 1
    .param p1    # Lcom/unity3d/services/ads/gmascar/handlers/WebViewErrorHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "_webViewErrorHandler"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/unity3d/services/store/core/WebViewStoreExceptionHandler;->_webViewErrorHandler:Lcom/unity3d/services/ads/gmascar/handlers/WebViewErrorHandler;

    .line 10
    .line 11
    return-void
.end method

.method private final getStoreError(Ljava/lang/Exception;)Lcom/unity3d/services/store/StoreError;
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/NoSuchMethodException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/unity3d/services/store/StoreError;->NO_SUCH_METHOD:Lcom/unity3d/services/store/StoreError;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    instance-of v0, p1, Ljava/lang/IllegalAccessException;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sget-object p1, Lcom/unity3d/services/store/StoreError;->ILLEGAL_ACCESS:Lcom/unity3d/services/store/StoreError;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    instance-of v0, p1, Lorg/json/JSONException;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    sget-object p1, Lcom/unity3d/services/store/StoreError;->JSON_ERROR:Lcom/unity3d/services/store/StoreError;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/InvocationTargetException;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    sget-object p1, Lcom/unity3d/services/store/StoreError;->INVOCATION_TARGET:Lcom/unity3d/services/store/StoreError;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    instance-of p1, p1, Ljava/lang/ClassNotFoundException;

    .line 30
    .line 31
    if-eqz p1, :cond_4

    .line 32
    .line 33
    sget-object p1, Lcom/unity3d/services/store/StoreError;->CLASS_NOT_FOUND:Lcom/unity3d/services/store/StoreError;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_4
    sget-object p1, Lcom/unity3d/services/store/StoreError;->UNKNOWN_ERROR:Lcom/unity3d/services/store/StoreError;

    .line 37
    .line 38
    :goto_0
    return-object p1
.end method

.method private final sendErrorToWebView(Lcom/unity3d/services/store/StoreEvent;Lcom/unity3d/services/store/StoreError;ILjava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/store/core/WebViewStoreExceptionHandler;->_webViewErrorHandler:Lcom/unity3d/services/ads/gmascar/handlers/WebViewErrorHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/unity3d/services/store/core/StoreWebViewError;

    .line 4
    .line 5
    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p4

    .line 17
    filled-new-array {p3, p2, p4}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-direct {v1, p1, v2, p2}, Lcom/unity3d/services/store/core/StoreWebViewError;-><init>(Ljava/lang/Enum;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/unity3d/services/ads/gmascar/handlers/WebViewErrorHandler;->handleError(Lcom/unity3d/scar/adapter/common/l;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public handleStoreException(Lcom/unity3d/services/store/StoreEvent;ILjava/lang/Exception;)V
    .locals 1
    .param p1    # Lcom/unity3d/services/store/StoreEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "storeEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "exception"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p3}, Lcom/unity3d/services/store/core/WebViewStoreExceptionHandler;->getStoreError(Ljava/lang/Exception;)Lcom/unity3d/services/store/StoreError;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/unity3d/services/store/core/WebViewStoreExceptionHandler;->sendErrorToWebView(Lcom/unity3d/services/store/StoreEvent;Lcom/unity3d/services/store/StoreError;ILjava/lang/Exception;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
