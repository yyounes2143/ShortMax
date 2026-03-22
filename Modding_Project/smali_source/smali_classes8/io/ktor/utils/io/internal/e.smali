.class public final Lio/ktor/utils/io/internal/e;
.super Ljava/lang/Object;
.source "ReadSessionImpl.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nReadSessionImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReadSessionImpl.kt\nio/ktor/utils/io/internal/ReadSessionImpl\n+ 2 Buffer.kt\nio/ktor/utils/io/core/Buffer\n*L\n1#1,47:1\n69#2:48\n69#2:49\n*S KotlinDebug\n*F\n+ 1 ReadSessionImpl.kt\nio/ktor/utils/io/internal/ReadSessionImpl\n*L\n17#1:48\n22#1:49\n*E\n"
    }
.end annotation


# instance fields
.field private final a:Lio/ktor/utils/io/ByteBufferChannel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Lis/a;
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
    iput-object p1, p0, Lio/ktor/utils/io/internal/e;->a:Lio/ktor/utils/io/ByteBufferChannel;

    .line 10
    .line 11
    sget-object p1, Lis/a;->j:Lis/a$d;

    .line 12
    .line 13
    invoke-virtual {p1}, Lis/a$d;->a()Lis/a;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lio/ktor/utils/io/internal/e;->b:Lis/a;

    .line 18
    .line 19
    return-void
.end method
