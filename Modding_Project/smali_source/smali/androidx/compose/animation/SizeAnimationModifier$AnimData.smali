.class public final Landroidx/compose/animation/SizeAnimationModifier$AnimData;
.super Ljava/lang/Object;
.source "AnimationModifier.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/SizeAnimationModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnimData"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final anim:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private startSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>(Landroidx/compose/animation/core/Animatable;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Animatable<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;J)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/compose/animation/SizeAnimationModifier$AnimData;->anim:Landroidx/compose/animation/core/Animatable;

    .line 4
    iput-wide p2, p0, Landroidx/compose/animation/SizeAnimationModifier$AnimData;->startSize:J

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/animation/core/Animatable;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/animation/SizeAnimationModifier$AnimData;-><init>(Landroidx/compose/animation/core/Animatable;J)V

    return-void
.end method

.method public static synthetic copy-O0kMr_c$default(Landroidx/compose/animation/SizeAnimationModifier$AnimData;Landroidx/compose/animation/core/Animatable;JILjava/lang/Object;)Landroidx/compose/animation/SizeAnimationModifier$AnimData;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/compose/animation/SizeAnimationModifier$AnimData;->anim:Landroidx/compose/animation/core/Animatable;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x2

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    iget-wide p2, p0, Landroidx/compose/animation/SizeAnimationModifier$AnimData;->startSize:J

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/animation/SizeAnimationModifier$AnimData;->copy-O0kMr_c(Landroidx/compose/animation/core/Animatable;J)Landroidx/compose/animation/SizeAnimationModifier$AnimData;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final component1()Landroidx/compose/animation/core/Animatable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/Animatable<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/SizeAnimationModifier$AnimData;->anim:Landroidx/compose/animation/core/Animatable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2-YbymL2g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/animation/SizeAnimationModifier$AnimData;->startSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final copy-O0kMr_c(Landroidx/compose/animation/core/Animatable;J)Landroidx/compose/animation/SizeAnimationModifier$AnimData;
    .locals 2
    .param p1    # Landroidx/compose/animation/core/Animatable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Animatable<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;J)",
            "Landroidx/compose/animation/SizeAnimationModifier$AnimData;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "anim"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/compose/animation/SizeAnimationModifier$AnimData;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p1, p2, p3, v1}, Landroidx/compose/animation/SizeAnimationModifier$AnimData;-><init>(Landroidx/compose/animation/core/Animatable;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    .line 11
    .line 12
    return-object v0
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
    instance-of v1, p1, Landroidx/compose/animation/SizeAnimationModifier$AnimData;

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
    check-cast p1, Landroidx/compose/animation/SizeAnimationModifier$AnimData;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/animation/SizeAnimationModifier$AnimData;->anim:Landroidx/compose/animation/core/Animatable;

    .line 14
    .line 15
    iget-object v3, p1, Landroidx/compose/animation/SizeAnimationModifier$AnimData;->anim:Landroidx/compose/animation/core/Animatable;

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
    iget-wide v3, p0, Landroidx/compose/animation/SizeAnimationModifier$AnimData;->startSize:J

    .line 25
    .line 26
    iget-wide v5, p1, Landroidx/compose/animation/SizeAnimationModifier$AnimData;->startSize:J

    .line 27
    .line 28
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

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

.method public final getAnim()Landroidx/compose/animation/core/Animatable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/Animatable<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/SizeAnimationModifier$AnimData;->anim:Landroidx/compose/animation/core/Animatable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStartSize-YbymL2g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/animation/SizeAnimationModifier$AnimData;->startSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/SizeAnimationModifier$AnimData;->anim:Landroidx/compose/animation/core/Animatable;

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
    iget-wide v1, p0, Landroidx/compose/animation/SizeAnimationModifier$AnimData;->startSize:J

    .line 10
    .line 11
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->hashCode-impl(J)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public final setStartSize-ozmzZPI(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/compose/animation/SizeAnimationModifier$AnimData;->startSize:J

    .line 2
    .line 3
    return-void
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
    const-string v1, "AnimData(anim="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroidx/compose/animation/SizeAnimationModifier$AnimData;->anim:Landroidx/compose/animation/core/Animatable;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", startSize="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-wide v1, p0, Landroidx/compose/animation/SizeAnimationModifier$AnimData;->startSize:J

    .line 22
    .line 23
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->toString-impl(J)Ljava/lang/String;

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
