.class public final Lio/ktor/utils/io/internal/d;
.super Ljava/lang/Object;
.source "ObjectPool.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:Lio/ktor/utils/io/pool/b;
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

.field private static final e:Lio/ktor/utils/io/pool/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/b<",
            "Lio/ktor/utils/io/internal/f$c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final f:Lio/ktor/utils/io/pool/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/b<",
            "Lio/ktor/utils/io/internal/f$c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "BufferSize"

    .line 2
    .line 3
    const/16 v1, 0x1000

    .line 4
    .line 5
    invoke-static {v0, v1}, Lio/ktor/utils/io/internal/i;->a(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput v0, Lio/ktor/utils/io/internal/d;->a:I

    .line 10
    .line 11
    const-string v1, "BufferPoolSize"

    .line 12
    .line 13
    const/16 v2, 0x800

    .line 14
    .line 15
    invoke-static {v1, v2}, Lio/ktor/utils/io/internal/i;->a(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    sput v1, Lio/ktor/utils/io/internal/d;->b:I

    .line 20
    .line 21
    const-string v2, "BufferObjectPoolSize"

    .line 22
    .line 23
    const/16 v3, 0x400

    .line 24
    .line 25
    invoke-static {v2, v3}, Lio/ktor/utils/io/internal/i;->a(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    sput v2, Lio/ktor/utils/io/internal/d;->c:I

    .line 30
    .line 31
    new-instance v3, Ljs/d;

    .line 32
    .line 33
    invoke-direct {v3, v1, v0}, Ljs/d;-><init>(II)V

    .line 34
    .line 35
    .line 36
    sput-object v3, Lio/ktor/utils/io/internal/d;->d:Lio/ktor/utils/io/pool/b;

    .line 37
    .line 38
    new-instance v0, Lio/ktor/utils/io/internal/d$b;

    .line 39
    .line 40
    invoke-direct {v0, v2}, Lio/ktor/utils/io/internal/d$b;-><init>(I)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lio/ktor/utils/io/internal/d;->e:Lio/ktor/utils/io/pool/b;

    .line 44
    .line 45
    new-instance v0, Lio/ktor/utils/io/internal/d$a;

    .line 46
    .line 47
    invoke-direct {v0}, Lio/ktor/utils/io/internal/d$a;-><init>()V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lio/ktor/utils/io/internal/d;->f:Lio/ktor/utils/io/pool/b;

    .line 51
    .line 52
    return-void
.end method

.method public static final a()I
    .locals 1

    .line 1
    sget v0, Lio/ktor/utils/io/internal/d;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public static final b()Lio/ktor/utils/io/pool/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/utils/io/pool/b<",
            "Lio/ktor/utils/io/internal/f$c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/ktor/utils/io/internal/d;->f:Lio/ktor/utils/io/pool/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final c()Lio/ktor/utils/io/pool/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/utils/io/pool/b<",
            "Lio/ktor/utils/io/internal/f$c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/ktor/utils/io/internal/d;->e:Lio/ktor/utils/io/pool/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final d()Lio/ktor/utils/io/pool/b;
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
    sget-object v0, Lio/ktor/utils/io/internal/d;->d:Lio/ktor/utils/io/pool/b;

    .line 2
    .line 3
    return-object v0
.end method
