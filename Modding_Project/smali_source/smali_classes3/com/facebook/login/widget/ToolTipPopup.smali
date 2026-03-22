.class public final Lcom/facebook/login/widget/ToolTipPopup;
.super Ljava/lang/Object;
.source "ToolTipPopup.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/widget/ToolTipPopup$a;,
        Lcom/facebook/login/widget/ToolTipPopup$b;,
        Lcom/facebook/login/widget/ToolTipPopup$Style;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final i:Lcom/facebook/login/widget/ToolTipPopup$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:Lcom/facebook/login/widget/ToolTipPopup$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Landroid/widget/PopupWindow;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Lcom/facebook/login/widget/ToolTipPopup$Style;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private g:J

.field private final h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/login/widget/ToolTipPopup$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/login/widget/ToolTipPopup$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/login/widget/ToolTipPopup;->i:Lcom/facebook/login/widget/ToolTipPopup$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "anchor"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/facebook/login/widget/ToolTipPopup;->a:Ljava/lang/String;

    .line 15
    .line 16
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/facebook/login/widget/ToolTipPopup;->b:Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string p2, "anchor.context"

    .line 28
    .line 29
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/facebook/login/widget/ToolTipPopup;->c:Landroid/content/Context;

    .line 33
    .line 34
    sget-object p1, Lcom/facebook/login/widget/ToolTipPopup$Style;->BLUE:Lcom/facebook/login/widget/ToolTipPopup$Style;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/facebook/login/widget/ToolTipPopup;->f:Lcom/facebook/login/widget/ToolTipPopup$Style;

    .line 37
    .line 38
    const-wide/16 p1, 0x1770

    .line 39
    .line 40
    iput-wide p1, p0, Lcom/facebook/login/widget/ToolTipPopup;->g:J

    .line 41
    .line 42
    new-instance p1, Lcom/facebook/login/widget/h;

    .line 43
    .line 44
    invoke-direct {p1, p0}, Lcom/facebook/login/widget/h;-><init>(Lcom/facebook/login/widget/ToolTipPopup;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/facebook/login/widget/ToolTipPopup;->h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 48
    .line 49
    return-void
.end method

.method public static synthetic a(Lcom/facebook/login/widget/ToolTipPopup;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/login/widget/ToolTipPopup;->j(Lcom/facebook/login/widget/ToolTipPopup;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/facebook/login/widget/ToolTipPopup;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/facebook/login/widget/ToolTipPopup;->k(Lcom/facebook/login/widget/ToolTipPopup;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/facebook/login/widget/ToolTipPopup;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/login/widget/ToolTipPopup;->f(Lcom/facebook/login/widget/ToolTipPopup;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final e()V
    .locals 2

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/login/widget/ToolTipPopup;->l()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->b:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/view/View;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/facebook/login/widget/ToolTipPopup;->h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    return-void

    .line 36
    :goto_1
    invoke-static {v0, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private static final f(Lcom/facebook/login/widget/ToolTipPopup;)V
    .locals 3

    .line 1
    const-class v0, Lcom/facebook/login/widget/ToolTipPopup;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    const-string v1, "this$0"

    .line 11
    .line 12
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/facebook/login/widget/ToolTipPopup;->b:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lcom/facebook/login/widget/ToolTipPopup;->e:Landroid/widget/PopupWindow;

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-object p0, p0, Lcom/facebook/login/widget/ToolTipPopup;->d:Lcom/facebook/login/widget/ToolTipPopup$b;

    .line 40
    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/facebook/login/widget/ToolTipPopup$b;->e()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget-object p0, p0, Lcom/facebook/login/widget/ToolTipPopup;->d:Lcom/facebook/login/widget/ToolTipPopup$b;

    .line 50
    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/facebook/login/widget/ToolTipPopup$b;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    return-void

    .line 57
    :goto_1
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private static final j(Lcom/facebook/login/widget/ToolTipPopup;)V
    .locals 2

    .line 1
    const-class v0, Lcom/facebook/login/widget/ToolTipPopup;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    const-string v1, "this$0"

    .line 11
    .line 12
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/facebook/login/widget/ToolTipPopup;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private static final k(Lcom/facebook/login/widget/ToolTipPopup;Landroid/view/View;)V
    .locals 1

    .line 1
    const-class p1, Lcom/facebook/login/widget/ToolTipPopup;

    .line 2
    .line 3
    invoke-static {p1}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    const-string v0, "this$0"

    .line 11
    .line 12
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/facebook/login/widget/ToolTipPopup;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {p0, p1}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private final l()V
    .locals 2

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->b:Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/view/View;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/facebook/login/widget/ToolTipPopup;->h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    return-void

    .line 33
    :goto_1
    invoke-static {v0, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private final m()V
    .locals 2

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->e:Landroid/widget/PopupWindow;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->d:Lcom/facebook/login/widget/ToolTipPopup$b;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/facebook/login/widget/ToolTipPopup$b;->e()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->d:Lcom/facebook/login/widget/ToolTipPopup$b;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/facebook/login/widget/ToolTipPopup$b;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    return-void

    .line 42
    :goto_1
    invoke-static {v0, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/login/widget/ToolTipPopup;->l()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->e:Landroid/widget/PopupWindow;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    return-void

    .line 22
    :goto_1
    invoke-static {v0, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final g(J)V
    .locals 1

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    iput-wide p1, p0, Lcom/facebook/login/widget/ToolTipPopup;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final h(Lcom/facebook/login/widget/ToolTipPopup$Style;)V
    .locals 1
    .param p1    # Lcom/facebook/login/widget/ToolTipPopup$Style;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    const-string v0, "style"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/facebook/login/widget/ToolTipPopup;->f:Lcom/facebook/login/widget/ToolTipPopup$Style;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final i()V
    .locals 6

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->b:Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    new-instance v0, Lcom/facebook/login/widget/ToolTipPopup$b;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/facebook/login/widget/ToolTipPopup;->c:Landroid/content/Context;

    .line 19
    .line 20
    invoke-direct {v0, p0, v1}, Lcom/facebook/login/widget/ToolTipPopup$b;-><init>(Lcom/facebook/login/widget/ToolTipPopup;Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->d:Lcom/facebook/login/widget/ToolTipPopup$b;

    .line 24
    .line 25
    sget v1, Lcom/facebook/login/x;->d:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "null cannot be cast to non-null type android.widget.TextView"

    .line 32
    .line 33
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    check-cast v1, Landroid/widget/TextView;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/facebook/login/widget/ToolTipPopup;->a:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/facebook/login/widget/ToolTipPopup;->f:Lcom/facebook/login/widget/ToolTipPopup$Style;

    .line 44
    .line 45
    sget-object v2, Lcom/facebook/login/widget/ToolTipPopup$Style;->BLUE:Lcom/facebook/login/widget/ToolTipPopup$Style;

    .line 46
    .line 47
    if-ne v1, v2, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/facebook/login/widget/ToolTipPopup$b;->a()Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    sget v2, Lcom/facebook/login/w;->g:I

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/facebook/login/widget/ToolTipPopup$b;->b()Landroid/widget/ImageView;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    sget v2, Lcom/facebook/login/w;->h:I

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/facebook/login/widget/ToolTipPopup$b;->c()Landroid/widget/ImageView;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    sget v2, Lcom/facebook/login/w;->i:I

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/facebook/login/widget/ToolTipPopup$b;->d()Landroid/widget/ImageView;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    sget v2, Lcom/facebook/login/w;->j:I

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    goto/16 :goto_1

    .line 88
    .line 89
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/login/widget/ToolTipPopup$b;->a()Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    sget v2, Lcom/facebook/login/w;->c:I

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/facebook/login/widget/ToolTipPopup$b;->b()Landroid/widget/ImageView;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    sget v2, Lcom/facebook/login/w;->d:I

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/facebook/login/widget/ToolTipPopup$b;->c()Landroid/widget/ImageView;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    sget v2, Lcom/facebook/login/w;->e:I

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/facebook/login/widget/ToolTipPopup$b;->d()Landroid/widget/ImageView;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    sget v2, Lcom/facebook/login/w;->f:I

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    .line 124
    .line 125
    :goto_0
    iget-object v1, p0, Lcom/facebook/login/widget/ToolTipPopup;->c:Landroid/content/Context;

    .line 126
    .line 127
    const-string v2, "null cannot be cast to non-null type android.app.Activity"

    .line 128
    .line 129
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    check-cast v1, Landroid/app/Activity;

    .line 133
    .line 134
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    const-string v2, "window.decorView"

    .line 143
    .line 144
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    invoke-direct {p0}, Lcom/facebook/login/widget/ToolTipPopup;->e()V

    .line 156
    .line 157
    .line 158
    const/high16 v3, -0x80000000

    .line 159
    .line 160
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 169
    .line 170
    .line 171
    new-instance v1, Landroid/widget/PopupWindow;

    .line 172
    .line 173
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    invoke-direct {v1, v0, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 182
    .line 183
    .line 184
    iput-object v1, p0, Lcom/facebook/login/widget/ToolTipPopup;->e:Landroid/widget/PopupWindow;

    .line 185
    .line 186
    iget-object v2, p0, Lcom/facebook/login/widget/ToolTipPopup;->b:Ljava/lang/ref/WeakReference;

    .line 187
    .line 188
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    check-cast v2, Landroid/view/View;

    .line 193
    .line 194
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 195
    .line 196
    .line 197
    invoke-direct {p0}, Lcom/facebook/login/widget/ToolTipPopup;->m()V

    .line 198
    .line 199
    .line 200
    iget-wide v2, p0, Lcom/facebook/login/widget/ToolTipPopup;->g:J

    .line 201
    .line 202
    const-wide/16 v4, 0x0

    .line 203
    .line 204
    cmp-long v2, v2, v4

    .line 205
    .line 206
    if-lez v2, :cond_2

    .line 207
    .line 208
    new-instance v2, Lcom/facebook/login/widget/i;

    .line 209
    .line 210
    invoke-direct {v2, p0}, Lcom/facebook/login/widget/i;-><init>(Lcom/facebook/login/widget/ToolTipPopup;)V

    .line 211
    .line 212
    .line 213
    iget-wide v3, p0, Lcom/facebook/login/widget/ToolTipPopup;->g:J

    .line 214
    .line 215
    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 216
    .line 217
    .line 218
    :cond_2
    const/4 v2, 0x1

    .line 219
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 220
    .line 221
    .line 222
    new-instance v1, Lcom/facebook/login/widget/j;

    .line 223
    .line 224
    invoke-direct {v1, p0}, Lcom/facebook/login/widget/j;-><init>(Lcom/facebook/login/widget/ToolTipPopup;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    .line 229
    .line 230
    :cond_3
    return-void

    .line 231
    :goto_1
    invoke-static {v0, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    return-void
.end method
