.class public final Lcom/inmobi/media/Y3;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Activity;

.field public b:I

.field public c:Lcom/inmobi/media/h4;

.field public d:Lcom/inmobi/media/b4;

.field public e:Lcom/inmobi/media/Fe;

.field public f:Lcom/inmobi/media/z5;

.field public g:Lcom/inmobi/media/Df;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/inmobi/media/Y3;->a:Landroid/app/Activity;

    .line 10
    .line 11
    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lcom/inmobi/media/Y3;->b:I

    .line 13
    .line 14
    return-void
.end method

.method public static final a(Lcom/inmobi/media/Y3;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/inmobi/media/Y3;->c:Lcom/inmobi/media/h4;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 6
    iget-object p0, p0, Lcom/inmobi/media/Y3;->d:Lcom/inmobi/media/b4;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/inmobi/media/i5;

    .line 7
    iget-object p0, p0, Lcom/inmobi/media/i5;->a:Lcom/inmobi/media/j5;

    invoke-static {p0}, Lcom/inmobi/media/j5;->a(Lcom/inmobi/media/j5;)V

    :cond_0
    return v1

    .line 8
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_4

    const p2, -0x777778

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 10
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p0, p0, Lcom/inmobi/media/Y3;->d:Lcom/inmobi/media/b4;

    if-eqz p0, :cond_3

    check-cast p0, Lcom/inmobi/media/i5;

    .line 13
    iget-object p0, p0, Lcom/inmobi/media/i5;->a:Lcom/inmobi/media/j5;

    invoke-static {p0}, Lcom/inmobi/media/j5;->a(Lcom/inmobi/media/j5;)V

    :cond_3
    :goto_0
    return v1

    .line 14
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_5

    const p0, -0xff0001

    .line 15
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_5
    return v1
.end method

.method public static final b(Lcom/inmobi/media/Y3;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const p2, -0x777778

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7
    iget-object p1, p0, Lcom/inmobi/media/Y3;->c:Lcom/inmobi/media/h4;

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p1, Lcom/inmobi/media/h4;->h:Lcom/inmobi/media/c4;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    const/16 v0, 0xc

    const/4 v2, 0x5

    .line 9
    invoke-static {p1, v2, v1, p2, v0}, Lcom/inmobi/media/c4;->a(Lcom/inmobi/media/c4;IZLjava/lang/String;I)V

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/inmobi/media/Y3;->d:Lcom/inmobi/media/b4;

    if-eqz p0, :cond_1

    check-cast p0, Lcom/inmobi/media/i5;

    .line 11
    iget-object p0, p0, Lcom/inmobi/media/i5;->a:Lcom/inmobi/media/j5;

    invoke-static {p0}, Lcom/inmobi/media/j5;->a(Lcom/inmobi/media/j5;)V

    :cond_1
    return v1

    .line 12
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_3

    const p0, -0xff0001

    .line 13
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    return v1
.end method

.method public static final c(Lcom/inmobi/media/Y3;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Lcom/inmobi/media/Y3;->c:Lcom/inmobi/media/h4;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_2

    const p2, -0x777778

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8
    invoke-virtual {p0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/webkit/WebView;->goForward()V

    :cond_1
    return v0

    .line 10
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_3

    const p0, -0xff0001

    .line 11
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    return v0
.end method

.method public static final d(Lcom/inmobi/media/Y3;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const p2, -0x777778

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7
    iget-object p1, p0, Lcom/inmobi/media/Y3;->c:Lcom/inmobi/media/h4;

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p1, Lcom/inmobi/media/h4;->h:Lcom/inmobi/media/c4;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    const/16 v0, 0xc

    const/4 v2, 0x6

    .line 9
    invoke-static {p1, v2, v1, p2, v0}, Lcom/inmobi/media/c4;->a(Lcom/inmobi/media/c4;IZLjava/lang/String;I)V

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/inmobi/media/Y3;->c:Lcom/inmobi/media/h4;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebView;->reload()V

    :cond_1
    return v1

    .line 11
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_3

    const p0, -0xff0001

    .line 12
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    return v1
.end method


# virtual methods
.method public final a(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/inmobi/media/y3;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/media/Y3;->f:Lcom/inmobi/media/z5;

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/inmobi/media/y3;-><init>(Landroid/content/Context;BLcom/inmobi/media/z5;)V

    const v1, 0xffdf

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 3
    new-instance v1, Lub/h3;

    invoke-direct {v1, p0}, Lub/h3;-><init>(Lcom/inmobi/media/Y3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4
    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/inmobi/media/y3;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/media/Y3;->f:Lcom/inmobi/media/z5;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/inmobi/media/y3;-><init>(Landroid/content/Context;BLcom/inmobi/media/z5;)V

    const v1, 0xffec

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 3
    new-instance v1, Lub/j3;

    invoke-direct {v1, p0}, Lub/j3;-><init>(Lcom/inmobi/media/Y3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4
    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final c(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/inmobi/media/y3;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/media/Y3;->f:Lcom/inmobi/media/z5;

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/inmobi/media/y3;-><init>(Landroid/content/Context;BLcom/inmobi/media/z5;)V

    const v1, 0xffedb

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 3
    new-instance v1, Lub/k3;

    invoke-direct {v1, p0}, Lub/k3;-><init>(Lcom/inmobi/media/Y3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4
    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final d(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/inmobi/media/y3;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/media/Y3;->f:Lcom/inmobi/media/z5;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/inmobi/media/y3;-><init>(Landroid/content/Context;BLcom/inmobi/media/z5;)V

    const v1, 0xffde

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 3
    new-instance v1, Lub/i3;

    invoke-direct {v1, p0}, Lub/i3;-><init>(Lcom/inmobi/media/Y3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4
    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final getUserLeftApplicationListener()Lcom/inmobi/media/Fe;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Y3;->e:Lcom/inmobi/media/Fe;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setEmbeddedBrowserUpdateListener(Lcom/inmobi/media/b4;)V
    .locals 1
    .param p1    # Lcom/inmobi/media/b4;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "browserUpdateListener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/inmobi/media/Y3;->d:Lcom/inmobi/media/b4;

    .line 7
    .line 8
    return-void
.end method

.method public final setLogger(Lcom/inmobi/media/z5;)V
    .locals 1
    .param p1    # Lcom/inmobi/media/z5;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "logger"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/inmobi/media/Y3;->f:Lcom/inmobi/media/z5;

    .line 7
    .line 8
    return-void
.end method

.method public final setUserLeftApplicationListener(Lcom/inmobi/media/Fe;)V
    .locals 0
    .param p1    # Lcom/inmobi/media/Fe;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/Y3;->e:Lcom/inmobi/media/Fe;

    .line 2
    .line 3
    return-void
.end method
