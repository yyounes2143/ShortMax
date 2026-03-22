.class public Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;
.super Ljava/lang/Object;
.source "StrategyPreRender.java"


# static fields
.field private static final COUNT:Ljava/lang/String; = "count"

.field private static final START_BUFFER_LIMIT:Ljava/lang/String; = "start_buffer_limit"

.field private static final STOP_BUFFER_LIMIT:Ljava/lang/String; = "stop_buffer_limit"

.field private static final TAG:Ljava/lang/String; = "Strategy PreRender"


# instance fields
.field private mCacheReadyEngine:Lcom/ss/ttvideoengine/TTVideoEngine;

.field private mControlEngineRelease:Z

.field private mCount:I

.field private mEnable:Z

.field private mEnableOptPreRenderOnSourceUpdate:Z

.field private mEnableReleasePreRenderEngineInstanceByLRU:Z

.field private final mPreRenderEngines:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ss/ttvideoengine/TTVideoEngine;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreRenderListener:Lcom/ss/ttvideoengine/strategy/prerender/PreRenderListener;

.field private mPreloadFirst:Z

.field private final mScene:I

.field private mStartBufferLimitInS:I

.field private mStopBufferLimitInS:I

.field private final mWaitPreloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/ss/ttvideoengine/strategy/prerender/PreRenderListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mCount:I

    .line 6
    .line 7
    const/16 v1, 0xe

    .line 8
    .line 9
    iput v1, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mStartBufferLimitInS:I

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    iput v1, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mStopBufferLimitInS:I

    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mWaitPreloads:Ljava/util/List;

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mControlEngineRelease:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mPreloadFirst:Z

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mEnableOptPreRenderOnSourceUpdate:Z

    .line 27
    .line 28
    iput p1, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mScene:I

    .line 29
    .line 30
    iput-object p2, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mPreRenderListener:Lcom/ss/ttvideoengine/strategy/prerender/PreRenderListener;

    .line 31
    .line 32
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mPreRenderEngines:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->updateConfig()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private clearAllEngine(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 2

    .line 1
    const-string v0, "Strategy PreRender"

    .line 2
    .line 3
    const-string v1, "clearAllEngine"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mCacheReadyEngine:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mWaitPreloads:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->releaseEngines(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private getNeedPreRenderList(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/strategy/source/StrategySource;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->instance()Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->getSource()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    if-ltz p1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    add-int/lit8 v2, v2, -0x1

    .line 21
    .line 22
    if-lt p1, v2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 26
    .line 27
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-object v1
.end method

.method private releaseEngines(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mPreRenderEngines:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string v0, "releaseEngines"

    .line 11
    .line 12
    const-string v1, "Strategy PreRender"

    .line 13
    .line 14
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mPreRenderEngines:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v2, 0x0

    .line 28
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_3

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 39
    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    if-ne v3, p1, :cond_2

    .line 44
    .line 45
    move-object v2, v3

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v5, "release "

    .line 53
    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-static {v1, v4}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/ss/ttvideoengine/TTVideoEngine;->releaseAsync()V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mPreRenderEngines:Ljava/util/concurrent/ConcurrentHashMap;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 74
    .line 75
    .line 76
    if-eqz v2, :cond_4

    .line 77
    .line 78
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mPreRenderEngines:Ljava/util/concurrent/ConcurrentHashMap;

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/TTVideoEngine;->getVideoID()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    :cond_4
    return-void
.end method

.method private startPreRender(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mEnable:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_7

    .line 7
    .line 8
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->instance()Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->getPlayEngine()Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_1
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "Strategy PreRender"

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    const-string/jumbo p1, "startPreRender context is null"

    .line 29
    .line 30
    .line 31
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->instance()Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->getPlayIndex()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string/jumbo v4, "startPreRender play index "

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-static {v1, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, v2}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->getNeedPreRenderList(I)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_7

    .line 81
    .line 82
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    check-cast v3, Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 87
    .line 88
    invoke-interface {v3}, Lcom/ss/ttvideoengine/source/Source;->vid()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    iget-object v5, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mPreRenderEngines:Ljava/util/concurrent/ConcurrentHashMap;

    .line 93
    .line 94
    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_3

    .line 99
    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string/jumbo v5, "startPreRender already exist "

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-static {v1, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_3
    iget-boolean v5, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mEnableReleasePreRenderEngineInstanceByLRU:Z

    .line 123
    .line 124
    if-eqz v5, :cond_4

    .line 125
    .line 126
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->releaseEngines(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 127
    .line 128
    .line 129
    :cond_4
    iget-boolean v5, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mPreloadFirst:Z

    .line 130
    .line 131
    if-eqz v5, :cond_5

    .line 132
    .line 133
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->instance()Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-virtual {v5, v4}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->isAllowPreRender(Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-nez v5, :cond_5

    .line 142
    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    const-string/jumbo v5, "startPreRender preload no ready "

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-static {v1, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-object v3, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mWaitPreloads:Ljava/util/List;

    .line 165
    .line 166
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_5
    iget-object v5, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mWaitPreloads:Ljava/util/List;

    .line 171
    .line 172
    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    iget-object v5, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mPreRenderListener:Lcom/ss/ttvideoengine/strategy/prerender/PreRenderListener;

    .line 176
    .line 177
    invoke-interface {v5, v3}, Lcom/ss/ttvideoengine/strategy/prerender/PreRenderListener;->createPreRenderEngine(Lcom/ss/ttvideoengine/strategy/source/StrategySource;)Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    const/4 v6, 0x0

    .line 182
    if-nez v5, :cond_6

    .line 183
    .line 184
    new-instance v5, Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 185
    .line 186
    invoke-direct {v5, v0, v6}, Lcom/ss/ttvideoengine/TTVideoEngine;-><init>(Landroid/content/Context;I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v5, v3}, Lcom/ss/ttvideoengine/TTVideoEngine;->setStrategySource(Lcom/ss/ttvideoengine/strategy/source/StrategySource;)V

    .line 190
    .line 191
    .line 192
    iget-object v7, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mPreRenderListener:Lcom/ss/ttvideoengine/strategy/prerender/PreRenderListener;

    .line 193
    .line 194
    invoke-interface {v7, v5, v3}, Lcom/ss/ttvideoengine/strategy/prerender/PreRenderListener;->onPreRenderEngineCreated(Lcom/ss/ttvideoengine/TTVideoEngine;Lcom/ss/ttvideoengine/strategy/source/StrategySource;)V

    .line 195
    .line 196
    .line 197
    :cond_6
    const/16 v3, 0x64

    .line 198
    .line 199
    invoke-virtual {v5, v3, v6}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntOption(II)V

    .line 200
    .line 201
    .line 202
    const/4 v3, 0x2

    .line 203
    const v6, 0x7d000

    .line 204
    .line 205
    .line 206
    invoke-virtual {v5, v3, v6}, Lcom/ss/ttvideoengine/TTVideoEngine;->setAutoRangeRead(II)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v5}, Lcom/ss/ttvideoengine/TTVideoEngine;->prepare()V

    .line 210
    .line 211
    .line 212
    iget-object v3, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mPreRenderEngines:Ljava/util/concurrent/ConcurrentHashMap;

    .line 213
    .line 214
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    const-string/jumbo v6, "startPreRender success engine:"

    .line 223
    .line 224
    .line 225
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v5, " "

    .line 232
    .line 233
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    invoke-static {v1, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    goto/16 :goto_0

    .line 247
    .line 248
    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public controlEngineRelease(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mControlEngineRelease:Z

    .line 2
    .line 3
    return-void
.end method

.method public enableOptPreRenderOnSourceUpdate(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mEnableOptPreRenderOnSourceUpdate:Z

    .line 2
    .line 3
    return-void
.end method

.method public enableReleasePreRenderEngineInstanceByLRU(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mEnableReleasePreRenderEngineInstanceByLRU:Z

    .line 2
    .line 3
    return-void
.end method

.method public getPreRenderEngine(Ljava/lang/String;)Lcom/ss/ttvideoengine/TTVideoEngine;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mPreRenderEngines:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "getPreRenderEngine "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "Strategy PreRender"

    .line 27
    .line 28
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_0
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->isPrepared()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    iget-boolean v1, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mControlEngineRelease:Z

    .line 42
    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mPreRenderEngines:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :cond_1
    return-object v0

    .line 51
    :cond_2
    const-string v3, "preRender engine is not prepared"

    .line 52
    .line 53
    invoke-static {v2, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->releaseAsync()V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mPreRenderEngines:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    return-object v1
.end method

.method public onCacheEnd(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->instance()Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->getPlayEngine()Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mCacheReadyEngine:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 13
    .line 14
    if-eq v0, p1, :cond_1

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "onCacheEnd "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "Strategy PreRender"

    .line 34
    .line 35
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mCacheReadyEngine:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 39
    .line 40
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->startPreRender(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public onCacheSize(Lcom/ss/ttvideoengine/TTVideoEngine;J)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->instance()Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->getPlayEngine()Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget v0, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mStartBufferLimitInS:I

    .line 13
    .line 14
    int-to-long v0, v0

    .line 15
    const-wide/16 v2, 0x3e8

    .line 16
    .line 17
    mul-long/2addr v0, v2

    .line 18
    cmp-long v0, p2, v0

    .line 19
    .line 20
    if-lez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mCacheReadyEngine:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 23
    .line 24
    if-eq v0, p1, :cond_1

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v1, "onCacheSize "

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, " "

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    const-string p3, "Strategy PreRender"

    .line 52
    .line 53
    invoke-static {p3, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mCacheReadyEngine:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 57
    .line 58
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->startPreRender(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method public onPreloadSuccess(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mPreloadFirst:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mWaitPreloads:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "onPreloadSuccess "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "Strategy PreRender"

    .line 31
    .line 32
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->instance()Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->getPlayEngine()Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->startPreRender(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public preloadFirst(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mPreloadFirst:Z

    .line 2
    .line 3
    return-void
.end method

.method public removePreRenderEngine(Ljava/lang/String;)Lcom/ss/ttvideoengine/TTVideoEngine;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mPreRenderEngines:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "removePreRenderEngine "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "Strategy PreRender"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->isPrepared()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_1
    const-string v2, "preRender engine is not prepared"

    .line 43
    .line 44
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->releaseAsync()V

    .line 48
    .line 49
    .line 50
    return-object v0
.end method

.method public start()V
    .locals 2

    .line 1
    const-string v0, "Strategy PreRender"

    .line 2
    .line 3
    const-string/jumbo v1, "start"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mEnable:Z

    .line 11
    .line 12
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->instance()Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->getPlayEngine()Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->startPreRender(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    const-string v0, "Strategy PreRender"

    .line 2
    .line 3
    const-string/jumbo v1, "stop"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mEnable:Z

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->clearAllEngine(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public updateConfig()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategySettings;->getInstance()Lcom/ss/ttvideoengine/strategy/StrategySettings;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mScene:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/strategy/StrategySettings;->getPreRender(I)Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string/jumbo v2, "updateConfig "

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "Strategy PreRender"

    .line 30
    .line 31
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    const-string v1, "count"

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iput v1, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mCount:I

    .line 45
    .line 46
    const-string/jumbo v1, "start_buffer_limit"

    .line 47
    .line 48
    .line 49
    const/16 v2, 0xe

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    iput v1, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mStartBufferLimitInS:I

    .line 56
    .line 57
    const-string/jumbo v1, "stop_buffer_limit"

    .line 58
    .line 59
    .line 60
    const/4 v2, 0x5

    .line 61
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mStopBufferLimitInS:I

    .line 66
    .line 67
    return-void
.end method

.method public updateEngine()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->instance()Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->getPlayEngine()Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->clearAllEngine(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public updateSource(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mEnableReleasePreRenderEngineInstanceByLRU:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->mEnableOptPreRenderOnSourceUpdate:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->instance()Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->getPlayEngine()Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->clearAllEngine(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->instance()Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->getPlayEngine()Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->clearAllEngine(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->instance()Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->getPlayEngine()Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->startPreRender(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
