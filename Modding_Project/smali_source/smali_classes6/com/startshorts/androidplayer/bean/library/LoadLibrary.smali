.class public final Lcom/startshorts/androidplayer/bean/library/LoadLibrary;
.super Ljava/lang/Object;
.source "LibraryClass.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private isComplete:Z

.field private libClass:Lcom/startshorts/androidplayer/bean/library/LibraryClass;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;-><init>(Lcom/startshorts/androidplayer/bean/library/LibraryClass;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/startshorts/androidplayer/bean/library/LibraryClass;Ljava/util/List;Z)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/library/LibraryClass;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/library/LibraryClass;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;",
            ">;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->libClass:Lcom/startshorts/androidplayer/bean/library/LibraryClass;

    .line 4
    iput-object p2, p0, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->list:Ljava/util/List;

    .line 5
    iput-boolean p3, p0, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->isComplete:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/bean/library/LibraryClass;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;-><init>(Lcom/startshorts/androidplayer/bean/library/LibraryClass;Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/library/LoadLibrary;Lcom/startshorts/androidplayer/bean/library/LibraryClass;Ljava/util/List;ZILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/library/LoadLibrary;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->libClass:Lcom/startshorts/androidplayer/bean/library/LibraryClass;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->list:Ljava/util/List;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    iget-boolean p3, p0, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->isComplete:Z

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->copy(Lcom/startshorts/androidplayer/bean/library/LibraryClass;Ljava/util/List;Z)Lcom/startshorts/androidplayer/bean/library/LoadLibrary;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/startshorts/androidplayer/bean/library/LibraryClass;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->libClass:Lcom/startshorts/androidplayer/bean/library/LibraryClass;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->isComplete:Z

    .line 2
    .line 3
    return v0
.end method

.method public final copy(Lcom/startshorts/androidplayer/bean/library/LibraryClass;Ljava/util/List;Z)Lcom/startshorts/androidplayer/bean/library/LoadLibrary;
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/library/LibraryClass;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/library/LibraryClass;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;",
            ">;Z)",
            "Lcom/startshorts/androidplayer/bean/library/LoadLibrary;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;-><init>(Lcom/startshorts/androidplayer/bean/library/LibraryClass;Ljava/util/List;Z)V

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
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;

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
    check-cast p1, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->libClass:Lcom/startshorts/androidplayer/bean/library/LibraryClass;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->libClass:Lcom/startshorts/androidplayer/bean/library/LibraryClass;

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->list:Ljava/util/List;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->list:Ljava/util/List;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->isComplete:Z

    .line 36
    .line 37
    iget-boolean p1, p1, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->isComplete:Z

    .line 38
    .line 39
    if-eq v1, p1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    return v0
.end method

.method public final getLibClass()Lcom/startshorts/androidplayer/bean/library/LibraryClass;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->libClass:Lcom/startshorts/androidplayer/bean/library/LibraryClass;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->libClass:Lcom/startshorts/androidplayer/bean/library/LibraryClass;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/library/LibraryClass;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->list:Ljava/util/List;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    :goto_1
    add-int/2addr v0, v1

    .line 24
    mul-int/lit8 v0, v0, 0x1f

    .line 25
    .line 26
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->isComplete:Z

    .line 27
    .line 28
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    add-int/2addr v0, v1

    .line 33
    return v0
.end method

.method public final isComplete()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->isComplete:Z

    .line 2
    .line 3
    return v0
.end method

.method public final loadComplete()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->libClass:Lcom/startshorts/androidplayer/bean/library/LibraryClass;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->list:Ljava/util/List;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final setComplete(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->isComplete:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setLibClass(Lcom/startshorts/androidplayer/bean/library/LibraryClass;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/library/LibraryClass;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->libClass:Lcom/startshorts/androidplayer/bean/library/LibraryClass;

    .line 2
    .line 3
    return-void
.end method

.method public final setList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->list:Ljava/util/List;

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
    const-string v1, "LoadLibrary(libClass="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->libClass:Lcom/startshorts/androidplayer/bean/library/LibraryClass;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", list="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->list:Ljava/util/List;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", isComplete="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->isComplete:Z

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
