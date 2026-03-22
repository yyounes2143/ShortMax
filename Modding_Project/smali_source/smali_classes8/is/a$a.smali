.class public final Lis/a$a;
.super Ljava/lang/Object;
.source "ChunkBuffer.kt"

# interfaces
.implements Lio/ktor/utils/io/pool/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lis/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/ktor/utils/io/pool/b<",
        "Lis/a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nChunkBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChunkBuffer.kt\nio/ktor/utils/io/core/internal/ChunkBuffer$Companion$EmptyPool$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,180:1\n1#2:181\n*E\n"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/ktor/utils/io/pool/b$a;->a(Lio/ktor/utils/io/pool/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public d()Lis/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lis/a;->j:Lis/a$d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lis/a$d;->a()Lis/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public dispose()V
    .locals 0

    .line 1
    return-void
.end method

.method public g(Lis/a;)V
    .locals 1
    .param p1    # Lis/a;
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
    sget-object v0, Lis/a;->j:Lis/a$d;

    .line 7
    .line 8
    invoke-virtual {v0}, Lis/a$d;->a()Lis/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string v0, "Only ChunkBuffer.Empty instance could be recycled."

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public bridge synthetic p0()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lis/a$a;->d()Lis/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic y(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lis/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lis/a$a;->g(Lis/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
