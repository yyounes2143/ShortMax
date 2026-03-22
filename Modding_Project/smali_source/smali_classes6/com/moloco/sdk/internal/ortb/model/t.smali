.class public final Lcom/moloco/sdk/internal/ortb/model/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/ortb/model/t$a;,
        Lcom/moloco/sdk/internal/ortb/model/t$b;
    }
.end annotation

.annotation runtime Lst/k;
.end annotation


# static fields
.field public static final Companion:Lcom/moloco/sdk/internal/ortb/model/t$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

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
    new-instance v0, Lcom/moloco/sdk/internal/ortb/model/t$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/ortb/model/t$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/ortb/model/t;->Companion:Lcom/moloco/sdk/internal/ortb/model/t$b;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(IIILcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;JLandroidx/compose/ui/graphics/Color;)V
    .locals 1

    const-string v0, "horizontalAlignment"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "verticalAlignment"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/moloco/sdk/internal/ortb/model/t;->a:I

    .line 7
    iput p2, p0, Lcom/moloco/sdk/internal/ortb/model/t;->b:I

    .line 8
    iput p3, p0, Lcom/moloco/sdk/internal/ortb/model/t;->c:I

    .line 9
    iput-object p4, p0, Lcom/moloco/sdk/internal/ortb/model/t;->d:Lcom/moloco/sdk/internal/ortb/model/l;

    .line 10
    iput-object p5, p0, Lcom/moloco/sdk/internal/ortb/model/t;->e:Lcom/moloco/sdk/internal/ortb/model/v;

    .line 11
    iput-wide p6, p0, Lcom/moloco/sdk/internal/ortb/model/t;->f:J

    .line 12
    iput-object p8, p0, Lcom/moloco/sdk/internal/ortb/model/t;->g:Landroidx/compose/ui/graphics/Color;

    return-void
.end method

.method public synthetic constructor <init>(IIILcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;JLandroidx/compose/ui/graphics/Color;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object/from16 v9, p8

    :goto_0
    const/4 v10, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    .line 13
    invoke-direct/range {v1 .. v10}, Lcom/moloco/sdk/internal/ortb/model/t;-><init>(IIILcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;JLandroidx/compose/ui/graphics/Color;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(IIILcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;JLandroidx/compose/ui/graphics/Color;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/moloco/sdk/internal/ortb/model/t;-><init>(IIILcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;JLandroidx/compose/ui/graphics/Color;)V

    return-void
.end method

.method public synthetic constructor <init>(ILms/n;Lms/n;Lms/n;Lcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;Landroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Color;Lvt/r2;)V
    .locals 1

    and-int/lit8 p9, p1, 0x3f

    const/16 v0, 0x3f

    if-eq v0, p9, :cond_0

    .line 3
    sget-object p9, Lcom/moloco/sdk/internal/ortb/model/t$a;->a:Lcom/moloco/sdk/internal/ortb/model/t$a;

    invoke-virtual {p9}, Lcom/moloco/sdk/internal/ortb/model/t$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p9

    invoke-static {p1, v0, p9}, Lvt/c2;->a(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lms/n;->g()I

    move-result p2

    iput p2, p0, Lcom/moloco/sdk/internal/ortb/model/t;->a:I

    invoke-virtual {p3}, Lms/n;->g()I

    move-result p2

    iput p2, p0, Lcom/moloco/sdk/internal/ortb/model/t;->b:I

    invoke-virtual {p4}, Lms/n;->g()I

    move-result p2

    iput p2, p0, Lcom/moloco/sdk/internal/ortb/model/t;->c:I

    iput-object p5, p0, Lcom/moloco/sdk/internal/ortb/model/t;->d:Lcom/moloco/sdk/internal/ortb/model/l;

    iput-object p6, p0, Lcom/moloco/sdk/internal/ortb/model/t;->e:Lcom/moloco/sdk/internal/ortb/model/v;

    invoke-virtual {p7}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/moloco/sdk/internal/ortb/model/t;->f:J

    and-int/lit8 p1, p1, 0x40

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/internal/ortb/model/t;->g:Landroidx/compose/ui/graphics/Color;

    goto :goto_0

    :cond_1
    iput-object p8, p0, Lcom/moloco/sdk/internal/ortb/model/t;->g:Landroidx/compose/ui/graphics/Color;

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(ILms/n;Lms/n;Lms/n;Lcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;Landroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Color;Lvt/r2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p9}, Lcom/moloco/sdk/internal/ortb/model/t;-><init>(ILms/n;Lms/n;Lms/n;Lcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;Landroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Color;Lvt/r2;)V

    return-void
.end method

.method public static final synthetic b(Lcom/moloco/sdk/internal/ortb/model/t;Lkotlinx/serialization/encoding/d;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 1
    sget-object v0, Lvt/j3;->a:Lvt/j3;

    .line 2
    .line 3
    iget v1, p0, Lcom/moloco/sdk/internal/ortb/model/t;->a:I

    .line 4
    .line 5
    invoke-static {v1}, Lms/n;->a(I)Lms/n;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/d;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lcom/moloco/sdk/internal/ortb/model/t;->b:I

    .line 14
    .line 15
    invoke-static {v1}, Lms/n;->a(I)Lms/n;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/d;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget v1, p0, Lcom/moloco/sdk/internal/ortb/model/t;->c:I

    .line 24
    .line 25
    invoke-static {v1}, Lms/n;->a(I)Lms/n;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x2

    .line 30
    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/d;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/l$a;->a:Lcom/moloco/sdk/internal/ortb/model/l$a;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/t;->d:Lcom/moloco/sdk/internal/ortb/model/l;

    .line 36
    .line 37
    const/4 v2, 0x3

    .line 38
    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/d;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/v$a;->a:Lcom/moloco/sdk/internal/ortb/model/v$a;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/t;->e:Lcom/moloco/sdk/internal/ortb/model/v;

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/d;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/h;->a:Lcom/moloco/sdk/internal/ortb/model/h;

    .line 50
    .line 51
    iget-wide v1, p0, Lcom/moloco/sdk/internal/ortb/model/t;->f:J

    .line 52
    .line 53
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const/4 v2, 0x5

    .line 58
    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/d;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    const/4 v1, 0x6

    .line 62
    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_0

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    iget-object v2, p0, Lcom/moloco/sdk/internal/ortb/model/t;->g:Landroidx/compose/ui/graphics/Color;

    .line 70
    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    :goto_0
    iget-object p0, p0, Lcom/moloco/sdk/internal/ortb/model/t;->g:Landroidx/compose/ui/graphics/Color;

    .line 74
    .line 75
    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/graphics/Color;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/t;->g:Landroidx/compose/ui/graphics/Color;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/internal/ortb/model/t;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/internal/ortb/model/t;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public final e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/moloco/sdk/internal/ortb/model/t;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final f()Lcom/moloco/sdk/internal/ortb/model/l;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/t;->d:Lcom/moloco/sdk/internal/ortb/model/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/internal/ortb/model/t;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final h()Lcom/moloco/sdk/internal/ortb/model/v;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/t;->e:Lcom/moloco/sdk/internal/ortb/model/v;

    .line 2
    .line 3
    return-object v0
.end method
