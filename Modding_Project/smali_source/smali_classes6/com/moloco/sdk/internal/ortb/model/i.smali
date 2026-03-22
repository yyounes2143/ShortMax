.class public final Lcom/moloco/sdk/internal/ortb/model/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/ortb/model/i$a;,
        Lcom/moloco/sdk/internal/ortb/model/i$b;
    }
.end annotation

.annotation runtime Lst/k;
.end annotation


# static fields
.field public static final Companion:Lcom/moloco/sdk/internal/ortb/model/i$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Z

.field public final c:I

.field public final d:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:Lcom/moloco/sdk/internal/ortb/model/l;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/moloco/sdk/internal/ortb/model/v;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:J

.field public final h:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/ortb/model/i$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/ortb/model/i$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/ortb/model/i;->Companion:Lcom/moloco/sdk/internal/ortb/model/i$b;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ZLms/n;Ljava/lang/Integer;Lcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;Landroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Color;Lvt/r2;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p10, p1, 0x1

    const/4 v0, 0x0

    if-nez p10, :cond_0

    .line 3
    iput-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/i;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/moloco/sdk/internal/ortb/model/i;->a:Ljava/lang/String;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/moloco/sdk/internal/ortb/model/i;->b:Z

    goto :goto_1

    :cond_1
    iput-boolean p3, p0, Lcom/moloco/sdk/internal/ortb/model/i;->b:Z

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    const/16 p2, 0x1e

    .line 5
    :goto_2
    iput p2, p0, Lcom/moloco/sdk/internal/ortb/model/i;->c:I

    goto :goto_3

    :cond_2
    invoke-virtual {p4}, Lms/n;->g()I

    move-result p2

    goto :goto_2

    :goto_3
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    .line 6
    iput-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/i;->d:Ljava/lang/Integer;

    goto :goto_4

    :cond_3
    iput-object p5, p0, Lcom/moloco/sdk/internal/ortb/model/i;->d:Ljava/lang/Integer;

    :goto_4
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_4

    .line 7
    sget-object p2, Lcom/moloco/sdk/internal/ortb/model/l;->f:Lcom/moloco/sdk/internal/ortb/model/l;

    .line 8
    iput-object p2, p0, Lcom/moloco/sdk/internal/ortb/model/i;->e:Lcom/moloco/sdk/internal/ortb/model/l;

    goto :goto_5

    :cond_4
    iput-object p6, p0, Lcom/moloco/sdk/internal/ortb/model/i;->e:Lcom/moloco/sdk/internal/ortb/model/l;

    :goto_5
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_5

    .line 9
    sget-object p2, Lcom/moloco/sdk/internal/ortb/model/v;->b:Lcom/moloco/sdk/internal/ortb/model/v;

    .line 10
    iput-object p2, p0, Lcom/moloco/sdk/internal/ortb/model/i;->f:Lcom/moloco/sdk/internal/ortb/model/v;

    goto :goto_6

    :cond_5
    iput-object p7, p0, Lcom/moloco/sdk/internal/ortb/model/i;->f:Lcom/moloco/sdk/internal/ortb/model/v;

    :goto_6
    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_6

    .line 11
    const-string p2, "#FF4285f4"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide p2

    .line 12
    :goto_7
    iput-wide p2, p0, Lcom/moloco/sdk/internal/ortb/model/i;->g:J

    goto :goto_8

    :cond_6
    invoke-virtual {p8}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide p2

    goto :goto_7

    :goto_8
    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_7

    .line 13
    const-string p1, "#FFFFFFFF"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide p1

    .line 14
    :goto_9
    iput-wide p1, p0, Lcom/moloco/sdk/internal/ortb/model/i;->h:J

    goto :goto_a

    :cond_7
    invoke-virtual {p9}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide p1

    goto :goto_9

    :goto_a
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ZLms/n;Ljava/lang/Integer;Lcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;Landroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Color;Lvt/r2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/moloco/sdk/internal/ortb/model/i;-><init>(ILjava/lang/String;ZLms/n;Ljava/lang/Integer;Lcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;Landroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Color;Lvt/r2;)V

    return-void
.end method

.method public static final synthetic b(Lcom/moloco/sdk/internal/ortb/model/i;Lkotlinx/serialization/encoding/d;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 5

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
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/i;->a:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    :goto_0
    sget-object v1, Lvt/w2;->a:Lvt/w2;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/moloco/sdk/internal/ortb/model/i;->a:Ljava/lang/String;

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
    iget-boolean v1, p0, Lcom/moloco/sdk/internal/ortb/model/i;->b:Z

    .line 29
    .line 30
    if-eq v1, v0, :cond_3

    .line 31
    .line 32
    :goto_1
    iget-boolean v1, p0, Lcom/moloco/sdk/internal/ortb/model/i;->b:Z

    .line 33
    .line 34
    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/d;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 35
    .line 36
    .line 37
    :cond_3
    const/4 v0, 0x2

    .line 38
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_4
    iget v1, p0, Lcom/moloco/sdk/internal/ortb/model/i;->c:I

    .line 46
    .line 47
    const/16 v2, 0x1e

    .line 48
    .line 49
    if-eq v1, v2, :cond_5

    .line 50
    .line 51
    :goto_2
    sget-object v1, Lvt/j3;->a:Lvt/j3;

    .line 52
    .line 53
    iget v2, p0, Lcom/moloco/sdk/internal/ortb/model/i;->c:I

    .line 54
    .line 55
    invoke-static {v2}, Lms/n;->a(I)Lms/n;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :cond_5
    const/4 v0, 0x3

    .line 63
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_6

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_6
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/i;->d:Ljava/lang/Integer;

    .line 71
    .line 72
    if-eqz v1, :cond_7

    .line 73
    .line 74
    :goto_3
    sget-object v1, Lvt/v0;->a:Lvt/v0;

    .line 75
    .line 76
    iget-object v2, p0, Lcom/moloco/sdk/internal/ortb/model/i;->d:Ljava/lang/Integer;

    .line 77
    .line 78
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_7
    const/4 v0, 0x4

    .line 82
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_8

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_8
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/i;->e:Lcom/moloco/sdk/internal/ortb/model/l;

    .line 90
    .line 91
    sget-object v2, Lcom/moloco/sdk/internal/ortb/model/l;->f:Lcom/moloco/sdk/internal/ortb/model/l;

    .line 92
    .line 93
    if-eq v1, v2, :cond_9

    .line 94
    .line 95
    :goto_4
    sget-object v1, Lcom/moloco/sdk/internal/ortb/model/l$a;->a:Lcom/moloco/sdk/internal/ortb/model/l$a;

    .line 96
    .line 97
    iget-object v2, p0, Lcom/moloco/sdk/internal/ortb/model/i;->e:Lcom/moloco/sdk/internal/ortb/model/l;

    .line 98
    .line 99
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_9
    const/4 v0, 0x5

    .line 103
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_a

    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_a
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/i;->f:Lcom/moloco/sdk/internal/ortb/model/v;

    .line 111
    .line 112
    sget-object v2, Lcom/moloco/sdk/internal/ortb/model/v;->b:Lcom/moloco/sdk/internal/ortb/model/v;

    .line 113
    .line 114
    if-eq v1, v2, :cond_b

    .line 115
    .line 116
    :goto_5
    sget-object v1, Lcom/moloco/sdk/internal/ortb/model/v$a;->a:Lcom/moloco/sdk/internal/ortb/model/v$a;

    .line 117
    .line 118
    iget-object v2, p0, Lcom/moloco/sdk/internal/ortb/model/i;->f:Lcom/moloco/sdk/internal/ortb/model/v;

    .line 119
    .line 120
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :cond_b
    const/4 v0, 0x6

    .line 124
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_c

    .line 129
    .line 130
    goto :goto_6

    .line 131
    :cond_c
    iget-wide v1, p0, Lcom/moloco/sdk/internal/ortb/model/i;->g:J

    .line 132
    .line 133
    const-string v3, "#FF4285f4"

    .line 134
    .line 135
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    invoke-static {v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 140
    .line 141
    .line 142
    move-result-wide v3

    .line 143
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-nez v1, :cond_d

    .line 148
    .line 149
    :goto_6
    sget-object v1, Lcom/moloco/sdk/internal/ortb/model/h;->a:Lcom/moloco/sdk/internal/ortb/model/h;

    .line 150
    .line 151
    iget-wide v2, p0, Lcom/moloco/sdk/internal/ortb/model/i;->g:J

    .line 152
    .line 153
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    :cond_d
    const/4 v0, 0x7

    .line 161
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_e

    .line 166
    .line 167
    goto :goto_7

    .line 168
    :cond_e
    iget-wide v1, p0, Lcom/moloco/sdk/internal/ortb/model/i;->h:J

    .line 169
    .line 170
    const-string v3, "#FFFFFFFF"

    .line 171
    .line 172
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    invoke-static {v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 177
    .line 178
    .line 179
    move-result-wide v3

    .line 180
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-nez v1, :cond_f

    .line 185
    .line 186
    :goto_7
    sget-object v1, Lcom/moloco/sdk/internal/ortb/model/h;->a:Lcom/moloco/sdk/internal/ortb/model/h;

    .line 187
    .line 188
    iget-wide v2, p0, Lcom/moloco/sdk/internal/ortb/model/i;->h:J

    .line 189
    .line 190
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/d;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    :cond_f
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/moloco/sdk/internal/ortb/model/i;->h:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/internal/ortb/model/i;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/i;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/moloco/sdk/internal/ortb/model/i;->g:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final f()Lcom/moloco/sdk/internal/ortb/model/l;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/i;->e:Lcom/moloco/sdk/internal/ortb/model/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Lcom/moloco/sdk/internal/ortb/model/v;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/i;->f:Lcom/moloco/sdk/internal/ortb/model/v;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/moloco/sdk/internal/ortb/model/i;->b:Z

    .line 2
    .line 3
    return v0
.end method
