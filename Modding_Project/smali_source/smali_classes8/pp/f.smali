.class public Lpp/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static b:Lsq/l;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lpp/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lpp/f;->b:Lsq/l;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lsq/l;->getUserAgent()Ljava/lang/String;

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

.method public static b(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object p0, Lpp/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static c(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Ltp/s;->e(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    sget-object p0, Lio/bidmachine/iab/utils/Logger$LogLevel;->debug:Lio/bidmachine/iab/utils/Logger$LogLevel;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p0, Lio/bidmachine/iab/utils/Logger$LogLevel;->none:Lio/bidmachine/iab/utils/Logger$LogLevel;

    .line 10
    .line 11
    :goto_0
    invoke-static {p0}, Lio/bidmachine/iab/mraid/h;->g(Lio/bidmachine/iab/utils/Logger$LogLevel;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static d(Lsq/l;)V
    .locals 0
    .param p0    # Lsq/l;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sput-object p0, Lpp/f;->b:Lsq/l;

    .line 2
    .line 3
    return-void
.end method
