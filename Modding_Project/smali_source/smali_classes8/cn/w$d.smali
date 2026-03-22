.class final Lcn/w$d;
.super Ljava/lang/Object;
.source "NetworkTypeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/w$c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/Executor;

.field final synthetic c:Lcn/w;


# direct methods
.method public constructor <init>(Lcn/w;Lcn/w$c;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/w$d;->c:Lcn/w;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcn/w$d;->a:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    iput-object p3, p0, Lcn/w$d;->b:Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic a(Lcn/w$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/w$d;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/w$d;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcn/w$c;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcn/w$d;->c:Lcn/w;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcn/w;->g()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-interface {v0, v1}, Lcn/w$c;->a(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/w$d;->b:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, Lcn/x;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcn/x;-><init>(Lcn/w$d;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/w$d;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method
