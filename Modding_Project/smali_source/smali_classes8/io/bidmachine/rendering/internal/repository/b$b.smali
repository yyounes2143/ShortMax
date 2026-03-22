.class public abstract Lio/bidmachine/rendering/internal/repository/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/utils/NetworkRequest$e;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/repository/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/bidmachine/rendering/utils/NetworkRequest$e<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Llq/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llq/a$a<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lio/bidmachine/rendering/internal/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llq/a$a;Lgt/g0;Lio/bidmachine/rendering/internal/h;)V
    .locals 1
    .param p1    # Llq/a$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/rendering/internal/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llq/a$a<",
            "TT;>;",
            "Lgt/g0;",
            "Lio/bidmachine/rendering/internal/h;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "resultCallback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "coroutineScope"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "coroutineDispatchers"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/b$b;->a:Llq/a$a;

    .line 20
    .line 21
    iput-object p2, p0, Lio/bidmachine/rendering/internal/repository/b$b;->b:Lgt/g0;

    .line 22
    .line 23
    iput-object p3, p0, Lio/bidmachine/rendering/internal/repository/b$b;->c:Lio/bidmachine/rendering/internal/h;

    .line 24
    .line 25
    return-void
.end method

.method public static final synthetic b(Lio/bidmachine/rendering/internal/repository/b$b;)Llq/a$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/repository/b$b;->a:Llq/a$a;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(Lrq/t;)V
    .locals 7
    .param p1    # Lrq/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/b$b;->b:Lgt/g0;

    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/b$b;->c:Lio/bidmachine/rendering/internal/h;

    .line 9
    .line 10
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/h;->g()Lgt/c0;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-instance v4, Lio/bidmachine/rendering/internal/repository/b$b$a;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {v4, p0, p1, v0}, Lio/bidmachine/rendering/internal/repository/b$b$a;-><init>(Lio/bidmachine/rendering/internal/repository/b$b;Lrq/t;Lrs/c;)V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x2

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public abstract c()Lrq/t;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/b$b;->b:Lgt/g0;

    .line 4
    .line 5
    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/b$b;->c:Lio/bidmachine/rendering/internal/h;

    .line 6
    .line 7
    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/h;->g()Lgt/c0;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v3, Lio/bidmachine/rendering/internal/repository/b$b$b;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v3, p0, p1, v2}, Lio/bidmachine/rendering/internal/repository/b$b$b;-><init>(Lio/bidmachine/rendering/internal/repository/b$b;Ljava/lang/Object;Lrs/c;)V

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/repository/b$b;->c()Lrq/t;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/repository/b$b;->a(Lrq/t;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method
