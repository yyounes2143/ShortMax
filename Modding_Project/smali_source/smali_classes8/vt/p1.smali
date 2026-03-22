.class public final Lvt/p1;
.super Lkotlinx/serialization/encoding/b;
.source "NoOpEncoder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lvt/p1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lxt/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lvt/p1;

    .line 2
    .line 3
    invoke-direct {v0}, Lvt/p1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lvt/p1;->a:Lvt/p1;

    .line 7
    .line 8
    invoke-static {}, Lxt/b;->a()Lxt/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lvt/p1;->b:Lxt/a;

    .line 13
    .line 14
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/serialization/encoding/b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public encodeBoolean(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public encodeByte(B)V
    .locals 0

    .line 1
    return-void
.end method

.method public encodeChar(C)V
    .locals 0

    .line 1
    return-void
.end method

.method public encodeDouble(D)V
    .locals 0

    .line 1
    return-void
.end method

.method public encodeEnum(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V
    .locals 0
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "enumDescriptor"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public encodeFloat(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public encodeInt(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public encodeLong(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public encodeNull()V
    .locals 0

    .line 1
    return-void
.end method

.method public encodeShort(S)V
    .locals 0

    .line 1
    return-void
.end method

.method public encodeString(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public encodeValue(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getSerializersModule()Lxt/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lvt/p1;->b:Lxt/a;

    .line 2
    .line 3
    return-object v0
.end method
