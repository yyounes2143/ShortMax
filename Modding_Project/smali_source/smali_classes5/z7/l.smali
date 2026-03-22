.class public Lz7/l;
.super Ljava/lang/Object;
.source "RemoteConfigDeferredProxy.java"


# instance fields
.field private final a:Lw8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/a<",
            "Lh9/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw8/a<",
            "Lh9/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz7/l;->a:Lw8/a;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lz7/e;Lw8/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lz7/l;->b(Lz7/e;Lw8/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic b(Lz7/e;Lw8/b;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lw8/b;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lh9/a;

    .line 6
    .line 7
    const-string v0, "firebase"

    .line 8
    .line 9
    invoke-interface {p1, v0, p0}, Lh9/a;->a(Ljava/lang/String;Li9/f;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lz7/g;->f()Lz7/g;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string p1, "Registering RemoteConfig Rollouts subscriber"

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lz7/g;->b(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public c(Ld8/p;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lz7/g;->f()Lz7/g;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "Didn\'t successfully register with UserMetadata for rollouts listener"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lz7/g;->k(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Lz7/e;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lz7/e;-><init>(Ld8/p;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lz7/l;->a:Lw8/a;

    .line 19
    .line 20
    new-instance v1, Lz7/k;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Lz7/k;-><init>(Lz7/e;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v1}, Lw8/a;->a(Lw8/a$a;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
