.class public final Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;
.super Ljava/lang/Object;
.source "DownloadingDramaInfo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private downloadInfo:Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private select:Z

.field private shortPlayId:I


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "downloadInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;->downloadInfo:Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;ILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;->downloadInfo:Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;->copy(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;->downloadInfo:Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "downloadInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;-><init>(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V

    .line 9
    .line 10
    .line 11
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
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;

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
    check-cast p1, Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;->downloadInfo:Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;->downloadInfo:Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

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

.method public final getDownloadInfo()Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;->downloadInfo:Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSelect()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;->select:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getShortPlayId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;->shortPlayId:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;->downloadInfo:Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

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

.method public final setDownloadInfo(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;->downloadInfo:Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 7
    .line 8
    return-void
.end method

.method public final setSelect(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;->select:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setShortPlayId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;->shortPlayId:I

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
    const-string v1, "DownloadingDramaInfo(downloadInfo="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;->downloadInfo:Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

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
