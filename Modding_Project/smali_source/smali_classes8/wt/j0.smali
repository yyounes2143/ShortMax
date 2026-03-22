.class Lwt/j0;
.super Lwt/c;
.source "TreeJsonDecoder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTreeJsonDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TreeJsonDecoder.kt\nkotlinx/serialization/json/internal/JsonTreeDecoder\n+ 2 JsonNamesMap.kt\nkotlinx/serialization/json/internal/JsonNamesMapKt\n+ 3 JsonNamesMap.kt\nkotlinx/serialization/json/internal/JsonNamesMapKt$tryCoerceValue$1\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 TreeJsonDecoder.kt\nkotlinx/serialization/json/internal/AbstractJsonTreeDecoder\n+ 6 TreeJsonEncoder.kt\nkotlinx/serialization/json/internal/TreeJsonEncoderKt\n*L\n1#1,334:1\n125#2,22:335\n147#2,4:358\n131#3:357\n1#4:362\n74#5:363\n271#6,8:364\n*S KotlinDebug\n*F\n+ 1 TreeJsonDecoder.kt\nkotlinx/serialization/json/internal/JsonTreeDecoder\n*L\n200#1:335,22\n200#1:358,4\n200#1:357\n262#1:363\n262#1:364,8\n*E\n"
    }
.end annotation


# instance fields
.field private final g:Lkotlinx/serialization/json/JsonObject;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Lkotlinx/serialization/descriptors/SerialDescriptor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/json/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/serialization/json/JsonObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lwt/c;-><init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/JsonElement;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput-object p2, p0, Lwt/j0;->g:Lkotlinx/serialization/json/JsonObject;

    .line 4
    iput-object p4, p0, Lwt/j0;->h:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lwt/j0;-><init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method private final W(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lwt/c;->a()Lkotlinx/serialization/json/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lkotlinx/serialization/json/a;->d()Lkotlinx/serialization/json/e;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->j()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->i(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->d(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->b()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    :goto_0
    iput-boolean p1, p0, Lwt/j0;->j:Z

    .line 35
    .line 36
    return p1
.end method

.method private final X(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lwt/c;->a()Lkotlinx/serialization/json/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->i(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->d(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->b()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, p3}, Lwt/j0;->F(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    instance-of v2, v2, Lkotlinx/serialization/json/JsonNull;

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    goto :goto_3

    .line 31
    :cond_0
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lut/l;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    sget-object v3, Lut/l$b;->a:Lut/l$b;

    .line 36
    .line 37
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/4 v3, 0x0

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->b()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0, p3}, Lwt/j0;->F(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    instance-of v2, v2, Lkotlinx/serialization/json/JsonNull;

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    :cond_1
    :goto_0
    move p2, v3

    .line 59
    goto :goto_3

    .line 60
    :cond_2
    invoke-virtual {p0, p3}, Lwt/j0;->F(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    instance-of v2, p3, Lkotlinx/serialization/json/JsonPrimitive;

    .line 65
    .line 66
    const/4 v4, 0x0

    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    check-cast p3, Lkotlinx/serialization/json/JsonPrimitive;

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    move-object p3, v4

    .line 73
    :goto_1
    if-eqz p3, :cond_4

    .line 74
    .line 75
    invoke-static {p3}, Lkotlinx/serialization/json/h;->f(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    :cond_4
    if-nez v4, :cond_5

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    invoke-static {p1, v0, v4}, Lwt/d0;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/a;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result p3

    .line 86
    invoke-virtual {v0}, Lkotlinx/serialization/json/a;->d()Lkotlinx/serialization/json/e;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->j()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_6

    .line 95
    .line 96
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->b()Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_6

    .line 101
    .line 102
    move p1, p2

    .line 103
    goto :goto_2

    .line 104
    :cond_6
    move p1, v3

    .line 105
    :goto_2
    const/4 v0, -0x3

    .line 106
    if-ne p3, v0, :cond_1

    .line 107
    .line 108
    if-nez v1, :cond_7

    .line 109
    .line 110
    if-eqz p1, :cond_1

    .line 111
    .line 112
    :cond_7
    :goto_3
    return p2
.end method


# virtual methods
.method protected F(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;
    .locals 1
    .param p1    # Ljava/lang/String;
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
    invoke-virtual {p0}, Lwt/j0;->Y()Lkotlinx/serialization/json/JsonObject;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0, p1}, Lkotlin/collections/p0;->j(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic T()Lkotlinx/serialization/json/JsonElement;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lwt/j0;->Y()Lkotlinx/serialization/json/JsonObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public Y()Lkotlinx/serialization/json/JsonObject;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lwt/j0;->g:Lkotlinx/serialization/json/JsonObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/c;
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
    iget-object v0, p0, Lwt/j0;->h:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 7
    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    new-instance p1, Lwt/j0;

    .line 11
    .line 12
    invoke-virtual {p0}, Lwt/c;->a()Lkotlinx/serialization/json/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Lwt/c;->G()Lkotlinx/serialization/json/JsonElement;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lwt/j0;->h:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 21
    .line 22
    invoke-interface {v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->h()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    instance-of v3, v1, Lkotlinx/serialization/json/JsonObject;

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    check-cast v1, Lkotlinx/serialization/json/JsonObject;

    .line 31
    .line 32
    invoke-virtual {p0}, Lwt/c;->S()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v3, p0, Lwt/j0;->h:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 37
    .line 38
    invoke-direct {p1, v0, v1, v2, v3}, Lwt/j0;-><init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 39
    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v0, "Expected "

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-class v0, Lkotlinx/serialization/json/JsonObject;

    .line 53
    .line 54
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v0, ", but had "

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v0, " as the serialized body of "

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v0, " at element: "

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-static {p0}, Lwt/c;->E(Lwt/c;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const/4 v1, -0x1

    .line 114
    invoke-static {v1, p1, v0}, Lwt/b0;->f(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    throw p1

    .line 119
    :cond_1
    invoke-super {p0, p1}, Lwt/c;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/c;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    return-object p1
.end method

.method public decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 3
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
    :cond_0
    iget v0, p0, Lwt/j0;->i:I

    .line 7
    .line 8
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-ge v0, v1, :cond_3

    .line 13
    .line 14
    iget v0, p0, Lwt/j0;->i:I

    .line 15
    .line 16
    add-int/lit8 v1, v0, 0x1

    .line 17
    .line 18
    iput v1, p0, Lwt/j0;->i:I

    .line 19
    .line 20
    invoke-virtual {p0, p1, v0}, Lvt/n1;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget v1, p0, Lwt/j0;->i:I

    .line 25
    .line 26
    add-int/lit8 v1, v1, -0x1

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    iput-boolean v2, p0, Lwt/j0;->j:Z

    .line 30
    .line 31
    invoke-virtual {p0}, Lwt/j0;->Y()Lkotlinx/serialization/json/JsonObject;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    invoke-direct {p0, p1, v1}, Lwt/j0;->W(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    :cond_1
    iget-object v2, p0, Lwt/c;->f:Lkotlinx/serialization/json/e;

    .line 48
    .line 49
    invoke-virtual {v2}, Lkotlinx/serialization/json/e;->g()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    invoke-direct {p0, p1, v1, v0}, Lwt/j0;->X(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_0

    .line 60
    .line 61
    :cond_2
    return v1

    .line 62
    :cond_3
    const/4 p1, -0x1

    .line 63
    return p1
.end method

.method public decodeNotNullMark()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lwt/j0;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Lwt/c;->decodeNotNullMark()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
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
    iget-object v0, p0, Lwt/c;->f:Lkotlinx/serialization/json/e;

    .line 7
    .line 8
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->k()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_6

    .line 13
    .line 14
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lut/l;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    instance-of v0, v0, Lut/d;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Lwt/c;->a()Lkotlinx/serialization/json/a;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {p1, v0}, Lwt/d0;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/a;)Lkotlinx/serialization/json/w;

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lwt/c;->f:Lkotlinx/serialization/json/e;

    .line 32
    .line 33
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->o()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    invoke-static {p1}, Lvt/w0;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-static {p1}, Lvt/w0;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/Set;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lwt/c;->a()Lkotlinx/serialization/json/a;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v1}, Lkotlinx/serialization/json/c0;->a(Lkotlinx/serialization/json/a;)Lwt/y;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {}, Lwt/d0;->g()Lwt/y$a;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v1, p1, v2}, Lwt/y;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;Lwt/y$a;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Ljava/util/Map;

    .line 65
    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const/4 p1, 0x0

    .line 74
    :goto_0
    if-nez p1, :cond_3

    .line 75
    .line 76
    invoke-static {}, Lkotlin/collections/y0;->f()Ljava/util/Set;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    :cond_3
    check-cast p1, Ljava/lang/Iterable;

    .line 81
    .line 82
    invoke-static {v0, p1}, Lkotlin/collections/y0;->m(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    :goto_1
    invoke-virtual {p0}, Lwt/j0;->Y()Lkotlinx/serialization/json/JsonObject;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonObject;->keySet()Ljava/util/Set;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_6

    .line 103
    .line 104
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Ljava/lang/String;

    .line 109
    .line 110
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-nez v2, :cond_4

    .line 115
    .line 116
    invoke-virtual {p0}, Lwt/c;->S()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_5

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_5
    invoke-virtual {p0}, Lwt/j0;->Y()Lkotlinx/serialization/json/JsonObject;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonObject;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {v1, p1}, Lwt/b0;->g(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    throw p1

    .line 140
    :cond_6
    :goto_3
    return-void
.end method

.method protected z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;
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
    invoke-virtual {p0}, Lwt/c;->a()Lkotlinx/serialization/json/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p1, v0}, Lwt/d0;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/a;)Lkotlinx/serialization/json/w;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lwt/c;->f:Lkotlinx/serialization/json/e;

    .line 18
    .line 19
    invoke-virtual {v1}, Lkotlinx/serialization/json/e;->o()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lwt/j0;->Y()Lkotlinx/serialization/json/JsonObject;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonObject;->keySet()Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_1
    invoke-virtual {p0}, Lwt/c;->a()Lkotlinx/serialization/json/a;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1, p1}, Lwt/d0;->e(Lkotlinx/serialization/json/a;Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/Map;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0}, Lwt/j0;->Y()Lkotlinx/serialization/json/JsonObject;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonObject;->keySet()Ljava/util/Set;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Ljava/lang/Iterable;

    .line 58
    .line 59
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_4

    .line 68
    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    move-object v3, v2

    .line 74
    check-cast v3, Ljava/lang/String;

    .line 75
    .line 76
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Ljava/lang/Integer;

    .line 81
    .line 82
    if-nez v3, :cond_3

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-ne v3, p2, :cond_2

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    const/4 v2, 0x0

    .line 93
    :goto_1
    check-cast v2, Ljava/lang/String;

    .line 94
    .line 95
    if-eqz v2, :cond_5

    .line 96
    .line 97
    return-object v2

    .line 98
    :cond_5
    return-object v0
.end method
