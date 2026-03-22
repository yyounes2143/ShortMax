.class public Lcom/ss/ttvideoengine/configcenter/PlayerConfigExecutor;
.super Ljava/lang/Object;
.source "PlayerConfigExecutor.java"


# static fields
.field public static final EMPTY:Lcom/ss/ttvideoengine/configcenter/PlayerConfigExecutor;

.field private static final TAG:Ljava/lang/String; = "PlayerConfigExecutor"


# instance fields
.field private mEnableOptionArray:Z

.field private mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/configcenter/PlayerConfigExecutor;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigExecutor;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/ss/ttvideoengine/configcenter/PlayerConfigExecutor;->EMPTY:Lcom/ss/ttvideoengine/configcenter/PlayerConfigExecutor;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/configcenter/PlayerConfigExecutor;->mEnableOptionArray:Z

    return-void
.end method

.method private executeUsingArray(Ljava/util/Map;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/ss/ttvideoengine/configcenter/ConfigItem;",
            ">;I)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_9

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    new-array v0, v0, [I

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    new-array v1, v1, [I

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 v2, 0x0

    .line 32
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_8

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lcom/ss/ttvideoengine/configcenter/ConfigItem;

    .line 43
    .line 44
    iget v4, v3, Lcom/ss/ttvideoengine/configcenter/ConfigItem;->moduleType:I

    .line 45
    .line 46
    const/4 v5, 0x1

    .line 47
    if-eq v4, v5, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move-object v4, v3

    .line 51
    check-cast v4, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 52
    .line 53
    iget v4, v4, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;->batchExecuteStage:I

    .line 54
    .line 55
    if-eq v4, p2, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    iget v4, v3, Lcom/ss/ttvideoengine/configcenter/ConfigItem;->valueType:I

    .line 59
    .line 60
    if-eq v4, v5, :cond_7

    .line 61
    .line 62
    const/4 v5, 0x2

    .line 63
    if-eq v4, v5, :cond_6

    .line 64
    .line 65
    const/4 v5, 0x3

    .line 66
    if-eq v4, v5, :cond_5

    .line 67
    .line 68
    const/4 v5, 0x4

    .line 69
    if-eq v4, v5, :cond_4

    .line 70
    .line 71
    const-string v3, "PlayerConfigExecutor"

    .line 72
    .line 73
    const-string/jumbo v4, "unknown value type"

    .line 74
    .line 75
    .line 76
    invoke-static {v3, v4}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    iget-object v4, p0, Lcom/ss/ttvideoengine/configcenter/PlayerConfigExecutor;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 81
    .line 82
    if-eqz v4, :cond_1

    .line 83
    .line 84
    iget v5, v3, Lcom/ss/ttvideoengine/configcenter/ConfigItem;->configKey:I

    .line 85
    .line 86
    iget-object v3, v3, Lcom/ss/ttvideoengine/configcenter/ConfigItem;->itemValue:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v3, Ljava/lang/String;

    .line 89
    .line 90
    invoke-interface {v4, v5, v3}, Lcom/ss/ttm/player/MediaPlayer;->setStringOption(ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_5
    iget-object v4, p0, Lcom/ss/ttvideoengine/configcenter/PlayerConfigExecutor;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 95
    .line 96
    if-eqz v4, :cond_1

    .line 97
    .line 98
    iget v5, v3, Lcom/ss/ttvideoengine/configcenter/ConfigItem;->configKey:I

    .line 99
    .line 100
    iget-object v3, v3, Lcom/ss/ttvideoengine/configcenter/ConfigItem;->itemValue:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v3, Ljava/lang/Float;

    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    invoke-interface {v4, v5, v3}, Lcom/ss/ttm/player/MediaPlayer;->setFloatOption(IF)I

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_6
    iget-object v4, p0, Lcom/ss/ttvideoengine/configcenter/PlayerConfigExecutor;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 113
    .line 114
    if-eqz v4, :cond_1

    .line 115
    .line 116
    iget v5, v3, Lcom/ss/ttvideoengine/configcenter/ConfigItem;->configKey:I

    .line 117
    .line 118
    iget-object v3, v3, Lcom/ss/ttvideoengine/configcenter/ConfigItem;->itemValue:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v3, Ljava/lang/Long;

    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 123
    .line 124
    .line 125
    move-result-wide v6

    .line 126
    invoke-interface {v4, v5, v6, v7}, Lcom/ss/ttm/player/MediaPlayer;->setLongOption(IJ)J

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_7
    iget v4, v3, Lcom/ss/ttvideoengine/configcenter/ConfigItem;->configKey:I

    .line 131
    .line 132
    aput v4, v0, v2

    .line 133
    .line 134
    iget-object v3, v3, Lcom/ss/ttvideoengine/configcenter/ConfigItem;->itemValue:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v3, Ljava/lang/Integer;

    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    aput v3, v1, v2

    .line 143
    .line 144
    add-int/lit8 v2, v2, 0x1

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_8
    if-lez v2, :cond_9

    .line 148
    .line 149
    iget-object p1, p0, Lcom/ss/ttvideoengine/configcenter/PlayerConfigExecutor;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 150
    .line 151
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-interface {p1, p2, v0}, Lcom/ss/ttm/player/MediaPlayer;->setIntOptionArray([I[I)V

    .line 160
    .line 161
    .line 162
    :cond_9
    :goto_1
    return-void
.end method


# virtual methods
.method public execute(IILjava/lang/Object;)V
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/ss/ttvideoengine/configcenter/PlayerConfigExecutor;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    .line 11
    const-string p1, "PlayerConfigExecutor"

    const-string/jumbo p2, "unknown value type"

    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    check-cast p3, Ljava/lang/String;

    invoke-interface {v0, p2, p3}, Lcom/ss/ttm/player/MediaPlayer;->setStringOption(ILjava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_2
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v0, p2, p1}, Lcom/ss/ttm/player/MediaPlayer;->setFloatOption(IF)I

    goto :goto_0

    .line 14
    :cond_3
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p2, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->setLongOption(IJ)J

    goto :goto_0

    .line 15
    :cond_4
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p2, p1}, Lcom/ss/ttm/player/MediaPlayer;->setIntOption(II)V

    :goto_0
    return-void
.end method

.method public execute(Lcom/ss/ttvideoengine/configcenter/ConfigItem;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 8
    iget v0, p1, Lcom/ss/ttvideoengine/configcenter/ConfigItem;->moduleType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget v0, p1, Lcom/ss/ttvideoengine/configcenter/ConfigItem;->valueType:I

    iget v1, p1, Lcom/ss/ttvideoengine/configcenter/ConfigItem;->configKey:I

    iget-object p1, p1, Lcom/ss/ttvideoengine/configcenter/ConfigItem;->itemValue:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigExecutor;->execute(IILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public execute(Ljava/util/Map;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/ss/ttvideoengine/configcenter/ConfigItem;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/configcenter/PlayerConfigExecutor;->mEnableOptionArray:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigExecutor;->executeUsingArray(Ljava/util/Map;I)V

    return-void

    :cond_0
    if-eqz p1, :cond_4

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/ttvideoengine/configcenter/ConfigItem;

    .line 5
    iget v1, v0, Lcom/ss/ttvideoengine/configcenter/ConfigItem;->moduleType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    move-object v1, v0

    check-cast v1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    iget v1, v1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;->batchExecuteStage:I

    if-eq v1, p2, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    iget v1, v0, Lcom/ss/ttvideoengine/configcenter/ConfigItem;->valueType:I

    iget v2, v0, Lcom/ss/ttvideoengine/configcenter/ConfigItem;->configKey:I

    iget-object v0, v0, Lcom/ss/ttvideoengine/configcenter/ConfigItem;->itemValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigExecutor;->execute(IILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public setMediaPlayer(Lcom/ss/ttm/player/MediaPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/configcenter/PlayerConfigExecutor;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 2
    .line 3
    return-void
.end method
