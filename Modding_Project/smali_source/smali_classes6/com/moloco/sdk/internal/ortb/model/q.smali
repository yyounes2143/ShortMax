.class public final Lcom/moloco/sdk/internal/ortb/model/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/ortb/model/q$a;,
        Lcom/moloco/sdk/internal/ortb/model/q$b;
    }
.end annotation

.annotation runtime Lst/k;
.end annotation


# static fields
.field public static final Companion:Lcom/moloco/sdk/internal/ortb/model/q$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Lcom/moloco/sdk/internal/ortb/model/l;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/moloco/sdk/internal/ortb/model/v;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/ortb/model/q$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/ortb/model/q$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/ortb/model/q;->Companion:Lcom/moloco/sdk/internal/ortb/model/q$b;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(ILcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;J)V
    .locals 1

    const-string v0, "horizontalAlignment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "verticalAlignment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/moloco/sdk/internal/ortb/model/q;->a:I

    .line 6
    iput-object p2, p0, Lcom/moloco/sdk/internal/ortb/model/q;->b:Lcom/moloco/sdk/internal/ortb/model/l;

    .line 7
    iput-object p3, p0, Lcom/moloco/sdk/internal/ortb/model/q;->c:Lcom/moloco/sdk/internal/ortb/model/v;

    .line 8
    iput-wide p4, p0, Lcom/moloco/sdk/internal/ortb/model/q;->d:J

    return-void
.end method

.method public synthetic constructor <init>(ILcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/moloco/sdk/internal/ortb/model/q;-><init>(ILcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;J)V

    return-void
.end method

.method public synthetic constructor <init>(ILms/n;Lcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;Landroidx/compose/ui/graphics/Color;Lvt/r2;)V
    .locals 1

    and-int/lit8 p6, p1, 0xf

    const/16 v0, 0xf

    if-eq v0, p6, :cond_0

    .line 3
    sget-object p6, Lcom/moloco/sdk/internal/ortb/model/q$a;->a:Lcom/moloco/sdk/internal/ortb/model/q$a;

    invoke-virtual {p6}, Lcom/moloco/sdk/internal/ortb/model/q$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p6

    invoke-static {p1, v0, p6}, Lvt/c2;->a(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lms/n;->g()I

    move-result p1

    iput p1, p0, Lcom/moloco/sdk/internal/ortb/model/q;->a:I

    iput-object p3, p0, Lcom/moloco/sdk/internal/ortb/model/q;->b:Lcom/moloco/sdk/internal/ortb/model/l;

    iput-object p4, p0, Lcom/moloco/sdk/internal/ortb/model/q;->c:Lcom/moloco/sdk/internal/ortb/model/v;

    invoke-virtual {p5}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/moloco/sdk/internal/ortb/model/q;->d:J

    return-void
.end method

.method public synthetic constructor <init>(ILms/n;Lcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;Landroidx/compose/ui/graphics/Color;Lvt/r2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p6}, Lcom/moloco/sdk/internal/ortb/model/q;-><init>(ILms/n;Lcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;Landroidx/compose/ui/graphics/Color;Lvt/r2;)V

    return-void
.end method

.method public static final synthetic b(Lcom/moloco/sdk/internal/ortb/model/q;Lkotlinx/serialization/encoding/d;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 1
    sget-object v0, Lvt/j3;->a:Lvt/j3;

    .line 2
    .line 3
    iget v1, p0, Lcom/moloco/sdk/internal/ortb/model/q;->a:I

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
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/l$a;->a:Lcom/moloco/sdk/internal/ortb/model/l$a;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/q;->b:Lcom/moloco/sdk/internal/ortb/model/l;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/d;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/v$a;->a:Lcom/moloco/sdk/internal/ortb/model/v$a;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/q;->c:Lcom/moloco/sdk/internal/ortb/model/v;

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/d;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/h;->a:Lcom/moloco/sdk/internal/ortb/model/h;

    .line 30
    .line 31
    iget-wide v1, p0, Lcom/moloco/sdk/internal/ortb/model/q;->d:J

    .line 32
    .line 33
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const/4 v1, 0x3

    .line 38
    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/d;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/moloco/sdk/internal/ortb/model/q;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final c()Lcom/moloco/sdk/internal/ortb/model/l;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/q;->b:Lcom/moloco/sdk/internal/ortb/model/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/internal/ortb/model/q;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public final e()Lcom/moloco/sdk/internal/ortb/model/v;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/q;->c:Lcom/moloco/sdk/internal/ortb/model/v;

    .line 2
    .line 3
    return-object v0
.end method
