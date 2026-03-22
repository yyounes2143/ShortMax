.class public final Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;
.super Ljava/lang/Object;
.source "MetaInstallReferrer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final actualTimestamp:J

.field private final installReferrer:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isCT:I


# direct methods
.method public constructor <init>(IJLjava/lang/String;)V
    .locals 1
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "installReferrer"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;->isCT:I

    .line 10
    .line 11
    iput-wide p2, p0, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;->actualTimestamp:J

    .line 12
    .line 13
    iput-object p4, p0, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;->installReferrer:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;IJLjava/lang/String;ILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;->isCT:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    iget-wide p2, p0, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;->actualTimestamp:J

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p5, p5, 0x4

    .line 14
    .line 15
    if-eqz p5, :cond_2

    .line 16
    .line 17
    iget-object p4, p0, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;->installReferrer:Ljava/lang/String;

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;->copy(IJLjava/lang/String;)Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;->isCT:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;->actualTimestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;->installReferrer:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(IJLjava/lang/String;)Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;
    .locals 1
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "installReferrer"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;-><init>(IJLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
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
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;

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
    check-cast p1, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;

    .line 12
    .line 13
    iget v1, p0, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;->isCT:I

    .line 14
    .line 15
    iget v3, p1, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;->isCT:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-wide v3, p0, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;->actualTimestamp:J

    .line 21
    .line 22
    iget-wide v5, p1, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;->actualTimestamp:J

    .line 23
    .line 24
    cmp-long v1, v3, v5

    .line 25
    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    return v2

    .line 29
    :cond_3
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;->installReferrer:Ljava/lang/String;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;->installReferrer:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_4

    .line 38
    .line 39
    return v2

    .line 40
    :cond_4
    return v0
.end method

.method public final getActualTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;->actualTimestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getInstallReferrer()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;->installReferrer:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;->isCT:I

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
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;->actualTimestamp:J

    .line 10
    .line 11
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;->installReferrer:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    return v0
.end method

.method public final isCT()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;->isCT:I

    .line 2
    .line 3
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
    const-string v1, "MetaInstallReferrer(isCT="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;->isCT:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", actualTimestamp="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;->actualTimestamp:J

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", installReferrer="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;->installReferrer:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x29

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
