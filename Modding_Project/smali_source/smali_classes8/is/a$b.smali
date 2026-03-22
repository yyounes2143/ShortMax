.class public final Lis/a$b;
.super Lio/ktor/utils/io/pool/a;
.source "ChunkBuffer.kt"


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
        "Lio/ktor/utils/io/pool/a<",
        "Lis/a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/ktor/utils/io/pool/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public d()Lis/a;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lis/a;

    .line 2
    .line 3
    sget-object v1, Lfs/b;->a:Lfs/b;

    .line 4
    .line 5
    const/16 v2, 0x1000

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lfs/b;->b(I)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v0, v1, v2, p0, v2}, Lis/a;-><init>(Ljava/nio/ByteBuffer;Lis/a;Lio/ktor/utils/io/pool/b;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    .line 14
    .line 15
    return-object v0
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
    sget-object v0, Lfs/b;->a:Lfs/b;

    .line 7
    .line 8
    invoke-virtual {p1}, Lhs/a;->g()Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Lfs/b;->a(Ljava/nio/ByteBuffer;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public bridge synthetic p0()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lis/a$b;->d()Lis/a;

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
    invoke-virtual {p0, p1}, Lis/a$b;->g(Lis/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
