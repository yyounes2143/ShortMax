.class final Lio/ktor/utils/io/internal/a$a;
.super Ljava/lang/Object;
.source "CancellableReusableContinuation.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Lgt/s0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic c:Lio/ktor/utils/io/internal/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/internal/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/internal/a;Lkotlinx/coroutines/r;)V
    .locals 7
    .param p1    # Lio/ktor/utils/io/internal/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/r;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "job"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lio/ktor/utils/io/internal/a$a;->c:Lio/ktor/utils/io/internal/a;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lio/ktor/utils/io/internal/a$a;->a:Lkotlinx/coroutines/r;

    .line 12
    .line 13
    const/4 v5, 0x2

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    move-object v1, p2

    .line 18
    move-object v4, p0

    .line 19
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/r$a;->e(Lkotlinx/coroutines/r;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lgt/s0;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p2}, Lkotlinx/coroutines/r;->isActive()Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    iput-object p1, p0, Lio/ktor/utils/io/internal/a$a;->b:Lgt/s0;

    .line 30
    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/internal/a$a;->b:Lgt/s0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lio/ktor/utils/io/internal/a$a;->b:Lgt/s0;

    .line 7
    .line 8
    invoke-interface {v0}, Lgt/s0;->dispose()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final b()Lkotlinx/coroutines/r;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/internal/a$a;->a:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/internal/a$a;->c:Lio/ktor/utils/io/internal/a;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lio/ktor/utils/io/internal/a;->a(Lio/ktor/utils/io/internal/a;Lio/ktor/utils/io/internal/a$a;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/a$a;->a()V

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lio/ktor/utils/io/internal/a$a;->c:Lio/ktor/utils/io/internal/a;

    .line 12
    .line 13
    iget-object v1, p0, Lio/ktor/utils/io/internal/a$a;->a:Lkotlinx/coroutines/r;

    .line 14
    .line 15
    invoke-static {v0, v1, p1}, Lio/ktor/utils/io/internal/a;->b(Lio/ktor/utils/io/internal/a;Lkotlinx/coroutines/r;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/internal/a$a;->c(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method
