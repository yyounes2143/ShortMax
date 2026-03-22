.class public final Lwt/s0;
.super Lkotlinx/serialization/encoding/b;
.source "StreamingJsonEncoder.kt"

# interfaces
.implements Lkotlinx/serialization/json/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwt/s0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nStreamingJsonEncoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StreamingJsonEncoder.kt\nkotlinx/serialization/json/internal/StreamingJsonEncoder\n+ 2 Polymorphic.kt\nkotlinx/serialization/json/internal/PolymorphicKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,232:1\n178#1,2:259\n178#1,2:261\n21#2,12:233\n35#2,13:246\n1#3:245\n1#3:263\n*S KotlinDebug\n*F\n+ 1 StreamingJsonEncoder.kt\nkotlinx/serialization/json/internal/StreamingJsonEncoder\n*L\n168#1:259,2\n169#1:261,2\n68#1:233,12\n68#1:246,13\n68#1:245\n*E\n"
    }
.end annotation


# instance fields
.field private final a:Lwt/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lkotlinx/serialization/json/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lkotlinx/serialization/json/internal/WriteMode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:[Lkotlinx/serialization/json/q;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final e:Lxt/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Lkotlinx/serialization/json/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private g:Z

.field private h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwt/m;Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/q;)V
    .locals 1
    .param p1    # Lwt/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/serialization/json/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/serialization/json/internal/WriteMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # [Lkotlinx/serialization/json/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "composer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lkotlinx/serialization/encoding/b;-><init>()V

    .line 2
    iput-object p1, p0, Lwt/s0;->a:Lwt/m;

    .line 3
    iput-object p2, p0, Lwt/s0;->b:Lkotlinx/serialization/json/a;

    .line 4
    iput-object p3, p0, Lwt/s0;->c:Lkotlinx/serialization/json/internal/WriteMode;

    .line 5
    iput-object p4, p0, Lwt/s0;->d:[Lkotlinx/serialization/json/q;

    .line 6
    invoke-virtual {p0}, Lwt/s0;->a()Lkotlinx/serialization/json/a;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->getSerializersModule()Lxt/a;

    move-result-object p1

    iput-object p1, p0, Lwt/s0;->e:Lxt/a;

    .line 7
    invoke-virtual {p0}, Lwt/s0;->a()Lkotlinx/serialization/json/a;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->d()Lkotlinx/serialization/json/e;

    move-result-object p1

    iput-object p1, p0, Lwt/s0;->f:Lkotlinx/serialization/json/e;

    .line 8
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p4, :cond_1

    .line 9
    aget-object p2, p4, p1

    if-nez p2, :cond_0

    if-eq p2, p0, :cond_1

    .line 10
    :cond_0
    aput-object p0, p4, p1

    :cond_1
    return-void
.end method

.method public constructor <init>(Lwt/z;Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/q;)V
    .locals 1
    .param p1    # Lwt/z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/serialization/json/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/serialization/json/internal/WriteMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # [Lkotlinx/serialization/json/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modeReuseCache"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {p1, p2}, Lwt/w;->a(Lwt/z;Lkotlinx/serialization/json/a;)Lwt/m;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lwt/s0;-><init>(Lwt/m;Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/q;)V

    return-void
.end method

.method private final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwt/s0;->a:Lwt/m;

    .line 2
    .line 3
    invoke-virtual {v0}, Lwt/m;->c()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lwt/s0;->encodeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lwt/s0;->a:Lwt/m;

    .line 10
    .line 11
    const/16 v0, 0x3a

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lwt/m;->f(C)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lwt/s0;->a:Lwt/m;

    .line 17
    .line 18
    invoke-virtual {p1}, Lwt/m;->p()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p2}, Lwt/s0;->encodeString(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public a()Lkotlinx/serialization/json/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lwt/s0;->b:Lkotlinx/serialization/json/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public b(Lkotlinx/serialization/json/JsonElement;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/json/JsonElement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "element"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lwt/s0;->h:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    instance-of v0, p1, Lkotlinx/serialization/json/JsonObject;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lwt/s0;->i:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0, p1}, Lwt/p0;->d(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Void;

    .line 18
    .line 19
    .line 20
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 21
    .line 22
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    :goto_0
    sget-object v0, Lkotlinx/serialization/json/o;->a:Lkotlinx/serialization/json/o;

    .line 27
    .line 28
    invoke-virtual {p0, v0, p1}, Lwt/s0;->encodeSerializableValue(Lst/l;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/d;
    .locals 4
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lwt/s0;->a()Lkotlinx/serialization/json/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0, p1}, Lwt/b1;->b(Lkotlinx/serialization/json/a;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/json/internal/WriteMode;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-char v1, v0, Lkotlinx/serialization/json/internal/WriteMode;->begin:C

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lwt/s0;->a:Lwt/m;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Lwt/m;->f(C)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lwt/s0;->a:Lwt/m;

    .line 24
    .line 25
    invoke-virtual {v1}, Lwt/m;->b()V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v1, p0, Lwt/s0;->h:Ljava/lang/String;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    iget-object v2, p0, Lwt/s0;->i:Ljava/lang/String;

    .line 33
    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->h()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :cond_1
    invoke-direct {p0, v1, v2}, Lwt/s0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lwt/s0;->h:Ljava/lang/String;

    .line 45
    .line 46
    iput-object p1, p0, Lwt/s0;->i:Ljava/lang/String;

    .line 47
    .line 48
    :cond_2
    iget-object p1, p0, Lwt/s0;->c:Lkotlinx/serialization/json/internal/WriteMode;

    .line 49
    .line 50
    if-ne p1, v0, :cond_3

    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_3
    iget-object p1, p0, Lwt/s0;->d:[Lkotlinx/serialization/json/q;

    .line 54
    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    aget-object p1, p1, v1

    .line 62
    .line 63
    if-eqz p1, :cond_4

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    new-instance p1, Lwt/s0;

    .line 67
    .line 68
    iget-object v1, p0, Lwt/s0;->a:Lwt/m;

    .line 69
    .line 70
    invoke-virtual {p0}, Lwt/s0;->a()Lkotlinx/serialization/json/a;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    iget-object v3, p0, Lwt/s0;->d:[Lkotlinx/serialization/json/q;

    .line 75
    .line 76
    invoke-direct {p1, v1, v2, v0, v3}, Lwt/s0;-><init>(Lwt/m;Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/q;)V

    .line 77
    .line 78
    .line 79
    :goto_0
    return-object p1
.end method

.method public encodeBoolean(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lwt/s0;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lwt/s0;->encodeString(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lwt/s0;->a:Lwt/m;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lwt/m;->m(Z)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public encodeByte(B)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lwt/s0;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lwt/s0;->encodeString(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lwt/s0;->a:Lwt/m;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lwt/m;->e(B)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public encodeChar(C)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lwt/s0;->encodeString(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public encodeDouble(D)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lwt/s0;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lwt/s0;->encodeString(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lwt/s0;->a:Lwt/m;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Lwt/m;->g(D)V

    .line 16
    .line 17
    .line 18
    :goto_0
    iget-object v0, p0, Lwt/s0;->f:Lkotlinx/serialization/json/e;

    .line 19
    .line 20
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->b()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object p2, p0, Lwt/s0;->a:Lwt/m;

    .line 44
    .line 45
    iget-object p2, p2, Lwt/m;->a:Lwt/z;

    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-static {p1, p2}, Lwt/b0;->b(Ljava/lang/Number;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonEncodingException;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    throw p1

    .line 56
    :cond_2
    :goto_1
    return-void
.end method

.method public encodeElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z
    .locals 6
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lwt/s0;->c:Lkotlinx/serialization/json/internal/WriteMode;

    .line 7
    .line 8
    sget-object v1, Lwt/s0$a;->$EnumSwitchMapping$0:[I

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    aget v0, v1, v0

    .line 15
    .line 16
    const/16 v1, 0x2c

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    if-eq v0, v2, :cond_6

    .line 20
    .line 21
    const/16 v3, 0x3a

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x2

    .line 25
    if-eq v0, v5, :cond_3

    .line 26
    .line 27
    const/4 v5, 0x3

    .line 28
    if-eq v0, v5, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lwt/s0;->a:Lwt/m;

    .line 31
    .line 32
    invoke-virtual {v0}, Lwt/m;->a()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lwt/s0;->a:Lwt/m;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lwt/m;->f(C)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Lwt/s0;->a:Lwt/m;

    .line 44
    .line 45
    invoke-virtual {v0}, Lwt/m;->c()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lwt/s0;->a()Lkotlinx/serialization/json/a;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {p1, v0, p2}, Lwt/d0;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/a;I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Lwt/s0;->encodeString(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lwt/s0;->a:Lwt/m;

    .line 60
    .line 61
    invoke-virtual {p1, v3}, Lwt/m;->f(C)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lwt/s0;->a:Lwt/m;

    .line 65
    .line 66
    invoke-virtual {p1}, Lwt/m;->p()V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    if-nez p2, :cond_2

    .line 71
    .line 72
    iput-boolean v2, p0, Lwt/s0;->g:Z

    .line 73
    .line 74
    :cond_2
    if-ne p2, v2, :cond_8

    .line 75
    .line 76
    iget-object p1, p0, Lwt/s0;->a:Lwt/m;

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Lwt/m;->f(C)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lwt/s0;->a:Lwt/m;

    .line 82
    .line 83
    invoke-virtual {p1}, Lwt/m;->p()V

    .line 84
    .line 85
    .line 86
    iput-boolean v4, p0, Lwt/s0;->g:Z

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    iget-object p1, p0, Lwt/s0;->a:Lwt/m;

    .line 90
    .line 91
    invoke-virtual {p1}, Lwt/m;->a()Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_5

    .line 96
    .line 97
    rem-int/2addr p2, v5

    .line 98
    if-nez p2, :cond_4

    .line 99
    .line 100
    iget-object p1, p0, Lwt/s0;->a:Lwt/m;

    .line 101
    .line 102
    invoke-virtual {p1, v1}, Lwt/m;->f(C)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lwt/s0;->a:Lwt/m;

    .line 106
    .line 107
    invoke-virtual {p1}, Lwt/m;->c()V

    .line 108
    .line 109
    .line 110
    move v4, v2

    .line 111
    goto :goto_0

    .line 112
    :cond_4
    iget-object p1, p0, Lwt/s0;->a:Lwt/m;

    .line 113
    .line 114
    invoke-virtual {p1, v3}, Lwt/m;->f(C)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lwt/s0;->a:Lwt/m;

    .line 118
    .line 119
    invoke-virtual {p1}, Lwt/m;->p()V

    .line 120
    .line 121
    .line 122
    :goto_0
    iput-boolean v4, p0, Lwt/s0;->g:Z

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_5
    iput-boolean v2, p0, Lwt/s0;->g:Z

    .line 126
    .line 127
    iget-object p1, p0, Lwt/s0;->a:Lwt/m;

    .line 128
    .line 129
    invoke-virtual {p1}, Lwt/m;->c()V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_6
    iget-object p1, p0, Lwt/s0;->a:Lwt/m;

    .line 134
    .line 135
    invoke-virtual {p1}, Lwt/m;->a()Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-nez p1, :cond_7

    .line 140
    .line 141
    iget-object p1, p0, Lwt/s0;->a:Lwt/m;

    .line 142
    .line 143
    invoke-virtual {p1, v1}, Lwt/m;->f(C)V

    .line 144
    .line 145
    .line 146
    :cond_7
    iget-object p1, p0, Lwt/s0;->a:Lwt/m;

    .line 147
    .line 148
    invoke-virtual {p1}, Lwt/m;->c()V

    .line 149
    .line 150
    .line 151
    :cond_8
    :goto_1
    return v2
.end method

.method public encodeEnum(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V
    .locals 1
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "enumDescriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lwt/s0;->encodeString(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public encodeFloat(F)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lwt/s0;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lwt/s0;->encodeString(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lwt/s0;->a:Lwt/m;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lwt/m;->h(F)V

    .line 16
    .line 17
    .line 18
    :goto_0
    iget-object v0, p0, Lwt/s0;->f:Lkotlinx/serialization/json/e;

    .line 19
    .line 20
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->b()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object v0, p0, Lwt/s0;->a:Lwt/m;

    .line 44
    .line 45
    iget-object v0, v0, Lwt/m;->a:Lwt/z;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {p1, v0}, Lwt/b0;->b(Ljava/lang/Number;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonEncodingException;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    throw p1

    .line 56
    :cond_2
    :goto_1
    return-void
.end method

.method public encodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;
    .locals 4
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lwt/t0;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lwt/s0;->a:Lwt/m;

    .line 14
    .line 15
    instance-of v0, p1, Lwt/u;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p1, Lwt/m;->a:Lwt/z;

    .line 21
    .line 22
    iget-boolean v0, p0, Lwt/s0;->g:Z

    .line 23
    .line 24
    new-instance v2, Lwt/u;

    .line 25
    .line 26
    invoke-direct {v2, p1, v0}, Lwt/u;-><init>(Lwt/z;Z)V

    .line 27
    .line 28
    .line 29
    move-object p1, v2

    .line 30
    :goto_0
    invoke-virtual {p0}, Lwt/s0;->a()Lkotlinx/serialization/json/a;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v2, p0, Lwt/s0;->c:Lkotlinx/serialization/json/internal/WriteMode;

    .line 35
    .line 36
    new-instance v3, Lwt/s0;

    .line 37
    .line 38
    invoke-direct {v3, p1, v0, v2, v1}, Lwt/s0;-><init>(Lwt/m;Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/q;)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_1
    invoke-static {p1}, Lwt/t0;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iget-object p1, p0, Lwt/s0;->a:Lwt/m;

    .line 49
    .line 50
    instance-of v0, p1, Lwt/n;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    iget-object p1, p1, Lwt/m;->a:Lwt/z;

    .line 56
    .line 57
    iget-boolean v0, p0, Lwt/s0;->g:Z

    .line 58
    .line 59
    new-instance v2, Lwt/n;

    .line 60
    .line 61
    invoke-direct {v2, p1, v0}, Lwt/n;-><init>(Lwt/z;Z)V

    .line 62
    .line 63
    .line 64
    move-object p1, v2

    .line 65
    :goto_1
    invoke-virtual {p0}, Lwt/s0;->a()Lkotlinx/serialization/json/a;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v2, p0, Lwt/s0;->c:Lkotlinx/serialization/json/internal/WriteMode;

    .line 70
    .line 71
    new-instance v3, Lwt/s0;

    .line 72
    .line 73
    invoke-direct {v3, p1, v0, v2, v1}, Lwt/s0;-><init>(Lwt/m;Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/q;)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    iget-object v0, p0, Lwt/s0;->h:Ljava/lang/String;

    .line 78
    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->h()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iput-object p1, p0, Lwt/s0;->i:Ljava/lang/String;

    .line 86
    .line 87
    move-object v3, p0

    .line 88
    goto :goto_2

    .line 89
    :cond_4
    invoke-super {p0, p1}, Lkotlinx/serialization/encoding/b;->encodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    :goto_2
    return-object v3
.end method

.method public encodeInt(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lwt/s0;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lwt/s0;->encodeString(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lwt/s0;->a:Lwt/m;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lwt/m;->i(I)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public encodeLong(J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lwt/s0;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lwt/s0;->encodeString(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lwt/s0;->a:Lwt/m;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Lwt/m;->j(J)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public encodeNull()V
    .locals 2

    .line 1
    iget-object v0, p0, Lwt/s0;->a:Lwt/m;

    .line 2
    .line 3
    const-string v1, "null"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lwt/m;->k(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lst/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            "I",
            "Lst/l<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "serializer"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-nez p4, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lwt/s0;->f:Lkotlinx/serialization/json/e;

    .line 14
    .line 15
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->j()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lkotlinx/serialization/encoding/b;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public encodeSerializableValue(Lst/l;Ljava/lang/Object;)V
    .locals 3
    .param p1    # Lst/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lst/l<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .line 1
    const-string v0, "serializer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lkotlinx/serialization/json/q;->a()Lkotlinx/serialization/json/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lkotlinx/serialization/json/a;->d()Lkotlinx/serialization/json/e;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->p()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {p1, p0, p2}, Lst/l;->serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto/16 :goto_3

    .line 24
    .line 25
    :cond_0
    instance-of v0, p1, Lvt/b;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {p0}, Lkotlinx/serialization/json/q;->a()Lkotlinx/serialization/json/a;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lkotlinx/serialization/json/a;->d()Lkotlinx/serialization/json/e;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lkotlinx/serialization/json/e;->f()Lkotlinx/serialization/json/ClassDiscriminatorMode;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    sget-object v2, Lkotlinx/serialization/json/ClassDiscriminatorMode;->NONE:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    .line 42
    .line 43
    if-eq v1, v2, :cond_4

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-interface {p0}, Lkotlinx/serialization/json/q;->a()Lkotlinx/serialization/json/a;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lkotlinx/serialization/json/a;->d()Lkotlinx/serialization/json/e;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lkotlinx/serialization/json/e;->f()Lkotlinx/serialization/json/ClassDiscriminatorMode;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    sget-object v2, Lwt/p0$a;->$EnumSwitchMapping$0:[I

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    aget v1, v2, v1

    .line 65
    .line 66
    const/4 v2, 0x1

    .line 67
    if-eq v1, v2, :cond_4

    .line 68
    .line 69
    const/4 v2, 0x2

    .line 70
    if-eq v1, v2, :cond_4

    .line 71
    .line 72
    const/4 v2, 0x3

    .line 73
    if-ne v1, v2, :cond_3

    .line 74
    .line 75
    invoke-interface {p1}, Lst/l;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-interface {v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lut/l;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    sget-object v2, Lut/m$a;->a:Lut/m$a;

    .line 84
    .line 85
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-nez v2, :cond_2

    .line 90
    .line 91
    sget-object v2, Lut/m$d;->a:Lut/m$d;

    .line 92
    .line 93
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    :cond_2
    :goto_0
    invoke-interface {p1}, Lst/l;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-interface {p0}, Lkotlinx/serialization/json/q;->a()Lkotlinx/serialization/json/a;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-static {v1, v2}, Lwt/p0;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/a;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    goto :goto_1

    .line 112
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 113
    .line 114
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 115
    .line 116
    .line 117
    throw p1

    .line 118
    :cond_4
    const/4 v1, 0x0

    .line 119
    :goto_1
    if-eqz v0, :cond_7

    .line 120
    .line 121
    move-object v0, p1

    .line 122
    check-cast v0, Lvt/b;

    .line 123
    .line 124
    if-eqz p2, :cond_6

    .line 125
    .line 126
    invoke-static {v0, p0, p2}, Lst/h;->b(Lvt/b;Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)Lst/l;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-eqz v1, :cond_5

    .line 131
    .line 132
    invoke-static {p1, v0, v1}, Lwt/p0;->a(Lst/l;Lst/l;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :cond_5
    invoke-interface {v0}, Lst/l;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lut/l;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-static {p1}, Lwt/p0;->b(Lut/l;)V

    .line 144
    .line 145
    .line 146
    const-string p1, "null cannot be cast to non-null type kotlinx.serialization.SerializationStrategy<T of kotlinx.serialization.json.internal.PolymorphicKt.encodePolymorphically>"

    .line 147
    .line 148
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    move-object p1, v0

    .line 152
    goto :goto_2

    .line 153
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string p2, "Value for serializer "

    .line 159
    .line 160
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string p2, " should always be non-null. Please report issue to the kotlinx.serialization tracker."

    .line 171
    .line 172
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 180
    .line 181
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw p2

    .line 189
    :cond_7
    :goto_2
    if-eqz v1, :cond_8

    .line 190
    .line 191
    invoke-interface {p1}, Lst/l;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->h()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    iput-object v1, p0, Lwt/s0;->h:Ljava/lang/String;

    .line 200
    .line 201
    iput-object v0, p0, Lwt/s0;->i:Ljava/lang/String;

    .line 202
    .line 203
    :cond_8
    invoke-interface {p1, p0, p2}, Lst/l;->serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    :goto_3
    return-void
.end method

.method public encodeShort(S)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lwt/s0;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lwt/s0;->encodeString(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lwt/s0;->a:Lwt/m;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lwt/m;->l(S)V

    .line 16
    .line 17
    .line 18
    :goto_0
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
    iget-object v0, p0, Lwt/s0;->a:Lwt/m;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lwt/m;->n(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lwt/s0;->c:Lkotlinx/serialization/json/internal/WriteMode;

    .line 7
    .line 8
    iget-char p1, p1, Lkotlinx/serialization/json/internal/WriteMode;->end:C

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lwt/s0;->a:Lwt/m;

    .line 13
    .line 14
    invoke-virtual {p1}, Lwt/m;->q()V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lwt/s0;->a:Lwt/m;

    .line 18
    .line 19
    invoke-virtual {p1}, Lwt/m;->d()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lwt/s0;->a:Lwt/m;

    .line 23
    .line 24
    iget-object v0, p0, Lwt/s0;->c:Lkotlinx/serialization/json/internal/WriteMode;

    .line 25
    .line 26
    iget-char v0, v0, Lkotlinx/serialization/json/internal/WriteMode;->end:C

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lwt/m;->f(C)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public getSerializersModule()Lxt/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lwt/s0;->e:Lxt/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z
    .locals 0
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lwt/s0;->f:Lkotlinx/serialization/json/e;

    .line 7
    .line 8
    invoke-virtual {p1}, Lkotlinx/serialization/json/e;->i()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method
