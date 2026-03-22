.class public final Lcom/moloco/sdk/internal/ortb/model/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/ortb/model/p$a;,
        Lcom/moloco/sdk/internal/ortb/model/p$b;
    }
.end annotation

.annotation runtime Lst/k;
.end annotation


# static fields
.field public static final Companion:Lcom/moloco/sdk/internal/ortb/model/p$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lcom/moloco/sdk/internal/ortb/model/t;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Lcom/moloco/sdk/internal/ortb/model/t;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/moloco/sdk/internal/ortb/model/q;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final d:Lcom/moloco/sdk/internal/ortb/model/o;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lcom/moloco/sdk/internal/ortb/model/g;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final f:Z

.field public final g:Lcom/moloco/sdk/internal/ortb/model/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final h:Lcom/moloco/sdk/internal/ortb/model/u;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final i:Lcom/moloco/sdk/internal/ortb/model/j;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final j:Lcom/moloco/sdk/internal/ortb/model/i;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/ortb/model/p$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/ortb/model/p$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/ortb/model/p;->Companion:Lcom/moloco/sdk/internal/ortb/model/p$b;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(ILcom/moloco/sdk/internal/ortb/model/t;Lcom/moloco/sdk/internal/ortb/model/t;Lcom/moloco/sdk/internal/ortb/model/q;Lcom/moloco/sdk/internal/ortb/model/o;Lcom/moloco/sdk/internal/ortb/model/g;ZLcom/moloco/sdk/internal/ortb/model/a;Lcom/moloco/sdk/internal/ortb/model/u;Lcom/moloco/sdk/internal/ortb/model/j;Lcom/moloco/sdk/internal/ortb/model/i;Lvt/r2;)V
    .locals 1

    and-int/lit8 p12, p1, 0x2a

    const/16 v0, 0x2a

    if-eq v0, p12, :cond_0

    .line 1
    sget-object p12, Lcom/moloco/sdk/internal/ortb/model/p$a;->a:Lcom/moloco/sdk/internal/ortb/model/p$a;

    invoke-virtual {p12}, Lcom/moloco/sdk/internal/ortb/model/p$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p12

    invoke-static {p1, v0, p12}, Lvt/c2;->a(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p12, p1, 0x1

    const/4 v0, 0x0

    if-nez p12, :cond_1

    .line 2
    iput-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/p;->a:Lcom/moloco/sdk/internal/ortb/model/t;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/moloco/sdk/internal/ortb/model/p;->a:Lcom/moloco/sdk/internal/ortb/model/t;

    :goto_0
    iput-object p3, p0, Lcom/moloco/sdk/internal/ortb/model/p;->b:Lcom/moloco/sdk/internal/ortb/model/t;

    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    .line 3
    iput-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/p;->c:Lcom/moloco/sdk/internal/ortb/model/q;

    goto :goto_1

    :cond_2
    iput-object p4, p0, Lcom/moloco/sdk/internal/ortb/model/p;->c:Lcom/moloco/sdk/internal/ortb/model/q;

    :goto_1
    iput-object p5, p0, Lcom/moloco/sdk/internal/ortb/model/p;->d:Lcom/moloco/sdk/internal/ortb/model/o;

    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_3

    .line 4
    iput-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/p;->e:Lcom/moloco/sdk/internal/ortb/model/g;

    goto :goto_2

    :cond_3
    iput-object p6, p0, Lcom/moloco/sdk/internal/ortb/model/p;->e:Lcom/moloco/sdk/internal/ortb/model/g;

    :goto_2
    iput-boolean p7, p0, Lcom/moloco/sdk/internal/ortb/model/p;->f:Z

    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_4

    .line 5
    iput-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/p;->g:Lcom/moloco/sdk/internal/ortb/model/a;

    goto :goto_3

    :cond_4
    iput-object p8, p0, Lcom/moloco/sdk/internal/ortb/model/p;->g:Lcom/moloco/sdk/internal/ortb/model/a;

    :goto_3
    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_5

    .line 6
    iput-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/p;->h:Lcom/moloco/sdk/internal/ortb/model/u;

    goto :goto_4

    :cond_5
    iput-object p9, p0, Lcom/moloco/sdk/internal/ortb/model/p;->h:Lcom/moloco/sdk/internal/ortb/model/u;

    :goto_4
    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_6

    .line 7
    iput-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/p;->i:Lcom/moloco/sdk/internal/ortb/model/j;

    goto :goto_5

    :cond_6
    iput-object p10, p0, Lcom/moloco/sdk/internal/ortb/model/p;->i:Lcom/moloco/sdk/internal/ortb/model/j;

    :goto_5
    and-int/lit16 p1, p1, 0x200

    if-nez p1, :cond_7

    .line 8
    iput-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/p;->j:Lcom/moloco/sdk/internal/ortb/model/i;

    goto :goto_6

    :cond_7
    iput-object p11, p0, Lcom/moloco/sdk/internal/ortb/model/p;->j:Lcom/moloco/sdk/internal/ortb/model/i;

    :goto_6
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/internal/ortb/model/t;Lcom/moloco/sdk/internal/ortb/model/t;Lcom/moloco/sdk/internal/ortb/model/q;Lcom/moloco/sdk/internal/ortb/model/o;Lcom/moloco/sdk/internal/ortb/model/g;ZLcom/moloco/sdk/internal/ortb/model/a;Lcom/moloco/sdk/internal/ortb/model/u;Lcom/moloco/sdk/internal/ortb/model/j;Lcom/moloco/sdk/internal/ortb/model/i;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/internal/ortb/model/t;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/ortb/model/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/internal/ortb/model/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/moloco/sdk/internal/ortb/model/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/moloco/sdk/internal/ortb/model/g;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/moloco/sdk/internal/ortb/model/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/moloco/sdk/internal/ortb/model/u;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/moloco/sdk/internal/ortb/model/j;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Lcom/moloco/sdk/internal/ortb/model/i;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "close"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mute"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/moloco/sdk/internal/ortb/model/p;->a:Lcom/moloco/sdk/internal/ortb/model/t;

    .line 11
    iput-object p2, p0, Lcom/moloco/sdk/internal/ortb/model/p;->b:Lcom/moloco/sdk/internal/ortb/model/t;

    .line 12
    iput-object p3, p0, Lcom/moloco/sdk/internal/ortb/model/p;->c:Lcom/moloco/sdk/internal/ortb/model/q;

    .line 13
    iput-object p4, p0, Lcom/moloco/sdk/internal/ortb/model/p;->d:Lcom/moloco/sdk/internal/ortb/model/o;

    .line 14
    iput-object p5, p0, Lcom/moloco/sdk/internal/ortb/model/p;->e:Lcom/moloco/sdk/internal/ortb/model/g;

    .line 15
    iput-boolean p6, p0, Lcom/moloco/sdk/internal/ortb/model/p;->f:Z

    .line 16
    iput-object p7, p0, Lcom/moloco/sdk/internal/ortb/model/p;->g:Lcom/moloco/sdk/internal/ortb/model/a;

    .line 17
    iput-object p8, p0, Lcom/moloco/sdk/internal/ortb/model/p;->h:Lcom/moloco/sdk/internal/ortb/model/u;

    .line 18
    iput-object p9, p0, Lcom/moloco/sdk/internal/ortb/model/p;->i:Lcom/moloco/sdk/internal/ortb/model/j;

    .line 19
    iput-object p10, p0, Lcom/moloco/sdk/internal/ortb/model/p;->j:Lcom/moloco/sdk/internal/ortb/model/i;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/moloco/sdk/internal/ortb/model/t;Lcom/moloco/sdk/internal/ortb/model/t;Lcom/moloco/sdk/internal/ortb/model/q;Lcom/moloco/sdk/internal/ortb/model/o;Lcom/moloco/sdk/internal/ortb/model/g;ZLcom/moloco/sdk/internal/ortb/model/a;Lcom/moloco/sdk/internal/ortb/model/u;Lcom/moloco/sdk/internal/ortb/model/j;Lcom/moloco/sdk/internal/ortb/model/i;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    move-object v8, v2

    goto :goto_2

    :cond_2
    move-object/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    move-object v10, v2

    goto :goto_3

    :cond_3
    move-object/from16 v10, p7

    :goto_3
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_4

    move-object v11, v2

    goto :goto_4

    :cond_4
    move-object/from16 v11, p8

    :goto_4
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_5

    move-object v12, v2

    goto :goto_5

    :cond_5
    move-object/from16 v12, p9

    :goto_5
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_6

    move-object v13, v2

    goto :goto_6

    :cond_6
    move-object/from16 v13, p10

    :goto_6
    move-object v3, p0

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move/from16 v9, p6

    .line 20
    invoke-direct/range {v3 .. v13}, Lcom/moloco/sdk/internal/ortb/model/p;-><init>(Lcom/moloco/sdk/internal/ortb/model/t;Lcom/moloco/sdk/internal/ortb/model/t;Lcom/moloco/sdk/internal/ortb/model/q;Lcom/moloco/sdk/internal/ortb/model/o;Lcom/moloco/sdk/internal/ortb/model/g;ZLcom/moloco/sdk/internal/ortb/model/a;Lcom/moloco/sdk/internal/ortb/model/u;Lcom/moloco/sdk/internal/ortb/model/j;Lcom/moloco/sdk/internal/ortb/model/i;)V

    return-void
.end method

.method public static final synthetic b(Lcom/moloco/sdk/internal/ortb/model/p;Lkotlinx/serialization/encoding/d;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
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
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/p;->a:Lcom/moloco/sdk/internal/ortb/model/t;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    :goto_0
    sget-object v1, Lcom/moloco/sdk/internal/ortb/model/t$a;->a:Lcom/moloco/sdk/internal/ortb/model/t$a;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/moloco/sdk/internal/ortb/model/p;->a:Lcom/moloco/sdk/internal/ortb/model/t;

    .line 16
    .line 17
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/t$a;->a:Lcom/moloco/sdk/internal/ortb/model/t$a;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/p;->b:Lcom/moloco/sdk/internal/ortb/model/t;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/d;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/p;->c:Lcom/moloco/sdk/internal/ortb/model/q;

    .line 37
    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    :goto_1
    sget-object v1, Lcom/moloco/sdk/internal/ortb/model/q$a;->a:Lcom/moloco/sdk/internal/ortb/model/q$a;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/moloco/sdk/internal/ortb/model/p;->c:Lcom/moloco/sdk/internal/ortb/model/q;

    .line 43
    .line 44
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_3
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/o$a;->a:Lcom/moloco/sdk/internal/ortb/model/o$a;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/p;->d:Lcom/moloco/sdk/internal/ortb/model/o;

    .line 50
    .line 51
    const/4 v2, 0x3

    .line 52
    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/d;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x4

    .line 56
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_4
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/p;->e:Lcom/moloco/sdk/internal/ortb/model/g;

    .line 64
    .line 65
    if-eqz v1, :cond_5

    .line 66
    .line 67
    :goto_2
    sget-object v1, Lcom/moloco/sdk/internal/ortb/model/g$a;->a:Lcom/moloco/sdk/internal/ortb/model/g$a;

    .line 68
    .line 69
    iget-object v2, p0, Lcom/moloco/sdk/internal/ortb/model/p;->e:Lcom/moloco/sdk/internal/ortb/model/g;

    .line 70
    .line 71
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_5
    iget-boolean v0, p0, Lcom/moloco/sdk/internal/ortb/model/p;->f:Z

    .line 75
    .line 76
    const/4 v1, 0x5

    .line 77
    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/d;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 78
    .line 79
    .line 80
    const/4 v0, 0x6

    .line 81
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_6

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_6
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/p;->g:Lcom/moloco/sdk/internal/ortb/model/a;

    .line 89
    .line 90
    if-eqz v1, :cond_7

    .line 91
    .line 92
    :goto_3
    sget-object v1, Lcom/moloco/sdk/internal/ortb/model/a$a;->a:Lcom/moloco/sdk/internal/ortb/model/a$a;

    .line 93
    .line 94
    iget-object v2, p0, Lcom/moloco/sdk/internal/ortb/model/p;->g:Lcom/moloco/sdk/internal/ortb/model/a;

    .line 95
    .line 96
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :cond_7
    const/4 v0, 0x7

    .line 100
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_8

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_8
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/p;->h:Lcom/moloco/sdk/internal/ortb/model/u;

    .line 108
    .line 109
    if-eqz v1, :cond_9

    .line 110
    .line 111
    :goto_4
    sget-object v1, Lcom/moloco/sdk/internal/ortb/model/u$a;->a:Lcom/moloco/sdk/internal/ortb/model/u$a;

    .line 112
    .line 113
    iget-object v2, p0, Lcom/moloco/sdk/internal/ortb/model/p;->h:Lcom/moloco/sdk/internal/ortb/model/u;

    .line 114
    .line 115
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    :cond_9
    const/16 v0, 0x8

    .line 119
    .line 120
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_a

    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_a
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/p;->i:Lcom/moloco/sdk/internal/ortb/model/j;

    .line 128
    .line 129
    if-eqz v1, :cond_b

    .line 130
    .line 131
    :goto_5
    sget-object v1, Lcom/moloco/sdk/internal/ortb/model/j$a;->a:Lcom/moloco/sdk/internal/ortb/model/j$a;

    .line 132
    .line 133
    iget-object v2, p0, Lcom/moloco/sdk/internal/ortb/model/p;->i:Lcom/moloco/sdk/internal/ortb/model/j;

    .line 134
    .line 135
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :cond_b
    const/16 v0, 0x9

    .line 139
    .line 140
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_c

    .line 145
    .line 146
    goto :goto_6

    .line 147
    :cond_c
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/p;->j:Lcom/moloco/sdk/internal/ortb/model/i;

    .line 148
    .line 149
    if-eqz v1, :cond_d

    .line 150
    .line 151
    :goto_6
    sget-object v1, Lcom/moloco/sdk/internal/ortb/model/i$a;->a:Lcom/moloco/sdk/internal/ortb/model/i$a;

    .line 152
    .line 153
    iget-object p0, p0, Lcom/moloco/sdk/internal/ortb/model/p;->j:Lcom/moloco/sdk/internal/ortb/model/i;

    .line 154
    .line 155
    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    :cond_d
    return-void
.end method


# virtual methods
.method public final a()Lcom/moloco/sdk/internal/ortb/model/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/p;->g:Lcom/moloco/sdk/internal/ortb/model/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Lcom/moloco/sdk/internal/ortb/model/t;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/p;->b:Lcom/moloco/sdk/internal/ortb/model/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lcom/moloco/sdk/internal/ortb/model/i;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/p;->j:Lcom/moloco/sdk/internal/ortb/model/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Lcom/moloco/sdk/internal/ortb/model/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/p;->e:Lcom/moloco/sdk/internal/ortb/model/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Lcom/moloco/sdk/internal/ortb/model/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/p;->i:Lcom/moloco/sdk/internal/ortb/model/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Lcom/moloco/sdk/internal/ortb/model/o;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/p;->d:Lcom/moloco/sdk/internal/ortb/model/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lcom/moloco/sdk/internal/ortb/model/q;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/p;->c:Lcom/moloco/sdk/internal/ortb/model/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Lcom/moloco/sdk/internal/ortb/model/t;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/p;->a:Lcom/moloco/sdk/internal/ortb/model/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Lcom/moloco/sdk/internal/ortb/model/u;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/p;->h:Lcom/moloco/sdk/internal/ortb/model/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/moloco/sdk/internal/ortb/model/p;->f:Z

    .line 2
    .line 3
    return v0
.end method
