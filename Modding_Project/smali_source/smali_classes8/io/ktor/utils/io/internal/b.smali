.class public final Lio/ktor/utils/io/internal/b;
.super Ljava/lang/Object;
.source "ByteBufferChannelInternals.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/internal/b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final b:Lio/ktor/utils/io/internal/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lio/ktor/utils/io/internal/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/Throwable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/ktor/utils/io/internal/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/ktor/utils/io/internal/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/ktor/utils/io/internal/b;->b:Lio/ktor/utils/io/internal/b$a;

    .line 8
    .line 9
    new-instance v0, Lio/ktor/utils/io/internal/b;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lio/ktor/utils/io/internal/b;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lio/ktor/utils/io/internal/b;->c:Lio/ktor/utils/io/internal/b;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/ktor/utils/io/internal/b;->a:Ljava/lang/Throwable;

    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic a()Lio/ktor/utils/io/internal/b;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/utils/io/internal/b;->c:Lio/ktor/utils/io/internal/b;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/internal/b;->a:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Ljava/lang/Throwable;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/internal/b;->a:Ljava/lang/Throwable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lio/ktor/utils/io/ClosedWriteChannelException;

    .line 6
    .line 7
    const-string v1, "The channel was closed"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lio/ktor/utils/io/ClosedWriteChannelException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Closed["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/b;->c()Ljava/lang/Throwable;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x5d

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method
