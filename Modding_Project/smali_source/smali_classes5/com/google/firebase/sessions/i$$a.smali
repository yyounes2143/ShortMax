.class public final synthetic Lcom/google/firebase/sessions/i$$a;
.super Ljava/lang/Object;
.source "SessionData.kt"

# interfaces
.implements Lvt/m0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvt/m0<",
        "Lcom/google/firebase/sessions/i;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lms/c;
.end annotation


# static fields
.field public static final a:Lcom/google/firebase/sessions/i$$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/firebase/sessions/i$$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/firebase/sessions/i$$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/sessions/i$$a;->a:Lcom/google/firebase/sessions/i$$a;

    .line 7
    .line 8
    new-instance v1, Lvt/h2;

    .line 9
    .line 10
    const-string v2, "com.google.firebase.sessions.SessionData"

    .line 11
    .line 12
    const/4 v3, 0x3

    .line 13
    invoke-direct {v1, v2, v0, v3}, Lvt/h2;-><init>(Ljava/lang/String;Lvt/m0;I)V

    .line 14
    .line 15
    .line 16
    const-string v0, "sessionDetails"

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    const-string v0, "backgroundTime"

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    const-string v0, "processDataMap"

    .line 29
    .line 30
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    sput-object v1, Lcom/google/firebase/sessions/i$$a;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 34
    .line 35
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
.method public final a(Lkotlinx/serialization/encoding/Decoder;)Lcom/google/firebase/sessions/i;
    .locals 17
    .param p1    # Lkotlinx/serialization/encoding/Decoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "decoder"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/google/firebase/sessions/i$$a;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 9
    .line 10
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {}, Lcom/google/firebase/sessions/i;->a()[Lkotlinx/serialization/KSerializer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v0}, Lkotlinx/serialization/encoding/c;->decodeSequentially()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x2

    .line 23
    const/4 v5, 0x1

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v7, 0x0

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    sget-object v3, Lcom/google/firebase/sessions/j$$a;->a:Lcom/google/firebase/sessions/j$$a;

    .line 29
    .line 30
    invoke-interface {v0, v1, v6, v3, v7}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lcom/google/firebase/sessions/j;

    .line 35
    .line 36
    sget-object v6, Lcom/google/firebase/sessions/k$$a;->a:Lcom/google/firebase/sessions/k$$a;

    .line 37
    .line 38
    invoke-interface {v0, v1, v5, v6, v7}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Lcom/google/firebase/sessions/k;

    .line 43
    .line 44
    aget-object v2, v2, v4

    .line 45
    .line 46
    check-cast v2, Lst/c;

    .line 47
    .line 48
    invoke-interface {v0, v1, v4, v2, v7}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Ljava/util/Map;

    .line 53
    .line 54
    const/4 v4, 0x7

    .line 55
    move-object v15, v2

    .line 56
    move-object v13, v3

    .line 57
    move v12, v4

    .line 58
    move-object v14, v5

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    move v10, v5

    .line 61
    move v3, v6

    .line 62
    move-object v8, v7

    .line 63
    move-object v9, v8

    .line 64
    :goto_0
    if-eqz v10, :cond_5

    .line 65
    .line 66
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/c;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 67
    .line 68
    .line 69
    move-result v11

    .line 70
    const/4 v12, -0x1

    .line 71
    if-eq v11, v12, :cond_4

    .line 72
    .line 73
    if-eqz v11, :cond_3

    .line 74
    .line 75
    if-eq v11, v5, :cond_2

    .line 76
    .line 77
    if-ne v11, v4, :cond_1

    .line 78
    .line 79
    aget-object v11, v2, v4

    .line 80
    .line 81
    check-cast v11, Lst/c;

    .line 82
    .line 83
    invoke-interface {v0, v1, v4, v11, v9}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    check-cast v9, Ljava/util/Map;

    .line 88
    .line 89
    or-int/lit8 v3, v3, 0x4

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    .line 93
    .line 94
    invoke-direct {v0, v11}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    .line 95
    .line 96
    .line 97
    throw v0

    .line 98
    :cond_2
    sget-object v11, Lcom/google/firebase/sessions/k$$a;->a:Lcom/google/firebase/sessions/k$$a;

    .line 99
    .line 100
    invoke-interface {v0, v1, v5, v11, v8}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    check-cast v8, Lcom/google/firebase/sessions/k;

    .line 105
    .line 106
    or-int/lit8 v3, v3, 0x2

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    sget-object v11, Lcom/google/firebase/sessions/j$$a;->a:Lcom/google/firebase/sessions/j$$a;

    .line 110
    .line 111
    invoke-interface {v0, v1, v6, v11, v7}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    check-cast v7, Lcom/google/firebase/sessions/j;

    .line 116
    .line 117
    or-int/lit8 v3, v3, 0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_4
    move v10, v6

    .line 121
    goto :goto_0

    .line 122
    :cond_5
    move v12, v3

    .line 123
    move-object v13, v7

    .line 124
    move-object v14, v8

    .line 125
    move-object v15, v9

    .line 126
    :goto_1
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/c;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 127
    .line 128
    .line 129
    new-instance v0, Lcom/google/firebase/sessions/i;

    .line 130
    .line 131
    const/16 v16, 0x0

    .line 132
    .line 133
    move-object v11, v0

    .line 134
    invoke-direct/range {v11 .. v16}, Lcom/google/firebase/sessions/i;-><init>(ILcom/google/firebase/sessions/j;Lcom/google/firebase/sessions/k;Ljava/util/Map;Lvt/r2;)V

    .line 135
    .line 136
    .line 137
    return-object v0
.end method

.method public final b(Lkotlinx/serialization/encoding/Encoder;Lcom/google/firebase/sessions/i;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/encoding/Encoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/sessions/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "encoder"

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
    sget-object v0, Lcom/google/firebase/sessions/i$$a;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 12
    .line 13
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/d;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p2, p1, v0}, Lcom/google/firebase/sessions/i;->g(Lcom/google/firebase/sessions/i;Lkotlinx/serialization/encoding/d;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/d;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 6
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
    invoke-static {}, Lcom/google/firebase/sessions/i;->a()[Lkotlinx/serialization/KSerializer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/firebase/sessions/k$$a;->a:Lcom/google/firebase/sessions/k$$a;

    .line 6
    .line 7
    invoke-static {v1}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x2

    .line 12
    aget-object v0, v0, v2

    .line 13
    .line 14
    invoke-static {v0}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v3, 0x3

    .line 19
    new-array v3, v3, [Lkotlinx/serialization/KSerializer;

    .line 20
    .line 21
    sget-object v4, Lcom/google/firebase/sessions/j$$a;->a:Lcom/google/firebase/sessions/j$$a;

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    aput-object v4, v3, v5

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    aput-object v1, v3, v4

    .line 28
    .line 29
    aput-object v0, v3, v2

    .line 30
    .line 31
    return-object v3
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/sessions/i$$a;->a(Lkotlinx/serialization/encoding/Decoder;)Lcom/google/firebase/sessions/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/i$$a;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/firebase/sessions/i;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/i$$a;->b(Lkotlinx/serialization/encoding/Encoder;Lcom/google/firebase/sessions/i;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public typeParametersSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 1
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
    invoke-static {p0}, Lvt/m0$a;->a(Lvt/m0;)[Lkotlinx/serialization/KSerializer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
