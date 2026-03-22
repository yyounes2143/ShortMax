.class public Lio/bidmachine/core/a;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static a:Z = false

.field private static volatile b:Lir/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static volatile c:Lir/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field static volatile d:Lir/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lir/a;

    .line 2
    .line 3
    const-string v1, "BidMachineLog"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lir/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lio/bidmachine/core/a;->b:Lir/c;

    .line 9
    .line 10
    new-instance v0, Lir/b;

    .line 11
    .line 12
    invoke-direct {v0}, Lir/b;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lio/bidmachine/core/a;->c:Lir/c;

    .line 16
    .line 17
    sget-object v0, Lio/bidmachine/core/a;->c:Lir/c;

    .line 18
    .line 19
    sput-object v0, Lio/bidmachine/core/a;->d:Lir/c;

    .line 20
    .line 21
    return-void
.end method

.method public static a(Lhr/b;)V
    .locals 1
    .param p0    # Lhr/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhr/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/core/a;->d:Lir/c;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lir/c;->j(Lhr/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static b(Ljava/lang/Object;Lhr/b;)V
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lhr/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lhr/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/core/a;->d:Lir/c;

    .line 2
    .line 3
    invoke-interface {v0, p0, p1}, Lir/c;->f(Ljava/lang/Object;Lhr/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/core/a;->d:Lir/c;

    .line 2
    .line 3
    invoke-interface {v0, p0, p1}, Lir/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/core/a;->d:Lir/c;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lir/c;->e(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static e(Lhr/b;)V
    .locals 1
    .param p0    # Lhr/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhr/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/core/a;->d:Lir/c;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lir/c;->i(Lhr/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static f(Ljava/lang/Object;Lhr/b;)V
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lhr/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lhr/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/core/a;->d:Lir/c;

    .line 2
    .line 3
    invoke-interface {v0, p0, p1}, Lir/c;->g(Ljava/lang/Object;Lhr/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/core/a;->d:Lir/c;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lir/c;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static h()Z
    .locals 1

    .line 1
    sget-boolean v0, Lio/bidmachine/core/a;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public static i(Lir/c;)V
    .locals 0
    .param p0    # Lir/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sput-object p0, Lio/bidmachine/core/a;->b:Lir/c;

    .line 2
    .line 3
    sget-boolean p0, Lio/bidmachine/core/a;->a:Z

    .line 4
    .line 5
    invoke-static {p0}, Lio/bidmachine/core/a;->j(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static j(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lio/bidmachine/core/a;->a:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lio/bidmachine/core/a;->b:Lir/c;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object p0, Lio/bidmachine/core/a;->c:Lir/c;

    .line 9
    .line 10
    :goto_0
    sput-object p0, Lio/bidmachine/core/a;->d:Lir/c;

    .line 11
    .line 12
    return-void
.end method

.method public static k(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/core/a;->d:Lir/c;

    .line 2
    .line 3
    invoke-interface {v0, p0, p1}, Lir/c;->l(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static l(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/core/a;->d:Lir/c;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lir/c;->k(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static m(Ljava/lang/Throwable;)V
    .locals 1
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/core/a;->d:Lir/c;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lir/c;->h(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
