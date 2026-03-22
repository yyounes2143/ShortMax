.class public interface abstract Lkotlinx/serialization/encoding/Decoder;
.super Ljava/lang/Object;
.source "Decoding.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/encoding/Decoder$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/c;
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract decodeBoolean()Z
.end method

.method public abstract decodeByte()B
.end method

.method public abstract decodeChar()C
.end method

.method public abstract decodeDouble()D
.end method

.method public abstract decodeEnum(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract decodeFloat()F
.end method

.method public abstract decodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract decodeInt()I
.end method

.method public abstract decodeLong()J
.end method

.method public abstract decodeNotNullMark()Z
.end method

.method public abstract decodeNull()Ljava/lang/Void;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract decodeSerializableValue(Lst/c;)Ljava/lang/Object;
    .param p1    # Lst/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lst/c<",
            "+TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract decodeShort()S
.end method

.method public abstract decodeString()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getSerializersModule()Lxt/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
