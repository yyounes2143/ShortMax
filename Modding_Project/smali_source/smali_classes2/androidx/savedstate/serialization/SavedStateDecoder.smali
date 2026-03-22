.class public final Landroidx/savedstate/serialization/SavedStateDecoder;
.super Lkotlinx/serialization/encoding/a;
.source "SavedStateDecoder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSavedStateDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateDecoder.kt\nandroidx/savedstate/serialization/SavedStateDecoder\n+ 2 SavedState.kt\nandroidx/savedstate/SavedStateKt__SavedStateKt\n*L\n1#1,215:1\n90#2:216\n90#2:217\n90#2:218\n90#2:219\n90#2:220\n90#2:221\n90#2:222\n90#2:223\n90#2:224\n90#2:225\n90#2:226\n90#2:227\n90#2:228\n90#2:229\n90#2:230\n90#2:231\n90#2:232\n90#2:233\n90#2:234\n90#2:235\n90#2:236\n90#2:237\n90#2:238\n*S KotlinDebug\n*F\n+ 1 SavedStateDecoder.kt\nandroidx/savedstate/serialization/SavedStateDecoder\n*L\n92#1:216\n116#1:217\n118#1:218\n120#1:219\n122#1:220\n124#1:221\n126#1:222\n128#1:223\n130#1:224\n132#1:225\n134#1:226\n137#1:227\n141#1:228\n145#1:229\n149#1:230\n153#1:231\n157#1:232\n161#1:233\n165#1:234\n169#1:235\n177#1:236\n184#1:237\n100#1:238\n*E\n"
    }
.end annotation


# instance fields
.field private final configuration:Landroidx/savedstate/serialization/SavedStateConfiguration;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private index:I

.field private key:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final savedState:Landroid/os/Bundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final serializersModule:Lxt/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Landroidx/savedstate/serialization/SavedStateConfiguration;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/savedstate/serialization/SavedStateConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "savedState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "configuration"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lkotlinx/serialization/encoding/a;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->savedState:Landroid/os/Bundle;

    .line 15
    .line 16
    iput-object p2, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->configuration:Landroidx/savedstate/serialization/SavedStateConfiguration;

    .line 17
    .line 18
    const-string p1, ""

    .line 19
    .line 20
    iput-object p1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->key:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p2}, Landroidx/savedstate/serialization/SavedStateConfiguration;->getSerializersModule()Lxt/a;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->serializersModule:Lxt/a;

    .line 27
    .line 28
    return-void
.end method

.method private final decodeBooleanArray()[Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->savedState:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->key:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/savedstate/SavedStateReader;->getBooleanArray-impl(Landroid/os/Bundle;Ljava/lang/String;)[Z

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private final decodeCharArray()[C
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->savedState:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->key:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/savedstate/SavedStateReader;->getCharArray-impl(Landroid/os/Bundle;Ljava/lang/String;)[C

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private final decodeDoubleArray()[D
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->savedState:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->key:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/savedstate/SavedStateReader;->getDoubleArray-impl(Landroid/os/Bundle;Ljava/lang/String;)[D

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private static final decodeElementIndex$hasDefaultValueDefined(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->i(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final decodeElementIndex$presentInEncoding(Landroidx/savedstate/serialization/SavedStateDecoder;Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->savedState:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p0, p1}, Landroidx/savedstate/SavedStateReader;->contains-impl(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method private final decodeFloatArray()[F
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->savedState:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->key:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/savedstate/SavedStateReader;->getFloatArray-impl(Landroid/os/Bundle;Ljava/lang/String;)[F

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private final decodeFormatSpecificTypes(Lst/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lst/c<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/savedstate/serialization/SavedStateDecoder_androidKt;->decodeFormatSpecificTypesOnPlatform(Landroidx/savedstate/serialization/SavedStateDecoder;Lst/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_9

    .line 6
    .line 7
    invoke-interface {p1}, Lst/c;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->getIntListDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-direct {p0}, Landroidx/savedstate/serialization/SavedStateDecoder;->decodeIntList()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :cond_0
    invoke-static {}, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->getStringListDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-direct {p0}, Landroidx/savedstate/serialization/SavedStateDecoder;->decodeStringList()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :cond_1
    invoke-static {}, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->getBooleanArrayDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-direct {p0}, Landroidx/savedstate/serialization/SavedStateDecoder;->decodeBooleanArray()[Z

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-static {}, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->getCharArrayDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    invoke-direct {p0}, Landroidx/savedstate/serialization/SavedStateDecoder;->decodeCharArray()[C

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    goto :goto_0

    .line 73
    :cond_3
    invoke-static {}, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->getDoubleArrayDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    invoke-direct {p0}, Landroidx/savedstate/serialization/SavedStateDecoder;->decodeDoubleArray()[D

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    goto :goto_0

    .line 88
    :cond_4
    invoke-static {}, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->getFloatArrayDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_5

    .line 97
    .line 98
    invoke-direct {p0}, Landroidx/savedstate/serialization/SavedStateDecoder;->decodeFloatArray()[F

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    goto :goto_0

    .line 103
    :cond_5
    invoke-static {}, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->getIntArrayDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_6

    .line 112
    .line 113
    invoke-direct {p0}, Landroidx/savedstate/serialization/SavedStateDecoder;->decodeIntArray()[I

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    goto :goto_0

    .line 118
    :cond_6
    invoke-static {}, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->getLongArrayDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_7

    .line 127
    .line 128
    invoke-direct {p0}, Landroidx/savedstate/serialization/SavedStateDecoder;->decodeLongArray()[J

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    goto :goto_0

    .line 133
    :cond_7
    invoke-static {}, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->getStringArrayDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_8

    .line 142
    .line 143
    invoke-direct {p0}, Landroidx/savedstate/serialization/SavedStateDecoder;->decodeStringArray()[Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    goto :goto_0

    .line 148
    :cond_8
    const/4 v0, 0x0

    .line 149
    :cond_9
    :goto_0
    return-object v0
.end method

.method private final decodeIntArray()[I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->savedState:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->key:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/savedstate/SavedStateReader;->getIntArray-impl(Landroid/os/Bundle;Ljava/lang/String;)[I

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private final decodeIntList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->savedState:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->key:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/savedstate/SavedStateReader;->getIntList-impl(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private final decodeLongArray()[J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->savedState:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->key:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/savedstate/SavedStateReader;->getLongArray-impl(Landroid/os/Bundle;Ljava/lang/String;)[J

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private final decodeStringArray()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->savedState:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->key:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/savedstate/SavedStateReader;->getStringArray-impl(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private final decodeStringList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->savedState:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->key:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/savedstate/SavedStateReader;->getStringList-impl(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method


# virtual methods
.method public beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/c;
    .locals 2
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
    iget-object p1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->key:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    move-object v1, p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->savedState:Landroid/os/Bundle;

    .line 19
    .line 20
    invoke-static {p1}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->key:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p1, v0}, Landroidx/savedstate/SavedStateReader;->getSavedState-impl(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->configuration:Landroidx/savedstate/serialization/SavedStateConfiguration;

    .line 31
    .line 32
    new-instance v1, Landroidx/savedstate/serialization/SavedStateDecoder;

    .line 33
    .line 34
    invoke-direct {v1, p1, v0}, Landroidx/savedstate/serialization/SavedStateDecoder;-><init>(Landroid/os/Bundle;Landroidx/savedstate/serialization/SavedStateConfiguration;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-object v1
.end method

.method public decodeBoolean()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->savedState:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->key:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/savedstate/SavedStateReader;->getBoolean-impl(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public decodeByte()B
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->savedState:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->key:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/savedstate/SavedStateReader;->getInt-impl(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    int-to-byte v0, v0

    .line 14
    return v0
.end method

.method public decodeChar()C
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->savedState:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->key:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/savedstate/SavedStateReader;->getChar-impl(Landroid/os/Bundle;Ljava/lang/String;)C

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public decodeDouble()D
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->savedState:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->key:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/savedstate/SavedStateReader;->getDouble-impl(Landroid/os/Bundle;Ljava/lang/String;)D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 2
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
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lut/l;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lut/m$b;->a:Lut/m$b;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lut/l;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lut/m$c;->a:Lut/m$c;

    .line 23
    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->savedState:Landroid/os/Bundle;

    .line 37
    .line 38
    invoke-static {v0}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Landroidx/savedstate/SavedStateReader;->size-impl(Landroid/os/Bundle;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    :goto_1
    iget v1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->index:I

    .line 47
    .line 48
    if-ge v1, v0, :cond_2

    .line 49
    .line 50
    invoke-static {p1, v1}, Landroidx/savedstate/serialization/SavedStateDecoder;->decodeElementIndex$hasDefaultValueDefined(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    iget v1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->index:I

    .line 57
    .line 58
    invoke-static {p0, p1, v1}, Landroidx/savedstate/serialization/SavedStateDecoder;->decodeElementIndex$presentInEncoding(Landroidx/savedstate/serialization/SavedStateDecoder;Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_2

    .line 63
    .line 64
    iget v1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->index:I

    .line 65
    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    iput v1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->index:I

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    iget v1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->index:I

    .line 72
    .line 73
    if-ge v1, v0, :cond_3

    .line 74
    .line 75
    invoke-interface {p1, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iput-object p1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->key:Ljava/lang/String;

    .line 80
    .line 81
    iget p1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->index:I

    .line 82
    .line 83
    add-int/lit8 v0, p1, 0x1

    .line 84
    .line 85
    iput v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->index:I

    .line 86
    .line 87
    return p1

    .line 88
    :cond_3
    const/4 p1, -0x1

    .line 89
    return p1
.end method

.method public decodeEnum(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
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
    iget-object p1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->savedState:Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-static {p1}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->key:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p1, v0}, Landroidx/savedstate/SavedStateReader;->getInt-impl(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public decodeFloat()F
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->savedState:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->key:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/savedstate/SavedStateReader;->getFloat-impl(Landroid/os/Bundle;Ljava/lang/String;)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public decodeInt()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->savedState:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->key:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/savedstate/SavedStateReader;->getInt-impl(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public decodeLong()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->savedState:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->key:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/savedstate/SavedStateReader;->getLong-impl(Landroid/os/Bundle;Ljava/lang/String;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public decodeNotNullMark()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->savedState:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->key:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/savedstate/SavedStateReader;->isNull-impl(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    return v0
.end method

.method public decodeSerializableValue(Lst/c;)Ljava/lang/Object;
    .locals 1
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

    .line 1
    const-string v0, "deserializer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/savedstate/serialization/SavedStateDecoder;->decodeFormatSpecificTypes(Lst/c;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-super {p0, p1}, Lkotlinx/serialization/encoding/a;->decodeSerializableValue(Lst/c;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    return-object v0
.end method

.method public decodeShort()S
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->savedState:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->key:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/savedstate/SavedStateReader;->getInt-impl(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    int-to-short v0, v0

    .line 14
    return v0
.end method

.method public decodeString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->savedState:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->key:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/savedstate/SavedStateReader;->getString-impl(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final getKey$savedstate_release()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->key:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSavedState$savedstate_release()Landroid/os/Bundle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->savedState:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSerializersModule()Lxt/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->serializersModule:Lxt/a;

    .line 2
    .line 3
    return-object v0
.end method
