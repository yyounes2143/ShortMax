.class public final Lcom/moloco/sdk/internal/ortb/model/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/ortb/model/c$a;,
        Lcom/moloco/sdk/internal/ortb/model/c$b;
    }
.end annotation

.annotation runtime Lst/k;
.end annotation


# static fields
.field public static final Companion:Lcom/moloco/sdk/internal/ortb/model/c$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:F

.field public final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final d:Lcom/moloco/sdk/internal/ortb/model/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/ortb/model/c$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/ortb/model/c$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/ortb/model/c;->Companion:Lcom/moloco/sdk/internal/ortb/model/c$b;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;FLjava/lang/String;Lcom/moloco/sdk/internal/ortb/model/d;Lvt/r2;)V
    .locals 1

    and-int/lit8 p6, p1, 0xb

    const/16 v0, 0xb

    if-eq v0, p6, :cond_0

    .line 1
    sget-object p6, Lcom/moloco/sdk/internal/ortb/model/c$a;->a:Lcom/moloco/sdk/internal/ortb/model/c$a;

    invoke-virtual {p6}, Lcom/moloco/sdk/internal/ortb/model/c$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p6

    invoke-static {p1, v0, p6}, Lvt/c2;->a(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/moloco/sdk/internal/ortb/model/c;->a:Ljava/lang/String;

    iput p3, p0, Lcom/moloco/sdk/internal/ortb/model/c;->b:F

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/moloco/sdk/internal/ortb/model/c;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p4, p0, Lcom/moloco/sdk/internal/ortb/model/c;->c:Ljava/lang/String;

    :goto_0
    iput-object p5, p0, Lcom/moloco/sdk/internal/ortb/model/c;->d:Lcom/moloco/sdk/internal/ortb/model/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FLjava/lang/String;Lcom/moloco/sdk/internal/ortb/model/d;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/moloco/sdk/internal/ortb/model/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "adm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ext"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/internal/ortb/model/c;->a:Ljava/lang/String;

    .line 5
    iput p2, p0, Lcom/moloco/sdk/internal/ortb/model/c;->b:F

    .line 6
    iput-object p3, p0, Lcom/moloco/sdk/internal/ortb/model/c;->c:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/moloco/sdk/internal/ortb/model/c;->d:Lcom/moloco/sdk/internal/ortb/model/d;

    return-void
.end method

.method public static final synthetic b(Lcom/moloco/sdk/internal/ortb/model/c;Lkotlinx/serialization/encoding/d;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/c;->a:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/d;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget v0, p0, Lcom/moloco/sdk/internal/ortb/model/c;->b:F

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/d;->encodeFloatElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IF)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/c;->c:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    :goto_0
    sget-object v1, Lvt/w2;->a:Lvt/w2;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/moloco/sdk/internal/ortb/model/c;->c:Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/d$a;->a:Lcom/moloco/sdk/internal/ortb/model/d$a;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/moloco/sdk/internal/ortb/model/c;->d:Lcom/moloco/sdk/internal/ortb/model/d;

    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/d;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/c;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/c;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lcom/moloco/sdk/internal/ortb/model/d;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/c;->d:Lcom/moloco/sdk/internal/ortb/model/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/internal/ortb/model/c;->b:F

    .line 2
    .line 3
    return v0
.end method
