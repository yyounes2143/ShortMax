.class public final synthetic Lcom/unity3d/services/core/webview/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/unity3d/services/core/webview/WebView;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/webkit/ValueCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/services/core/webview/WebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/unity3d/services/core/webview/c;->a:Lcom/unity3d/services/core/webview/WebView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/unity3d/services/core/webview/c;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/unity3d/services/core/webview/c;->c:Landroid/webkit/ValueCallback;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/core/webview/c;->a:Lcom/unity3d/services/core/webview/WebView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/unity3d/services/core/webview/c;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/unity3d/services/core/webview/c;->c:Landroid/webkit/ValueCallback;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/unity3d/services/core/webview/WebView;->b(Lcom/unity3d/services/core/webview/WebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
