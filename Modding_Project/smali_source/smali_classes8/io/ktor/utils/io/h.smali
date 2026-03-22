.class final Lio/ktor/utils/io/h;
.super Ljava/lang/Object;
.source "Coroutines.kt"

# interfaces
.implements Lio/ktor/utils/io/m;
.implements Lio/ktor/utils/io/o;
.implements Lgt/g0;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lio/ktor/utils/io/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final synthetic b:Lgt/g0;


# direct methods
.method public constructor <init>(Lgt/g0;Lio/ktor/utils/io/b;)V
    .locals 1
    .param p1    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/utils/io/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "delegate"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "channel"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lio/ktor/utils/io/h;->a:Lio/ktor/utils/io/b;

    .line 15
    .line 16
    iput-object p1, p0, Lio/ktor/utils/io/h;->b:Lgt/g0;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a()Lio/ktor/utils/io/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/h;->a:Lio/ktor/utils/io/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getChannel()Lio/ktor/utils/io/ByteReadChannel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/ktor/utils/io/h;->a()Lio/ktor/utils/io/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getChannel()Lio/ktor/utils/io/e;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/ktor/utils/io/h;->a()Lio/ktor/utils/io/b;

    move-result-object v0

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/h;->b:Lgt/g0;

    .line 2
    .line 3
    invoke-interface {v0}, Lgt/g0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
