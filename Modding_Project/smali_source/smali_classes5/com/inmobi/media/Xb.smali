.class public final Lcom/inmobi/media/Xb;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/inmobi/media/ec;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/ec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/Xb;->a:Lcom/inmobi/media/ec;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final a(Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "$callback"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$origin"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 23
    invoke-interface {p0, p1, p2, p3}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static final a(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "$result"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/webkit/JsResult;->confirm()V

    return-void
.end method

.method public static final a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method

.method public static final a(Lcom/inmobi/media/ec;Lcom/inmobi/media/Xb;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$1"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/4 p3, 0x4

    if-ne p3, p2, :cond_1

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_1

    .line 4
    iget-object p0, p0, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    if-eqz p0, :cond_0

    .line 5
    sget-object p2, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    .line 6
    const-string p3, "access$getTAG$cp(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/inmobi/media/A5;

    const-string p3, "Back pressed when HTML5 video is playing."

    invoke-virtual {p0, p2, p3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/inmobi/media/Xb;->a()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final b(Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "$callback"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$origin"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 2
    invoke-interface {p0, p1, p2, p2}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static final b(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "$result"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/webkit/JsResult;->confirm()V

    return-void
.end method

.method public static final c(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    const-string p1, "$result"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/webkit/JsResult;->cancel()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/inmobi/media/Xb;->a:Lcom/inmobi/media/ec;

    .line 9
    iget-object v1, v0, Lcom/inmobi/media/ec;->O:Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, v0, Lcom/inmobi/media/ec;->P:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/Xb;->a:Lcom/inmobi/media/ec;

    const/4 v1, 0x0

    .line 13
    iput-object v1, v0, Lcom/inmobi/media/ec;->P:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 14
    iget-object v0, v0, Lcom/inmobi/media/ec;->O:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_6

    .line 16
    iget-object v0, p0, Lcom/inmobi/media/Xb;->a:Lcom/inmobi/media/ec;

    .line 17
    iget-object v0, v0, Lcom/inmobi/media/ec;->O:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_4
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/inmobi/media/Xb;->a:Lcom/inmobi/media/ec;

    .line 19
    iget-object v2, v2, Lcom/inmobi/media/ec;->O:Landroid/view/View;

    .line 20
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 21
    :cond_5
    iget-object v0, p0, Lcom/inmobi/media/Xb;->a:Lcom/inmobi/media/ec;

    .line 22
    iput-object v1, v0, Lcom/inmobi/media/ec;->O:Landroid/view/View;

    :cond_6
    return-void
.end method

.method public final getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    return-object v0
.end method

.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 4

    .line 1
    const-string v0, "cm"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " -- From line "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, " of "

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object v0, p0, Lcom/inmobi/media/Xb;->a:Lcom/inmobi/media/ec;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    .line 49
    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    sget-object v1, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    .line 53
    .line 54
    const-string v2, "access$getTAG$cp(...)"

    .line 55
    .line 56
    const-string v3, "Console message:"

    .line 57
    .line 58
    invoke-static {v1, v2, v3, p1}, Lcom/inmobi/media/I6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast v0, Lcom/inmobi/media/A5;

    .line 63
    .line 64
    invoke-virtual {v0, v1, p1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    const/4 p1, 0x1

    .line 68
    return p1
.end method

.method public final onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 3

    .line 1
    const-string v0, "origin"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/inmobi/media/Xb;->a:Lcom/inmobi/media/ec;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/inmobi/media/ec;->q:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/inmobi/media/Xb;->a:Lcom/inmobi/media/ec;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/inmobi/media/ec;->q:Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/content/Context;

    .line 32
    .line 33
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    const-string v1, "Location Permission"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "Allow location access"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v1, Lub/b3;

    .line 49
    .line 50
    invoke-direct {v1, p2, p1}, Lub/b3;-><init>(Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const v2, 0x104000a

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    new-instance v1, Lub/c3;

    .line 61
    .line 62
    invoke-direct {v1, p2, p1}, Lub/c3;-><init>(Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/high16 v2, 0x1040000

    .line 66
    .line 67
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 76
    .line 77
    .line 78
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final onHideCustomView()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Xb;->a()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "url"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "message"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "result"

    .line 17
    .line 18
    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/inmobi/media/Xb;->a:Lcom/inmobi/media/ec;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    sget-object v0, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    .line 28
    .line 29
    const-string v1, "access$getTAG$cp(...)"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, "jsAlert called with: "

    .line 37
    .line 38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast p1, Lcom/inmobi/media/A5;

    .line 52
    .line 53
    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/Xb;->a:Lcom/inmobi/media/ec;

    .line 57
    .line 58
    invoke-static {p1, p4}, Lcom/inmobi/media/ec;->a(Lcom/inmobi/media/ec;Landroid/webkit/JsResult;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    iget-object p1, p0, Lcom/inmobi/media/Xb;->a:Lcom/inmobi/media/ec;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/inmobi/media/ec;->getFullScreenActivity()Landroid/app/Activity;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 73
    .line 74
    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    new-instance p2, Lub/d3;

    .line 86
    .line 87
    invoke-direct {p2, p4}, Lub/d3;-><init>(Landroid/webkit/JsResult;)V

    .line 88
    .line 89
    .line 90
    const p3, 0x104000a

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const/4 p2, 0x0

    .line 98
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    .line 111
    .line 112
    .line 113
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 114
    return p1
.end method

.method public final onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "url"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "message"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "result"

    .line 17
    .line 18
    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/inmobi/media/Xb;->a:Lcom/inmobi/media/ec;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    sget-object v0, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    .line 28
    .line 29
    const-string v1, "access$getTAG$cp(...)"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, "jsConfirm called with: "

    .line 37
    .line 38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    check-cast p1, Lcom/inmobi/media/A5;

    .line 52
    .line 53
    invoke-virtual {p1, v0, p2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/Xb;->a:Lcom/inmobi/media/ec;

    .line 57
    .line 58
    invoke-static {p1, p4}, Lcom/inmobi/media/ec;->a(Lcom/inmobi/media/ec;Landroid/webkit/JsResult;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    iget-object p1, p0, Lcom/inmobi/media/Xb;->a:Lcom/inmobi/media/ec;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/inmobi/media/ec;->getFullScreenActivity()Landroid/app/Activity;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 73
    .line 74
    iget-object p2, p0, Lcom/inmobi/media/Xb;->a:Lcom/inmobi/media/ec;

    .line 75
    .line 76
    invoke-virtual {p2}, Lcom/inmobi/media/ec;->getFullScreenActivity()Landroid/app/Activity;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    new-instance p2, Lub/z2;

    .line 88
    .line 89
    invoke-direct {p2, p4}, Lub/z2;-><init>(Landroid/webkit/JsResult;)V

    .line 90
    .line 91
    .line 92
    const p3, 0x104000a

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    new-instance p2, Lub/a3;

    .line 100
    .line 101
    invoke-direct {p2, p4}, Lub/a3;-><init>(Landroid/webkit/JsResult;)V

    .line 102
    .line 103
    .line 104
    const/high16 p3, 0x1040000

    .line 105
    .line 106
    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    .line 119
    .line 120
    .line 121
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 122
    return p1
.end method

.method public final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 2

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "url"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "message"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "defaultValue"

    .line 17
    .line 18
    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p1, "result"

    .line 22
    .line 23
    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/inmobi/media/Xb;->a:Lcom/inmobi/media/ec;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    sget-object p4, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    .line 33
    .line 34
    const-string v0, "access$getTAG$cp(...)"

    .line 35
    .line 36
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v1, "jsPrompt called with: "

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p1, Lcom/inmobi/media/A5;

    .line 57
    .line 58
    invoke-virtual {p1, p4, p2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/Xb;->a:Lcom/inmobi/media/ec;

    .line 62
    .line 63
    invoke-static {p1, p5}, Lcom/inmobi/media/ec;->a(Lcom/inmobi/media/ec;Landroid/webkit/JsResult;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    const/4 p2, 0x1

    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    iget-object p1, p0, Lcom/inmobi/media/Xb;->a:Lcom/inmobi/media/ec;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/inmobi/media/ec;->getFullScreenActivity()Landroid/app/Activity;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-nez p1, :cond_1

    .line 77
    .line 78
    invoke-virtual {p5}, Landroid/webkit/JsResult;->cancel()V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    const/4 p2, 0x0

    .line 83
    :cond_2
    :goto_0
    return p2
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Xb;->a:Lcom/inmobi/media/ec;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "access$getTAG$cp(...)"

    .line 10
    .line 11
    const-string v3, "webview progress changed - "

    .line 12
    .line 13
    invoke-static {v1, v2, v3, p2}, Lcom/inmobi/media/X8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v0, Lcom/inmobi/media/A5;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/inmobi/media/Xb;->a:Lcom/inmobi/media/ec;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/inmobi/media/ec;->q:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_8

    .line 20
    .line 21
    iget-object v0, p0, Lcom/inmobi/media/Xb;->a:Lcom/inmobi/media/ec;

    .line 22
    .line 23
    iput-object p1, v0, Lcom/inmobi/media/ec;->O:Landroid/view/View;

    .line 24
    .line 25
    iput-object p2, v0, Lcom/inmobi/media/ec;->P:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    new-instance p2, Lub/e3;

    .line 30
    .line 31
    invoke-direct {p2}, Lub/e3;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/Xb;->a:Lcom/inmobi/media/ec;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/inmobi/media/ec;->q:Ljava/lang/ref/WeakReference;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Landroid/app/Activity;

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    const p2, 0x1020002

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Landroid/widget/FrameLayout;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 p1, 0x0

    .line 60
    :goto_0
    iget-object p2, p0, Lcom/inmobi/media/Xb;->a:Lcom/inmobi/media/ec;

    .line 61
    .line 62
    iget-object p2, p2, Lcom/inmobi/media/ec;->O:Landroid/view/View;

    .line 63
    .line 64
    if-eqz p2, :cond_2

    .line 65
    .line 66
    const/high16 v0, -0x1000000

    .line 67
    .line 68
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 69
    .line 70
    .line 71
    :cond_2
    if-eqz p1, :cond_3

    .line 72
    .line 73
    iget-object p2, p0, Lcom/inmobi/media/Xb;->a:Lcom/inmobi/media/ec;

    .line 74
    .line 75
    iget-object p2, p2, Lcom/inmobi/media/ec;->O:Landroid/view/View;

    .line 76
    .line 77
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 78
    .line 79
    const/4 v1, -0x1

    .line 80
    const/4 v2, 0x0

    .line 81
    invoke-direct {v0, v1, v1, v2, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    iget-object p1, p0, Lcom/inmobi/media/Xb;->a:Lcom/inmobi/media/ec;

    .line 88
    .line 89
    iget-object p1, p1, Lcom/inmobi/media/ec;->O:Landroid/view/View;

    .line 90
    .line 91
    if-eqz p1, :cond_4

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 94
    .line 95
    .line 96
    :cond_4
    iget-object p1, p0, Lcom/inmobi/media/Xb;->a:Lcom/inmobi/media/ec;

    .line 97
    .line 98
    iget-object p2, p1, Lcom/inmobi/media/ec;->O:Landroid/view/View;

    .line 99
    .line 100
    new-instance v0, Lub/f3;

    .line 101
    .line 102
    invoke-direct {v0, p1, p0}, Lub/f3;-><init>(Lcom/inmobi/media/ec;Lcom/inmobi/media/Xb;)V

    .line 103
    .line 104
    .line 105
    if-eqz p2, :cond_5

    .line 106
    .line 107
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 108
    .line 109
    .line 110
    :cond_5
    const/4 p1, 0x1

    .line 111
    if-nez p2, :cond_6

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_6
    invoke-virtual {p2, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 115
    .line 116
    .line 117
    :goto_1
    if-nez p2, :cond_7

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_7
    invoke-virtual {p2, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 121
    .line 122
    .line 123
    :goto_2
    if-eqz p2, :cond_8

    .line 124
    .line 125
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 126
    .line 127
    .line 128
    :cond_8
    return-void
.end method
