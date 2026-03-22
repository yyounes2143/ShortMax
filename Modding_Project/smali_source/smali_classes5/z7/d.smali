.class public final Lz7/d;
.super Ljava/lang/Object;
.source "CrashlyticsNativeComponentDeferredProxy.java"

# interfaces
.implements Lz7/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz7/d$b;
    }
.end annotation


# static fields
.field private static final c:Lz7/h;


# instance fields
.field private final a:Lw8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/a<",
            "Lz7/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lz7/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lz7/d$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lz7/d$b;-><init>(Lz7/d$a;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lz7/d;->c:Lz7/h;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lw8/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw8/a<",
            "Lz7/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lz7/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    .line 12
    iput-object p1, p0, Lz7/d;->a:Lw8/a;

    .line 13
    .line 14
    new-instance v0, Lz7/b;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lz7/b;-><init>(Lz7/d;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v0}, Lw8/a;->a(Lw8/a$a;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static synthetic e(Ljava/lang/String;Ljava/lang/String;JLe8/g0;Lw8/b;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lz7/d;->h(Ljava/lang/String;Ljava/lang/String;JLe8/g0;Lw8/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lz7/d;Lw8/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lz7/d;->g(Lw8/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic g(Lw8/b;)V
    .locals 2

    .line 1
    invoke-static {}, Lz7/g;->f()Lz7/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Crashlytics native component now available."

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lz7/g;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lz7/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    .line 12
    invoke-interface {p1}, Lw8/b;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lz7/a;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private static synthetic h(Ljava/lang/String;Ljava/lang/String;JLe8/g0;Lw8/b;)V
    .locals 6

    .line 1
    invoke-interface {p5}, Lw8/b;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p5

    .line 5
    move-object v0, p5

    .line 6
    check-cast v0, Lz7/a;

    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move-wide v3, p2

    .line 11
    move-object v5, p4

    .line 12
    invoke-interface/range {v0 .. v5}, Lz7/a;->c(Ljava/lang/String;Ljava/lang/String;JLe8/g0;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lz7/h;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lz7/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lz7/a;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object p1, Lz7/d;->c:Lz7/h;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {v0, p1}, Lz7/a;->a(Ljava/lang/String;)Lz7/h;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :goto_0
    return-object p1
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lz7/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lz7/a;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lz7/a;->b()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;JLe8/g0;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Le8/g0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lz7/g;->f()Lz7/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "Deferring native open session: "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lz7/g;->i(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lz7/d;->a:Lw8/a;

    .line 26
    .line 27
    new-instance v7, Lz7/c;

    .line 28
    .line 29
    move-object v1, v7

    .line 30
    move-object v2, p1

    .line 31
    move-object v3, p2

    .line 32
    move-wide v4, p3

    .line 33
    move-object v6, p5

    .line 34
    invoke-direct/range {v1 .. v6}, Lz7/c;-><init>(Ljava/lang/String;Ljava/lang/String;JLe8/g0;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, v7}, Lw8/a;->a(Lw8/a$a;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lz7/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lz7/a;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lz7/a;->d(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method
