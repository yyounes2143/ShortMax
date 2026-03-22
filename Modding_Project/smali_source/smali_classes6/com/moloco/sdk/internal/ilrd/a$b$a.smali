.class public final synthetic Lcom/moloco/sdk/internal/ilrd/a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvt/m0;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/internal/ilrd/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvt/m0<",
        "Lcom/moloco/sdk/internal/ilrd/a$b;",
        ">;"
    }
.end annotation

.annotation runtime Lms/c;
.end annotation


# static fields
.field public static final a:Lcom/moloco/sdk/internal/ilrd/a$b$a;
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
    new-instance v0, Lcom/moloco/sdk/internal/ilrd/a$b$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/internal/ilrd/a$b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/internal/ilrd/a$b$a;->a:Lcom/moloco/sdk/internal/ilrd/a$b$a;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    sput v1, Lcom/moloco/sdk/internal/ilrd/a$b$a;->c:I

    .line 11
    .line 12
    new-instance v1, Lvt/h2;

    .line 13
    .line 14
    const-string v2, "com.moloco.sdk.internal.ilrd.IlrdActiveSession.ImpressionCounts"

    .line 15
    .line 16
    const/4 v3, 0x6

    .line 17
    invoke-direct {v1, v2, v0, v3}, Lvt/h2;-><init>(Ljava/lang/String;Lvt/m0;I)V

    .line 18
    .line 19
    .line 20
    const-string v0, "lastEventReceivedTs"

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    const-string v0, "banner"

    .line 27
    .line 28
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    const-string v0, "mrec"

    .line 32
    .line 33
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    const-string v0, "native"

    .line 37
    .line 38
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 39
    .line 40
    .line 41
    const-string v0, "interstitial"

    .line 42
    .line 43
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 44
    .line 45
    .line 46
    const-string v0, "rewarded"

    .line 47
    .line 48
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    sput-object v1, Lcom/moloco/sdk/internal/ilrd/a$b$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 52
    .line 53
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
.method public final a(Lkotlinx/serialization/encoding/Decoder;)Lcom/moloco/sdk/internal/ilrd/a$b;
    .locals 27
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
    sget-object v1, Lcom/moloco/sdk/internal/ilrd/a$b$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    const/4 v3, 0x5

    .line 19
    const/4 v4, 0x3

    .line 20
    const/4 v5, 0x4

    .line 21
    const/4 v6, 0x2

    .line 22
    const/4 v7, 0x1

    .line 23
    const/4 v8, 0x0

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v0, v1, v8}, Lkotlinx/serialization/encoding/c;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 27
    .line 28
    .line 29
    move-result-wide v8

    .line 30
    invoke-interface {v0, v1, v7}, Lkotlinx/serialization/encoding/c;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/encoding/c;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    invoke-interface {v0, v1, v4}, Lkotlinx/serialization/encoding/c;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    invoke-interface {v0, v1, v5}, Lkotlinx/serialization/encoding/c;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/c;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    const/16 v7, 0x3f

    .line 51
    .line 52
    move/from16 v21, v2

    .line 53
    .line 54
    move/from16 v25, v3

    .line 55
    .line 56
    move/from16 v23, v4

    .line 57
    .line 58
    move/from16 v24, v5

    .line 59
    .line 60
    move/from16 v22, v6

    .line 61
    .line 62
    move/from16 v18, v7

    .line 63
    .line 64
    move-wide/from16 v19, v8

    .line 65
    .line 66
    goto/16 :goto_2

    .line 67
    .line 68
    :cond_0
    const-wide/16 v9, 0x0

    .line 69
    .line 70
    move/from16 v16, v7

    .line 71
    .line 72
    move v2, v8

    .line 73
    move v11, v2

    .line 74
    move v12, v11

    .line 75
    move v13, v12

    .line 76
    move-wide v14, v9

    .line 77
    move v9, v13

    .line 78
    move v10, v9

    .line 79
    :goto_0
    if-eqz v16, :cond_1

    .line 80
    .line 81
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/c;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    packed-switch v8, :pswitch_data_0

    .line 86
    .line 87
    .line 88
    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    .line 89
    .line 90
    invoke-direct {v0, v8}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    .line 91
    .line 92
    .line 93
    throw v0

    .line 94
    :pswitch_0
    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/c;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    or-int/lit8 v13, v13, 0x20

    .line 99
    .line 100
    :goto_1
    const/4 v8, 0x0

    .line 101
    goto :goto_0

    .line 102
    :pswitch_1
    invoke-interface {v0, v1, v5}, Lkotlinx/serialization/encoding/c;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 103
    .line 104
    .line 105
    move-result v11

    .line 106
    or-int/lit8 v13, v13, 0x10

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :pswitch_2
    invoke-interface {v0, v1, v4}, Lkotlinx/serialization/encoding/c;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    or-int/lit8 v13, v13, 0x8

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :pswitch_3
    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/encoding/c;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 117
    .line 118
    .line 119
    move-result v12

    .line 120
    or-int/lit8 v13, v13, 0x4

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :pswitch_4
    invoke-interface {v0, v1, v7}, Lkotlinx/serialization/encoding/c;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    or-int/lit8 v13, v13, 0x2

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :pswitch_5
    const/4 v8, 0x0

    .line 131
    invoke-interface {v0, v1, v8}, Lkotlinx/serialization/encoding/c;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 132
    .line 133
    .line 134
    move-result-wide v14

    .line 135
    or-int/lit8 v13, v13, 0x1

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :pswitch_6
    const/4 v8, 0x0

    .line 139
    move/from16 v16, v8

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_1
    move/from16 v21, v2

    .line 143
    .line 144
    move/from16 v25, v9

    .line 145
    .line 146
    move/from16 v23, v10

    .line 147
    .line 148
    move/from16 v24, v11

    .line 149
    .line 150
    move/from16 v22, v12

    .line 151
    .line 152
    move/from16 v18, v13

    .line 153
    .line 154
    move-wide/from16 v19, v14

    .line 155
    .line 156
    :goto_2
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/c;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 157
    .line 158
    .line 159
    new-instance v0, Lcom/moloco/sdk/internal/ilrd/a$b;

    .line 160
    .line 161
    const/16 v26, 0x0

    .line 162
    .line 163
    move-object/from16 v17, v0

    .line 164
    .line 165
    invoke-direct/range {v17 .. v26}, Lcom/moloco/sdk/internal/ilrd/a$b;-><init>(IJIIIIILvt/r2;)V

    .line 166
    .line 167
    .line 168
    return-object v0

    .line 169
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lkotlinx/serialization/encoding/Encoder;Lcom/moloco/sdk/internal/ilrd/a$b;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/encoding/Encoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/ilrd/a$b;
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
    sget-object v0, Lcom/moloco/sdk/internal/ilrd/a$b$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 13
    .line 14
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/d;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p2, p1, v0}, Lcom/moloco/sdk/internal/ilrd/a$b;->c(Lcom/moloco/sdk/internal/ilrd/a$b;Lkotlinx/serialization/encoding/d;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

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
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    .line 3
    .line 4
    sget-object v1, Lvt/g1;->a:Lvt/g1;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lvt/v0;->a:Lvt/v0;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    aput-object v1, v0, v2

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    const/4 v2, 0x4

    .line 21
    aput-object v1, v0, v2

    .line 22
    .line 23
    const/4 v2, 0x5

    .line 24
    aput-object v1, v0, v2

    .line 25
    .line 26
    return-object v0
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/ilrd/a$b$a;->a(Lkotlinx/serialization/encoding/Decoder;)Lcom/moloco/sdk/internal/ilrd/a$b;

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
    sget-object v0, Lcom/moloco/sdk/internal/ilrd/a$b$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/moloco/sdk/internal/ilrd/a$b;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/ilrd/a$b$a;->b(Lkotlinx/serialization/encoding/Encoder;Lcom/moloco/sdk/internal/ilrd/a$b;)V

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
