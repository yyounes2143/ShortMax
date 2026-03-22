.class public Lio/bidmachine/iab/utils/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/utils/Logger$LogLevel;
    }
.end annotation


# static fields
.field private static c:Lio/bidmachine/iab/utils/Logger$LogLevel;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/iab/utils/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/iab/utils/Logger$LogLevel;->error:Lio/bidmachine/iab/utils/Logger$LogLevel;

    .line 2
    .line 3
    sput-object v0, Lio/bidmachine/iab/utils/Logger;->c:Lio/bidmachine/iab/utils/Logger$LogLevel;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/iab/utils/Logger;->a:Ljava/lang/String;

    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lio/bidmachine/iab/utils/Logger;->b:Ljava/util/List;

    .line 12
    .line 13
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string p1, "[%s] %s"

    .line 6
    .line 7
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static varargs b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/iab/utils/Logger;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    array-length p1, p2

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :catchall_0
    :cond_1
    :goto_0
    return-object p0
.end method

.method private c(Lio/bidmachine/iab/utils/Logger$LogLevel;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lio/bidmachine/iab/utils/Logger$LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/iab/utils/Logger$a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lio/bidmachine/iab/utils/Logger;->a:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object p1, p0, Lio/bidmachine/iab/utils/Logger;->a:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iget-object p1, p0, Lio/bidmachine/iab/utils/Logger;->a:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method private varargs d(Lio/bidmachine/iab/utils/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1    # Lio/bidmachine/iab/utils/Logger$LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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
    invoke-direct {p0, p1}, Lio/bidmachine/iab/utils/Logger;->h(Lio/bidmachine/iab/utils/Logger$LogLevel;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-direct {p0}, Lio/bidmachine/iab/utils/Logger;->e()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-static {p2, p3, p4}, Lio/bidmachine/iab/utils/Logger;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-direct {p0, p1, p2}, Lio/bidmachine/iab/utils/Logger;->c(Lio/bidmachine/iab/utils/Logger$LogLevel;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_2
    if-eqz v1, :cond_3

    .line 31
    .line 32
    invoke-direct {p0, p1, p2}, Lio/bidmachine/iab/utils/Logger;->g(Lio/bidmachine/iab/utils/Logger$LogLevel;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_3
    return-void
.end method

.method private e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/Logger;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
.end method

.method private f(Lio/bidmachine/iab/utils/Logger$LogLevel;)Z
    .locals 0
    .param p1    # Lio/bidmachine/iab/utils/Logger$LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/utils/Logger;->h(Lio/bidmachine/iab/utils/Logger$LogLevel;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Lio/bidmachine/iab/utils/Logger;->e()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 17
    :goto_1
    return p1
.end method

.method private g(Lio/bidmachine/iab/utils/Logger$LogLevel;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lio/bidmachine/iab/utils/Logger$LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/Logger;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lio/bidmachine/iab/utils/b;

    .line 18
    .line 19
    iget-object v2, p0, Lio/bidmachine/iab/utils/Logger;->a:Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {v1, p1, v2, p2}, Lio/bidmachine/iab/utils/b;->a(Lio/bidmachine/iab/utils/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method private h(Lio/bidmachine/iab/utils/Logger$LogLevel;)Z
    .locals 1
    .param p1    # Lio/bidmachine/iab/utils/Logger$LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/iab/utils/Logger;->c:Lio/bidmachine/iab/utils/Logger$LogLevel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/iab/utils/Logger$LogLevel;->getValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/Logger$LogLevel;->getValue()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-gt v0, p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method


# virtual methods
.method public i()Z
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/iab/utils/Logger$LogLevel;->debug:Lio/bidmachine/iab/utils/Logger$LogLevel;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lio/bidmachine/iab/utils/Logger;->f(Lio/bidmachine/iab/utils/Logger$LogLevel;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/iab/utils/Logger$LogLevel;->error:Lio/bidmachine/iab/utils/Logger$LogLevel;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lio/bidmachine/iab/utils/Logger;->f(Lio/bidmachine/iab/utils/Logger$LogLevel;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public varargs k(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/iab/utils/Logger$LogLevel;->debug:Lio/bidmachine/iab/utils/Logger$LogLevel;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2, p3}, Lio/bidmachine/iab/utils/Logger;->d(Lio/bidmachine/iab/utils/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public varargs l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/iab/utils/Logger$LogLevel;->error:Lio/bidmachine/iab/utils/Logger$LogLevel;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2, p3}, Lio/bidmachine/iab/utils/Logger;->d(Lio/bidmachine/iab/utils/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public m(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/iab/utils/Logger$LogLevel;->error:Lio/bidmachine/iab/utils/Logger$LogLevel;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {p0, v0, p1, p2, v1}, Lio/bidmachine/iab/utils/Logger;->d(Lio/bidmachine/iab/utils/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public n()Lio/bidmachine/iab/utils/Logger$LogLevel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/iab/utils/Logger;->c:Lio/bidmachine/iab/utils/Logger$LogLevel;

    .line 2
    .line 3
    return-object v0
.end method

.method public o(Lio/bidmachine/iab/utils/Logger$LogLevel;)V
    .locals 3
    .param p1    # Lio/bidmachine/iab/utils/Logger$LogLevel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/Logger;->a:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/iab/utils/Logger;->c:Lio/bidmachine/iab/utils/Logger$LogLevel;

    .line 4
    .line 5
    filled-new-array {v1, p1}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "Changing logging level. From: %s, To: %s"

    .line 10
    .line 11
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    sput-object p1, Lio/bidmachine/iab/utils/Logger;->c:Lio/bidmachine/iab/utils/Logger$LogLevel;

    .line 19
    .line 20
    return-void
.end method

.method public varargs p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/iab/utils/Logger$LogLevel;->warning:Lio/bidmachine/iab/utils/Logger$LogLevel;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2, p3}, Lio/bidmachine/iab/utils/Logger;->d(Lio/bidmachine/iab/utils/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
