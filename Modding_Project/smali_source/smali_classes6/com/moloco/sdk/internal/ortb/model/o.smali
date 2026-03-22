.class public final Lcom/moloco/sdk/internal/ortb/model/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/ortb/model/o$a;,
        Lcom/moloco/sdk/internal/ortb/model/o$b;
    }
.end annotation

.annotation runtime Lst/k;
.end annotation


# static fields
.field public static final Companion:Lcom/moloco/sdk/internal/ortb/model/o$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:Lcom/moloco/sdk/internal/ortb/model/l;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/moloco/sdk/internal/ortb/model/v;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:J

.field public final f:Lms/n;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final g:Landroidx/compose/ui/graphics/Color;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/ortb/model/o$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/ortb/model/o$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/ortb/model/o;->Companion:Lcom/moloco/sdk/internal/ortb/model/o$b;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(IZLms/n;Lcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;Landroidx/compose/ui/graphics/Color;Lms/n;Landroidx/compose/ui/graphics/Color;Lvt/r2;)V
    .locals 1

    and-int/lit8 p9, p1, 0x1f

    const/16 v0, 0x1f

    if-eq v0, p9, :cond_0

    .line 3
    sget-object p9, Lcom/moloco/sdk/internal/ortb/model/o$a;->a:Lcom/moloco/sdk/internal/ortb/model/o$a;

    invoke-virtual {p9}, Lcom/moloco/sdk/internal/ortb/model/o$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p9

    invoke-static {p1, v0, p9}, Lvt/c2;->a(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/moloco/sdk/internal/ortb/model/o;->a:Z

    invoke-virtual {p3}, Lms/n;->g()I

    move-result p2

    iput p2, p0, Lcom/moloco/sdk/internal/ortb/model/o;->b:I

    iput-object p4, p0, Lcom/moloco/sdk/internal/ortb/model/o;->c:Lcom/moloco/sdk/internal/ortb/model/l;

    iput-object p5, p0, Lcom/moloco/sdk/internal/ortb/model/o;->d:Lcom/moloco/sdk/internal/ortb/model/v;

    invoke-virtual {p6}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/moloco/sdk/internal/ortb/model/o;->e:J

    and-int/lit8 p2, p1, 0x20

    const/4 p3, 0x0

    if-nez p2, :cond_1

    .line 4
    iput-object p3, p0, Lcom/moloco/sdk/internal/ortb/model/o;->f:Lms/n;

    goto :goto_0

    :cond_1
    iput-object p7, p0, Lcom/moloco/sdk/internal/ortb/model/o;->f:Lms/n;

    :goto_0
    and-int/lit8 p1, p1, 0x40

    if-nez p1, :cond_2

    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/internal/ortb/model/o;->g:Landroidx/compose/ui/graphics/Color;

    goto :goto_1

    :cond_2
    iput-object p8, p0, Lcom/moloco/sdk/internal/ortb/model/o;->g:Landroidx/compose/ui/graphics/Color;

    :goto_1
    return-void
.end method

.method public synthetic constructor <init>(IZLms/n;Lcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;Landroidx/compose/ui/graphics/Color;Lms/n;Landroidx/compose/ui/graphics/Color;Lvt/r2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/moloco/sdk/internal/ortb/model/o;-><init>(IZLms/n;Lcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;Landroidx/compose/ui/graphics/Color;Lms/n;Landroidx/compose/ui/graphics/Color;Lvt/r2;)V

    return-void
.end method

.method public constructor <init>(ZILcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;JLms/n;Landroidx/compose/ui/graphics/Color;)V
    .locals 1

    const-string v0, "horizontalAlignment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "verticalAlignment"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean p1, p0, Lcom/moloco/sdk/internal/ortb/model/o;->a:Z

    .line 8
    iput p2, p0, Lcom/moloco/sdk/internal/ortb/model/o;->b:I

    .line 9
    iput-object p3, p0, Lcom/moloco/sdk/internal/ortb/model/o;->c:Lcom/moloco/sdk/internal/ortb/model/l;

    .line 10
    iput-object p4, p0, Lcom/moloco/sdk/internal/ortb/model/o;->d:Lcom/moloco/sdk/internal/ortb/model/v;

    .line 11
    iput-wide p5, p0, Lcom/moloco/sdk/internal/ortb/model/o;->e:J

    .line 12
    iput-object p7, p0, Lcom/moloco/sdk/internal/ortb/model/o;->f:Lms/n;

    .line 13
    iput-object p8, p0, Lcom/moloco/sdk/internal/ortb/model/o;->g:Landroidx/compose/ui/graphics/Color;

    return-void
.end method

.method public synthetic constructor <init>(ZILcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;JLms/n;Landroidx/compose/ui/graphics/Color;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    and-int/lit8 v0, p9, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object/from16 v9, p7

    :goto_0
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_1

    move-object v10, v1

    goto :goto_1

    :cond_1
    move-object/from16 v10, p8

    :goto_1
    const/4 v11, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    .line 14
    invoke-direct/range {v2 .. v11}, Lcom/moloco/sdk/internal/ortb/model/o;-><init>(ZILcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;JLms/n;Landroidx/compose/ui/graphics/Color;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ZILcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;JLms/n;Landroidx/compose/ui/graphics/Color;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p8}, Lcom/moloco/sdk/internal/ortb/model/o;-><init>(ZILcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;JLms/n;Landroidx/compose/ui/graphics/Color;)V

    return-void
.end method

.method public static final synthetic b(Lcom/moloco/sdk/internal/ortb/model/o;Lkotlinx/serialization/encoding/d;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/moloco/sdk/internal/ortb/model/o;->a:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/d;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lvt/j3;->a:Lvt/j3;

    .line 8
    .line 9
    iget v1, p0, Lcom/moloco/sdk/internal/ortb/model/o;->b:I

    .line 10
    .line 11
    invoke-static {v1}, Lms/n;->a(I)Lms/n;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/d;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sget-object v1, Lcom/moloco/sdk/internal/ortb/model/l$a;->a:Lcom/moloco/sdk/internal/ortb/model/l$a;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/moloco/sdk/internal/ortb/model/o;->c:Lcom/moloco/sdk/internal/ortb/model/l;

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    sget-object v1, Lcom/moloco/sdk/internal/ortb/model/v$a;->a:Lcom/moloco/sdk/internal/ortb/model/v$a;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/moloco/sdk/internal/ortb/model/o;->d:Lcom/moloco/sdk/internal/ortb/model/v;

    .line 30
    .line 31
    const/4 v3, 0x3

    .line 32
    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    sget-object v1, Lcom/moloco/sdk/internal/ortb/model/h;->a:Lcom/moloco/sdk/internal/ortb/model/h;

    .line 36
    .line 37
    iget-wide v2, p0, Lcom/moloco/sdk/internal/ortb/model/o;->e:J

    .line 38
    .line 39
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const/4 v3, 0x4

    .line 44
    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    const/4 v2, 0x5

    .line 48
    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object v3, p0, Lcom/moloco/sdk/internal/ortb/model/o;->f:Lms/n;

    .line 56
    .line 57
    if-eqz v3, :cond_1

    .line 58
    .line 59
    :goto_0
    iget-object v3, p0, Lcom/moloco/sdk/internal/ortb/model/o;->f:Lms/n;

    .line 60
    .line 61
    invoke-interface {p1, p2, v2, v0, v3}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    const/4 v0, 0x6

    .line 65
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    iget-object v2, p0, Lcom/moloco/sdk/internal/ortb/model/o;->g:Landroidx/compose/ui/graphics/Color;

    .line 73
    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    :goto_1
    iget-object p0, p0, Lcom/moloco/sdk/internal/ortb/model/o;->g:Landroidx/compose/ui/graphics/Color;

    .line 77
    .line 78
    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_3
    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/graphics/Color;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/o;->g:Landroidx/compose/ui/graphics/Color;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Lms/n;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/o;->f:Lms/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/moloco/sdk/internal/ortb/model/o;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final e()Lcom/moloco/sdk/internal/ortb/model/l;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/o;->c:Lcom/moloco/sdk/internal/ortb/model/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/moloco/sdk/internal/ortb/model/o;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public final g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/internal/ortb/model/o;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final h()Lcom/moloco/sdk/internal/ortb/model/v;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/o;->d:Lcom/moloco/sdk/internal/ortb/model/v;

    .line 2
    .line 3
    return-object v0
.end method
