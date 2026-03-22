.class public final Lio/ktor/utils/io/internal/f$f;
.super Lio/ktor/utils/io/internal/f;
.source "ReadWriteBufferState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/internal/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final c:Lio/ktor/utils/io/internal/f$f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/ktor/utils/io/internal/f$f;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/ktor/utils/io/internal/f$f;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/ktor/utils/io/internal/f$f;->c:Lio/ktor/utils/io/internal/f$f;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-static {}, Lio/ktor/utils/io/internal/g;->a()Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lio/ktor/utils/io/internal/g;->b()Lio/ktor/utils/io/internal/h;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {p0, v0, v1, v2}, Lio/ktor/utils/io/internal/f;-><init>(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/h;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "Terminated"

    .line 2
    .line 3
    return-object v0
.end method
