.class public final Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;
.super Ljava/lang/Object;
.source "UpdateMainTabEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final clickTab:Z

.field private final extra:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final from:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tabType:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "tabType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "from"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extra"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->tabType:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    iput-boolean p2, p0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->clickTab:Z

    iput-object p3, p0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->from:Ljava/lang/String;

    iput-object p4, p0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->extra:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    .line 2
    const-string v0, ""

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;-><init>(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;ZLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;ZLjava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->tabType:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    iget-boolean p2, p0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->clickTab:Z

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 14
    .line 15
    if-eqz p6, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->from:Ljava/lang/String;

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 20
    .line 21
    if-eqz p5, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->extra:Ljava/lang/Object;

    .line 24
    .line 25
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->copy(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;ZLjava/lang/String;Ljava/lang/Object;)Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->tabType:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->clickTab:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->from:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->extra:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;ZLjava/lang/String;Ljava/lang/Object;)Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string/jumbo v0, "tabType"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "from"

    .line 8
    .line 9
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "extra"

    .line 13
    .line 14
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;

    .line 18
    .line 19
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;-><init>(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
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
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;

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
    check-cast p1, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->tabType:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->tabType:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->clickTab:Z

    .line 21
    .line 22
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->clickTab:Z

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->from:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->from:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->extra:Ljava/lang/Object;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->extra:Ljava/lang/Object;

    .line 41
    .line 42
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    return v0
.end method

.method public final getClickTab()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->clickTab:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getExtra()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->extra:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFrom()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->from:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTabType()Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->tabType:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->tabType:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

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
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->clickTab:Z

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->from:Ljava/lang/String;

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
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->extra:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
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
    const-string v1, "UpdateMainTabEvent(tabType="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->tabType:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", clickTab="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->clickTab:Z

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", from="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->from:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", extra="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->extra:Ljava/lang/Object;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
