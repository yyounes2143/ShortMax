.class public final Lvt/r0;
.super Lvt/h2;
.source "InlineClassDescriptor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nInlineClassDescriptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InlineClassDescriptor.kt\nkotlinx/serialization/internal/InlineClassDescriptor\n+ 2 PluginGeneratedSerialDescriptor.kt\nkotlinx/serialization/internal/PluginGeneratedSerialDescriptorKt\n*L\n1#1,44:1\n111#2,10:45\n*S KotlinDebug\n*F\n+ 1 InlineClassDescriptor.kt\nkotlinx/serialization/internal/InlineClassDescriptor\n*L\n22#1:45,10\n*E\n"
    }
.end annotation


# instance fields
.field private final m:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lvt/m0;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lvt/m0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lvt/m0<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "generatedSerializer"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-direct {p0, p1, p2, v0}, Lvt/h2;-><init>(Ljava/lang/String;Lvt/m0;I)V

    .line 13
    .line 14
    .line 15
    iput-boolean v0, p0, Lvt/r0;->m:Z

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    goto/16 :goto_2

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Lvt/r0;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_2

    .line 10
    .line 11
    :cond_1
    :goto_0
    move v0, v2

    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_2
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->h()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    move-object v3, p1

    .line 19
    check-cast v3, Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 20
    .line 21
    invoke-interface {v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->h()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    check-cast p1, Lvt/r0;

    .line 33
    .line 34
    invoke-virtual {p1}, Lvt/r0;->isInline()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Lvt/h2;->t()[Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p1}, Lvt/h2;->t()[Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-interface {v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eq p1, v1, :cond_4

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    move v1, v2

    .line 70
    :goto_1
    if-ge v1, p1, :cond_7

    .line 71
    .line 72
    invoke-interface {p0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->d(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-interface {v4}, Lkotlinx/serialization/descriptors/SerialDescriptor;->h()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-interface {v3, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->d(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-interface {v5}, Lkotlinx/serialization/descriptors/SerialDescriptor;->h()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-nez v4, :cond_5

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_5
    invoke-interface {p0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->d(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-interface {v4}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lut/l;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-interface {v3, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->d(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-interface {v5}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lut/l;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-nez v4, :cond_6

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_7
    :goto_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Lvt/h2;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    return v0
.end method

.method public isInline()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lvt/r0;->m:Z

    .line 2
    .line 3
    return v0
.end method
