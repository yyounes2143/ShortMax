.class public final Lio/ktor/utils/io/jvm/javaio/BlockingKt;
.super Ljava/lang/Object;
.source "Blocking.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final a:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/utils/io/jvm/javaio/BlockingKt$ADAPTER_LOGGER$2;->d:Lio/ktor/utils/io/jvm/javaio/BlockingKt$ADAPTER_LOGGER$2;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/ktor/utils/io/jvm/javaio/BlockingKt;->a:Lms/i;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lio/ktor/utils/io/jvm/javaio/BlockingKt;->b:Ljava/lang/Object;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/Object;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lio/ktor/utils/io/jvm/javaio/BlockingKt;->c:Ljava/lang/Object;

    .line 22
    .line 23
    return-void
.end method

.method public static final synthetic a()Ldu/a;
    .locals 1

    .line 1
    invoke-static {}, Lio/ktor/utils/io/jvm/javaio/BlockingKt;->b()Ldu/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final b()Ldu/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/utils/io/jvm/javaio/BlockingKt;->a:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ldu/a;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final c(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/coroutines/r;)Ljava/io/InputStream;
    .locals 1
    .param p0    # Lio/ktor/utils/io/ByteReadChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/coroutines/r;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter;

    .line 7
    .line 8
    invoke-direct {v0, p1, p0}, Lio/ktor/utils/io/jvm/javaio/InputAdapter;-><init>(Lkotlinx/coroutines/r;Lio/ktor/utils/io/ByteReadChannel;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
