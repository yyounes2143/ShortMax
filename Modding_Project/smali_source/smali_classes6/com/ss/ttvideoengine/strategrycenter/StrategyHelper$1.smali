.class Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$1;
.super Ljava/lang/Object;
.source "StrategyHelper.java"

# interfaces
.implements Lcom/bytedance/vcloud/strategy/IStrategyStateSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->internalStart(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$1;->this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getNetworkScore()D
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->getInstance()Lcom/ss/ttvideoengine/log/PortraitNetworkScore;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->getLastTargetBitrate()D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public getNetworkSpeed()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$1;->this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->access$100(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Lcom/ss/ttvideoengine/strategrycenter/IStrategyStateSupplier;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$1;->this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->access$100(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Lcom/ss/ttvideoengine/strategrycenter/IStrategyStateSupplier;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/ss/ttvideoengine/strategrycenter/IStrategyStateSupplier;->getNetworkSpeed()D

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    return-wide v0

    .line 20
    :cond_0
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    return-wide v0
.end method

.method public getNetworkType()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getInstance()Lcom/ss/ttvideoengine/TTNetWorkListener;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getCurrentAccessType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->access$200(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public mediaInfoJsonString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$1;->this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->access$100(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Lcom/ss/ttvideoengine/strategrycenter/IStrategyStateSupplier;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$1;->this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->access$100(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Lcom/ss/ttvideoengine/strategrycenter/IStrategyStateSupplier;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/strategrycenter/IStrategyStateSupplier;->mediaInfo(Ljava/lang/String;)Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    return-object v1
.end method

.method public onAfterSelect(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "[GearStrategy] StrategyHelper.onAfterSelect type="

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v0, " context="

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "VCStrategy"

    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    instance-of p1, p4, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    check-cast p4, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;

    .line 37
    .line 38
    invoke-virtual {p4}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->getGearStrategyListener()Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-object p1, v1

    .line 44
    move-object p4, p1

    .line 45
    :goto_0
    if-nez p1, :cond_1

    .line 46
    .line 47
    invoke-static {}, Lcom/ss/ttvideoengine/TTVideoEngine;->getGearStrategyConfig()Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getGearStrategyListener()Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    :cond_1
    if-nez p1, :cond_2

    .line 58
    .line 59
    const-string p1, "listener is null"

    .line 60
    .line 61
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-object p2

    .line 65
    :cond_2
    if-eqz p4, :cond_4

    .line 66
    .line 67
    invoke-virtual {p4}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->getUserData()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p4}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->getVideoEngineRef()Ljava/lang/ref/WeakReference;

    .line 72
    .line 73
    .line 74
    move-result-object p4

    .line 75
    if-eqz p4, :cond_3

    .line 76
    .line 77
    invoke-virtual {p4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p4

    .line 81
    check-cast p4, Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    move-object p4, v1

    .line 85
    goto :goto_1

    .line 86
    :cond_4
    move-object p4, v1

    .line 87
    move-object v0, p4

    .line 88
    :goto_1
    new-instance v2, Ljava/util/HashMap;

    .line 89
    .line 90
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 91
    .line 92
    .line 93
    iget-object v3, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$1;->this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 94
    .line 95
    invoke-static {v3, p2, v2}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->access$300(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 96
    .line 97
    .line 98
    if-eqz p4, :cond_5

    .line 99
    .line 100
    const/16 p2, 0x6d

    .line 101
    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 103
    .line 104
    .line 105
    move-result-wide v3

    .line 106
    invoke-virtual {p4, p2, v3, v4}, Lcom/ss/ttvideoengine/TTVideoEngine;->setLoggerLongOption(IJ)V

    .line 107
    .line 108
    .line 109
    :cond_5
    invoke-interface {p1, v1, v2, p3, v0}, Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;->onAfterSelect(Lcom/ss/ttvideoengine/model/IVideoModel;Ljava/util/Map;ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    if-eqz p4, :cond_a

    .line 113
    .line 114
    const/16 p1, 0x6e

    .line 115
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 117
    .line 118
    .line 119
    move-result-wide p2

    .line 120
    invoke-virtual {p4, p1, p2, p3}, Lcom/ss/ttvideoengine/TTVideoEngine;->setLoggerLongOption(IJ)V

    .line 121
    .line 122
    .line 123
    const-string/jumbo p1, "video_bitrarte_user_selected"

    .line 124
    .line 125
    .line 126
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    const/16 p3, 0x66

    .line 131
    .line 132
    const/16 v0, 0x65

    .line 133
    .line 134
    if-eqz p2, :cond_6

    .line 135
    .line 136
    :try_start_0
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    check-cast p1, Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 143
    .line 144
    .line 145
    move-result-wide p1

    .line 146
    invoke-virtual {p4, v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngine;->setLoggerLongOption(IJ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .line 148
    .line 149
    :catch_0
    const/16 p1, 0x9

    .line 150
    .line 151
    invoke-virtual {p4, p3, p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->setLoggerIntOption(II)V

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_6
    const-string/jumbo p1, "video_bitrarte"

    .line 156
    .line 157
    .line 158
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    if-eqz p2, :cond_7

    .line 163
    .line 164
    :try_start_1
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    check-cast p1, Ljava/lang/String;

    .line 169
    .line 170
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 171
    .line 172
    .line 173
    move-result-wide p1

    .line 174
    invoke-virtual {p4, v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngine;->setLoggerLongOption(IJ)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    .line 176
    .line 177
    :catch_1
    :cond_7
    const-string p1, "select_reason"

    .line 178
    .line 179
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    if-eqz p2, :cond_8

    .line 184
    .line 185
    :try_start_2
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    check-cast p1, Ljava/lang/String;

    .line 190
    .line 191
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    invoke-virtual {p4, p3, p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->setLoggerIntOption(II)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 196
    .line 197
    .line 198
    :catch_2
    :cond_8
    const-string/jumbo p1, "speed"

    .line 199
    .line 200
    .line 201
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result p2

    .line 205
    if-eqz p2, :cond_9

    .line 206
    .line 207
    :try_start_3
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    check-cast p1, Ljava/lang/String;

    .line 212
    .line 213
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 214
    .line 215
    .line 216
    move-result-wide p1

    .line 217
    const/16 p3, 0x67

    .line 218
    .line 219
    invoke-virtual {p4, p3, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngine;->setLoggerLongOption(IJ)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 220
    .line 221
    .line 222
    :catch_3
    :cond_9
    const/16 p1, 0x68

    .line 223
    .line 224
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result p2

    .line 232
    if-eqz p2, :cond_a

    .line 233
    .line 234
    :try_start_4
    const-string p2, "error_code"

    .line 235
    .line 236
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    check-cast p2, Ljava/lang/String;

    .line 241
    .line 242
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    move-result p2

    .line 246
    invoke-virtual {p4, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngine;->setLoggerIntOption(II)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 247
    .line 248
    .line 249
    :catch_4
    :cond_a
    :goto_2
    const-string p1, ""

    .line 250
    .line 251
    return-object p1
.end method

.method public onBeforeSelect(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "[GearStrategy] StrategyHelper.onBeforeSelect type="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " context="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "VCStrategy"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    instance-of v0, p4, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    check-cast p4, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;

    .line 37
    .line 38
    invoke-virtual {p4}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->getGearStrategyListener()Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-object p4, v2

    .line 44
    move-object v0, p4

    .line 45
    :goto_0
    if-nez v0, :cond_1

    .line 46
    .line 47
    invoke-static {}, Lcom/ss/ttvideoengine/TTVideoEngine;->getGearStrategyConfig()Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getGearStrategyListener()Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :cond_1
    if-nez v0, :cond_2

    .line 58
    .line 59
    const-string p1, "listener is null"

    .line 60
    .line 61
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-object p2

    .line 65
    :cond_2
    if-eqz p4, :cond_4

    .line 66
    .line 67
    invoke-virtual {p4}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->getUserData()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p4}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->getVideoModel()Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {p4}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->getVideoEngineRef()Ljava/lang/ref/WeakReference;

    .line 76
    .line 77
    .line 78
    move-result-object p4

    .line 79
    if-eqz p4, :cond_3

    .line 80
    .line 81
    invoke-virtual {p4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p4

    .line 85
    move-object v2, p4

    .line 86
    check-cast v2, Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 87
    .line 88
    :cond_3
    move-object p4, v2

    .line 89
    move-object v2, v3

    .line 90
    goto :goto_1

    .line 91
    :cond_4
    move-object p4, v2

    .line 92
    move-object v1, p4

    .line 93
    :goto_1
    if-nez v2, :cond_5

    .line 94
    .line 95
    new-instance v2, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;

    .line 96
    .line 97
    invoke-direct {v2}, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->build()Lcom/ss/ttvideoengine/model/BareVideoModel;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-interface {v2, p1}, Lcom/ss/ttvideoengine/model/IVideoModel;->fromMediaInfoJsonString(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    :cond_5
    new-instance p1, Ljava/util/HashMap;

    .line 108
    .line 109
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 110
    .line 111
    .line 112
    iget-object v3, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$1;->this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 113
    .line 114
    invoke-static {v3, p2, p1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->access$300(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 115
    .line 116
    .line 117
    if-eqz p4, :cond_6

    .line 118
    .line 119
    const/16 p2, 0x6b

    .line 120
    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 122
    .line 123
    .line 124
    move-result-wide v3

    .line 125
    invoke-virtual {p4, p2, v3, v4}, Lcom/ss/ttvideoengine/TTVideoEngine;->setLoggerLongOption(IJ)V

    .line 126
    .line 127
    .line 128
    :cond_6
    invoke-interface {v0, v2, p1, p3, v1}, Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;->onBeforeSelect(Lcom/ss/ttvideoengine/model/IVideoModel;Ljava/util/Map;ILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    if-eqz p4, :cond_7

    .line 132
    .line 133
    const/16 p2, 0x6c

    .line 134
    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 136
    .line 137
    .line 138
    move-result-wide v0

    .line 139
    invoke-virtual {p4, p2, v0, v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->setLoggerLongOption(IJ)V

    .line 140
    .line 141
    .line 142
    :cond_7
    iget-object p2, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$1;->this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 143
    .line 144
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    const/4 p3, 0x2

    .line 149
    invoke-interface {v2, p3}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoRefStr(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p3

    .line 153
    const-string p4, ""

    .line 154
    .line 155
    invoke-interface {v2}, Lcom/ss/ttvideoengine/model/IVideoModel;->toMediaInfoJsonString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {p2, p3, p4, v0}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->updateMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object p2, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$1;->this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 163
    .line 164
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->access$400(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;Ljava/util/Map;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    return-object p1
.end method

.method public selectBitrateJsonString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$1;->this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    invoke-static {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->access$100(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Lcom/ss/ttvideoengine/strategrycenter/IStrategyStateSupplier;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$1;->this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    invoke-static {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->access$100(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Lcom/ss/ttvideoengine/strategrycenter/IStrategyStateSupplier;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/strategrycenter/IStrategyStateSupplier;->selectBitrate(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v1
.end method

.method public selectBitrateJsonString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$1;->this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    invoke-static {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->access$100(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Lcom/ss/ttvideoengine/strategrycenter/IStrategyStateSupplier;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$1;->this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 7
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->access$100(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Lcom/ss/ttvideoengine/strategrycenter/IStrategyStateSupplier;

    move-result-object v0

    new-instance v2, Lcom/ss/ttvideoengine/strategrycenter/StrategyMediaParam;

    invoke-direct {v2, p1, p2, p3}, Lcom/ss/ttvideoengine/strategrycenter/StrategyMediaParam;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Lcom/ss/ttvideoengine/strategrycenter/IStrategyStateSupplier;->selectBitrate(Lcom/ss/ttvideoengine/strategrycenter/StrategyMediaParam;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v1
.end method
