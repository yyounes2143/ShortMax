.class public Lio/bidmachine/iab/mraid/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lio/bidmachine/iab/utils/Logger;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/iab/utils/Logger;

    .line 2
    .line 3
    const-string v1, "MraidLog"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lio/bidmachine/iab/utils/Logger;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lio/bidmachine/iab/mraid/h;->a:Lio/bidmachine/iab/utils/Logger;

    .line 9
    .line 10
    return-void
.end method

.method public static a()Z
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/h;->a:Lio/bidmachine/iab/utils/Logger;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/iab/utils/Logger;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static b()Z
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/h;->a:Lio/bidmachine/iab/utils/Logger;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/iab/utils/Logger;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static varargs c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/h;->a:Lio/bidmachine/iab/utils/Logger;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lio/bidmachine/iab/utils/Logger;->k(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/h;->a:Lio/bidmachine/iab/utils/Logger;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lio/bidmachine/iab/utils/Logger;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/h;->a:Lio/bidmachine/iab/utils/Logger;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lio/bidmachine/iab/utils/Logger;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static f()Lio/bidmachine/iab/utils/Logger$LogLevel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/h;->a:Lio/bidmachine/iab/utils/Logger;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/iab/utils/Logger;->n()Lio/bidmachine/iab/utils/Logger$LogLevel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static g(Lio/bidmachine/iab/utils/Logger$LogLevel;)V
    .locals 1
    .param p0    # Lio/bidmachine/iab/utils/Logger$LogLevel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/h;->a:Lio/bidmachine/iab/utils/Logger;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lio/bidmachine/iab/utils/Logger;->o(Lio/bidmachine/iab/utils/Logger$LogLevel;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static varargs h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/h;->a:Lio/bidmachine/iab/utils/Logger;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lio/bidmachine/iab/utils/Logger;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
