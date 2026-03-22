.class public final Lio/ktor/utils/io/internal/f$b;
.super Lio/ktor/utils/io/internal/f;
.source "ReadWriteBufferState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/internal/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final c:Lio/ktor/utils/io/internal/f$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/internal/f$c;)V
    .locals 3
    .param p1    # Lio/ktor/utils/io/internal/f$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "initial"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lio/ktor/utils/io/internal/f;->a:Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    iget-object v1, p1, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {p0, v0, v1, v2}, Lio/ktor/utils/io/internal/f;-><init>(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/h;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lio/ktor/utils/io/internal/f$b;->c:Lio/ktor/utils/io/internal/f$c;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Lio/ktor/utils/io/internal/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/f$b;->h()Lio/ktor/utils/io/internal/f$d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic d()Lio/ktor/utils/io/internal/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/f$b;->i()Lio/ktor/utils/io/internal/f$g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final g()Lio/ktor/utils/io/internal/f$c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/internal/f$b;->c:Lio/ktor/utils/io/internal/f$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Lio/ktor/utils/io/internal/f$d;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/internal/f$b;->c:Lio/ktor/utils/io/internal/f$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/f$c;->h()Lio/ktor/utils/io/internal/f$d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public i()Lio/ktor/utils/io/internal/f$g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/internal/f$b;->c:Lio/ktor/utils/io/internal/f$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/f$c;->j()Lio/ktor/utils/io/internal/f$g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "IDLE(with buffer)"

    .line 2
    .line 3
    return-object v0
.end method
