.class public final Lcom/startshorts/androidplayer/bean/mylist/MyCollection;
.super Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;
.source "MyCollection.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/bean/mylist/MyCollection$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/startshorts/androidplayer/bean/mylist/MyCollection$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FROM_RESERVATION:I = 0x1

.field public static final SUBSCRIPT_AI_FOLLOWING:I = 0x8

.field public static final SUBSCRIPT_FREE:I = 0x7

.field public static final SUBSCRIPT_RECOMMEND:I = 0x9


# instance fields
.field private collectTime:J

.field private contentTag:I

.field private contentTagText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cornerLabelStyle:I

.field private cornerLabelText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private coverId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private dramaId:I

.field private episodeNum:I

.field private id:J

.field private isReservation:I

.field private isWholeBuy:Z

.field private shortPlayCode:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private shortPlayId:I

.field private shortPlayName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private showRedPoint:Z

.field private totalEpisodes:I

.field private upack:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->Companion:Lcom/startshorts/androidplayer/bean/mylist/MyCollection$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->isReservation:I

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->upack:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->cornerLabelText:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->contentTagText:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final getCollectTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->collectTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getContentTag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->contentTag:I

    .line 2
    .line 3
    return v0
.end method

.method public final getContentTagText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->contentTagText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCornerLabelStyle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->cornerLabelStyle:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCornerLabelText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->cornerLabelText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCoverId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->coverId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDramaId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->dramaId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getEpisodeNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->episodeNum:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    :cond_0
    return v0
.end method

.method public final getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->id:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getShortPlayCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->shortPlayCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShortPlayId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->shortPlayId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getShortPlayName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->shortPlayName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowRedPoint()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->showRedPoint:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getTotalEpisodes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->totalEpisodes:I

    .line 2
    .line 3
    return v0
.end method

.method public final getUpack()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->upack:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isReservation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->isReservation:I

    .line 2
    .line 3
    return v0
.end method

.method public final isWholeBuy()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->isWholeBuy:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setCollectTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->collectTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setContentTag(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->contentTag:I

    .line 2
    .line 3
    return-void
.end method

.method public final setContentTagText(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->contentTagText:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setCornerLabelStyle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->cornerLabelStyle:I

    .line 2
    .line 3
    return-void
.end method

.method public final setCornerLabelText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->cornerLabelText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCoverId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->coverId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDramaId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->dramaId:I

    .line 2
    .line 3
    return-void
.end method

.method public final setEpisodeNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->episodeNum:I

    .line 2
    .line 3
    return-void
.end method

.method public final setId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->id:J

    .line 2
    .line 3
    return-void
.end method

.method public final setReservation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->isReservation:I

    .line 2
    .line 3
    return-void
.end method

.method public final setShortPlayCode(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->shortPlayCode:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setShortPlayId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->shortPlayId:I

    .line 2
    .line 3
    return-void
.end method

.method public final setShortPlayName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->shortPlayName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setShowRedPoint(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->showRedPoint:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setTotalEpisodes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->totalEpisodes:I

    .line 2
    .line 3
    return-void
.end method

.method public final setUpack(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->upack:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setWholeBuy(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->isWholeBuy:Z

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
    const-string v1, "MyCollection(id="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->id:J

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", shortPlayId="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->shortPlayId:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", shortPlayCode="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->shortPlayCode:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", shortPlayName="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->shortPlayName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", coverId="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->coverId:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", episodeNum="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getEpisodeNum()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, ", totalEpisodes="

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget v1, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->totalEpisodes:I

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, ", collectTime="

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->collectTime:J

    .line 84
    .line 85
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v1, ", showRedPoint="

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->showRedPoint:Z

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v1, ", isWholeBuy="

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->isWholeBuy:Z

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v1, ", isReservation="

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget v1, p0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->isReservation:I

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const/16 v1, 0x29

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    return-object v0
.end method
