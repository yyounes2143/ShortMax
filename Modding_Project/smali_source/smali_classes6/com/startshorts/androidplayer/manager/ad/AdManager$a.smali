.class public final Lcom/startshorts/androidplayer/manager/ad/AdManager$a;
.super Ljava/lang/Object;
.source "AdManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/manager/ad/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:J

.field private b:J


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
.method public final a()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$a;->b:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$a;->a:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    const/16 v2, 0x3e8

    .line 7
    .line 8
    int-to-long v2, v2

    .line 9
    div-long/2addr v0, v2

    .line 10
    long-to-int v0, v0

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public final b()V
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$a;->b:J

    .line 8
    .line 9
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$a;->a:J

    .line 8
    .line 9
    return-void
.end method
