.class public final Lio/ktor/utils/io/internal/d$a;
.super Lio/ktor/utils/io/pool/a;
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
        "Lio/ktor/utils/io/pool/a<",
        "Lio/ktor/utils/io/internal/f$c;",
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
.method public d()Lio/ktor/utils/io/internal/f$c;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lio/ktor/utils/io/internal/f$c;

    .line 2
    .line 3
    invoke-static {}, Lio/ktor/utils/io/internal/d;->a()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "allocateDirect(BUFFER_SIZE)"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-direct {v0, v1, v4, v2, v3}, Lio/ktor/utils/io/internal/f$c;-><init>(Ljava/nio/ByteBuffer;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public bridge synthetic p0()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/d$a;->d()Lio/ktor/utils/io/internal/f$c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
