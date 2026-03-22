.class public final Landroidx/work/impl/constraints/NetworkState;
.super Ljava/lang/Object;
.source "NetworkState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final isConnected:Z

.field private final isMetered:Z

.field private final isNotRoaming:Z

.field private final isValidated:Z


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/work/impl/constraints/NetworkState;->isConnected:Z

    .line 5
    .line 6
    iput-boolean p2, p0, Landroidx/work/impl/constraints/NetworkState;->isValidated:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Landroidx/work/impl/constraints/NetworkState;->isMetered:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Landroidx/work/impl/constraints/NetworkState;->isNotRoaming:Z

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic copy$default(Landroidx/work/impl/constraints/NetworkState;ZZZZILjava/lang/Object;)Landroidx/work/impl/constraints/NetworkState;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, Landroidx/work/impl/constraints/NetworkState;->isConnected:Z

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    iget-boolean p2, p0, Landroidx/work/impl/constraints/NetworkState;->isValidated:Z

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 14
    .line 15
    if-eqz p6, :cond_2

    .line 16
    .line 17
    iget-boolean p3, p0, Landroidx/work/impl/constraints/NetworkState;->isMetered:Z

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 20
    .line 21
    if-eqz p5, :cond_3

    .line 22
    .line 23
    iget-boolean p4, p0, Landroidx/work/impl/constraints/NetworkState;->isNotRoaming:Z

    .line 24
    .line 25
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/work/impl/constraints/NetworkState;->copy(ZZZZ)Landroidx/work/impl/constraints/NetworkState;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/work/impl/constraints/NetworkState;->isConnected:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/work/impl/constraints/NetworkState;->isValidated:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component3()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/work/impl/constraints/NetworkState;->isMetered:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component4()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/work/impl/constraints/NetworkState;->isNotRoaming:Z

    .line 2
    .line 3
    return v0
.end method

.method public final copy(ZZZZ)Landroidx/work/impl/constraints/NetworkState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/impl/constraints/NetworkState;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/work/impl/constraints/NetworkState;-><init>(ZZZZ)V

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
    instance-of v1, p1, Landroidx/work/impl/constraints/NetworkState;

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
    check-cast p1, Landroidx/work/impl/constraints/NetworkState;

    .line 12
    .line 13
    iget-boolean v1, p0, Landroidx/work/impl/constraints/NetworkState;->isConnected:Z

    .line 14
    .line 15
    iget-boolean v3, p1, Landroidx/work/impl/constraints/NetworkState;->isConnected:Z

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-boolean v1, p0, Landroidx/work/impl/constraints/NetworkState;->isValidated:Z

    .line 21
    .line 22
    iget-boolean v3, p1, Landroidx/work/impl/constraints/NetworkState;->isValidated:Z

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-boolean v1, p0, Landroidx/work/impl/constraints/NetworkState;->isMetered:Z

    .line 28
    .line 29
    iget-boolean v3, p1, Landroidx/work/impl/constraints/NetworkState;->isMetered:Z

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget-boolean v1, p0, Landroidx/work/impl/constraints/NetworkState;->isNotRoaming:Z

    .line 35
    .line 36
    iget-boolean p1, p1, Landroidx/work/impl/constraints/NetworkState;->isNotRoaming:Z

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

.method public hashCode()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/work/impl/constraints/NetworkState;->isConnected:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-boolean v2, p0, Landroidx/work/impl/constraints/NetworkState;->isValidated:Z

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    move v2, v1

    .line 14
    :cond_1
    add-int/2addr v0, v2

    .line 15
    mul-int/lit8 v0, v0, 0x1f

    .line 16
    .line 17
    iget-boolean v2, p0, Landroidx/work/impl/constraints/NetworkState;->isMetered:Z

    .line 18
    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    move v2, v1

    .line 22
    :cond_2
    add-int/2addr v0, v2

    .line 23
    mul-int/lit8 v0, v0, 0x1f

    .line 24
    .line 25
    iget-boolean v2, p0, Landroidx/work/impl/constraints/NetworkState;->isNotRoaming:Z

    .line 26
    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_3
    move v1, v2

    .line 31
    :goto_0
    add-int/2addr v0, v1

    .line 32
    return v0
.end method

.method public final isConnected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/work/impl/constraints/NetworkState;->isConnected:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isMetered()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/work/impl/constraints/NetworkState;->isMetered:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isNotRoaming()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/work/impl/constraints/NetworkState;->isNotRoaming:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isValidated()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/work/impl/constraints/NetworkState;->isValidated:Z

    .line 2
    .line 3
    return v0
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
    const-string v1, "NetworkState(isConnected="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Landroidx/work/impl/constraints/NetworkState;->isConnected:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", isValidated="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-boolean v1, p0, Landroidx/work/impl/constraints/NetworkState;->isValidated:Z

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", isMetered="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v1, p0, Landroidx/work/impl/constraints/NetworkState;->isMetered:Z

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", isNotRoaming="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-boolean v1, p0, Landroidx/work/impl/constraints/NetworkState;->isNotRoaming:Z

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
