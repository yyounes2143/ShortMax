.class public final Lhs/i;
.super Lhs/n;
.source "BytePacketBuilder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1, v0}, Lhs/i;-><init>(Lio/ktor/utils/io/pool/b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lio/ktor/utils/io/pool/b;)V
    .locals 1
    .param p1    # Lio/ktor/utils/io/pool/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/pool/b<",
            "Lis/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pool"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Lhs/n;-><init>(Lio/ktor/utils/io/pool/b;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/ktor/utils/io/pool/b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 2
    sget-object p1, Lis/a;->j:Lis/a$d;

    invoke-virtual {p1}, Lis/a$d;->c()Lio/ktor/utils/io/pool/b;

    move-result-object p1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lhs/i;-><init>(Lio/ktor/utils/io/pool/b;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lhs/i;->e0(C)Lhs/i;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lhs/i;->f0(Ljava/lang/CharSequence;)Lhs/i;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lhs/i;->g0(Ljava/lang/CharSequence;II)Lhs/i;

    move-result-object p1

    return-object p1
.end method

.method public e0(C)Lhs/i;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lhs/n;->l(C)Lhs/n;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "null cannot be cast to non-null type io.ktor.utils.io.core.BytePacketBuilder"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast p1, Lhs/i;

    .line 11
    .line 12
    return-object p1
.end method

.method public f0(Ljava/lang/CharSequence;)Lhs/i;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lhs/n;->m(Ljava/lang/CharSequence;)Lhs/n;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "null cannot be cast to non-null type io.ktor.utils.io.core.BytePacketBuilder"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast p1, Lhs/i;

    .line 11
    .line 12
    return-object p1
.end method

.method public g0(Ljava/lang/CharSequence;II)Lhs/i;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lhs/n;->o(Ljava/lang/CharSequence;II)Lhs/n;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "null cannot be cast to non-null type io.ktor.utils.io.core.BytePacketBuilder"

    .line 6
    .line 7
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast p1, Lhs/i;

    .line 11
    .line 12
    return-object p1
.end method

.method public final h0()Lhs/j;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lhs/i;->i0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lhs/n;->Y()Lis/a;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    sget-object v0, Lhs/j;->i:Lhs/j$a;

    .line 12
    .line 13
    invoke-virtual {v0}, Lhs/j$a;->a()Lhs/j;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v2, Lhs/j;

    .line 19
    .line 20
    int-to-long v3, v0

    .line 21
    invoke-virtual {p0}, Lhs/n;->F()Lio/ktor/utils/io/pool/b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-direct {v2, v1, v3, v4, v0}, Lhs/j;-><init>(Lis/a;JLio/ktor/utils/io/pool/b;)V

    .line 26
    .line 27
    .line 28
    move-object v0, v2

    .line 29
    :goto_0
    return-object v0
.end method

.method public final i0()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lhs/n;->T()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final j0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lhs/n;->T()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public bridge synthetic l(C)Lhs/n;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lhs/i;->e0(C)Lhs/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic m(Ljava/lang/CharSequence;)Lhs/n;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lhs/i;->f0(Ljava/lang/CharSequence;)Lhs/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic o(Ljava/lang/CharSequence;II)Lhs/n;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lhs/i;->g0(Ljava/lang/CharSequence;II)Lhs/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "BytePacketBuilder[0x"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x5d

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method protected final u()V
    .locals 0

    .line 1
    return-void
.end method

.method protected final v(Ljava/nio/ByteBuffer;II)V
    .locals 0
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "source"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
