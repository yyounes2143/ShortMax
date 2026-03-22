.class public final Lio/ktor/utils/io/internal/j;
.super Ljava/lang/Object;
.source "WriteSessionImpl.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:Lio/ktor/utils/io/ByteBufferChannel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Ljava/nio/ByteBuffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Lis/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:Lio/ktor/utils/io/internal/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/ByteBufferChannel;)V
    .locals 1
    .param p1    # Lio/ktor/utils/io/ByteBufferChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "channel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lio/ktor/utils/io/ByteBufferChannel;->l0()Lio/ktor/utils/io/ByteBufferChannel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lio/ktor/utils/io/internal/j;->a:Lio/ktor/utils/io/ByteBufferChannel;

    .line 14
    .line 15
    sget-object p1, Lis/a;->j:Lis/a$d;

    .line 16
    .line 17
    invoke-virtual {p1}, Lis/a$d;->a()Lis/a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lhs/a;->g()Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lio/ktor/utils/io/internal/j;->b:Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    invoke-virtual {p1}, Lis/a$d;->a()Lis/a;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lio/ktor/utils/io/internal/j;->c:Lis/a;

    .line 32
    .line 33
    iget-object p1, p0, Lio/ktor/utils/io/internal/j;->a:Lio/ktor/utils/io/ByteBufferChannel;

    .line 34
    .line 35
    invoke-virtual {p1}, Lio/ktor/utils/io/ByteBufferChannel;->J()Lio/ktor/utils/io/internal/f;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object p1, p1, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 40
    .line 41
    iput-object p1, p0, Lio/ktor/utils/io/internal/j;->d:Lio/ktor/utils/io/internal/h;

    .line 42
    .line 43
    return-void
.end method
