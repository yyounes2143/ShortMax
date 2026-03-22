.class public final synthetic Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate$$serializer;
.super Ljava/lang/Object;
.source "BuiltInSerializer.android.kt"

# interfaces
.implements Lvt/m0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lvt/m0<",
        "Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate<",
        "TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lms/c;
.end annotation


# instance fields
.field private final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final synthetic typeSerial0:Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    new-instance v0, Lvt/h2;

    const-string v1, "androidx.savedstate.serialization.serializers.SparseArraySerializer.SparseArraySurrogate"

    const/4 v2, 0x2

    invoke-direct {v0, v1, p0, v2}, Lvt/h2;-><init>(Ljava/lang/String;Lvt/m0;I)V

    const-string v1, "keys"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    const-string/jumbo v1, "values"

    invoke-virtual {v0, v1, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    iput-object v0, p0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method public constructor <init>(Lkotlinx/serialization/KSerializer;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/KSerializer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "typeSerial0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate$$serializer;-><init>()V

    iput-object p1, p0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate$$serializer;->typeSerial0:Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method private final synthetic getTypeSerial0()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate$$serializer;->typeSerial0:Lkotlinx/serialization/KSerializer;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;->access$get$childSerializers$cp()[Lms/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aget-object v0, v0, v2

    .line 10
    .line 11
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    aput-object v0, v1, v2

    .line 16
    .line 17
    new-instance v0, Lvt/f;

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate$$serializer;->typeSerial0:Lkotlinx/serialization/KSerializer;

    .line 20
    .line 21
    invoke-direct {v0, v2}, Lvt/f;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    aput-object v0, v1, v2

    .line 26
    .line 27
    return-object v1
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;
    .locals 11
    .param p1    # Lkotlinx/serialization/encoding/Decoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/Decoder;",
            ")",
            "Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/c;

    move-result-object p1

    invoke-static {}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;->access$get$childSerializers$cp()[Lms/i;

    move-result-object v1

    invoke-interface {p1}, Lkotlinx/serialization/encoding/c;->decodeSequentially()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    aget-object v1, v1, v4

    invoke-interface {v1}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lst/c;

    invoke-interface {p1, v0, v4, v1, v5}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v2, Lvt/f;

    iget-object v4, p0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate$$serializer;->typeSerial0:Lkotlinx/serialization/KSerializer;

    invoke-direct {v2, v4}, Lvt/f;-><init>(Lkotlinx/serialization/KSerializer;)V

    invoke-interface {p1, v0, v3, v2, v5}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x3

    goto :goto_1

    :cond_0
    move v8, v3

    move v7, v4

    move-object v2, v5

    move-object v6, v2

    :goto_0
    if-eqz v8, :cond_4

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/c;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    if-eqz v9, :cond_2

    if-ne v9, v3, :cond_1

    new-instance v9, Lvt/f;

    iget-object v10, p0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate$$serializer;->typeSerial0:Lkotlinx/serialization/KSerializer;

    invoke-direct {v9, v10}, Lvt/f;-><init>(Lkotlinx/serialization/KSerializer;)V

    invoke-interface {p1, v0, v3, v9, v6}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    or-int/lit8 v7, v7, 0x2

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {p1, v9}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw p1

    :cond_2
    aget-object v9, v1, v4

    invoke-interface {v9}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lst/c;

    invoke-interface {p1, v0, v4, v9, v2}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    or-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    move v8, v4

    goto :goto_0

    :cond_4
    move-object v1, v2

    move-object v2, v6

    move v3, v7

    :goto_1
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/c;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance p1, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;

    invoke-direct {p1, v3, v1, v2, v5}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;-><init>(ILjava/util/List;Ljava/util/List;Lvt/r2;)V

    return-object p1
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;

    move-result-object p1

    return-object p1
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;)V
    .locals 2
    .param p1    # Lkotlinx/serialization/encoding/Encoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/Encoder;",
            "Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/d;

    move-result-object p1

    iget-object v1, p0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate$$serializer;->typeSerial0:Lkotlinx/serialization/KSerializer;

    invoke-static {p2, p1, v0, v1}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;->write$Self$savedstate_release(Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;Lkotlinx/serialization/encoding/d;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/KSerializer;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/d;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;

    invoke-virtual {p0, p1, p2}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;)V

    return-void
.end method

.method public final typeParametersSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate$$serializer;->typeSerial0:Lkotlinx/serialization/KSerializer;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v0, v1, v2

    .line 8
    .line 9
    return-object v1
.end method
