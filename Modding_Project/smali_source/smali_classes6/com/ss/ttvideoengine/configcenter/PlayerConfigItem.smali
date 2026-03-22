.class public Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;
.super Lcom/ss/ttvideoengine/configcenter/ConfigItem;
.source "PlayerConfigItem.java"


# static fields
.field public static final STAGE_NONE:I = -0x1

.field public static final STAGE_PLAYER_CREATE:I = 0x0

.field public static final STAGE_PLAYER_REUSE:I = 0x1


# instance fields
.field protected batchExecuteStage:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;I)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/ss/ttvideoengine/configcenter/ConfigItem;-><init>(ILjava/lang/Object;III)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;->batchExecuteStage:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;II)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/ss/ttvideoengine/configcenter/ConfigItem;-><init>(ILjava/lang/Object;III)V

    .line 4
    iput p4, p0, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;->batchExecuteStage:I

    return-void
.end method
