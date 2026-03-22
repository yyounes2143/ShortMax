.class public final Lis/a$c;
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
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "This pool doesn\'t support borrow"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
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
    return-void
.end method

.method public bridge synthetic p0()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lis/a$c;->d()Lis/a;

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
    invoke-virtual {p0, p1}, Lis/a$c;->g(Lis/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
