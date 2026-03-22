.class public final Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;
.super Lcom/startshorts/androidplayer/bean/download/DownloadManagerItem;
.source "DownloadingManagerInfo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDownloadingManagerInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadingManagerInfo.kt\ncom/startshorts/androidplayer/bean/download/DownloadingManagerInfo\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,24:1\n1#2:25\n*E\n"
    }
.end annotation


# instance fields
.field private select:Z

.field private shortPlayId:I

.field private shortPlayName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private taskInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string/jumbo v0, "taskInfoList"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/bean/download/DownloadManagerItem;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->taskInfoList:Ljava/util/List;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;Ljava/util/List;ILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->taskInfoList:Ljava/util/List;

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->copy(Ljava/util/List;)Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->taskInfoList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/util/List;)Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;",
            ">;)",
            "Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string/jumbo v0, "taskInfoList"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;-><init>(Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
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
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;

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
    check-cast p1, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->taskInfoList:Ljava/util/List;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->taskInfoList:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    return v0
.end method

.method public final getDownloadingCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->taskInfoList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getDownloadingItem()Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->taskInfoList:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object v3, v1

    .line 21
    check-cast v3, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDownloadState()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x2

    .line 28
    if-ne v3, v4, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-object v1, v2

    .line 32
    :goto_0
    check-cast v1, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 33
    .line 34
    if-nez v1, :cond_9

    .line 35
    .line 36
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->taskInfoList:Ljava/util/List;

    .line 37
    .line 38
    check-cast v0, Ljava/lang/Iterable;

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    move-object v3, v1

    .line 55
    check-cast v3, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDownloadState()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    const/4 v4, 0x3

    .line 62
    if-ne v3, v4, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    move-object v1, v2

    .line 66
    :goto_1
    check-cast v1, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 67
    .line 68
    if-nez v1, :cond_9

    .line 69
    .line 70
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->taskInfoList:Ljava/util/List;

    .line 71
    .line 72
    check-cast v0, Ljava/lang/Iterable;

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_5

    .line 83
    .line 84
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    move-object v3, v1

    .line 89
    check-cast v3, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 90
    .line 91
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDownloadState()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    const/4 v4, 0x5

    .line 96
    if-ne v3, v4, :cond_4

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_5
    move-object v1, v2

    .line 100
    :goto_2
    check-cast v1, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 101
    .line 102
    if-nez v1, :cond_9

    .line 103
    .line 104
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->taskInfoList:Ljava/util/List;

    .line 105
    .line 106
    check-cast v0, Ljava/lang/Iterable;

    .line 107
    .line 108
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_8

    .line 117
    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    move-object v3, v1

    .line 123
    check-cast v3, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 124
    .line 125
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDownloadState()I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_7

    .line 130
    .line 131
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDownloadState()I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    const/4 v4, 0x1

    .line 136
    if-ne v3, v4, :cond_6

    .line 137
    .line 138
    :cond_7
    move-object v2, v1

    .line 139
    :cond_8
    move-object v1, v2

    .line 140
    check-cast v1, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 141
    .line 142
    :cond_9
    return-object v1
.end method

.method public final getSelect()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->select:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getShortPlayId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->shortPlayId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getShortPlayName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->shortPlayName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTaskInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->taskInfoList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->taskInfoList:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setSelect(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->select:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setShortPlayId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->shortPlayId:I

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->shortPlayName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTaskInfoList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->taskInfoList:Ljava/util/List;

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
    const-string v1, "DownloadingManagerInfo(taskInfoList="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->taskInfoList:Ljava/util/List;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x29

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
