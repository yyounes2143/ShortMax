.class public final Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo$ImmersionBackRecordInfo;
.super Ljava/lang/Object;
.source "ImmersionBackRecordListInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImmersionBackRecordInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private shortId:I

.field private showTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getShortId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo$ImmersionBackRecordInfo;->shortId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getShowTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo$ImmersionBackRecordInfo;->showTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final setShortId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo$ImmersionBackRecordInfo;->shortId:I

    .line 2
    .line 3
    return-void
.end method

.method public final setShowTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo$ImmersionBackRecordInfo;->showTime:J

    .line 2
    .line 3
    return-void
.end method
