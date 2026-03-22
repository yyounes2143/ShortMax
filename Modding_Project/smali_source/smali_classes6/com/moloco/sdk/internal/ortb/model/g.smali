.class public final Lcom/moloco/sdk/internal/ortb/model/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/ortb/model/g$a;,
        Lcom/moloco/sdk/internal/ortb/model/g$b;
    }
.end annotation

.annotation runtime Lst/k;
.end annotation


# static fields
.field public static final Companion:Lcom/moloco/sdk/internal/ortb/model/g$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:I

.field public final d:Lcom/moloco/sdk/internal/ortb/model/l;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lcom/moloco/sdk/internal/ortb/model/v;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:J

.field public final g:Landroidx/compose/ui/graphics/Color;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/ortb/model/g$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/ortb/model/g$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/ortb/model/g;->Companion:Lcom/moloco/sdk/internal/ortb/model/g$b;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Lms/n;Lcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;Landroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Color;Lvt/r2;)V
    .locals 1

    and-int/lit8 p9, p1, 0x3d

    const/16 v0, 0x3d

    if-eq v0, p9, :cond_0

    .line 2
    sget-object p9, Lcom/moloco/sdk/internal/ortb/model/g$a;->a:Lcom/moloco/sdk/internal/ortb/model/g$a;

    invoke-virtual {p9}, Lcom/moloco/sdk/internal/ortb/model/g$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p9

    invoke-static {p1, v0, p9}, Lvt/c2;->a(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/moloco/sdk/internal/ortb/model/g;->a:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x2

    const/4 p9, 0x0

    if-nez p2, :cond_1

    .line 3
    iput-object p9, p0, Lcom/moloco/sdk/internal/ortb/model/g;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lcom/moloco/sdk/internal/ortb/model/g;->b:Ljava/lang/String;

    :goto_0
    invoke-virtual {p4}, Lms/n;->g()I

    move-result p2

    iput p2, p0, Lcom/moloco/sdk/internal/ortb/model/g;->c:I

    iput-object p5, p0, Lcom/moloco/sdk/internal/ortb/model/g;->d:Lcom/moloco/sdk/internal/ortb/model/l;

    iput-object p6, p0, Lcom/moloco/sdk/internal/ortb/model/g;->e:Lcom/moloco/sdk/internal/ortb/model/v;

    invoke-virtual {p7}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/moloco/sdk/internal/ortb/model/g;->f:J

    and-int/lit8 p1, p1, 0x40

    if-nez p1, :cond_2

    .line 4
    iput-object p9, p0, Lcom/moloco/sdk/internal/ortb/model/g;->g:Landroidx/compose/ui/graphics/Color;

    goto :goto_1

    :cond_2
    iput-object p8, p0, Lcom/moloco/sdk/internal/ortb/model/g;->g:Landroidx/compose/ui/graphics/Color;

    :goto_1
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Lms/n;Lcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;Landroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Color;Lvt/r2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/moloco/sdk/internal/ortb/model/g;-><init>(ILjava/lang/String;Ljava/lang/String;Lms/n;Lcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;Landroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Color;Lvt/r2;)V

    return-void
.end method

.method public static final synthetic b(Lcom/moloco/sdk/internal/ortb/model/g;Lkotlinx/serialization/encoding/d;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/g;->a:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/d;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/g;->b:Ljava/lang/String;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    :goto_0
    sget-object v1, Lvt/w2;->a:Lvt/w2;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/moloco/sdk/internal/ortb/model/g;->b:Ljava/lang/String;

    .line 22
    .line 23
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    sget-object v0, Lvt/j3;->a:Lvt/j3;

    .line 27
    .line 28
    iget v1, p0, Lcom/moloco/sdk/internal/ortb/model/g;->c:I

    .line 29
    .line 30
    invoke-static {v1}, Lms/n;->a(I)Lms/n;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x2

    .line 35
    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/d;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/l$a;->a:Lcom/moloco/sdk/internal/ortb/model/l$a;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/g;->d:Lcom/moloco/sdk/internal/ortb/model/l;

    .line 41
    .line 42
    const/4 v2, 0x3

    .line 43
    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/d;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/v$a;->a:Lcom/moloco/sdk/internal/ortb/model/v$a;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/g;->e:Lcom/moloco/sdk/internal/ortb/model/v;

    .line 49
    .line 50
    const/4 v2, 0x4

    .line 51
    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/d;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/h;->a:Lcom/moloco/sdk/internal/ortb/model/h;

    .line 55
    .line 56
    iget-wide v1, p0, Lcom/moloco/sdk/internal/ortb/model/g;->f:J

    .line 57
    .line 58
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const/4 v2, 0x5

    .line 63
    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/d;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    const/4 v1, 0x6

    .line 67
    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    iget-object v2, p0, Lcom/moloco/sdk/internal/ortb/model/g;->g:Landroidx/compose/ui/graphics/Color;

    .line 75
    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    :goto_1
    iget-object p0, p0, Lcom/moloco/sdk/internal/ortb/model/g;->g:Landroidx/compose/ui/graphics/Color;

    .line 79
    .line 80
    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/graphics/Color;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/g;->g:Landroidx/compose/ui/graphics/Color;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/moloco/sdk/internal/ortb/model/g;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final d()Lcom/moloco/sdk/internal/ortb/model/l;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/g;->d:Lcom/moloco/sdk/internal/ortb/model/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/g;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/internal/ortb/model/g;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/g;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lcom/moloco/sdk/internal/ortb/model/v;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/g;->e:Lcom/moloco/sdk/internal/ortb/model/v;

    .line 2
    .line 3
    return-object v0
.end method
