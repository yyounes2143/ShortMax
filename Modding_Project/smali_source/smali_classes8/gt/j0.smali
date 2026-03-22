.class public final Lgt/j0;
.super Ljava/lang/Object;
.source "DefaultExecutor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final a:Z

.field private static final b:Lgt/m0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "kotlinx.coroutines.main.delay"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lmt/b0;->f(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lgt/j0;->a:Z

    .line 9
    .line 10
    invoke-static {}, Lgt/j0;->b()Lgt/m0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lgt/j0;->b:Lgt/m0;

    .line 15
    .line 16
    return-void
.end method

.method public static final a()Lgt/m0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lgt/j0;->b:Lgt/m0;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final b()Lgt/m0;
    .locals 2

    .line 1
    sget-boolean v0, Lgt/j0;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lgt/i0;->g:Lgt/i0;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lmt/r;->c(Lgt/j1;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    instance-of v1, v0, Lgt/m0;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    check-cast v0, Lgt/m0;

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    :goto_0
    sget-object v0, Lgt/i0;->g:Lgt/i0;

    .line 27
    .line 28
    :goto_1
    return-object v0
.end method
