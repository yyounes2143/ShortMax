.class public Lcom/ss/ttvideoengine/strategrycenter/StrategyKeys;
.super Ljava/lang/Object;
.source "StrategyKeys.java"


# static fields
.field public static mInteractionBlockDurationNonPreloaded:I = 0x320

.field public static mInteractionBlockDurationPreloaded:I = 0x190


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setIntValue(II)V
    .locals 1

    .line 1
    const/16 v0, 0x78

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x79

    .line 6
    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sput p1, Lcom/ss/ttvideoengine/strategrycenter/StrategyKeys;->mInteractionBlockDurationNonPreloaded:I

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    sput p1, Lcom/ss/ttvideoengine/strategrycenter/StrategyKeys;->mInteractionBlockDurationPreloaded:I

    .line 14
    .line 15
    :goto_0
    return-void
.end method
