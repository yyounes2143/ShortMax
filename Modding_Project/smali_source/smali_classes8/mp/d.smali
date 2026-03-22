.class public final Lmp/d;
.super Lio/bidmachine/AdObjectImpl;
.source "NativeAdObject.java"

# interfaces
.implements Lmp/e;
.implements Lmp/g;
.implements Lmp/f;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmp/d$e;,
        Lmp/d$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/AdObjectImpl<",
        "Lio/bidmachine/nativead/NativeRequest;",
        "Llp/b;",
        "Lxq/l;",
        "Lxq/m;",
        "Lxq/n;",
        ">;",
        "Lmp/e;",
        "Lmp/g;",
        "Lmp/f;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final q:Ljava/util/WeakHashMap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Landroid/view/View$OnClickListener;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lwm/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private b:Landroid/view/ViewGroup;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Lio/bidmachine/nativead/view/MediaView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Landroid/app/ProgressDialog;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Lmp/d$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Z

.field private k:Z

.field private l:Lio/bidmachine/ImageDataImpl;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:Lio/bidmachine/ImageDataImpl;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private n:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o:Lio/bidmachine/iab/vast/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private p:Lmp/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lmp/d;->q:Ljava/util/WeakHashMap;

    .line 8
    .line 9
    return-void
.end method

.method constructor <init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/nativead/NativeRequest;Llp/b;Lxq/l;)V
    .locals 0
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdProcessCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/nativead/NativeRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Llp/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lxq/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/AdObjectImpl;-><init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/AdRequest;Llp/b;Lxq/b;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lwm/b;

    .line 5
    .line 6
    invoke-direct {p1}, Lwm/b;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lmp/d;->a:Lwm/b;

    .line 10
    .line 11
    return-void
.end method

.method private K()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmp/d;->e:Landroid/app/ProgressDialog;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lmp/d;->e:Landroid/app/ProgressDialog;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lmp/d;->e:Landroid/app/ProgressDialog;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lmp/d;->i:Ljava/lang/Runnable;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v2, p0, Lmp/d;->h:Landroid/os/Handler;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lmp/d;->h:Landroid/os/Handler;

    .line 31
    .line 32
    iput-object v1, p0, Lmp/d;->i:Ljava/lang/Runnable;

    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method private synthetic M(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lmp/d;->K()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private N(Landroid/content/Context;Lmp/e;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lmp/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lmp/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getAdRequest()Lio/bidmachine/AdRequest;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lio/bidmachine/nativead/NativeRequest;

    .line 8
    .line 9
    invoke-virtual {v1}, Lio/bidmachine/AdRequest;->getAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lio/bidmachine/nativead/a;

    .line 14
    .line 15
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getProcessCallback()Lio/bidmachine/AdProcessCallback;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v0, v1, v2, p2, p0}, Lmp/a;-><init>(Lio/bidmachine/nativead/a;Lio/bidmachine/AdProcessCallback;Lmp/e;Lmp/g;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lmp/a;->i(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private O()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmp/d;->e:Landroid/app/ProgressDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method private Q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmp/d;->f:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lyq/t;->g(Landroid/view/View;)Lkotlin/Unit;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lmp/d;->f:Landroid/view/View;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private R(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lmp/d;->g:Lmp/d$d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lmp/d;->g:Lmp/d$d;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private T(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lmp/d;->b:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lmp/d;->O()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lio/bidmachine/core/g;->d(Landroid/app/Activity;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lmp/d;->b:Landroid/view/ViewGroup;

    .line 18
    .line 19
    new-instance v1, Lmp/d$b;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lmp/d$b;-><init>(Lmp/d;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 25
    .line 26
    .line 27
    const-string v0, ""

    .line 28
    .line 29
    const-string v1, "Loading..."

    .line 30
    .line 31
    invoke-static {p1, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lmp/d;->e:Landroid/app/ProgressDialog;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lmp/d;->e:Landroid/app/ProgressDialog;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 44
    .line 45
    .line 46
    new-instance p1, Lmp/d$c;

    .line 47
    .line 48
    invoke-direct {p1, p0}, Lmp/d$c;-><init>(Lmp/d;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lmp/d;->i:Ljava/lang/Runnable;

    .line 52
    .line 53
    new-instance p1, Landroid/os/Handler;

    .line 54
    .line 55
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lmp/d;->h:Landroid/os/Handler;

    .line 63
    .line 64
    iget-object v0, p0, Lmp/d;->i:Ljava/lang/Runnable;

    .line 65
    .line 66
    const-wide/16 v1, 0x1388

    .line 67
    .line 68
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 69
    .line 70
    .line 71
    :cond_0
    return-void
.end method

.method public static synthetic p(Lmp/d;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmp/d;->M(Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic q(Lmp/d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmp/d;->j:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic r(Lmp/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmp/d;->K()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic s(Lmp/d;Landroid/content/Context;Lmp/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lmp/d;->N(Landroid/content/Context;Lmp/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private t(Landroid/view/ViewGroup;Ljava/util/Set;)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lmp/d;->z(Landroid/view/ViewGroup;)V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_2

    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    new-instance v0, Ljava/util/WeakHashMap;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    sget-object v1, Lmp/d;->q:Ljava/util/WeakHashMap;

    .line 19
    .line 20
    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Landroid/view/View;

    .line 38
    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    :goto_1
    return-void
.end method

.method private u(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroid/widget/ImageView;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Landroid/widget/ImageView;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    const/16 v1, 0x64

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 24
    .line 25
    .line 26
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 29
    .line 30
    .line 31
    check-cast p1, Landroid/view/ViewGroup;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 34
    .line 35
    .line 36
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 37
    .line 38
    const/4 v2, -0x1

    .line 39
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    .line 44
    .line 45
    move-object p1, v0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 p1, 0x0

    .line 48
    :goto_0
    if-eqz p1, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Lmp/d;->l:Lio/bidmachine/ImageDataImpl;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v1, p0, Lmp/d;->l:Lio/bidmachine/ImageDataImpl;

    .line 59
    .line 60
    invoke-virtual {v1}, Lio/bidmachine/ImageDataImpl;->getLocalUri()Landroid/net/Uri;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v2, p0, Lmp/d;->l:Lio/bidmachine/ImageDataImpl;

    .line 65
    .line 66
    invoke-virtual {v2}, Lio/bidmachine/ImageDataImpl;->getImage()Landroid/graphics/drawable/Drawable;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v0, p1, v1, v2}, Lop/a;->d(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    return-object p1
.end method

.method private v(Lio/bidmachine/nativead/view/NativeMediaView;)V
    .locals 4
    .param p1    # Lio/bidmachine/nativead/view/NativeMediaView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-direct {p0, v0}, Lmp/d;->x(Landroid/content/Context;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 13
    .line 14
    const/4 v2, -0x1

    .line 15
    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16
    .line 17
    .line 18
    const/16 v3, 0xd

    .line 19
    .line 20
    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0, v1}, Lyq/t;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private w(Landroid/view/ViewGroup;Lio/bidmachine/RendererConfiguration;)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/RendererConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lmp/d;->R(Landroid/view/ViewGroup;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lmp/d;->Q()V

    .line 5
    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p2, v0}, Lio/bidmachine/RendererConfiguration;->getWatermarkDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    if-nez p2, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    new-instance v0, Lio/bidmachine/rendering/view/WatermarkView;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-direct {v0, v1}, Lio/bidmachine/rendering/view/WatermarkView;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lyq/t;->b()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p2}, Lio/bidmachine/rendering/view/WatermarkView;->setWatermark(Landroid/graphics/drawable/Drawable;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lmp/d;->f:Landroid/view/View;

    .line 45
    .line 46
    new-instance p2, Lmp/d$d;

    .line 47
    .line 48
    invoke-direct {p2, v0}, Lmp/d$d;-><init>(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    iput-object p2, p0, Lmp/d;->g:Lmp/d$d;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method private x(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lmp/d;->p:Lmp/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lmp/i;->b(Landroid/content/Context;)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Lio/bidmachine/nativead/view/MediaView;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lio/bidmachine/nativead/view/MediaView;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    const/16 p1, 0xc8

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getAdRequest()Lio/bidmachine/AdRequest;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lio/bidmachine/nativead/NativeRequest;

    .line 27
    .line 28
    invoke-virtual {p1}, Lio/bidmachine/AdRequest;->getAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lio/bidmachine/nativead/a;

    .line 33
    .line 34
    sget-object v1, Lio/bidmachine/MediaAssetType;->Image:Lio/bidmachine/MediaAssetType;

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Lio/bidmachine/nativead/a;->a(Lio/bidmachine/MediaAssetType;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    sget-object v1, Lio/bidmachine/MediaAssetType;->Video:Lio/bidmachine/MediaAssetType;

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Lio/bidmachine/nativead/a;->a(Lio/bidmachine/MediaAssetType;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    :cond_1
    invoke-virtual {v0, p0}, Lio/bidmachine/nativead/view/MediaView;->setNativeAdObject(Lmp/d;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    iput-object v0, p0, Lmp/d;->c:Lio/bidmachine/nativead/view/MediaView;

    .line 54
    .line 55
    return-object v0
.end method

.method private z(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lmp/d;->q:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/WeakHashMap;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/util/Map$Entry;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroid/view/View;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    sget-object v0, Lmp/d;->q:Ljava/util/WeakHashMap;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    :cond_2
    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getProcessCallback()Lio/bidmachine/AdProcessCallback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processClicked()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public B()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getProcessCallback()Lio/bidmachine/AdProcessCallback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processFillAd()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public C()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getProcessCallback()Lio/bidmachine/AdProcessCallback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processVisibilityTrackerImpression()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public D()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getProcessCallback()Lio/bidmachine/AdProcessCallback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processVisibilityTrackerShown()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public E()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lmp/d;->p:Lmp/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lmp/i;->e()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const-string v0, "Install"

    .line 18
    .line 19
    :cond_1
    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lmp/d;->p:Lmp/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lmp/i;->f()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public G()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lmp/d;->p:Lmp/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lmp/i;->h()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public H(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lmp/d;->d:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lmp/d;->p:Lmp/i;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lmp/i;->c(Landroid/content/Context;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lmp/d;->d:Landroid/view/View;

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lmp/d;->d:Landroid/view/View;

    .line 16
    .line 17
    return-object p1
.end method

.method public I()F
    .locals 1

    .line 1
    iget-object v0, p0, Lmp/d;->p:Lmp/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lmp/i;->i()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 11
    .line 12
    :goto_0
    return v0
.end method

.method public J()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lmp/d;->p:Lmp/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lmp/i;->j()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method L(Landroid/view/ViewGroup;Landroid/view/View;Lio/bidmachine/nativead/view/NativeMediaView;)Z
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/nativead/view/NativeMediaView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    const-string p1, "NativeAdView cannot be null. NativeAd is NOT registered"

    .line 5
    .line 6
    invoke-static {p1}, Lio/bidmachine/core/a;->d(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    if-nez p2, :cond_1

    .line 11
    .line 12
    if-nez p3, :cond_1

    .line 13
    .line 14
    const-string p1, "ImageView or NativeMediaView cannot be null. NativeAd is NOT registered"

    .line 15
    .line 16
    invoke-static {p1}, Lio/bidmachine/core/a;->d(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return v0

    .line 20
    :cond_1
    if-eqz p2, :cond_2

    .line 21
    .line 22
    invoke-static {p1, p2}, Lfr/l;->a(Landroid/view/ViewGroup;Landroid/view/View;)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-nez p2, :cond_2

    .line 27
    .line 28
    const-string p2, "ImageView should belong to NativeAdView"

    .line 29
    .line 30
    invoke-static {p2}, Lio/bidmachine/core/a;->d(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    if-eqz p3, :cond_3

    .line 34
    .line 35
    invoke-static {p1, p3}, Lfr/l;->a(Landroid/view/ViewGroup;Landroid/view/View;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    const-string p1, "NativeMediaView should belong to NativeAdView"

    .line 42
    .line 43
    invoke-static {p1}, Lio/bidmachine/core/a;->d(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_3
    const/4 p1, 0x1

    .line 47
    return p1
.end method

.method P(Landroid/view/ViewGroup;Landroid/view/View;Lio/bidmachine/nativead/view/NativeMediaView;Ljava/util/Set;Lio/bidmachine/RendererConfiguration;)V
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/nativead/view/NativeMediaView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Set;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lio/bidmachine/RendererConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Lio/bidmachine/nativead/view/NativeMediaView;",
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;",
            "Lio/bidmachine/RendererConfiguration;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lmp/d;->L(Landroid/view/ViewGroup;Landroid/view/View;Lio/bidmachine/nativead/view/NativeMediaView;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getProcessCallback()Lio/bidmachine/AdProcessCallback;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string p2, "Native ad views are invalid"

    .line 12
    .line 13
    invoke-static {p2}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-interface {p1, p2}, Lio/bidmachine/AdProcessCallback;->processShowFail(Lfr/a;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-direct {p0, p1, p4}, Lmp/d;->t(Landroid/view/ViewGroup;Ljava/util/Set;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p2}, Lmp/d;->u(Landroid/view/View;)Landroid/widget/ImageView;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-direct {p0, p3}, Lmp/d;->v(Lio/bidmachine/nativead/view/NativeMediaView;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lmp/d;->b:Landroid/view/ViewGroup;

    .line 34
    .line 35
    iget-boolean v0, p0, Lmp/d;->j:Z

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getProcessCallback()Lio/bidmachine/AdProcessCallback;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processStartVisibilityTracker()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lmp/d;->a:Lwm/b;

    .line 47
    .line 48
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getParams()Llp/b;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Llp/b;->e()Lio/bidmachine/core/i;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v2, Lmp/d$a;

    .line 57
    .line 58
    invoke-direct {v2, p0}, Lmp/d$a;-><init>(Lmp/d;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1, v1, v2}, Lwm/b;->b(Landroid/view/View;Lio/bidmachine/core/i;Lwm/p;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lmp/d;->B()V

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-object v0, p0, Lmp/d;->c:Lio/bidmachine/nativead/view/MediaView;

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    invoke-virtual {v0}, Lio/bidmachine/nativead/view/MediaView;->N()V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lmp/d;->c:Lio/bidmachine/nativead/view/MediaView;

    .line 75
    .line 76
    invoke-virtual {v0}, Lio/bidmachine/nativead/view/MediaView;->U()V

    .line 77
    .line 78
    .line 79
    :cond_2
    iget-object v0, p0, Lmp/d;->p:Lmp/i;

    .line 80
    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    invoke-virtual {v0, p1, p2, p3, p4}, Lmp/i;->n(Landroid/view/ViewGroup;Landroid/widget/ImageView;Lio/bidmachine/nativead/view/NativeMediaView;Ljava/util/Set;)V

    .line 84
    .line 85
    .line 86
    :cond_3
    invoke-direct {p0, p1, p5}, Lmp/d;->w(Landroid/view/ViewGroup;Lio/bidmachine/RendererConfiguration;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lmp/d;->f:Landroid/view/View;

    .line 90
    .line 91
    if-eqz p1, :cond_4

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 94
    .line 95
    .line 96
    :cond_4
    const/4 p1, 0x1

    .line 97
    iput-boolean p1, p0, Lmp/d;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :goto_0
    invoke-static {p1}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lmp/d;->U()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getProcessCallback()Lio/bidmachine/AdProcessCallback;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    const-string p3, "Exception registering view for native ad object"

    .line 111
    .line 112
    invoke-static {p3, p1}, Lfr/a;->l(Ljava/lang/String;Ljava/lang/Throwable;)Lfr/a;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-interface {p2, p1}, Lio/bidmachine/AdProcessCallback;->processShowFail(Lfr/a;)V

    .line 117
    .line 118
    .line 119
    :goto_1
    return-void
.end method

.method public S(Lmp/i;)V
    .locals 2
    .param p1    # Lmp/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lmp/d;->p:Lmp/i;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance v0, Lio/bidmachine/ImageDataImpl;

    .line 6
    .line 7
    invoke-virtual {p1}, Lmp/i;->getIcon()Lio/bidmachine/ImageData;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lio/bidmachine/ImageDataImpl;-><init>(Lio/bidmachine/ImageData;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lmp/d;->l:Lio/bidmachine/ImageDataImpl;

    .line 15
    .line 16
    new-instance v0, Lio/bidmachine/ImageDataImpl;

    .line 17
    .line 18
    invoke-virtual {p1}, Lmp/i;->getMainImage()Lio/bidmachine/ImageData;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {v0, p1}, Lio/bidmachine/ImageDataImpl;-><init>(Lio/bidmachine/ImageData;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lmp/d;->m:Lio/bidmachine/ImageDataImpl;

    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public U()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lmp/d;->a:Lwm/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lwm/b;->c()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lmp/d;->b:Landroid/view/ViewGroup;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, v0}, Lmp/d;->R(Landroid/view/ViewGroup;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lmp/d;->b:Landroid/view/ViewGroup;

    .line 15
    .line 16
    invoke-direct {p0, v0}, Lmp/d;->z(Landroid/view/ViewGroup;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lmp/d;->b:Landroid/view/ViewGroup;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    iget-object v0, p0, Lmp/d;->c:Lio/bidmachine/nativead/view/MediaView;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lio/bidmachine/nativead/view/MediaView;->V()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lmp/d;->c:Lio/bidmachine/nativead/view/MediaView;

    .line 32
    .line 33
    invoke-virtual {v0}, Lio/bidmachine/nativead/view/MediaView;->T()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lmp/d;->c:Lio/bidmachine/nativead/view/MediaView;

    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lmp/d;->p:Lmp/i;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Lmp/i;->B()V

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-direct {p0}, Lmp/d;->Q()V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lmp/d;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :goto_1
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    :goto_2
    return-void
.end method

.method public a()Lio/bidmachine/PrivacySheetData;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lmp/d;->p:Lmp/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lmp/i;->a()Lio/bidmachine/PrivacySheetData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public b(Lio/bidmachine/iab/vast/a;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/vast/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lmp/d;->o:Lio/bidmachine/iab/vast/a;

    .line 2
    .line 3
    return-void
.end method

.method public c()Lio/bidmachine/iab/vast/a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lmp/d;->o:Lio/bidmachine/iab/vast/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic createUnifiedCallback(Lio/bidmachine/AdProcessCallback;)Lxq/c;
    .locals 0
    .param p1    # Lio/bidmachine/AdProcessCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lmp/d;->y(Lio/bidmachine/AdProcessCallback;)Lxq/m;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public d()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lmp/d;->m:Lio/bidmachine/ImageDataImpl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/ImageDataImpl;->getImage()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public e(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lmp/d;->l:Lio/bidmachine/ImageDataImpl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lio/bidmachine/ImageDataImpl;->setLocalUri(Landroid/net/Uri;)Lio/bidmachine/ImageDataImpl;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public f(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lmp/d;->m:Lio/bidmachine/ImageDataImpl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lio/bidmachine/ImageDataImpl;->setLocalUri(Landroid/net/Uri;)Lio/bidmachine/ImageDataImpl;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lmp/d;->p:Lmp/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lmp/i;->g()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public getIcon()Lio/bidmachine/ImageData;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lmp/d;->l:Lio/bidmachine/ImageDataImpl;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIconUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lmp/d;->l:Lio/bidmachine/ImageDataImpl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/ImageDataImpl;->getLocalUri()Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public getImageUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lmp/d;->m:Lio/bidmachine/ImageDataImpl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/ImageDataImpl;->getLocalUri()Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public getMainImage()Lio/bidmachine/ImageData;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lmp/d;->m:Lio/bidmachine/ImageDataImpl;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()V
    .locals 0

    .line 1
    return-void
.end method

.method public hasVideo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmp/d;->n:Landroid/net/Uri;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lmp/d;->p:Lmp/i;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lmp/i;->hasVideo()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    return v0
.end method

.method public i(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lmp/d;->m:Lio/bidmachine/ImageDataImpl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/bidmachine/ImageDataImpl;->setImage(Landroid/graphics/drawable/Drawable;)Lio/bidmachine/ImageDataImpl;

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public j(Landroid/net/Uri;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lmp/d;->n:Landroid/net/Uri;

    .line 2
    .line 3
    return-void
.end method

.method public k()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lmp/d;->l:Lio/bidmachine/ImageDataImpl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/ImageDataImpl;->getImage()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public l(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lmp/d;->l:Lio/bidmachine/ImageDataImpl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/bidmachine/ImageDataImpl;->setImage(Landroid/graphics/drawable/Drawable;)Lio/bidmachine/ImageDataImpl;

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public m()Lio/bidmachine/LabelData;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lmp/d;->p:Lmp/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lmp/i;->m()Lio/bidmachine/LabelData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public n()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lmp/d;->n:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lmp/d;->p:Lmp/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lmp/i;->o()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmp/d;->A()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onClicked()V
    .locals 3

    .line 1
    invoke-super {p0}, Lio/bidmachine/AdObjectImpl;->onClicked()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lmp/d;->F()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getActivity()Landroid/app/Activity;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {p0, v1}, Lmp/d;->T(Landroid/app/Activity;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getApplicationContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v2, Lmp/c;

    .line 27
    .line 28
    invoke-direct {v2, p0}, Lmp/c;-><init>(Lmp/d;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v0, v2}, Lsq/k;->c(Landroid/content/Context;Ljava/lang/String;Lyq/d;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    :try_start_0
    invoke-super {p0}, Lio/bidmachine/AdObjectImpl;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lmp/d;->U()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lmp/d;->l:Lio/bidmachine/ImageDataImpl;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lio/bidmachine/ImageDataImpl;->destroy()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lmp/d;->l:Lio/bidmachine/ImageDataImpl;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    iget-object v0, p0, Lmp/d;->m:Lio/bidmachine/ImageDataImpl;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lio/bidmachine/ImageDataImpl;->destroy()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lmp/d;->m:Lio/bidmachine/ImageDataImpl;

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lmp/d;->n:Landroid/net/Uri;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    new-instance v0, Ljava/io/File;

    .line 40
    .line 41
    iget-object v2, p0, Lmp/d;->n:Landroid/net/Uri;

    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 57
    .line 58
    .line 59
    :cond_2
    iput-object v1, p0, Lmp/d;->n:Landroid/net/Uri;

    .line 60
    .line 61
    :cond_3
    iget-object v0, p0, Lmp/d;->p:Lmp/i;

    .line 62
    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    invoke-virtual {v0}, Lmp/i;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :goto_1
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    :cond_4
    :goto_2
    return-void
.end method

.method public y(Lio/bidmachine/AdProcessCallback;)Lxq/m;
    .locals 1
    .param p1    # Lio/bidmachine/AdProcessCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lmp/d$e;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lmp/d$e;-><init>(Lmp/d;Lio/bidmachine/AdProcessCallback;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
