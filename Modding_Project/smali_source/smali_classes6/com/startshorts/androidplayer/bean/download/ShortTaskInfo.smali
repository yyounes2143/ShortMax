.class public final Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;
.super Ljava/lang/Object;
.source "ShortTaskInfo.kt"


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "short_tasks"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private addTaskTime:J

.field private content:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private dramaName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private hasUnfinishedJob:Z

.field private shortCoverUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private shortPlayCode:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private shortPlayId:I
    .annotation build Landroidx/room/PrimaryKey;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->shortPlayId:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->shortPlayCode:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->dramaName:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->shortCoverUrl:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->content:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final getAddTaskTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->addTaskTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDramaName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->dramaName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHasUnfinishedJob()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->hasUnfinishedJob:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getShortCoverUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->shortCoverUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShortPlayCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->shortPlayCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShortPlayId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->shortPlayId:I

    .line 2
    .line 3
    return v0
.end method

.method public final setAddTaskTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->addTaskTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDramaName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->dramaName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setHasUnfinishedJob(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->hasUnfinishedJob:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setShortCoverUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->shortCoverUrl:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->shortPlayCode:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setShortPlayId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->shortPlayId:I

    .line 2
    .line 3
    return-void
.end method
