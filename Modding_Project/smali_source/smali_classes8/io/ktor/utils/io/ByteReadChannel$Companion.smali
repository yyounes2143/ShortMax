.class public final Lio/ktor/utils/io/ByteReadChannel$Companion;
.super Ljava/lang/Object;
.source "ByteReadChannelJVM.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/ByteReadChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field static final synthetic a:Lio/ktor/utils/io/ByteReadChannel$Companion;

.field private static final b:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Lio/ktor/utils/io/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/ktor/utils/io/ByteReadChannel$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/ktor/utils/io/ByteReadChannel$Companion;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/ktor/utils/io/ByteReadChannel$Companion;->a:Lio/ktor/utils/io/ByteReadChannel$Companion;

    .line 7
    .line 8
    sget-object v0, Lio/ktor/utils/io/ByteReadChannel$Companion$Empty$2;->d:Lio/ktor/utils/io/ByteReadChannel$Companion$Empty$2;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lio/ktor/utils/io/ByteReadChannel$Companion;->b:Lms/i;

    .line 15
    .line 16
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


# virtual methods
.method public final a()Lio/ktor/utils/io/ByteReadChannel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/ktor/utils/io/ByteReadChannel$Companion;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/ktor/utils/io/ByteReadChannel;

    .line 8
    .line 9
    return-object v0
.end method
