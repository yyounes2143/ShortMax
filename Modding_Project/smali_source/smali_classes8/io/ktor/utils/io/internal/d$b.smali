.class public final Lio/ktor/utils/io/internal/d$b;
.super Lio/ktor/utils/io/pool/DefaultPool;
.source "ObjectPool.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/ktor/utils/io/pool/DefaultPool<",
        "Lio/ktor/utils/io/internal/f$c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/ktor/utils/io/pool/DefaultPool;-><init>(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lio/ktor/utils/io/internal/f$c;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/internal/d$b;->r(Lio/ktor/utils/io/internal/f$c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic l()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/d$b;->s()Lio/ktor/utils/io/internal/f$c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected r(Lio/ktor/utils/io/internal/f$c;)V
    .locals 1
    .param p1    # Lio/ktor/utils/io/internal/f$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "instance"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lio/ktor/utils/io/internal/d;->d()Lio/ktor/utils/io/pool/b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object p1, p1, Lio/ktor/utils/io/internal/f;->a:Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lio/ktor/utils/io/pool/b;->y(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method protected s()Lio/ktor/utils/io/internal/f$c;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lio/ktor/utils/io/internal/f$c;

    .line 2
    .line 3
    invoke-static {}, Lio/ktor/utils/io/internal/d;->d()Lio/ktor/utils/io/pool/b;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Lio/ktor/utils/io/pool/b;->p0()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-direct {v0, v1, v4, v2, v3}, Lio/ktor/utils/io/internal/f$c;-><init>(Ljava/nio/ByteBuffer;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method
