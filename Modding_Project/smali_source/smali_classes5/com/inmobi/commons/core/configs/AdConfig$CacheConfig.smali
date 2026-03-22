.class public final Lcom/inmobi/commons/core/configs/AdConfig$CacheConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/core/configs/AdConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CacheConfig"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private timeToLive:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0xce4

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$CacheConfig;->timeToLive:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getTimeToLive()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$CacheConfig;->timeToLive:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final isValid()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$CacheConfig;->timeToLive:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-ltz v0, :cond_0

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

.method public final setTimeToLive(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/inmobi/commons/core/configs/AdConfig$CacheConfig;->timeToLive:J

    .line 2
    .line 3
    return-void
.end method
