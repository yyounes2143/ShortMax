.class abstract Lwt/e;
.super Lvt/o1;
.source "TreeJsonEncoder.kt"

# interfaces
.implements Lkotlinx/serialization/json/q;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTreeJsonEncoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TreeJsonEncoder.kt\nkotlinx/serialization/json/internal/AbstractJsonTreeEncoder\n+ 2 Polymorphic.kt\nkotlinx/serialization/json/internal/PolymorphicKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 WriteMode.kt\nkotlinx/serialization/json/internal/WriteModeKt\n*L\n1#1,280:1\n21#2,12:281\n35#2,13:294\n1#3:293\n36#4,9:307\n*S KotlinDebug\n*F\n+ 1 TreeJsonEncoder.kt\nkotlinx/serialization/json/internal/AbstractJsonTreeEncoder\n*L\n84#1:281,12\n84#1:294,13\n84#1:293\n154#1:307,9\n*E\n"
    }
.end annotation


# instance fields
.field private final b:Lkotlinx/serialization/json/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlinx/serialization/json/JsonElement;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field protected final d:Lkotlinx/serialization/json/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/json/a;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlinx/serialization/json/JsonElement;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lvt/o1;-><init>()V

    .line 3
    iput-object p1, p0, Lwt/e;->b:Lkotlinx/serialization/json/a;

    .line 4
    iput-object p2, p0, Lwt/e;->c:Lkotlin/jvm/functions/Function1;

    .line 5
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->d()Lkotlinx/serialization/json/e;

    move-result-object p1

    iput-object p1, p0, Lwt/e;->d:Lkotlinx/serialization/json/e;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lwt/e;-><init>(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final A(Lwt/e;Lkotlinx/serialization/json/JsonElement;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "node"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lvt/a3;->q()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Lwt/e;->R(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method private final P(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lwt/e$a;
    .locals 1

    .line 1
    new-instance v0, Lwt/e$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lwt/e$a;-><init>(Lwt/e;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final Q(Ljava/lang/String;)Lwt/e$b;
    .locals 1

    .line 1
    new-instance v0, Lwt/e$b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lwt/e$b;-><init>(Lwt/e;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic z(Lwt/e;Lkotlinx/serialization/json/JsonElement;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lwt/e;->A(Lwt/e;Lkotlinx/serialization/json/JsonElement;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method protected B(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {p2}, Lkotlinx/serialization/json/h;->a(Ljava/lang/Boolean;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p0, p1, p2}, Lwt/e;->R(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method protected C(Ljava/lang/String;B)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {p2}, Lkotlinx/serialization/json/h;->b(Ljava/lang/Number;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p0, p1, p2}, Lwt/e;->R(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method protected D(Ljava/lang/String;C)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {p2}, Lkotlinx/serialization/json/h;->c(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p0, p1, p2}, Lwt/e;->R(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method protected E(Ljava/lang/String;D)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lkotlinx/serialization/json/h;->b(Ljava/lang/Number;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, p1, v0}, Lwt/e;->R(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lwt/e;->d:Lkotlinx/serialization/json/e;

    .line 18
    .line 19
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->b()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p0}, Lwt/e;->N()Lkotlinx/serialization/json/JsonElement;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-static {p2, p1, p3}, Lwt/b0;->c(Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonEncodingException;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    throw p1

    .line 55
    :cond_1
    :goto_0
    return-void
.end method

.method protected F(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "enumDescriptor"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-static {p2}, Lkotlinx/serialization/json/h;->c(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p0, p1, p2}, Lwt/e;->R(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method protected G(Ljava/lang/String;F)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lkotlinx/serialization/json/h;->b(Ljava/lang/Number;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, p1, v0}, Lwt/e;->R(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lwt/e;->d:Lkotlinx/serialization/json/e;

    .line 18
    .line 19
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->b()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p0}, Lwt/e;->N()Lkotlinx/serialization/json/JsonElement;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {p2, p1, v0}, Lwt/b0;->c(Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonEncodingException;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    throw p1

    .line 55
    :cond_1
    :goto_0
    return-void
.end method

.method protected H(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "inlineDescriptor"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Lwt/t0;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-direct {p0, p1}, Lwt/e;->Q(Ljava/lang/String;)Lwt/e$b;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p2}, Lwt/t0;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-direct {p0, p1, p2}, Lwt/e;->P(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lwt/e$a;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-super {p0, p1, p2}, Lvt/a3;->k(Ljava/lang/Object;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    :goto_0
    return-object p1
.end method

.method protected I(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {p2}, Lkotlinx/serialization/json/h;->b(Ljava/lang/Number;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p0, p1, p2}, Lwt/e;->R(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method protected J(Ljava/lang/String;J)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {p2}, Lkotlinx/serialization/json/h;->b(Ljava/lang/Number;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p0, p1, p2}, Lwt/e;->R(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method protected K(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Lwt/e;->R(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected L(Ljava/lang/String;S)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {p2}, Lkotlinx/serialization/json/h;->b(Ljava/lang/Number;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p0, p1, p2}, Lwt/e;->R(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method protected M(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "value"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Lkotlinx/serialization/json/h;->c(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p0, p1, p2}, Lwt/e;->R(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public abstract N()Lkotlinx/serialization/json/JsonElement;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method protected final O()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlinx/serialization/json/JsonElement;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lwt/e;->c:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract R(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/serialization/json/JsonElement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final a()Lkotlinx/serialization/json/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lwt/e;->b:Lkotlinx/serialization/json/a;

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
    iget-object v0, p0, Lwt/e;->e:Ljava/lang/String;

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
    iget-object v0, p0, Lwt/e;->f:Ljava/lang/String;

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
    invoke-virtual {p0, v0, p1}, Lwt/e;->encodeSerializableValue(Lst/l;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/d;
    .locals 5
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
    invoke-virtual {p0}, Lvt/a3;->r()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lwt/e;->c:Lkotlin/jvm/functions/Function1;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Lwt/d;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lwt/d;-><init>(Lwt/e;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lut/l;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget-object v2, Lut/m$b;->a:Lut/m$b;

    .line 25
    .line 26
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_6

    .line 31
    .line 32
    instance-of v2, v1, Lut/d;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    sget-object v2, Lut/m$c;->a:Lut/m$c;

    .line 38
    .line 39
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_5

    .line 44
    .line 45
    iget-object v1, p0, Lwt/e;->b:Lkotlinx/serialization/json/a;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-interface {p1, v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->d(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1}, Lkotlinx/serialization/json/a;->getSerializersModule()Lxt/a;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-static {v2, v3}, Lwt/b1;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;Lxt/a;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-interface {v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lut/l;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    instance-of v4, v3, Lut/e;

    .line 65
    .line 66
    if-nez v4, :cond_4

    .line 67
    .line 68
    sget-object v4, Lut/l$b;->a:Lut/l$b;

    .line 69
    .line 70
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_2

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    invoke-virtual {v1}, Lkotlinx/serialization/json/a;->d()Lkotlinx/serialization/json/e;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lkotlinx/serialization/json/e;->c()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    new-instance v1, Lwt/m0;

    .line 88
    .line 89
    iget-object v2, p0, Lwt/e;->b:Lkotlinx/serialization/json/a;

    .line 90
    .line 91
    invoke-direct {v1, v2, v0}, Lwt/m0;-><init>(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;)V

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_3
    invoke-static {v2}, Lwt/b0;->d(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/json/internal/JsonEncodingException;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    throw p1

    .line 100
    :cond_4
    :goto_1
    new-instance v1, Lwt/o0;

    .line 101
    .line 102
    iget-object v2, p0, Lwt/e;->b:Lkotlinx/serialization/json/a;

    .line 103
    .line 104
    invoke-direct {v1, v2, v0}, Lwt/o0;-><init>(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;)V

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_5
    new-instance v1, Lwt/k0;

    .line 109
    .line 110
    iget-object v2, p0, Lwt/e;->b:Lkotlinx/serialization/json/a;

    .line 111
    .line 112
    invoke-direct {v1, v2, v0}, Lwt/k0;-><init>(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;)V

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_6
    :goto_2
    new-instance v1, Lwt/m0;

    .line 117
    .line 118
    iget-object v2, p0, Lwt/e;->b:Lkotlinx/serialization/json/a;

    .line 119
    .line 120
    invoke-direct {v1, v2, v0}, Lwt/m0;-><init>(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;)V

    .line 121
    .line 122
    .line 123
    :goto_3
    iget-object v0, p0, Lwt/e;->e:Ljava/lang/String;

    .line 124
    .line 125
    if-eqz v0, :cond_a

    .line 126
    .line 127
    instance-of v2, v1, Lwt/o0;

    .line 128
    .line 129
    if-eqz v2, :cond_8

    .line 130
    .line 131
    move-object v2, v1

    .line 132
    check-cast v2, Lwt/o0;

    .line 133
    .line 134
    const-string v3, "key"

    .line 135
    .line 136
    invoke-static {v0}, Lkotlinx/serialization/json/h;->c(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v2, v3, v0}, Lwt/o0;->R(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lwt/e;->f:Ljava/lang/String;

    .line 144
    .line 145
    if-nez v0, :cond_7

    .line 146
    .line 147
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->h()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    :cond_7
    invoke-static {v0}, Lkotlinx/serialization/json/h;->c(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    const-string v0, "value"

    .line 156
    .line 157
    invoke-virtual {v2, v0, p1}, Lwt/o0;->R(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V

    .line 158
    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_8
    iget-object v2, p0, Lwt/e;->f:Ljava/lang/String;

    .line 162
    .line 163
    if-nez v2, :cond_9

    .line 164
    .line 165
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->h()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    :cond_9
    invoke-static {v2}, Lkotlinx/serialization/json/h;->c(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {v1, v0, p1}, Lwt/e;->R(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V

    .line 174
    .line 175
    .line 176
    :goto_4
    const/4 p1, 0x0

    .line 177
    iput-object p1, p0, Lwt/e;->e:Ljava/lang/String;

    .line 178
    .line 179
    iput-object p1, p0, Lwt/e;->f:Ljava/lang/String;

    .line 180
    .line 181
    :cond_a
    return-object v1
.end method

.method public bridge synthetic e(Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lwt/e;->B(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public encodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;
    .locals 3
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
    invoke-virtual {p0}, Lvt/a3;->r()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lwt/e;->e:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->h()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lwt/e;->f:Ljava/lang/String;

    .line 21
    .line 22
    :cond_0
    invoke-super {p0, p1}, Lvt/a3;->encodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-instance v0, Lwt/g0;

    .line 28
    .line 29
    iget-object v1, p0, Lwt/e;->b:Lkotlinx/serialization/json/a;

    .line 30
    .line 31
    iget-object v2, p0, Lwt/e;->c:Lkotlin/jvm/functions/Function1;

    .line 32
    .line 33
    invoke-direct {v0, v1, v2}, Lwt/g0;-><init>(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lwt/e;->encodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :goto_0
    return-object p1
.end method

.method public encodeNotNullMark()V
    .locals 0

    .line 1
    return-void
.end method

.method public encodeNull()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lvt/a3;->r()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/String;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lwt/e;->c:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    sget-object v1, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    .line 12
    .line 13
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p0, v0}, Lwt/e;->K(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
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
    invoke-virtual {p0}, Lvt/a3;->r()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-interface {p1}, Lst/l;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Lwt/e;->getSerializersModule()Lxt/a;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lwt/b1;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;Lxt/a;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lwt/a1;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Lwt/g0;

    .line 32
    .line 33
    iget-object v1, p0, Lwt/e;->b:Lkotlinx/serialization/json/a;

    .line 34
    .line 35
    iget-object v2, p0, Lwt/e;->c:Lkotlin/jvm/functions/Function1;

    .line 36
    .line 37
    invoke-direct {v0, v1, v2}, Lwt/g0;-><init>(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1, p2}, Lwt/e;->encodeSerializableValue(Lst/l;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_4

    .line 44
    .line 45
    :cond_1
    :goto_0
    invoke-interface {p0}, Lkotlinx/serialization/json/q;->a()Lkotlinx/serialization/json/a;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lkotlinx/serialization/json/a;->d()Lkotlinx/serialization/json/e;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->p()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-interface {p1, p0, p2}, Lst/l;->serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_4

    .line 63
    .line 64
    :cond_2
    instance-of v0, p1, Lvt/b;

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    invoke-interface {p0}, Lkotlinx/serialization/json/q;->a()Lkotlinx/serialization/json/a;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Lkotlinx/serialization/json/a;->d()Lkotlinx/serialization/json/e;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lkotlinx/serialization/json/e;->f()Lkotlinx/serialization/json/ClassDiscriminatorMode;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    sget-object v2, Lkotlinx/serialization/json/ClassDiscriminatorMode;->NONE:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    .line 81
    .line 82
    if-eq v1, v2, :cond_6

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    invoke-interface {p0}, Lkotlinx/serialization/json/q;->a()Lkotlinx/serialization/json/a;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lkotlinx/serialization/json/a;->d()Lkotlinx/serialization/json/e;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Lkotlinx/serialization/json/e;->f()Lkotlinx/serialization/json/ClassDiscriminatorMode;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    sget-object v2, Lwt/p0$a;->$EnumSwitchMapping$0:[I

    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    aget v1, v2, v1

    .line 104
    .line 105
    const/4 v2, 0x1

    .line 106
    if-eq v1, v2, :cond_6

    .line 107
    .line 108
    const/4 v2, 0x2

    .line 109
    if-eq v1, v2, :cond_6

    .line 110
    .line 111
    const/4 v2, 0x3

    .line 112
    if-ne v1, v2, :cond_5

    .line 113
    .line 114
    invoke-interface {p1}, Lst/l;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-interface {v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lut/l;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    sget-object v2, Lut/m$a;->a:Lut/m$a;

    .line 123
    .line 124
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-nez v2, :cond_4

    .line 129
    .line 130
    sget-object v2, Lut/m$d;->a:Lut/m$d;

    .line 131
    .line 132
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_6

    .line 137
    .line 138
    :cond_4
    :goto_1
    invoke-interface {p1}, Lst/l;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-interface {p0}, Lkotlinx/serialization/json/q;->a()Lkotlinx/serialization/json/a;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-static {v1, v2}, Lwt/p0;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/a;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    goto :goto_2

    .line 151
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 152
    .line 153
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 154
    .line 155
    .line 156
    throw p1

    .line 157
    :cond_6
    const/4 v1, 0x0

    .line 158
    :goto_2
    if-eqz v0, :cond_9

    .line 159
    .line 160
    move-object v0, p1

    .line 161
    check-cast v0, Lvt/b;

    .line 162
    .line 163
    if-eqz p2, :cond_8

    .line 164
    .line 165
    invoke-static {v0, p0, p2}, Lst/h;->b(Lvt/b;Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)Lst/l;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    if-eqz v1, :cond_7

    .line 170
    .line 171
    invoke-static {p1, v0, v1}, Lwt/p0;->a(Lst/l;Lst/l;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :cond_7
    invoke-interface {v0}, Lst/l;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lut/l;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-static {p1}, Lwt/p0;->b(Lut/l;)V

    .line 183
    .line 184
    .line 185
    const-string p1, "null cannot be cast to non-null type kotlinx.serialization.SerializationStrategy<T of kotlinx.serialization.json.internal.PolymorphicKt.encodePolymorphically>"

    .line 186
    .line 187
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    move-object p1, v0

    .line 191
    goto :goto_3

    .line 192
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    const-string p2, "Value for serializer "

    .line 198
    .line 199
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string p2, " should always be non-null. Please report issue to the kotlinx.serialization tracker."

    .line 210
    .line 211
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 219
    .line 220
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw p2

    .line 228
    :cond_9
    :goto_3
    if-eqz v1, :cond_a

    .line 229
    .line 230
    invoke-interface {p1}, Lst/l;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->h()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    iput-object v1, p0, Lwt/e;->e:Ljava/lang/String;

    .line 239
    .line 240
    iput-object v0, p0, Lwt/e;->f:Ljava/lang/String;

    .line 241
    .line 242
    :cond_a
    invoke-interface {p1, p0, p2}, Lst/l;->serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    :goto_4
    return-void
.end method

.method public bridge synthetic f(Ljava/lang/Object;B)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lwt/e;->C(Ljava/lang/String;B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic g(Ljava/lang/Object;C)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lwt/e;->D(Ljava/lang/String;C)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getSerializersModule()Lxt/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lwt/e;->b:Lkotlinx/serialization/json/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlinx/serialization/json/a;->getSerializersModule()Lxt/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public bridge synthetic h(Ljava/lang/Object;D)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lwt/e;->E(Ljava/lang/String;D)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic i(Ljava/lang/Object;Lkotlinx/serialization/descriptors/SerialDescriptor;I)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lwt/e;->F(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic j(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lwt/e;->G(Ljava/lang/String;F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic k(Ljava/lang/Object;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lwt/e;->H(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public bridge synthetic l(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lwt/e;->I(Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic m(Ljava/lang/Object;J)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lwt/e;->J(Ljava/lang/String;J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic n(Ljava/lang/Object;S)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lwt/e;->L(Ljava/lang/String;S)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic o(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lwt/e;->M(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected p(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
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
    iget-object p1, p0, Lwt/e;->c:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    invoke-virtual {p0}, Lwt/e;->N()Lkotlinx/serialization/json/JsonElement;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void
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
    iget-object p1, p0, Lwt/e;->d:Lkotlinx/serialization/json/e;

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

.method protected v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "parentName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "childName"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object p2
.end method

.method protected w(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;
    .locals 1
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
    iget-object v0, p0, Lwt/e;->b:Lkotlinx/serialization/json/a;

    .line 7
    .line 8
    invoke-static {p1, v0, p2}, Lwt/d0;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/a;I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method
