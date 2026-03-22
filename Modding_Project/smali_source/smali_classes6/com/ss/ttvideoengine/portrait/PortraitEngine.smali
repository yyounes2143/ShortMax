.class public Lcom/ss/ttvideoengine/portrait/PortraitEngine;
.super Ljava/lang/Object;
.source "PortraitEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/portrait/PortraitEngine$Holder;
    }
.end annotation


# static fields
.field public static final LABEL_DEVICE_SCORE:Ljava/lang/String; = "device_score"

.field public static final LABEL_FF:Ljava/lang/String; = "ff_label"

.field public static final LABEL_FIRST_FRAME:Ljava/lang/String; = "first_frame"

.field public static final LABEL_NET_QUALITY_SPEED:Ljava/lang/String; = "clinet_quality_speed"

.field public static final LABEL_NET_QUALITY_STABILITY:Ljava/lang/String; = "clinet_quality_stability"

.field public static final LABEL_REBUF:Ljava/lang/String; = "rebuf_label"

.field public static final LABEL_REBUFFERING:Ljava/lang/String; = "rebuffering"

.field public static final LABEL_SCENE_COUNT_PER_100VV:Ljava/lang/String; = "scene_count_per_100vv"

.field public static final LABEL_SEEK:Ljava/lang/String; = "seek_label"

.field public static final LABEL_USER_ENGER_FULL_SCREEN:Ljava/lang/String; = "user_enter_full_screen"

.field public static final LABEL_USER_QUALITY_SENSITIVITY:Ljava/lang/String; = "user_quality_sensitivity"

.field public static final LABEL_WATCH_DURATION:Ljava/lang/String; = "watch_duration"

.field public static final PORTRAIT_ENGINE_KEY:Ljava/lang/String; = "portrait_engine"

.field private static final TAG:Ljava/lang/String; = "PortraitEngine"

.field public static final VOD_KEY:Ljava/lang/String; = "vod"


# instance fields
.field private final mLabelMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ss/ttvideoengine/portrait/PortraitChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPortraitNetwork:Lcom/ss/ttvideoengine/portrait/IPortrait;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->mLabelMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    .line 18
    invoke-static {}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->getInstance()Lcom/ss/ttvideoengine/log/PortraitNetworkScore;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->mPortraitNetwork:Lcom/ss/ttvideoengine/portrait/IPortrait;

    .line 23
    .line 24
    return-void
.end method

.method public static getInstance()Lcom/ss/ttvideoengine/portrait/PortraitEngine;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/portrait/PortraitEngine$Holder;->access$000()Lcom/ss/ttvideoengine/portrait/PortraitEngine;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private notifyPortraitChange(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/ss/ttvideoengine/portrait/PortraitChangeListener;

    .line 18
    .line 19
    invoke-interface {v1, p1, p2}, Lcom/ss/ttvideoengine/portrait/PortraitChangeListener;->onPortraitChange(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public addPortraitListener(Lcom/ss/ttvideoengine/portrait/PortraitChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getAllLabels()Ljava/util/Map;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->mLabelMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public getLabel(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->mLabelMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getPortrait(I)Lcom/ss/ttvideoengine/portrait/IPortrait;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->mPortraitNetwork:Lcom/ss/ttvideoengine/portrait/IPortrait;

    .line 5
    .line 6
    return-object p1

    .line 7
    :cond_0
    sget-object p1, Lcom/ss/ttvideoengine/portrait/IPortrait;->EMPTY:Lcom/ss/ttvideoengine/portrait/IPortrait;

    .line 8
    .line 9
    return-object p1
.end method

.method public removePortraitListener(Lcom/ss/ttvideoengine/portrait/PortraitChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLabel(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->mLabelMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->mLabelMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->mLabelMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->notifyPortraitChange(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->mLabelMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->notifyPortraitChange(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string v0, "PortraitEngine"

    .line 46
    .line 47
    const-string v1, "same label"

    .line 48
    .line 49
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->mLabelMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    .line 54
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public updateLabelBySettings(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "portrait_engine"

    .line 8
    .line 9
    const-string/jumbo v4, "user_quality_sensitivity"

    .line 10
    .line 11
    .line 12
    const-string v5, "scene_count_per_100vv"

    .line 13
    .line 14
    const-string/jumbo v6, "user_enter_full_screen"

    .line 15
    .line 16
    .line 17
    const-string v7, "rebuffering"

    .line 18
    .line 19
    const-string v8, "first_frame"

    .line 20
    .line 21
    const-string/jumbo v9, "watch_duration"

    .line 22
    .line 23
    .line 24
    const-string v10, "seek_label"

    .line 25
    .line 26
    const-string v11, "ff_label"

    .line 27
    .line 28
    const-string v12, "rebuf_label"

    .line 29
    .line 30
    const-string v13, "clinet_quality_stability"

    .line 31
    .line 32
    const-string v14, "clinet_quality_speed"

    .line 33
    .line 34
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v15

    .line 38
    if-nez v15, :cond_a

    .line 39
    .line 40
    const-string/jumbo v15, "vod"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v15

    .line 47
    if-eqz v15, :cond_a

    .line 48
    .line 49
    new-instance v15, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    move-object/from16 v16, v4

    .line 55
    .line 56
    const-string/jumbo v4, "updateLabelBySettings key: "

    .line 57
    .line 58
    .line 59
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string/jumbo v0, "value: "

    .line 66
    .line 67
    .line 68
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v4, "PortraitEngine"

    .line 79
    .line 80
    invoke-static {v4, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_a

    .line 88
    .line 89
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 90
    .line 91
    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_a

    .line 99
    .line 100
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    if-eqz v0, :cond_a

    .line 105
    .line 106
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_0

    .line 111
    .line 112
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v1, v14, v2}, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->setLabel(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    goto/16 :goto_1

    .line 126
    .line 127
    :cond_0
    :goto_0
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-eqz v2, :cond_1

    .line 132
    .line 133
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v1, v13, v2}, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->setLabel(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    :cond_1
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_2

    .line 149
    .line 150
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v1, v12, v2}, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->setLabel(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    :cond_2
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-eqz v2, :cond_3

    .line 166
    .line 167
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {v1, v11, v2}, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->setLabel(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    :cond_3
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_4

    .line 183
    .line 184
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-virtual {v1, v10, v2}, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->setLabel(Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    :cond_4
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-eqz v2, :cond_5

    .line 200
    .line 201
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-virtual {v1, v9, v2}, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->setLabel(Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    :cond_5
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-eqz v2, :cond_6

    .line 217
    .line 218
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-virtual {v1, v8, v2}, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->setLabel(Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    :cond_6
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-eqz v2, :cond_7

    .line 234
    .line 235
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-virtual {v1, v7, v2}, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->setLabel(Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    :cond_7
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    if-eqz v2, :cond_8

    .line 251
    .line 252
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    invoke-virtual {v1, v6, v2}, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->setLabel(Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    :cond_8
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    if-eqz v2, :cond_9

    .line 268
    .line 269
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 270
    .line 271
    .line 272
    move-result-wide v2

    .line 273
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    invoke-virtual {v1, v5, v2}, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->setLabel(Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    :cond_9
    move-object/from16 v2, v16

    .line 281
    .line 282
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    if-eqz v3, :cond_a

    .line 287
    .line 288
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 289
    .line 290
    .line 291
    move-result-wide v3

    .line 292
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-virtual {v1, v2, v0}, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->setLabel(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    .line 298
    .line 299
    goto :goto_2

    .line 300
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 301
    .line 302
    .line 303
    :cond_a
    :goto_2
    return-void
.end method
