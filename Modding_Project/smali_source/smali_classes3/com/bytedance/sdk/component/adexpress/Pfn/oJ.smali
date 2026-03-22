.class public abstract Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/ZYk/dLZ;
.implements Lcom/bytedance/sdk/component/adexpress/ZYk/ex;
.implements Lcom/bytedance/sdk/component/adexpress/oJ;
.implements Lcom/bytedance/sdk/component/adexpress/theme/oJ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/adexpress/ZYk/dLZ;",
        "Lcom/bytedance/sdk/component/adexpress/ZYk/ex<",
        "Lcom/bytedance/sdk/component/jFA/ba;",
        ">;",
        "Lcom/bytedance/sdk/component/adexpress/oJ;",
        "Lcom/bytedance/sdk/component/adexpress/theme/oJ;"
    }
.end annotation


# instance fields
.field private BTZ:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

.field protected Pfn:I

.field private PiB:Z

.field private WcQ:I

.field protected ZYk:Z

.field protected ba:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private cFZ:Landroid/content/Context;

.field private dLZ:Lcom/bytedance/sdk/component/adexpress/ZYk/so;

.field protected ex:Lcom/bytedance/sdk/component/jFA/ba;

.field private jFA:Ljava/lang/String;

.field private volatile kkU:Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;

.field protected oJ:Lorg/json/JSONObject;

.field private so:Ljava/lang/String;

.field protected tB:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ZYk:Z

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    iput v1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->Pfn:I

    .line 10
    .line 11
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ba:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->cFZ:Landroid/content/Context;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->BTZ:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->ex()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->so:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p3, p0}, Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;->oJ(Lcom/bytedance/sdk/component/adexpress/theme/oJ;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/ex;->ZYk()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->BTZ()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->PiB()Lcom/bytedance/sdk/component/jFA/ba;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex:Lcom/bytedance/sdk/component/jFA/ba;

    .line 46
    .line 47
    const-string p2, "WebViewRender"

    .line 48
    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    const-string p1, "initWebView: create WebView"

    .line 52
    .line 53
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/ex;->oJ()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    new-instance p1, Lcom/bytedance/sdk/component/jFA/ba;

    .line 63
    .line 64
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/ex;->oJ()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-direct {p1, p2}, Lcom/bytedance/sdk/component/jFA/ba;-><init>(Landroid/content/Context;)V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex:Lcom/bytedance/sdk/component/jFA/ba;

    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    const/4 p1, 0x1

    .line 75
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ZYk:Z

    .line 76
    .line 77
    const-string p1, "initWebView: reuse WebView"

    .line 78
    .line 79
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    :cond_2
    return-void
.end method

.method private BTZ()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->cFZ:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/ex;->oJ()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/ex;->oJ()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->cFZ:Landroid/content/Context;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->cFZ:Landroid/content/Context;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->PiB()Lcom/bytedance/sdk/component/jFA/ba;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex:Lcom/bytedance/sdk/component/jFA/ba;

    .line 26
    .line 27
    const-string v1, "WebViewRender"

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    const-string v0, "initWebView: create WebView by act"

    .line 32
    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/bytedance/sdk/component/jFA/ba;

    .line 37
    .line 38
    new-instance v1, Landroid/content/MutableContextWrapper;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->cFZ:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-direct {v1, v2}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex:Lcom/bytedance/sdk/component/jFA/ba;

    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ZYk:Z

    .line 57
    .line 58
    const-string v0, "initWebView: reuse WebView"

    .line 59
    .line 60
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    :cond_2
    return-void
.end method

.method private PiB()Lcom/bytedance/sdk/component/jFA/ba;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->BTZ:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->cY()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->oJ()Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->cFZ:Landroid/content/Context;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->so:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->oJ(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/component/jFA/ba;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->oJ()Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->cFZ:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->so:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->ZYk(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/component/jFA/ba;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method

.method private WcQ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->BTZ:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->cY()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->oJ()Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex:Lcom/bytedance/sdk/component/jFA/ba;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->ZYk(Lcom/bytedance/sdk/component/jFA/ba;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->oJ()Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex:Lcom/bytedance/sdk/component/jFA/ba;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->tB(Lcom/bytedance/sdk/component/jFA/ba;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private ZYk(Landroid/app/Activity;)I
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method private oJ(FF)V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->BTZ:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->Pfn()Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;->Pfn()V

    .line 57
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->tB()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->oJ()Lcom/bytedance/sdk/component/jFA/ba;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    if-nez p1, :cond_0

    .line 59
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 60
    :cond_0
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 61
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 62
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->oJ()Lcom/bytedance/sdk/component/jFA/ba;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->cFZ:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/adexpress/ex/cFZ;->oJ(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->cFZ:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/bytedance/sdk/component/adexpress/ex/cFZ;->oJ(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    .line 65
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->oJ()Lcom/bytedance/sdk/component/jFA/ba;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_2

    .line 66
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 67
    :cond_2
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 68
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 69
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->oJ()Lcom/bytedance/sdk/component/jFA/ba;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private oJ(ILjava/lang/String;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->kkU:Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->kkU:Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;->oJ(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;FF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;FF)V

    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;FF)V
    .locals 2

    .line 46
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->kkU()I

    .line 47
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->tB:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->PiB:Z

    if-nez v1, :cond_0

    .line 48
    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->oJ(FF)V

    .line 49
    iget p2, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->Pfn:I

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->oJ(I)V

    .line 50
    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->kkU:Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;

    if-eqz p2, :cond_2

    .line 51
    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->kkU:Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->oJ()Lcom/bytedance/sdk/component/jFA/ba;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;->oJ(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 52
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->oJ()Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->Pfn(Lcom/bytedance/sdk/component/jFA/ba;)Z

    .line 53
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->kkU()I

    move-result p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->jFA()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->oJ(ILjava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public synthetic Pfn()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ZYk()Lcom/bytedance/sdk/component/jFA/ba;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public ZYk()Lcom/bytedance/sdk/component/jFA/ba;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->oJ()Lcom/bytedance/sdk/component/jFA/ba;

    move-result-object v0

    return-object v0
.end method

.method public ba()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->oJ()Lcom/bytedance/sdk/component/jFA/ba;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->oJ()Lcom/bytedance/sdk/component/jFA/ba;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    return-void
.end method

.method public abstract cFZ()V
.end method

.method public dLZ()Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->BTZ:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 2
    .line 3
    return-object v0
.end method

.method public ex()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ba:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

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
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ba:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->cFZ()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex:Lcom/bytedance/sdk/component/jFA/ba;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex:Lcom/bytedance/sdk/component/jFA/ba;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/view/ViewGroup;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex:Lcom/bytedance/sdk/component/jFA/ba;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->tB:Z

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->WcQ()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->oJ()Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex:Lcom/bytedance/sdk/component/jFA/ba;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->Pfn(Lcom/bytedance/sdk/component/jFA/ba;)Z

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method protected jFA()V
    .locals 0

    .line 1
    return-void
.end method

.method protected kkU()V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ()Lcom/bytedance/sdk/component/jFA/ba;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex:Lcom/bytedance/sdk/component/jFA/ba;

    return-object v0
.end method

.method public abstract oJ(I)V
.end method

.method public oJ(Landroid/app/Activity;)V
    .locals 1

    .line 72
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->WcQ:I

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->WcQ:I

    if-ne p1, v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex()V

    .line 75
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->kkU()V

    :cond_1
    :goto_0
    return-void
.end method

.method public oJ(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/tB;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->dLZ:Lcom/bytedance/sdk/component/adexpress/ZYk/so;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/ZYk/so;->oJ(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/tB;)V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V
    .locals 6

    const/16 v0, 0x69

    if-nez p1, :cond_1

    .line 34
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->kkU:Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;

    if-eqz p1, :cond_0

    .line 35
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->kkU:Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;

    const-string v1, "renderResult is null"

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;->oJ(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 36
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->ZYk()Z

    move-result v1

    .line 37
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->tB()D

    move-result-wide v2

    double-to-float v2, v2

    .line 38
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->ex()D

    move-result-wide v3

    double-to-float v3, v3

    .line 39
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->tB()I

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-lez v5, :cond_2

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_4

    .line 40
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->kkU:Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;

    if-eqz p1, :cond_3

    .line 41
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->kkU:Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "width is "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "height is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;->oJ(ILjava/lang/String;)V

    :cond_3
    return-void

    .line 42
    :cond_4
    iput-boolean v1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->tB:Z

    .line 43
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 44
    invoke-direct {p0, p1, v2, v3}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;FF)V

    return-void

    .line 45
    :cond_5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ$1;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ$1;-><init>(Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;FF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;)V
    .locals 6

    .line 5
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->kkU:Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;

    .line 6
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->oJ()Lcom/bytedance/sdk/component/jFA/ba;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0x66

    const/4 v2, 0x1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->oJ()Lcom/bytedance/sdk/component/jFA/ba;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->jFA:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->kkU:Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;

    const-string v0, "url is empty"

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;->oJ(ILjava/lang/String;)V

    return-void

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->BTZ:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->cY()Z

    move-result p1

    const-string v3, "data null is "

    const/16 v4, 0x67

    if-nez p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->oJ:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/ZYk;->oJ(Lorg/json/JSONObject;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->kkU:Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->oJ:Lorg/json/JSONObject;

    if-nez v3, :cond_2

    move v0, v2

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;->oJ(ILjava/lang/String;)V

    return-void

    .line 12
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->tB()I

    move-result p1

    const/16 v5, 0x9

    if-ne p1, v5, :cond_5

    .line 13
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->oJ:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/ZYk;->ZYk(Lorg/json/JSONObject;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 14
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->kkU:Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->oJ:Lorg/json/JSONObject;

    if-nez v3, :cond_4

    move v0, v2

    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;->oJ(ILjava/lang/String;)V

    return-void

    .line 15
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->BTZ:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->Pfn()Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;

    move-result-object p1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ZYk:Z

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;->oJ(Z)V

    .line 16
    iget-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ZYk:Z

    if-eqz p1, :cond_7

    .line 17
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->BTZ:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->Xe()I

    move-result p1

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->BTZ:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->cY()Z

    move-result v0

    if-eqz v0, :cond_6

    if-ne p1, v2, :cond_6

    .line 19
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->BTZ:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->tB()Lorg/json/JSONObject;

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "window.SDK_INJECT_DATA="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->BTZ:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->tB()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "javascript:window.SDK_RESET_RENDER();"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "window.SDK_TRIGGER_RENDER();"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 22
    :cond_6
    const-string p1, "javascript:window.SDK_RESET_RENDER();window.SDK_TRIGGER_RENDER();"

    .line 23
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->si()V

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->BTZ:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->Pfn()Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;

    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/WcQ;->oJ(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 26
    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->oJ()Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->Pfn(Lcom/bytedance/sdk/component/jFA/ba;)Z

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->kkU:Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load exception is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;->oJ(ILjava/lang/String;)V

    return-void

    .line 28
    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->oJ()Lcom/bytedance/sdk/component/jFA/ba;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ba;->si()V

    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->BTZ:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->Pfn()Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;

    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->jFA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->a_(Ljava/lang/String;)V

    return-void

    .line 32
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->kkU:Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SSWebview null is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->oJ()Lcom/bytedance/sdk/component/jFA/ba;

    move-result-object v4

    if-nez v4, :cond_9

    move v0, v2

    :cond_9
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " or Webview is null"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;->oJ(ILjava/lang/String;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/so;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->dLZ:Lcom/bytedance/sdk/component/adexpress/ZYk/so;

    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->jFA:Ljava/lang/String;

    return-void
.end method

.method public oJ(Lorg/json/JSONObject;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->oJ:Lorg/json/JSONObject;

    return-void
.end method

.method public oJ(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->PiB:Z

    return-void
.end method

.method public so()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->jFA()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex:Lcom/bytedance/sdk/component/jFA/ba;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/ZYk;->oJ(Landroid/view/View;)Landroid/app/Activity;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ZYk(Landroid/app/Activity;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->WcQ:I

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public tB()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
