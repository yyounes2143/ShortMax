.class Lio/bidmachine/iab/mraid/MraidWebView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidWebView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/iab/mraid/MraidWebView;


# direct methods
.method constructor <init>(Lio/bidmachine/iab/mraid/MraidWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebView$b;->a:Lio/bidmachine/iab/mraid/MraidWebView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebView$b;->a:Lio/bidmachine/iab/mraid/MraidWebView;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidWebView;->c(Lio/bidmachine/iab/mraid/MraidWebView;)Lio/bidmachine/iab/mraid/u;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    if-eq p2, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 30
    return p1
.end method
