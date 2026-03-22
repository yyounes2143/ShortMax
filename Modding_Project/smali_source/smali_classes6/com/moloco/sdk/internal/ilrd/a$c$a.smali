.class public final synthetic Lcom/moloco/sdk/internal/ilrd/a$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvt/m0;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/internal/ilrd/a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvt/m0<",
        "Lcom/moloco/sdk/internal/ilrd/a$c;",
        ">;"
    }
.end annotation

.annotation runtime Lms/c;
.end annotation


# static fields
.field public static final a:Lcom/moloco/sdk/internal/ilrd/a$c$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lkotlinx/serialization/descriptors/SerialDescriptor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/ilrd/a$c$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/internal/ilrd/a$c$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/internal/ilrd/a$c$a;->a:Lcom/moloco/sdk/internal/ilrd/a$c$a;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    sput v1, Lcom/moloco/sdk/internal/ilrd/a$c$a;->c:I

    .line 11
    .line 12
    new-instance v1, Lvt/h2;

    .line 13
    .line 14
    const-string v2, "com.moloco.sdk.internal.ilrd.IlrdActiveSession.SessionData"

    .line 15
    .line 16
    const/4 v3, 0x4

    .line 17
    invoke-direct {v1, v2, v0, v3}, Lvt/h2;-><init>(Ljava/lang/String;Lvt/m0;I)V

    .line 18
    .line 19
    .line 20
    const-string v0, "sessionId"

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    const-string v0, "impressionCounts"

    .line 27
    .line 28
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    const-string v0, "isExpired"

    .line 32
    .line 33
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    const-string v0, "sessionStartTs"

    .line 37
    .line 38
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 39
    .line 40
    .line 41
    sput-object v1, Lcom/moloco/sdk/internal/ilrd/a$c$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/serialization/encoding/Decoder;)Lcom/moloco/sdk/internal/ilrd/a$c;
    .locals 21
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
    sget-object v1, Lcom/moloco/sdk/internal/ilrd/a$c$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 9
    .line 10
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Lkotlinx/serialization/encoding/c;->decodeSequentially()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x3

    .line 19
    const/4 v4, 0x2

    .line 20
    const/4 v5, 0x1

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x0

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/encoding/c;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    sget-object v6, Lcom/moloco/sdk/internal/ilrd/a$b$a;->a:Lcom/moloco/sdk/internal/ilrd/a$b$a;

    .line 30
    .line 31
    invoke-interface {v0, v1, v5, v6, v7}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    check-cast v5, Lcom/moloco/sdk/internal/ilrd/a$b;

    .line 36
    .line 37
    invoke-interface {v0, v1, v4}, Lkotlinx/serialization/encoding/c;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/c;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 42
    .line 43
    .line 44
    move-result-wide v6

    .line 45
    const/16 v3, 0xf

    .line 46
    .line 47
    move-object v15, v2

    .line 48
    move v14, v3

    .line 49
    move/from16 v17, v4

    .line 50
    .line 51
    move-object/from16 v16, v5

    .line 52
    .line 53
    move-wide/from16 v18, v6

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    const-wide/16 v8, 0x0

    .line 57
    .line 58
    move v12, v5

    .line 59
    move v2, v6

    .line 60
    move-object v10, v7

    .line 61
    move-object v11, v10

    .line 62
    move v7, v2

    .line 63
    :goto_0
    if-eqz v12, :cond_6

    .line 64
    .line 65
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/c;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 66
    .line 67
    .line 68
    move-result v13

    .line 69
    const/4 v14, -0x1

    .line 70
    if-eq v13, v14, :cond_5

    .line 71
    .line 72
    if-eqz v13, :cond_4

    .line 73
    .line 74
    if-eq v13, v5, :cond_3

    .line 75
    .line 76
    if-eq v13, v4, :cond_2

    .line 77
    .line 78
    if-ne v13, v3, :cond_1

    .line 79
    .line 80
    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/c;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 81
    .line 82
    .line 83
    move-result-wide v8

    .line 84
    or-int/lit8 v2, v2, 0x8

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    .line 88
    .line 89
    invoke-direct {v0, v13}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    .line 90
    .line 91
    .line 92
    throw v0

    .line 93
    :cond_2
    invoke-interface {v0, v1, v4}, Lkotlinx/serialization/encoding/c;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    or-int/lit8 v2, v2, 0x4

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    sget-object v13, Lcom/moloco/sdk/internal/ilrd/a$b$a;->a:Lcom/moloco/sdk/internal/ilrd/a$b$a;

    .line 101
    .line 102
    invoke-interface {v0, v1, v5, v13, v11}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v11

    .line 106
    check-cast v11, Lcom/moloco/sdk/internal/ilrd/a$b;

    .line 107
    .line 108
    or-int/lit8 v2, v2, 0x2

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_4
    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/encoding/c;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    or-int/lit8 v2, v2, 0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_5
    move v12, v6

    .line 119
    goto :goto_0

    .line 120
    :cond_6
    move v14, v2

    .line 121
    move/from16 v17, v7

    .line 122
    .line 123
    move-wide/from16 v18, v8

    .line 124
    .line 125
    move-object v15, v10

    .line 126
    move-object/from16 v16, v11

    .line 127
    .line 128
    :goto_1
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/c;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 129
    .line 130
    .line 131
    new-instance v0, Lcom/moloco/sdk/internal/ilrd/a$c;

    .line 132
    .line 133
    const/16 v20, 0x0

    .line 134
    .line 135
    move-object v13, v0

    .line 136
    invoke-direct/range {v13 .. v20}, Lcom/moloco/sdk/internal/ilrd/a$c;-><init>(ILjava/lang/String;Lcom/moloco/sdk/internal/ilrd/a$b;ZJLvt/r2;)V

    .line 137
    .line 138
    .line 139
    return-object v0
.end method

.method public final b(Lkotlinx/serialization/encoding/Encoder;Lcom/moloco/sdk/internal/ilrd/a$c;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/encoding/Encoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/ilrd/a$c;
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
    const-string/jumbo v0, "value"

    .line 7
    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/moloco/sdk/internal/ilrd/a$c$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 13
    .line 14
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/d;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p2, p1, v0}, Lcom/moloco/sdk/internal/ilrd/a$c;->a(Lcom/moloco/sdk/internal/ilrd/a$c;Lkotlinx/serialization/encoding/d;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/d;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

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
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    .line 3
    .line 4
    sget-object v1, Lvt/w2;->a:Lvt/w2;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/moloco/sdk/internal/ilrd/a$b$a;->a:Lcom/moloco/sdk/internal/ilrd/a$b$a;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lvt/i;->a:Lvt/i;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lvt/g1;->a:Lvt/g1;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    return-object v0
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/ilrd/a$c$a;->a(Lkotlinx/serialization/encoding/Decoder;)Lcom/moloco/sdk/internal/ilrd/a$c;

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
    sget-object v0, Lcom/moloco/sdk/internal/ilrd/a$c$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/moloco/sdk/internal/ilrd/a$c;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/ilrd/a$c$a;->b(Lkotlinx/serialization/encoding/Encoder;Lcom/moloco/sdk/internal/ilrd/a$c;)V

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
