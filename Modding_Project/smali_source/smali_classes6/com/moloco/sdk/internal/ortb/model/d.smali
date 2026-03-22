.class public final Lcom/moloco/sdk/internal/ortb/model/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/ortb/model/d$a;,
        Lcom/moloco/sdk/internal/ortb/model/d$b;
    }
.end annotation

.annotation runtime Lst/k;
.end annotation


# static fields
.field public static final Companion:Lcom/moloco/sdk/internal/ortb/model/d$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lcom/moloco/sdk/internal/ortb/model/p;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Lcom/moloco/sdk/internal/ortb/model/n;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final d:Lcom/moloco/sdk/internal/ortb/model/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:Lcom/moloco/sdk/internal/ortb/model/m;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/ortb/model/d$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/ortb/model/d$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/ortb/model/d;->Companion:Lcom/moloco/sdk/internal/ortb/model/d$b;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/moloco/sdk/internal/ortb/model/d;-><init>(Lcom/moloco/sdk/internal/ortb/model/p;Ljava/lang/String;Lcom/moloco/sdk/internal/ortb/model/n;Lcom/moloco/sdk/internal/ortb/model/r;Lcom/moloco/sdk/internal/ortb/model/m;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILcom/moloco/sdk/internal/ortb/model/p;Ljava/lang/String;Lcom/moloco/sdk/internal/ortb/model/n;Lcom/moloco/sdk/internal/ortb/model/r;Lcom/moloco/sdk/internal/ortb/model/m;Lvt/r2;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p7, p1, 0x1

    const/4 v0, 0x0

    if-nez p7, :cond_0

    .line 3
    iput-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/d;->a:Lcom/moloco/sdk/internal/ortb/model/p;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/moloco/sdk/internal/ortb/model/d;->a:Lcom/moloco/sdk/internal/ortb/model/p;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    .line 4
    iput-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/d;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/moloco/sdk/internal/ortb/model/d;->b:Ljava/lang/String;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    .line 5
    iput-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/d;->c:Lcom/moloco/sdk/internal/ortb/model/n;

    goto :goto_2

    :cond_2
    iput-object p4, p0, Lcom/moloco/sdk/internal/ortb/model/d;->c:Lcom/moloco/sdk/internal/ortb/model/n;

    :goto_2
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    .line 6
    iput-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/d;->d:Lcom/moloco/sdk/internal/ortb/model/r;

    goto :goto_3

    :cond_3
    iput-object p5, p0, Lcom/moloco/sdk/internal/ortb/model/d;->d:Lcom/moloco/sdk/internal/ortb/model/r;

    :goto_3
    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_4

    .line 7
    iput-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/d;->e:Lcom/moloco/sdk/internal/ortb/model/m;

    goto :goto_4

    :cond_4
    iput-object p6, p0, Lcom/moloco/sdk/internal/ortb/model/d;->e:Lcom/moloco/sdk/internal/ortb/model/m;

    :goto_4
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/internal/ortb/model/p;Ljava/lang/String;Lcom/moloco/sdk/internal/ortb/model/n;Lcom/moloco/sdk/internal/ortb/model/r;Lcom/moloco/sdk/internal/ortb/model/m;)V
    .locals 0
    .param p1    # Lcom/moloco/sdk/internal/ortb/model/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/internal/ortb/model/n;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/moloco/sdk/internal/ortb/model/r;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/moloco/sdk/internal/ortb/model/m;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/moloco/sdk/internal/ortb/model/d;->a:Lcom/moloco/sdk/internal/ortb/model/p;

    .line 10
    iput-object p2, p0, Lcom/moloco/sdk/internal/ortb/model/d;->b:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/moloco/sdk/internal/ortb/model/d;->c:Lcom/moloco/sdk/internal/ortb/model/n;

    .line 12
    iput-object p4, p0, Lcom/moloco/sdk/internal/ortb/model/d;->d:Lcom/moloco/sdk/internal/ortb/model/r;

    .line 13
    iput-object p5, p0, Lcom/moloco/sdk/internal/ortb/model/d;->e:Lcom/moloco/sdk/internal/ortb/model/m;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/moloco/sdk/internal/ortb/model/p;Ljava/lang/String;Lcom/moloco/sdk/internal/ortb/model/n;Lcom/moloco/sdk/internal/ortb/model/r;Lcom/moloco/sdk/internal/ortb/model/m;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p7, v0

    goto :goto_0

    :cond_0
    move-object p7, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, p3

    :goto_2
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    move-object v3, v0

    goto :goto_3

    :cond_3
    move-object v3, p4

    :goto_3
    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    move-object p6, v0

    goto :goto_4

    :cond_4
    move-object p6, p5

    :goto_4
    move-object p1, p0

    move-object p2, p7

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    .line 14
    invoke-direct/range {p1 .. p6}, Lcom/moloco/sdk/internal/ortb/model/d;-><init>(Lcom/moloco/sdk/internal/ortb/model/p;Ljava/lang/String;Lcom/moloco/sdk/internal/ortb/model/n;Lcom/moloco/sdk/internal/ortb/model/r;Lcom/moloco/sdk/internal/ortb/model/m;)V

    return-void
.end method

.method public static final synthetic b(Lcom/moloco/sdk/internal/ortb/model/d;Lkotlinx/serialization/encoding/d;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
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
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/d;->a:Lcom/moloco/sdk/internal/ortb/model/p;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    :goto_0
    sget-object v1, Lcom/moloco/sdk/internal/ortb/model/p$a;->a:Lcom/moloco/sdk/internal/ortb/model/p$a;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/moloco/sdk/internal/ortb/model/d;->a:Lcom/moloco/sdk/internal/ortb/model/p;

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
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/d;->b:Ljava/lang/String;

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    :goto_1
    sget-object v1, Lvt/w2;->a:Lvt/w2;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/moloco/sdk/internal/ortb/model/d;->b:Ljava/lang/String;

    .line 35
    .line 36
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_3
    const/4 v0, 0x2

    .line 40
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_4
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/d;->c:Lcom/moloco/sdk/internal/ortb/model/n;

    .line 48
    .line 49
    if-eqz v1, :cond_5

    .line 50
    .line 51
    :goto_2
    sget-object v1, Lcom/moloco/sdk/internal/ortb/model/n$a;->a:Lcom/moloco/sdk/internal/ortb/model/n$a;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/moloco/sdk/internal/ortb/model/d;->c:Lcom/moloco/sdk/internal/ortb/model/n;

    .line 54
    .line 55
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_5
    const/4 v0, 0x3

    .line 59
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_6

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_6
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/d;->d:Lcom/moloco/sdk/internal/ortb/model/r;

    .line 67
    .line 68
    if-eqz v1, :cond_7

    .line 69
    .line 70
    :goto_3
    sget-object v1, Lcom/moloco/sdk/internal/ortb/model/r$a;->a:Lcom/moloco/sdk/internal/ortb/model/r$a;

    .line 71
    .line 72
    iget-object v2, p0, Lcom/moloco/sdk/internal/ortb/model/d;->d:Lcom/moloco/sdk/internal/ortb/model/r;

    .line 73
    .line 74
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_7
    const/4 v0, 0x4

    .line 78
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_8

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_8
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/model/d;->e:Lcom/moloco/sdk/internal/ortb/model/m;

    .line 86
    .line 87
    if-eqz v1, :cond_9

    .line 88
    .line 89
    :goto_4
    sget-object v1, Lcom/moloco/sdk/internal/ortb/model/m$a;->a:Lcom/moloco/sdk/internal/ortb/model/m$a;

    .line 90
    .line 91
    iget-object p0, p0, Lcom/moloco/sdk/internal/ortb/model/d;->e:Lcom/moloco/sdk/internal/ortb/model/m;

    .line 92
    .line 93
    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_9
    return-void
.end method


# virtual methods
.method public final a()Lcom/moloco/sdk/internal/ortb/model/n;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/d;->c:Lcom/moloco/sdk/internal/ortb/model/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Lcom/moloco/sdk/internal/ortb/model/m;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/d;->e:Lcom/moloco/sdk/internal/ortb/model/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/d;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Lcom/moloco/sdk/internal/ortb/model/p;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/d;->a:Lcom/moloco/sdk/internal/ortb/model/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Lcom/moloco/sdk/internal/ortb/model/r;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/model/d;->d:Lcom/moloco/sdk/internal/ortb/model/r;

    .line 2
    .line 3
    return-object v0
.end method
