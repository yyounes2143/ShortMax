.class public final Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;
.super Ljava/lang/Object;
.source "RetainConfig.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private commonStyleTemplate:I

.field private final isNewUser:Z

.field private retainAdUnlockIsShow:Z

.field private retainFreeGoldCount:I

.field private retainPageOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private retainSkuCount:I

.field private retainSubscriptionCount:I


# direct methods
.method public constructor <init>(ZIZIILjava/util/List;I)V
    .locals 0
    .param p6    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZII",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->isNewUser:Z

    .line 5
    .line 6
    iput p2, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainSubscriptionCount:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainAdUnlockIsShow:Z

    .line 9
    .line 10
    iput p4, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainFreeGoldCount:I

    .line 11
    .line 12
    iput p5, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainSkuCount:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainPageOrder:Ljava/util/List;

    .line 15
    .line 16
    iput p7, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->commonStyleTemplate:I

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;ZIZIILjava/util/List;IILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;
    .locals 5

    .line 1
    and-int/lit8 p9, p8, 0x1

    .line 2
    .line 3
    if-eqz p9, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->isNewUser:Z

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p9, p8, 0x2

    .line 8
    .line 9
    if-eqz p9, :cond_1

    .line 10
    .line 11
    iget p2, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainSubscriptionCount:I

    .line 12
    .line 13
    :cond_1
    move p9, p2

    .line 14
    and-int/lit8 p2, p8, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget-boolean p3, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainAdUnlockIsShow:Z

    .line 19
    .line 20
    :cond_2
    move v0, p3

    .line 21
    and-int/lit8 p2, p8, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget p4, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainFreeGoldCount:I

    .line 26
    .line 27
    :cond_3
    move v1, p4

    .line 28
    and-int/lit8 p2, p8, 0x10

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    iget p5, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainSkuCount:I

    .line 33
    .line 34
    :cond_4
    move v2, p5

    .line 35
    and-int/lit8 p2, p8, 0x20

    .line 36
    .line 37
    if-eqz p2, :cond_5

    .line 38
    .line 39
    iget-object p6, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainPageOrder:Ljava/util/List;

    .line 40
    .line 41
    :cond_5
    move-object v3, p6

    .line 42
    and-int/lit8 p2, p8, 0x40

    .line 43
    .line 44
    if-eqz p2, :cond_6

    .line 45
    .line 46
    iget p7, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->commonStyleTemplate:I

    .line 47
    .line 48
    :cond_6
    move v4, p7

    .line 49
    move-object p2, p0

    .line 50
    move p3, p1

    .line 51
    move p4, p9

    .line 52
    move p5, v0

    .line 53
    move p6, v1

    .line 54
    move p7, v2

    .line 55
    move-object p8, v3

    .line 56
    move p9, v4

    .line 57
    invoke-virtual/range {p2 .. p9}, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->copy(ZIZIILjava/util/List;I)Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->isNewUser:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainSubscriptionCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final component3()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainAdUnlockIsShow:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component4()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainFreeGoldCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final component5()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainSkuCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final component6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainPageOrder:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->commonStyleTemplate:I

    .line 2
    .line 3
    return v0
.end method

.method public final copy(ZIZIILjava/util/List;I)Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;
    .locals 9
    .param p6    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZII",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v8, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;

    .line 2
    .line 3
    move-object v0, v8

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move v4, p4

    .line 8
    move v5, p5

    .line 9
    move-object v6, p6

    .line 10
    move/from16 v7, p7

    .line 11
    .line 12
    invoke-direct/range {v0 .. v7}, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;-><init>(ZIZIILjava/util/List;I)V

    .line 13
    .line 14
    .line 15
    return-object v8
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
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;

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
    check-cast p1, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->isNewUser:Z

    .line 14
    .line 15
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->isNewUser:Z

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainSubscriptionCount:I

    .line 21
    .line 22
    iget v3, p1, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainSubscriptionCount:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainAdUnlockIsShow:Z

    .line 28
    .line 29
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainAdUnlockIsShow:Z

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget v1, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainFreeGoldCount:I

    .line 35
    .line 36
    iget v3, p1, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainFreeGoldCount:I

    .line 37
    .line 38
    if-eq v1, v3, :cond_5

    .line 39
    .line 40
    return v2

    .line 41
    :cond_5
    iget v1, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainSkuCount:I

    .line 42
    .line 43
    iget v3, p1, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainSkuCount:I

    .line 44
    .line 45
    if-eq v1, v3, :cond_6

    .line 46
    .line 47
    return v2

    .line 48
    :cond_6
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainPageOrder:Ljava/util/List;

    .line 49
    .line 50
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainPageOrder:Ljava/util/List;

    .line 51
    .line 52
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_7

    .line 57
    .line 58
    return v2

    .line 59
    :cond_7
    iget v1, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->commonStyleTemplate:I

    .line 60
    .line 61
    iget p1, p1, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->commonStyleTemplate:I

    .line 62
    .line 63
    if-eq v1, p1, :cond_8

    .line 64
    .line 65
    return v2

    .line 66
    :cond_8
    return v0
.end method

.method public final getCommonStyleTemplate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->commonStyleTemplate:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRetainAdUnlockIsShow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainAdUnlockIsShow:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getRetainFreeGoldCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainFreeGoldCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRetainPageOrder()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainPageOrder:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRetainSkuCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainSkuCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRetainSubscriptionCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainSubscriptionCount:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->isNewUser:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainSubscriptionCount:I

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
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainAdUnlockIsShow:Z

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

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
    iget v1, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainFreeGoldCount:I

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
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget v1, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainSkuCount:I

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainPageOrder:Ljava/util/List;

    .line 46
    .line 47
    if-nez v1, :cond_0

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    :goto_0
    add-int/2addr v0, v1

    .line 56
    mul-int/lit8 v0, v0, 0x1f

    .line 57
    .line 58
    iget v1, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->commonStyleTemplate:I

    .line 59
    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    add-int/2addr v0, v1

    .line 65
    return v0
.end method

.method public final isNewUser()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->isNewUser:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setCommonStyleTemplate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->commonStyleTemplate:I

    .line 2
    .line 3
    return-void
.end method

.method public final setRetainAdUnlockIsShow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainAdUnlockIsShow:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setRetainFreeGoldCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainFreeGoldCount:I

    .line 2
    .line 3
    return-void
.end method

.method public final setRetainPageOrder(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainPageOrder:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setRetainSkuCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainSkuCount:I

    .line 2
    .line 3
    return-void
.end method

.method public final setRetainSubscriptionCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainSubscriptionCount:I

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
    const-string v1, "RetainConfig(isNewUser="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->isNewUser:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", retainSubscriptionCount="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainSubscriptionCount:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", retainAdUnlockIsShow="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainAdUnlockIsShow:Z

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", retainFreeGoldCount="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainFreeGoldCount:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", retainSkuCount="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainSkuCount:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", retainPageOrder="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->retainPageOrder:Ljava/util/List;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", commonStyleTemplate="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v1, p0, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->commonStyleTemplate:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const/16 v1, 0x29

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    return-object v0
.end method
