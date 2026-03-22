.class public final Lcom/moloco/sdk/internal/publisher/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/publisher/x$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAdCreatorConfiguration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdCreatorConfiguration.kt\ncom/moloco/sdk/internal/publisher/AdCreatorConfiguration\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,30:1\n9326#2,2:31\n9476#2,4:33\n*S KotlinDebug\n*F\n+ 1 AdCreatorConfiguration.kt\ncom/moloco/sdk/internal/publisher/AdCreatorConfiguration\n*L\n21#1:31,2\n21#1:33,4\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/moloco/sdk/internal/publisher/s;",
            "Lkotlin/time/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/moloco/sdk/internal/publisher/s;",
            "Lkotlin/time/b;",
            ">;J)V"
        }
    .end annotation

    const-string v0, "adTimeouts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/x;->a:Ljava/util/Map;

    .line 4
    iput-wide p2, p0, Lcom/moloco/sdk/internal/publisher/x;->b:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x5

    if-eqz p5, :cond_1

    .line 5
    invoke-static {}, Lcom/moloco/sdk/internal/publisher/s;->values()[Lcom/moloco/sdk/internal/publisher/s;

    move-result-object p1

    .line 6
    new-instance p5, Ljava/util/LinkedHashMap;

    array-length v1, p1

    invoke-static {v1}, Lkotlin/collections/p0;->e(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/e;->e(II)I

    move-result v1

    invoke-direct {p5, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 7
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 8
    sget-object v4, Lcom/moloco/sdk/internal/publisher/x$a;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 9
    :pswitch_0
    sget-object v4, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    const/16 v5, 0xf

    invoke-static {v5, v4}, Lkotlin/time/c;->s(ILkotlin/time/DurationUnit;)J

    move-result-wide v4

    goto :goto_1

    .line 10
    :pswitch_1
    sget-object v4, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v4}, Lkotlin/time/c;->s(ILkotlin/time/DurationUnit;)J

    move-result-wide v4

    .line 11
    :goto_1
    invoke-static {v4, v5}, Lkotlin/time/b;->g(J)Lkotlin/time/b;

    move-result-object v4

    .line 12
    invoke-interface {p5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object p1, p5

    :cond_1
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_2

    .line 13
    sget-object p2, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, p2}, Lkotlin/time/c;->s(ILkotlin/time/DurationUnit;)J

    move-result-wide p2

    :cond_2
    const/4 p4, 0x0

    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/moloco/sdk/internal/publisher/x;-><init>(Ljava/util/Map;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(Ljava/util/Map;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/moloco/sdk/internal/publisher/x;-><init>(Ljava/util/Map;J)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/moloco/sdk/internal/publisher/s;",
            "Lkotlin/time/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/x;->a:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/moloco/sdk/internal/publisher/x;->b:J

    .line 2
    .line 3
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
    instance-of v1, p1, Lcom/moloco/sdk/internal/publisher/x;

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
    check-cast p1, Lcom/moloco/sdk/internal/publisher/x;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/x;->a:Ljava/util/Map;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/moloco/sdk/internal/publisher/x;->a:Ljava/util/Map;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-wide v3, p0, Lcom/moloco/sdk/internal/publisher/x;->b:J

    .line 25
    .line 26
    iget-wide v5, p1, Lcom/moloco/sdk/internal/publisher/x;->b:J

    .line 27
    .line 28
    invoke-static {v3, v4, v5, v6}, Lkotlin/time/b;->l(JJ)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/x;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-wide v1, p0, Lcom/moloco/sdk/internal/publisher/x;->b:J

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/time/b;->y(J)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
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
    const-string v1, "AdCreatorConfiguration(adTimeouts="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/x;->a:Ljava/util/Map;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", defaultTimeoutDuration="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-wide v1, p0, Lcom/moloco/sdk/internal/publisher/x;->b:J

    .line 22
    .line 23
    invoke-static {v1, v2}, Lkotlin/time/b;->K(J)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 v1, 0x29

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method
