.class public final Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;
.super Ljava/lang/Object;
.source "ClaimSubsBonusResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final STATUS_CLAIMED:I = 0x2

.field private static final STATUS_CLAIM_SUCCESS:I = 0x1


# instance fields
.field private bonus:I

.field private final receiveDay:I

.field private final status:I

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->Companion:Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->bonus:I

    .line 5
    .line 6
    iput p2, p0, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->status:I

    .line 7
    .line 8
    iput p3, p0, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->receiveDay:I

    .line 9
    .line 10
    iput p4, p0, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->type:I

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;IIIIILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->bonus:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    iget p2, p0, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->status:I

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 14
    .line 15
    if-eqz p6, :cond_2

    .line 16
    .line 17
    iget p3, p0, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->receiveDay:I

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 20
    .line 21
    if-eqz p5, :cond_3

    .line 22
    .line 23
    iget p4, p0, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->type:I

    .line 24
    .line 25
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->copy(IIII)Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->bonus:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->status:I

    .line 2
    .line 3
    return v0
.end method

.method public final component3()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->receiveDay:I

    .line 2
    .line 3
    return v0
.end method

.method public final component4()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public final copy(IIII)Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;-><init>(IIII)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
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
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;

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
    check-cast p1, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;

    .line 12
    .line 13
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->bonus:I

    .line 14
    .line 15
    iget v3, p1, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->bonus:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->status:I

    .line 21
    .line 22
    iget v3, p1, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->status:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->receiveDay:I

    .line 28
    .line 29
    iget v3, p1, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->receiveDay:I

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->type:I

    .line 35
    .line 36
    iget p1, p1, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->type:I

    .line 37
    .line 38
    if-eq v1, p1, :cond_5

    .line 39
    .line 40
    return v2

    .line 41
    :cond_5
    return v0
.end method

.method public final getBonus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->bonus:I

    .line 2
    .line 3
    return v0
.end method

.method public final getReceiveDay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->receiveDay:I

    .line 2
    .line 3
    return v0
.end method

.method public final getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->status:I

    .line 2
    .line 3
    return v0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->bonus:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->status:I

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->receiveDay:I

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->type:I

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    return v0
.end method

.method public final isClaimed()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->status:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public final setBonus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->bonus:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
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
    const-string v1, "ClaimSubsBonusResult(bonus="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->bonus:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", status="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->status:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", receiveDay="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->receiveDay:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", type="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/ClaimSubsBonusResult;->type:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x29

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
