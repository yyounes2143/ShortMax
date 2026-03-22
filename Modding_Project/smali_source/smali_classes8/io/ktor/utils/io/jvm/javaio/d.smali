.class final Lio/ktor/utils/io/jvm/javaio/d;
.super Ljava/lang/Object;
.source "Pollers.kt"

# interfaces
.implements Lio/ktor/utils/io/jvm/javaio/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/ktor/utils/io/jvm/javaio/b<",
        "Ljava/lang/Thread;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lio/ktor/utils/io/jvm/javaio/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/ktor/utils/io/jvm/javaio/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/ktor/utils/io/jvm/javaio/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/ktor/utils/io/jvm/javaio/d;->a:Lio/ktor/utils/io/jvm/javaio/d;

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

.method private final c()Ljava/lang/Void;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "Parking is prohibited on this thread. Most likely you are using blocking operation on the wrong thread/dispatcher that doesn\'t allow blocking. Consider wrapping you blocking code withContext(Dispatchers.IO) {...}."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/ktor/utils/io/jvm/javaio/d;->c()Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 5
    .line 6
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 7
    .line 8
    .line 9
    throw p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Thread;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/jvm/javaio/d;->d(Ljava/lang/Thread;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(Ljava/lang/Thread;)V
    .locals 1
    .param p1    # Ljava/lang/Thread;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "token"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lio/ktor/utils/io/jvm/javaio/a;->a:Lio/ktor/utils/io/jvm/javaio/a;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lio/ktor/utils/io/jvm/javaio/a;->c(Ljava/lang/Thread;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
