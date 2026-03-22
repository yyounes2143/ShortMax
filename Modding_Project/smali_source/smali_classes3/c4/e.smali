.class public final Lc4/e;
.super Ljava/lang/Object;
.source "PlatformDecoderFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lc4/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc4/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lc4/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc4/e;->a:Lc4/e;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final a(Lb4/d0;ZZLc4/f;)Lc4/d;
    .locals 2
    .param p0    # Lb4/d0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lc4/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p1, "poolFactory"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "platformDecoderOptions"

    .line 7
    .line 8
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v0, 0x1a

    .line 14
    .line 15
    const-string v1, "getBitmapPool(...)"

    .line 16
    .line 17
    if-lt p1, v0, :cond_0

    .line 18
    .line 19
    new-instance p1, Lc4/c;

    .line 20
    .line 21
    invoke-virtual {p0}, Lb4/d0;->b()Lb4/i;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, p2}, Lc4/e;->b(Lb4/d0;Z)Landroidx/core/util/Pools$Pool;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-direct {p1, v0, p0, p3}, Lc4/c;-><init>(Lb4/i;Landroidx/core/util/Pools$Pool;Lc4/f;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance p1, Lc4/a;

    .line 37
    .line 38
    invoke-virtual {p0}, Lb4/d0;->b()Lb4/i;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p0, p2}, Lc4/e;->b(Lb4/d0;Z)Landroidx/core/util/Pools$Pool;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-direct {p1, v0, p0, p3}, Lc4/a;-><init>(Lb4/i;Landroidx/core/util/Pools$Pool;Lc4/f;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-object p1
.end method

.method public static final b(Lb4/d0;Z)Landroidx/core/util/Pools$Pool;
    .locals 3
    .param p0    # Lb4/d0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb4/d0;",
            "Z)",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "poolFactory"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    sget-object p0, Lcom/facebook/common/memory/DecodeBufferHelper;->a:Lcom/facebook/common/memory/DecodeBufferHelper;

    .line 9
    .line 10
    const-string p1, "INSTANCE"

    .line 11
    .line 12
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lb4/d0;->e()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    new-instance p1, Landroidx/core/util/Pools$SynchronizedPool;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    :goto_0
    if-ge v0, p0, :cond_1

    .line 27
    .line 28
    invoke-static {}, Lcom/facebook/common/memory/DecodeBufferHelper;->c()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "allocate(...)"

    .line 37
    .line 38
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    return-object p1
.end method
