.class public final Lcom/startshorts/androidplayer/bean/tab/MainTab;
.super Ljava/lang/Object;
.source "MainTab.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/bean/tab/MainTab$Companion;,
        Lcom/startshorts/androidplayer/bean/tab/MainTab$State;,
        Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/startshorts/androidplayer/bean/tab/MainTab$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private extra:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private state:Lcom/startshorts/androidplayer/bean/tab/MainTab$State;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final type:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/tab/MainTab$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/tab/MainTab$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/bean/tab/MainTab;->Companion:Lcom/startshorts/androidplayer/bean/tab/MainTab$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;Lcom/startshorts/androidplayer/bean/tab/MainTab$State;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/tab/MainTab$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/tab/MainTab;->type:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/bean/tab/MainTab;->state:Lcom/startshorts/androidplayer/bean/tab/MainTab$State;

    .line 4
    iput-object p3, p0, Lcom/startshorts/androidplayer/bean/tab/MainTab;->extra:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;Lcom/startshorts/androidplayer/bean/tab/MainTab$State;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 5
    sget-object p2, Lcom/startshorts/androidplayer/bean/tab/MainTab$State;->UNSELECTED:Lcom/startshorts/androidplayer/bean/tab/MainTab$State;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/bean/tab/MainTab;-><init>(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;Lcom/startshorts/androidplayer/bean/tab/MainTab$State;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/tab/MainTab;Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;Lcom/startshorts/androidplayer/bean/tab/MainTab$State;Ljava/lang/Object;ILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/tab/MainTab;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/tab/MainTab;->type:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/startshorts/androidplayer/bean/tab/MainTab;->state:Lcom/startshorts/androidplayer/bean/tab/MainTab$State;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lcom/startshorts/androidplayer/bean/tab/MainTab;->extra:Ljava/lang/Object;

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/bean/tab/MainTab;->copy(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;Lcom/startshorts/androidplayer/bean/tab/MainTab$State;Ljava/lang/Object;)Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/tab/MainTab;->type:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Lcom/startshorts/androidplayer/bean/tab/MainTab$State;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/tab/MainTab;->state:Lcom/startshorts/androidplayer/bean/tab/MainTab$State;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/tab/MainTab;->extra:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;Lcom/startshorts/androidplayer/bean/tab/MainTab$State;Ljava/lang/Object;)Lcom/startshorts/androidplayer/bean/tab/MainTab;
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/tab/MainTab$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string/jumbo v0, "type"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "state"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 14
    .line 15
    invoke-direct {v0, p1, p2, p3}, Lcom/startshorts/androidplayer/bean/tab/MainTab;-><init>(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;Lcom/startshorts/androidplayer/bean/tab/MainTab$State;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
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
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/tab/MainTab;

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
    check-cast p1, Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/tab/MainTab;->type:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/tab/MainTab;->type:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/tab/MainTab;->state:Lcom/startshorts/androidplayer/bean/tab/MainTab$State;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/tab/MainTab;->state:Lcom/startshorts/androidplayer/bean/tab/MainTab$State;

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/tab/MainTab;->extra:Ljava/lang/Object;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/startshorts/androidplayer/bean/tab/MainTab;->extra:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    return v0
.end method

.method public final getExtra()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/tab/MainTab;->extra:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getState()Lcom/startshorts/androidplayer/bean/tab/MainTab$State;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/tab/MainTab;->state:Lcom/startshorts/androidplayer/bean/tab/MainTab$State;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/tab/MainTab;->type:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/tab/MainTab;->type:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/tab/MainTab;->state:Lcom/startshorts/androidplayer/bean/tab/MainTab$State;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/tab/MainTab;->extra:Ljava/lang/Object;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    :goto_0
    add-int/2addr v0, v1

    .line 29
    return v0
.end method

.method public final isSelected()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/tab/MainTab;->state:Lcom/startshorts/androidplayer/bean/tab/MainTab$State;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/bean/tab/MainTab$State;->SELECTED:Lcom/startshorts/androidplayer/bean/tab/MainTab$State;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public final setExtra(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/tab/MainTab;->extra:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public final setState(Lcom/startshorts/androidplayer/bean/tab/MainTab$State;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/tab/MainTab$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/tab/MainTab;->state:Lcom/startshorts/androidplayer/bean/tab/MainTab$State;

    .line 7
    .line 8
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
    const-string v1, "MainTab(type="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/tab/MainTab;->type:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", state="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/tab/MainTab;->state:Lcom/startshorts/androidplayer/bean/tab/MainTab$State;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", extra="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/tab/MainTab;->extra:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
