.class public final Lio/ktor/utils/io/internal/g;
.super Ljava/lang/Object;
.source "ReadWriteBufferState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final a:Ljava/nio/ByteBuffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lio/ktor/utils/io/internal/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "allocate(0)"

    .line 7
    .line 8
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v1, Lio/ktor/utils/io/internal/g;->a:Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    new-instance v1, Lio/ktor/utils/io/internal/h;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lio/ktor/utils/io/internal/h;-><init>(I)V

    .line 16
    .line 17
    .line 18
    sput-object v1, Lio/ktor/utils/io/internal/g;->b:Lio/ktor/utils/io/internal/h;

    .line 19
    .line 20
    return-void
.end method

.method public static final a()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/ktor/utils/io/internal/g;->a:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final b()Lio/ktor/utils/io/internal/h;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/ktor/utils/io/internal/g;->b:Lio/ktor/utils/io/internal/h;

    .line 2
    .line 3
    return-object v0
.end method
