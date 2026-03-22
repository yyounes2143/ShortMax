.class public final Lcom/moloco/sdk/internal/ortb/model/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/ortb/model/r$a;,
        Lcom/moloco/sdk/internal/ortb/model/r$b;
    }
.end annotation

.annotation runtime Lst/k;
.end annotation


# static fields
.field public static final Companion:Lcom/moloco/sdk/internal/ortb/model/r$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/ortb/model/r$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/ortb/model/r$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/ortb/model/r;->Companion:Lcom/moloco/sdk/internal/ortb/model/r$b;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 13

    const/16 v11, 0x3ff

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v12}, Lcom/moloco/sdk/internal/ortb/model/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lvt/r2;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p12, p1, 0x1

    const/4 v0, 0x0

    if-nez p12, :cond_0

    .line 3
    iput-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/r;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/moloco/sdk/internal/ortb/model/r;->a:Ljava/lang/String;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    .line 4
    iput-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/r;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/moloco/sdk/internal/ortb/model/r;->b:Ljava/lang/String;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    .line 5
    iput-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/r;->c:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iput-object p4, p0, Lcom/moloco/sdk/internal/ortb/model/r;->c:Ljava/lang/String;

    :goto_2
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    .line 6
    iput-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/r;->d:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iput-object p5, p0, Lcom/moloco/sdk/internal/ortb/model/r;->d:Ljava/lang/String;

    :goto_3
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_4

    .line 7
    iput-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/r;->e:Ljava/lang/String;

    goto :goto_4

    :cond_4
    iput-object p6, p0, Lcom/moloco/sdk/internal/ortb/model/r;->e:Ljava/lang/String;

    :goto_4
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_5

    .line 8
    iput-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/r;->f:Ljava/lang/String;

    goto :goto_5

    :cond_5
    iput-object p7, p0, Lcom/moloco/sdk/internal/ortb/model/r;->f:Ljava/lang/String;

    :goto_5
    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_6

    .line 9
    iput-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/r;->g:Ljava/lang/String;

    goto :goto_6

    :cond_6
    iput-object p8, p0, Lcom/moloco/sdk/internal/ortb/model/r;->g:Ljava/lang/String;

    :goto_6
    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_7

    .line 10
    iput-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/r;->h:Ljava/lang/String;

    goto :goto_7

    :cond_7
    iput-object p9, p0, Lcom/moloco/sdk/internal/ortb/model/r;->h:Ljava/lang/String;

    :goto_7
    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_8

    .line 11
    iput-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/r;->i:Ljava/lang/String;

    goto :goto_8

    :cond_8
    iput-object p10, p0, Lcom/moloco/sdk/internal/ortb/model/r;->i:Ljava/lang/String;

    :goto_8
    and-int/lit16 p1, p1, 0x200

    if-nez p1, :cond_9

    .line 12
    iput-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/r;->j:Ljava/lang/String;

    goto :goto_9

    :cond_9
    iput-object p11, p0, Lcom/moloco/sdk/internal/ortb/model/r;->j:Ljava/lang/String;

    :goto_9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/moloco/sdk/internal/ortb/model/r;->a:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/moloco/sdk/internal/ortb/model/r;->b:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/moloco/sdk/internal/ortb/model/r;->c:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/moloco/sdk/internal/ortb/model/r;->d:Ljava/lang/String;

    .line 18
    iput-object p5, p0, Lcom/moloco/sdk/internal/ortb/model/r;->e:Ljava/lang/String;

    .line 19
    iput-object p6, p0, Lcom/moloco/sdk/internal/ortb/model/r;->f:Ljava/lang/String;

    .line 20
    iput-object p7, p0, Lcom/moloco/sdk/internal/ortb/model/r;->g:Ljava/lang/String;

    .line 21
    iput-object p8, p0, Lcom/moloco/sdk/internal/ortb/model/r;->h:Ljava/lang/String;

    .line 22
    iput-object p9, p0, Lcom/moloco/sdk/internal/ortb/model/r;->i:Ljava/lang/String;

    .line 23
    iput-object p10, p0, Lcom/moloco/sdk/internal/ortb/model/r;->j:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move-object v5, v2

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move-object v6, v2

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move-object v7, v2

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    move-object v8, v2

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    move-object v9, v2

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    move-object v10, v2

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    goto :goto_9

    :cond_9
    move-object/from16 v2, p10

    :goto_9
    move-object p1, p0

    move-object p2, v1

    move-object p3, v3

    move-object p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v2

    .line 24
    invoke-direct/range {p1 .. p11}, Lcom/moloco/sdk/internal/ortb/model/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic b(Lcom/moloco/sdk/internal/ortb/model/r;Lkotlinx/serialization/encoding/d;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/r;->a:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    :goto_0
    sget-object v1, Lvt/w2;->a:Lvt/w2;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/moloco/sdk/internal/ortb/model/r;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    const/4 v0, 0x1

    .line 21
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/r;->b:Ljava/lang/String;

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    :goto_1
    sget-object v1, Lvt/w2;->a:Lvt/w2;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/moloco/sdk/internal/ortb/model/r;->b:Ljava/lang/String;

    .line 35
    .line 36
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_3
    const/4 v0, 0x2

    .line 40
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_4
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/r;->c:Ljava/lang/String;

    .line 48
    .line 49
    if-eqz v1, :cond_5

    .line 50
    .line 51
    :goto_2
    sget-object v1, Lvt/w2;->a:Lvt/w2;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/moloco/sdk/internal/ortb/model/r;->c:Ljava/lang/String;

    .line 54
    .line 55
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_5
    const/4 v0, 0x3

    .line 59
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_6

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_6
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/r;->d:Ljava/lang/String;

    .line 67
    .line 68
    if-eqz v1, :cond_7

    .line 69
    .line 70
    :goto_3
    sget-object v1, Lvt/w2;->a:Lvt/w2;

    .line 71
    .line 72
    iget-object v2, p0, Lcom/moloco/sdk/internal/ortb/model/r;->d:Ljava/lang/String;

    .line 73
    .line 74
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_7
    const/4 v0, 0x4

    .line 78
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_8

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_8
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/r;->e:Ljava/lang/String;

    .line 86
    .line 87
    if-eqz v1, :cond_9

    .line 88
    .line 89
    :goto_4
    sget-object v1, Lvt/w2;->a:Lvt/w2;

    .line 90
    .line 91
    iget-object v2, p0, Lcom/moloco/sdk/internal/ortb/model/r;->e:Ljava/lang/String;

    .line 92
    .line 93
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_9
    const/4 v0, 0x5

    .line 97
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_a

    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_a
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/r;->f:Ljava/lang/String;

    .line 105
    .line 106
    if-eqz v1, :cond_b

    .line 107
    .line 108
    :goto_5
    sget-object v1, Lvt/w2;->a:Lvt/w2;

    .line 109
    .line 110
    iget-object v2, p0, Lcom/moloco/sdk/internal/ortb/model/r;->f:Ljava/lang/String;

    .line 111
    .line 112
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    :cond_b
    const/4 v0, 0x6

    .line 116
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_c

    .line 121
    .line 122
    goto :goto_6

    .line 123
    :cond_c
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/r;->g:Ljava/lang/String;

    .line 124
    .line 125
    if-eqz v1, :cond_d

    .line 126
    .line 127
    :goto_6
    sget-object v1, Lvt/w2;->a:Lvt/w2;

    .line 128
    .line 129
    iget-object v2, p0, Lcom/moloco/sdk/internal/ortb/model/r;->g:Ljava/lang/String;

    .line 130
    .line 131
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_d
    const/4 v0, 0x7

    .line 135
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_e

    .line 140
    .line 141
    goto :goto_7

    .line 142
    :cond_e
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/r;->h:Ljava/lang/String;

    .line 143
    .line 144
    if-eqz v1, :cond_f

    .line 145
    .line 146
    :goto_7
    sget-object v1, Lvt/w2;->a:Lvt/w2;

    .line 147
    .line 148
    iget-object v2, p0, Lcom/moloco/sdk/internal/ortb/model/r;->h:Ljava/lang/String;

    .line 149
    .line 150
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :cond_f
    const/16 v0, 0x8

    .line 154
    .line 155
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_10

    .line 160
    .line 161
    goto :goto_8

    .line 162
    :cond_10
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/r;->i:Ljava/lang/String;

    .line 163
    .line 164
    if-eqz v1, :cond_11

    .line 165
    .line 166
    :goto_8
    sget-object v1, Lvt/w2;->a:Lvt/w2;

    .line 167
    .line 168
    iget-object v2, p0, Lcom/moloco/sdk/internal/ortb/model/r;->i:Ljava/lang/String;

    .line 169
    .line 170
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :cond_11
    const/16 v0, 0x9

    .line 174
    .line 175
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-eqz v1, :cond_12

    .line 180
    .line 181
    goto :goto_9

    .line 182
    :cond_12
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/r;->j:Ljava/lang/String;

    .line 183
    .line 184
    if-eqz v1, :cond_13

    .line 185
    .line 186
    :goto_9
    sget-object v1, Lvt/w2;->a:Lvt/w2;

    .line 187
    .line 188
    iget-object p0, p0, Lcom/moloco/sdk/internal/ortb/model/r;->j:Ljava/lang/String;

    .line 189
    .line 190
    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_13
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/r;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/r;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/r;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/r;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/r;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/r;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/r;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/r;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/r;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/r;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
