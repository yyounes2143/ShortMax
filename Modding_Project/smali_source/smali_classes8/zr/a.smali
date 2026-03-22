.class public final Lzr/a;
.super Ljava/lang/Object;
.source "ByteBufferPool.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final a:Lio/ktor/utils/io/pool/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/b<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljs/b;

    .line 2
    .line 3
    const/16 v1, 0x800

    .line 4
    .line 5
    const/16 v2, 0x1002

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljs/b;-><init>(II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lzr/a;->a:Lio/ktor/utils/io/pool/b;

    .line 11
    .line 12
    return-void
.end method

.method public static final a()Lio/ktor/utils/io/pool/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/utils/io/pool/b<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lzr/a;->a:Lio/ktor/utils/io/pool/b;

    .line 2
    .line 3
    return-object v0
.end method
