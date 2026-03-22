.class Landroidx/webkit/internal/WebMessagePortImpl$1;
.super Landroid/webkit/WebMessagePort$WebMessageCallback;
.source "WebMessagePortImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/webkit/internal/WebMessagePortImpl;->setWebMessageCallback(Landroidx/webkit/WebMessagePortCompat$WebMessageCallbackCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/webkit/internal/WebMessagePortImpl;

.field final synthetic val$callback:Landroidx/webkit/WebMessagePortCompat$WebMessageCallbackCompat;


# direct methods
.method constructor <init>(Landroidx/webkit/internal/WebMessagePortImpl;Landroidx/webkit/WebMessagePortCompat$WebMessageCallbackCompat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/webkit/internal/WebMessagePortImpl$1;->this$0:Landroidx/webkit/internal/WebMessagePortImpl;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/webkit/internal/WebMessagePortImpl$1;->val$callback:Landroidx/webkit/WebMessagePortCompat$WebMessageCallbackCompat;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/webkit/WebMessagePort$WebMessageCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onMessage(Landroid/webkit/WebMessagePort;Landroid/webkit/WebMessage;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/WebMessagePortImpl$1;->val$callback:Landroidx/webkit/WebMessagePortCompat$WebMessageCallbackCompat;

    .line 2
    .line 3
    new-instance v1, Landroidx/webkit/internal/WebMessagePortImpl;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Landroidx/webkit/internal/WebMessagePortImpl;-><init>(Landroid/webkit/WebMessagePort;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Landroidx/webkit/internal/WebMessagePortImpl;->frameworkMessageToCompat(Landroid/webkit/WebMessage;)Landroidx/webkit/WebMessageCompat;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, v1, p1}, Landroidx/webkit/WebMessagePortCompat$WebMessageCallbackCompat;->onMessage(Landroidx/webkit/WebMessagePortCompat;Landroidx/webkit/WebMessageCompat;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
