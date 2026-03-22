.class public final Landroidx/savedstate/serialization/serializers/SparseArraySerializer;
.super Ljava/lang/Object;
.source "BuiltInSerializer.android.kt"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Landroid/util/SparseArray<",
        "TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBuiltInSerializer.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuiltInSerializer.android.kt\nandroidx/savedstate/serialization/serializers/SparseArraySerializer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,421:1\n1#2:422\n*E\n"
    }
.end annotation


# instance fields
.field private final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final surrogateSerializer:Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/KSerializer<",
            "Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
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

    .line 1
    const-string v0, "elementSerializer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;->Companion:Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate$Companion;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer;->surrogateSerializer:Lkotlinx/serialization/KSerializer;

    .line 16
    .line 17
    invoke-interface {p1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Landroid/util/SparseArray;
    .locals 5
    .param p1    # Lkotlinx/serialization/encoding/Decoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/Decoder;",
            ")",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer;->surrogateSerializer:Lkotlinx/serialization/KSerializer;

    check-cast v0, Lst/c;

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Decoder;->decodeSerializableValue(Lst/c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;

    .line 3
    invoke-virtual {p1}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 5
    invoke-virtual {p1}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;->getKeys()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {p1}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;->getValues()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Landroid/util/SparseArray;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Landroid/util/SparseArray;)V
    .locals 5
    .param p1    # Lkotlinx/serialization/encoding/Encoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/SparseArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/Encoder;",
            "Landroid/util/SparseArray<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v2, v0, :cond_1

    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4
    :cond_1
    new-instance p2, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;

    invoke-direct {p2, v1, v3}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer;->surrogateSerializer:Lkotlinx/serialization/KSerializer;

    check-cast v0, Lst/l;

    invoke-interface {p1, v0, p2}, Lkotlinx/serialization/encoding/Encoder;->encodeSerializableValue(Lst/l;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Landroid/util/SparseArray;)V

    return-void
.end method
