.class public final Lcom/google/firebase/sessions/k;
.super Ljava/lang/Object;
.source "TimeProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/k$$a;,
        Lcom/google/firebase/sessions/k$$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lst/k;
.end annotation


# static fields
.field public static final Companion:Lcom/google/firebase/sessions/k$$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:J

.field private final b:J

.field private final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/sessions/k$$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/k$$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/sessions/k;->Companion:Lcom/google/firebase/sessions/k$$b;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(IJJJLvt/r2;)V
    .locals 1

    and-int/lit8 p8, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p8, :cond_0

    .line 1
    sget-object p8, Lcom/google/firebase/sessions/k$$a;->a:Lcom/google/firebase/sessions/k$$a;

    invoke-virtual {p8}, Lcom/google/firebase/sessions/k$$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p8

    invoke-static {p1, v0, p8}, Lvt/c2;->a(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/google/firebase/sessions/k;->a:J

    and-int/lit8 p8, p1, 0x2

    const/16 v0, 0x3e8

    if-nez p8, :cond_1

    int-to-long p4, v0

    mul-long/2addr p4, p2

    :cond_1
    iput-wide p4, p0, Lcom/google/firebase/sessions/k;->b:J

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_2

    int-to-long p4, v0

    .line 2
    div-long/2addr p2, p4

    .line 3
    iput-wide p2, p0, Lcom/google/firebase/sessions/k;->c:J

    goto :goto_0

    :cond_2
    iput-wide p6, p0, Lcom/google/firebase/sessions/k;->c:J

    :goto_0
    return-void
.end method

.method public constructor <init>(J)V
    .locals 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/firebase/sessions/k;->a:J

    const/16 v0, 0x3e8

    int-to-long v0, v0

    mul-long v2, p1, v0

    .line 5
    iput-wide v2, p0, Lcom/google/firebase/sessions/k;->b:J

    .line 6
    div-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/firebase/sessions/k;->c:J

    return-void
.end method

.method public static final synthetic d(Lcom/google/firebase/sessions/k;Lkotlinx/serialization/encoding/d;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 9

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/sessions/k;->a:J

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/d;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

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
    const/16 v2, 0x3e8

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-wide v3, p0, Lcom/google/firebase/sessions/k;->b:J

    .line 18
    .line 19
    iget-wide v5, p0, Lcom/google/firebase/sessions/k;->a:J

    .line 20
    .line 21
    int-to-long v7, v2

    .line 22
    mul-long/2addr v5, v7

    .line 23
    cmp-long v1, v3, v5

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    :goto_0
    iget-wide v3, p0, Lcom/google/firebase/sessions/k;->b:J

    .line 28
    .line 29
    invoke-interface {p1, p2, v0, v3, v4}, Lkotlinx/serialization/encoding/d;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 30
    .line 31
    .line 32
    :cond_1
    const/4 v0, 0x2

    .line 33
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    iget-wide v3, p0, Lcom/google/firebase/sessions/k;->c:J

    .line 41
    .line 42
    iget-wide v5, p0, Lcom/google/firebase/sessions/k;->a:J

    .line 43
    .line 44
    int-to-long v1, v2

    .line 45
    div-long/2addr v5, v1

    .line 46
    cmp-long v1, v3, v5

    .line 47
    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    :goto_1
    iget-wide v1, p0, Lcom/google/firebase/sessions/k;->c:J

    .line 51
    .line 52
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 53
    .line 54
    .line 55
    :cond_3
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/sessions/k;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/sessions/k;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final c(Lcom/google/firebase/sessions/k;)J
    .locals 4
    .param p1    # Lcom/google/firebase/sessions/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "time"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lkotlin/time/b;->b:Lkotlin/time/b$a;

    .line 7
    .line 8
    iget-wide v0, p0, Lcom/google/firebase/sessions/k;->a:J

    .line 9
    .line 10
    iget-wide v2, p1, Lcom/google/firebase/sessions/k;->a:J

    .line 11
    .line 12
    sub-long/2addr v0, v2

    .line 13
    sget-object p1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 14
    .line 15
    invoke-static {v0, v1, p1}, Lkotlin/time/c;->t(JLkotlin/time/DurationUnit;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/sessions/k;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/google/firebase/sessions/k;

    .line 12
    .line 13
    iget-wide v3, p0, Lcom/google/firebase/sessions/k;->a:J

    .line 14
    .line 15
    iget-wide v5, p1, Lcom/google/firebase/sessions/k;->a:J

    .line 16
    .line 17
    cmp-long p1, v3, v5

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/sessions/k;->a:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Time(ms="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-wide v1, p0, Lcom/google/firebase/sessions/k;->a:J

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x29

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
