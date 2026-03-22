.class public final Lr0/s;
.super Ljava/lang/Object;
.source "SystemCallbacks.kt"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Ll0/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr0/s$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final f:Lr0/s$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcoil/RealImageLoader;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Ll0/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile d:Z

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lr0/s$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lr0/s$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lr0/s;->f:Lr0/s$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcoil/RealImageLoader;Landroid/content/Context;Z)V
    .locals 1
    .param p1    # Lcoil/RealImageLoader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lr0/s;->a:Landroid/content/Context;

    .line 5
    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lr0/s;->b:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcoil/RealImageLoader;->h()Lr0/q;

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-static {p2, p0, p1}, Ll0/d;->a(Landroid/content/Context;Ll0/c$a;Lr0/q;)Ll0/c;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Ll0/b;

    .line 25
    .line 26
    invoke-direct {p1}, Ll0/b;-><init>()V

    .line 27
    .line 28
    .line 29
    :goto_0
    iput-object p1, p0, Lr0/s;->c:Ll0/c;

    .line 30
    .line 31
    invoke-interface {p1}, Ll0/c;->a()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iput-boolean p1, p0, Lr0/s;->d:Z

    .line 36
    .line 37
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lr0/s;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr0/s;->b:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcoil/RealImageLoader;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcoil/RealImageLoader;->h()Lr0/q;

    .line 12
    .line 13
    .line 14
    iput-boolean p1, p0, Lr0/s;->d:Z

    .line 15
    .line 16
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    if-nez p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lr0/s;->d()V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lr0/s;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lr0/s;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lr0/s;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lr0/s;->a:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lr0/s;->c:Ll0/c;

    .line 17
    .line 18
    invoke-interface {v0}, Ll0/c;->shutdown()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lr0/s;->b:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcoil/RealImageLoader;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lr0/s;->d()V

    .line 12
    .line 13
    .line 14
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 1
    const/16 v0, 0x50

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lr0/s;->onTrimMemory(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr0/s;->b:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcoil/RealImageLoader;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcoil/RealImageLoader;->h()Lr0/q;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcoil/RealImageLoader;->l(I)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    if-nez p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lr0/s;->d()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method
