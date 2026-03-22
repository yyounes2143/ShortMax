.class public final Lcom/moloco/sdk/internal/ortb/model/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/ortb/model/a$a;,
        Lcom/moloco/sdk/internal/ortb/model/a$b;
    }
.end annotation

.annotation runtime Lst/k;
.end annotation


# static fields
.field public static final Companion:Lcom/moloco/sdk/internal/ortb/model/a$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/ortb/model/a$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/ortb/model/a$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/ortb/model/a;->Companion:Lcom/moloco/sdk/internal/ortb/model/a$b;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(IZZLjava/lang/String;Lvt/r2;)V
    .locals 1

    and-int/lit8 p5, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p5, :cond_0

    .line 1
    sget-object p5, Lcom/moloco/sdk/internal/ortb/model/a$a;->a:Lcom/moloco/sdk/internal/ortb/model/a$a;

    invoke-virtual {p5}, Lcom/moloco/sdk/internal/ortb/model/a$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p5

    invoke-static {p1, v0, p5}, Lvt/c2;->a(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/moloco/sdk/internal/ortb/model/a;->a:Z

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    .line 2
    iput-boolean v0, p0, Lcom/moloco/sdk/internal/ortb/model/a;->b:Z

    goto :goto_0

    :cond_1
    iput-boolean p3, p0, Lcom/moloco/sdk/internal/ortb/model/a;->b:Z

    :goto_0
    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/moloco/sdk/internal/ortb/model/a;->c:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object p4, p0, Lcom/moloco/sdk/internal/ortb/model/a;->c:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-boolean p1, p0, Lcom/moloco/sdk/internal/ortb/model/a;->a:Z

    .line 6
    iput-boolean p2, p0, Lcom/moloco/sdk/internal/ortb/model/a;->b:Z

    .line 7
    iput-object p3, p0, Lcom/moloco/sdk/internal/ortb/model/a;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 8
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/moloco/sdk/internal/ortb/model/a;-><init>(ZZLjava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Lcom/moloco/sdk/internal/ortb/model/a;Lkotlinx/serialization/encoding/d;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/moloco/sdk/internal/ortb/model/a;->a:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/d;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

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
    iget-boolean v1, p0, Lcom/moloco/sdk/internal/ortb/model/a;->b:Z

    .line 16
    .line 17
    if-eq v1, v0, :cond_1

    .line 18
    .line 19
    :goto_0
    iget-boolean v1, p0, Lcom/moloco/sdk/internal/ortb/model/a;->b:Z

    .line 20
    .line 21
    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/d;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 22
    .line 23
    .line 24
    :cond_1
    const/4 v0, 0x2

    .line 25
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/a;->c:Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    :goto_1
    sget-object v1, Lvt/w2;->a:Lvt/w2;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/moloco/sdk/internal/ortb/model/a;->c:Ljava/lang/String;

    .line 39
    .line 40
    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_3
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/moloco/sdk/internal/ortb/model/a;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/a;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/moloco/sdk/internal/ortb/model/a;->b:Z

    .line 2
    .line 3
    return v0
.end method
