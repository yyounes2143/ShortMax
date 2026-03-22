.class final Lio/ktor/utils/io/ByteReadChannel$Companion$Empty$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ByteReadChannelJVM.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/ByteReadChannel$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lio/ktor/utils/io/b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nByteReadChannelJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteReadChannelJVM.kt\nio/ktor/utils/io/ByteReadChannel$Companion$Empty$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,362:1\n1#2:363\n*E\n"
    }
.end annotation


# static fields
.field public static final d:Lio/ktor/utils/io/ByteReadChannel$Companion$Empty$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/ktor/utils/io/ByteReadChannel$Companion$Empty$2;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/ktor/utils/io/ByteReadChannel$Companion$Empty$2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/ktor/utils/io/ByteReadChannel$Companion$Empty$2;->d:Lio/ktor/utils/io/ByteReadChannel$Companion$Empty$2;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final b()Lio/ktor/utils/io/b;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {v2, v0, v1}, Lio/ktor/utils/io/d;->c(ZILjava/lang/Object;)Lio/ktor/utils/io/b;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lio/ktor/utils/io/f;->a(Lio/ktor/utils/io/e;)Z

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteReadChannel$Companion$Empty$2;->b()Lio/ktor/utils/io/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
