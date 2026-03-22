.class public Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;
.super Ljava/lang/Object;
.source "SRStrategyConfig.java"


# static fields
.field public static final KEY_EFFECT:I = 0x1


# instance fields
.field private mCurrentDuration:Ljava/lang/Integer;

.field private mCurrentFps:Ljava/lang/Float;

.field private mCurrentHeight:Ljava/lang/Integer;

.field private mCurrentPower:Ljava/lang/Integer;

.field private mCurrentScene:Ljava/lang/Integer;

.field private mCurrentVideoFormatType:Ljava/lang/Integer;

.field private mCurrentWidth:Ljava/lang/Integer;

.field private mEffectBuddle:Landroid/os/Bundle;

.field private mEnableHdr:Ljava/lang/Boolean;

.field private mEnableSR:Ljava/lang/Boolean;

.field private mEnableSpeed:Ljava/lang/Boolean;

.field private mExtraConfig:Ljava/lang/String;

.field private mExtraInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCharging:Ljava/lang/Boolean;

.field private mIsHdr:Ljava/lang/Boolean;

.field private mIsSpeed:Ljava/lang/Boolean;

.field private mMaxDuration:Ljava/lang/Long;

.field private mMaxFps:Ljava/lang/Float;

.field private mMaxHeight:Ljava/lang/Integer;

.field private mMaxWidth:Ljava/lang/Integer;

.field private mMinDuration:Ljava/lang/Long;

.field private mMinPower:Ljava/lang/Integer;

.field private mResolutionChanged:Ljava/lang/Boolean;

.field private mSRPercent:Ljava/lang/Integer;

.field private mScreenWidth:Ljava/lang/Integer;

.field mStatusListener:Lcom/ss/ttvideoengine/superresolution/ISRStatusListener;

.field mStrategyListener:Lcom/ss/ttvideoengine/superresolution/ISRStrategyListener;

.field private mStrategyType:Ljava/lang/Integer;

.field private mSupportScene:Ljava/lang/Integer;

.field private mVideoFormatType:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mExtraInfo:Ljava/util/Map;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->resetAll()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static newConfig()Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public enableSR(Z)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mEnableSR:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-object p0
.end method

.method public enableSpeed(Z)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mEnableSpeed:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-object p0
.end method

.method public getCurrentDuration()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentDuration:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrentFps()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentFps:Ljava/lang/Float;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrentHeight()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentHeight:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrentPower()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentPower:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrentScene()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentScene:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrentVideoFormatType()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentVideoFormatType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrentWidth()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentWidth:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEnableHdr()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mEnableHdr:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEnableSR()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mEnableSR:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEnableSpeed()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mEnableSpeed:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtraConfig()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mExtraConfig:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtraInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mExtraInfo:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIsCharging()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mIsCharging:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIsHdr()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mIsHdr:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIsSpeed()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mIsSpeed:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getJson()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mEnableSR:Ljava/lang/Boolean;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v2, "e"

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v1

    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mStrategyType:Ljava/lang/Integer;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const-string/jumbo v2, "st"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mMaxWidth:Ljava/lang/Integer;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    const-string v2, "mw"

    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    :cond_2
    iget-object v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mMaxHeight:Ljava/lang/Integer;

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    const-string v2, "mh"

    .line 47
    .line 48
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    :cond_3
    iget-object v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mScreenWidth:Ljava/lang/Integer;

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    const-string/jumbo v2, "sw"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    :cond_4
    iget-object v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentWidth:Ljava/lang/Integer;

    .line 62
    .line 63
    if-eqz v1, :cond_5

    .line 64
    .line 65
    const-string v2, "cw"

    .line 66
    .line 67
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    :cond_5
    iget-object v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentHeight:Ljava/lang/Integer;

    .line 71
    .line 72
    if-eqz v1, :cond_6

    .line 73
    .line 74
    const-string v2, "ch"

    .line 75
    .line 76
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    .line 78
    .line 79
    :cond_6
    iget-object v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mVideoFormatType:Ljava/lang/Integer;

    .line 80
    .line 81
    if-eqz v1, :cond_7

    .line 82
    .line 83
    const-string v2, "ft"

    .line 84
    .line 85
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    .line 87
    .line 88
    :cond_7
    iget-object v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentVideoFormatType:Ljava/lang/Integer;

    .line 89
    .line 90
    if-eqz v1, :cond_8

    .line 91
    .line 92
    const-string v2, "cft"

    .line 93
    .line 94
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    .line 96
    .line 97
    :cond_8
    iget-object v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mMinDuration:Ljava/lang/Long;

    .line 98
    .line 99
    if-eqz v1, :cond_9

    .line 100
    .line 101
    const-string v2, "mid"

    .line 102
    .line 103
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    .line 105
    .line 106
    :cond_9
    iget-object v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mMaxDuration:Ljava/lang/Long;

    .line 107
    .line 108
    if-eqz v1, :cond_a

    .line 109
    .line 110
    const-string v2, "mad"

    .line 111
    .line 112
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    .line 114
    .line 115
    :cond_a
    iget-object v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentDuration:Ljava/lang/Integer;

    .line 116
    .line 117
    if-eqz v1, :cond_b

    .line 118
    .line 119
    const-string v2, "cd"

    .line 120
    .line 121
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    .line 123
    .line 124
    :cond_b
    iget-object v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mSupportScene:Ljava/lang/Integer;

    .line 125
    .line 126
    if-eqz v1, :cond_c

    .line 127
    .line 128
    const-string/jumbo v2, "ss"

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    .line 133
    .line 134
    :cond_c
    iget-object v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentScene:Ljava/lang/Integer;

    .line 135
    .line 136
    if-eqz v1, :cond_d

    .line 137
    .line 138
    const-string v2, "cs"

    .line 139
    .line 140
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    .line 142
    .line 143
    :cond_d
    iget-object v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mEnableSpeed:Ljava/lang/Boolean;

    .line 144
    .line 145
    if-eqz v1, :cond_e

    .line 146
    .line 147
    const-string v2, "es"

    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 154
    .line 155
    .line 156
    :cond_e
    iget-object v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mIsSpeed:Ljava/lang/Boolean;

    .line 157
    .line 158
    if-eqz v1, :cond_f

    .line 159
    .line 160
    const-string v2, "is"

    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 167
    .line 168
    .line 169
    :cond_f
    iget-object v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mMaxFps:Ljava/lang/Float;

    .line 170
    .line 171
    if-eqz v1, :cond_10

    .line 172
    .line 173
    const-string v2, "mf"

    .line 174
    .line 175
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    .line 177
    .line 178
    :cond_10
    iget-object v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentFps:Ljava/lang/Float;

    .line 179
    .line 180
    if-eqz v1, :cond_11

    .line 181
    .line 182
    const-string v2, "cf"

    .line 183
    .line 184
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    .line 186
    .line 187
    :cond_11
    iget-object v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mEnableHdr:Ljava/lang/Boolean;

    .line 188
    .line 189
    if-eqz v1, :cond_12

    .line 190
    .line 191
    const-string v2, "eh"

    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 198
    .line 199
    .line 200
    :cond_12
    iget-object v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mIsHdr:Ljava/lang/Boolean;

    .line 201
    .line 202
    if-eqz v1, :cond_13

    .line 203
    .line 204
    const-string v2, "ih"

    .line 205
    .line 206
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 211
    .line 212
    .line 213
    :cond_13
    iget-object v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mExtraInfo:Ljava/util/Map;

    .line 214
    .line 215
    if-eqz v1, :cond_14

    .line 216
    .line 217
    const-string v1, "ei"

    .line 218
    .line 219
    new-instance v2, Lorg/json/JSONObject;

    .line 220
    .line 221
    iget-object v3, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mExtraInfo:Ljava/util/Map;

    .line 222
    .line 223
    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .line 228
    .line 229
    goto :goto_2

    .line 230
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 231
    .line 232
    .line 233
    :cond_14
    :goto_2
    return-object v0
.end method

.method public getListener()Lcom/ss/ttvideoengine/superresolution/ISRStatusListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mStatusListener:Lcom/ss/ttvideoengine/superresolution/ISRStatusListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxDuration()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mMaxDuration:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxFps()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mMaxFps:Ljava/lang/Float;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxHeight()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mMaxHeight:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxWidth()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mMaxWidth:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMinDuration()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mMinDuration:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMinPower()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mMinPower:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResolutionChanged()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mResolutionChanged:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSRPercent()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mSRPercent:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScreenWidth()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mScreenWidth:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStrategyListener()Lcom/ss/ttvideoengine/superresolution/ISRStrategyListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mStrategyListener:Lcom/ss/ttvideoengine/superresolution/ISRStrategyListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStrategyType()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mStrategyType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSupportScene()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mSupportScene:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mEffectBuddle:Landroid/os/Bundle;

    .line 6
    .line 7
    :goto_0
    return-object p2
.end method

.method public getVideoFormatType()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mVideoFormatType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public resetAll()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mEnableSR:Ljava/lang/Boolean;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mVideoFormatType:Ljava/lang/Integer;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mMinDuration:Ljava/lang/Long;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mMaxDuration:Ljava/lang/Long;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mMinPower:Ljava/lang/Integer;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mSupportScene:Ljava/lang/Integer;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mEnableSpeed:Ljava/lang/Boolean;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mSRPercent:Ljava/lang/Integer;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mMaxWidth:Ljava/lang/Integer;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mMaxHeight:Ljava/lang/Integer;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mMaxFps:Ljava/lang/Float;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mEnableHdr:Ljava/lang/Boolean;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentVideoFormatType:Ljava/lang/Integer;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentDuration:Ljava/lang/Integer;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentPower:Ljava/lang/Integer;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mIsCharging:Ljava/lang/Boolean;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentScene:Ljava/lang/Integer;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mIsSpeed:Ljava/lang/Boolean;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentWidth:Ljava/lang/Integer;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentHeight:Ljava/lang/Integer;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentFps:Ljava/lang/Float;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mIsHdr:Ljava/lang/Boolean;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mExtraConfig:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mExtraInfo:Ljava/util/Map;

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mStatusListener:Lcom/ss/ttvideoengine/superresolution/ISRStatusListener;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mResolutionChanged:Ljava/lang/Boolean;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mStrategyType:Ljava/lang/Integer;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mScreenWidth:Ljava/lang/Integer;

    .line 60
    .line 61
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mStrategyListener:Lcom/ss/ttvideoengine/superresolution/ISRStrategyListener;

    .line 62
    .line 63
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mEffectBuddle:Landroid/os/Bundle;

    .line 64
    .line 65
    return-void
.end method

.method public resetStream()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mMaxFps:Ljava/lang/Float;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentVideoFormatType:Ljava/lang/Integer;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentDuration:Ljava/lang/Integer;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentWidth:Ljava/lang/Integer;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentHeight:Ljava/lang/Integer;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentFps:Ljava/lang/Float;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mIsHdr:Ljava/lang/Boolean;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mResolutionChanged:Ljava/lang/Boolean;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mIsSpeed:Ljava/lang/Boolean;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mStrategyType:Ljava/lang/Integer;

    .line 21
    .line 22
    return-void
.end method

.method public resolutionChanged(Z)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mResolutionChanged:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-object p0
.end method

.method public setCurrentDuration(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentDuration:Ljava/lang/Integer;

    .line 6
    .line 7
    return-void
.end method

.method public setCurrentFps(F)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentFps:Ljava/lang/Float;

    .line 6
    .line 7
    return-object p0
.end method

.method public setCurrentHeight(I)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentHeight:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public setCurrentPower(I)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentPower:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public setCurrentScene(I)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentScene:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public setCurrentVideoFormatType(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentVideoFormatType:Ljava/lang/Integer;

    .line 6
    .line 7
    return-void
.end method

.method public setCurrentWidth(I)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentWidth:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public setDurationRangeSecond(JJ)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mMinDuration:Ljava/lang/Long;

    .line 6
    .line 7
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mMaxDuration:Ljava/lang/Long;

    .line 12
    .line 13
    return-object p0
.end method

.method public setEnableHdr(Z)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mEnableHdr:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-object p0
.end method

.method public setExtraConfig(Ljava/lang/String;)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mExtraConfig:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setExtraInfo(Ljava/util/Map;)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mExtraInfo:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public setIsCharging(Z)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mIsCharging:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-object p0
.end method

.method public setIsHdr(Z)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mIsHdr:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-object p0
.end method

.method public setIsSpeed(Z)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mIsSpeed:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-object p0
.end method

.method public setListener(Lcom/ss/ttvideoengine/superresolution/ISRStatusListener;)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mStatusListener:Lcom/ss/ttvideoengine/superresolution/ISRStatusListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMaxFps(F)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mMaxFps:Ljava/lang/Float;

    .line 6
    .line 7
    return-object p0
.end method

.method public setMaxHeight(I)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mMaxHeight:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public setMaxWidth(I)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mMaxWidth:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public setMinPower(I)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mMinPower:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public setSRPercent(I)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mSRPercent:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public setScreenWidth(I)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mScreenWidth:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public setStrategyListener(Lcom/ss/ttvideoengine/superresolution/ISRStrategyListener;)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mStrategyListener:Lcom/ss/ttvideoengine/superresolution/ISRStrategyListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public setStrategyType(I)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mStrategyType:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public setSupportScene(I)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mSupportScene:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public setValue(ILjava/lang/Object;)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    check-cast p2, Landroid/os/Bundle;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mEffectBuddle:Landroid/os/Bundle;

    .line 8
    .line 9
    :goto_0
    return-object p0
.end method

.method public setVideoFormatType(I)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mVideoFormatType:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getJson()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public updateFrom(Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getResolutionChanged()Ljava/lang/Boolean;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mResolutionChanged:Ljava/lang/Boolean;

    .line 11
    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getEnableSR()Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mEnableSR:Ljava/lang/Boolean;

    .line 19
    .line 20
    :cond_2
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getVideoFormatType()Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mVideoFormatType:Ljava/lang/Integer;

    .line 27
    .line 28
    :cond_3
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getMinDuration()Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_4

    .line 33
    .line 34
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mMinDuration:Ljava/lang/Long;

    .line 35
    .line 36
    :cond_4
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getMaxDuration()Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_5

    .line 41
    .line 42
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mMaxDuration:Ljava/lang/Long;

    .line 43
    .line 44
    :cond_5
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getMinPower()Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_6

    .line 49
    .line 50
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mMinPower:Ljava/lang/Integer;

    .line 51
    .line 52
    :cond_6
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getSupportScene()Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_7

    .line 57
    .line 58
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mSupportScene:Ljava/lang/Integer;

    .line 59
    .line 60
    :cond_7
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getEnableSpeed()Ljava/lang/Boolean;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_8

    .line 65
    .line 66
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mEnableSpeed:Ljava/lang/Boolean;

    .line 67
    .line 68
    :cond_8
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getSRPercent()Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_9

    .line 73
    .line 74
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mSRPercent:Ljava/lang/Integer;

    .line 75
    .line 76
    :cond_9
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getMaxWidth()Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-eqz v0, :cond_a

    .line 81
    .line 82
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mMaxWidth:Ljava/lang/Integer;

    .line 83
    .line 84
    :cond_a
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getMaxHeight()Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-eqz v0, :cond_b

    .line 89
    .line 90
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mMaxHeight:Ljava/lang/Integer;

    .line 91
    .line 92
    :cond_b
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getMaxFps()Ljava/lang/Float;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_c

    .line 97
    .line 98
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mMaxFps:Ljava/lang/Float;

    .line 99
    .line 100
    :cond_c
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getEnableHdr()Ljava/lang/Boolean;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    if-eqz v0, :cond_d

    .line 105
    .line 106
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mEnableHdr:Ljava/lang/Boolean;

    .line 107
    .line 108
    :cond_d
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getCurrentVideoFormatType()Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    if-eqz v0, :cond_e

    .line 113
    .line 114
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentVideoFormatType:Ljava/lang/Integer;

    .line 115
    .line 116
    :cond_e
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getCurrentDuration()Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    if-eqz v0, :cond_f

    .line 121
    .line 122
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentDuration:Ljava/lang/Integer;

    .line 123
    .line 124
    :cond_f
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getCurrentPower()Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    if-eqz v0, :cond_10

    .line 129
    .line 130
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentPower:Ljava/lang/Integer;

    .line 131
    .line 132
    :cond_10
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getIsCharging()Ljava/lang/Boolean;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    if-eqz v0, :cond_11

    .line 137
    .line 138
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mIsCharging:Ljava/lang/Boolean;

    .line 139
    .line 140
    :cond_11
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getCurrentScene()Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    if-eqz v0, :cond_12

    .line 145
    .line 146
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentScene:Ljava/lang/Integer;

    .line 147
    .line 148
    :cond_12
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getIsSpeed()Ljava/lang/Boolean;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    if-eqz v0, :cond_13

    .line 153
    .line 154
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mIsSpeed:Ljava/lang/Boolean;

    .line 155
    .line 156
    :cond_13
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getCurrentWidth()Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    if-eqz v0, :cond_14

    .line 161
    .line 162
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentWidth:Ljava/lang/Integer;

    .line 163
    .line 164
    :cond_14
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getCurrentHeight()Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    if-eqz v0, :cond_15

    .line 169
    .line 170
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentHeight:Ljava/lang/Integer;

    .line 171
    .line 172
    :cond_15
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getCurrentFps()Ljava/lang/Float;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    if-eqz v0, :cond_16

    .line 177
    .line 178
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mCurrentFps:Ljava/lang/Float;

    .line 179
    .line 180
    :cond_16
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getIsHdr()Ljava/lang/Boolean;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    if-eqz v0, :cond_17

    .line 185
    .line 186
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mIsHdr:Ljava/lang/Boolean;

    .line 187
    .line 188
    :cond_17
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getListener()Lcom/ss/ttvideoengine/superresolution/ISRStatusListener;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    if-eqz v0, :cond_18

    .line 193
    .line 194
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mStatusListener:Lcom/ss/ttvideoengine/superresolution/ISRStatusListener;

    .line 195
    .line 196
    :cond_18
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getStrategyListener()Lcom/ss/ttvideoengine/superresolution/ISRStrategyListener;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    if-eqz v0, :cond_19

    .line 201
    .line 202
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mStrategyListener:Lcom/ss/ttvideoengine/superresolution/ISRStrategyListener;

    .line 203
    .line 204
    :cond_19
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getStrategyType()Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    if-eqz v0, :cond_1a

    .line 209
    .line 210
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mStrategyType:Ljava/lang/Integer;

    .line 211
    .line 212
    :cond_1a
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getScreenWidth()Ljava/lang/Integer;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    if-eqz v0, :cond_1b

    .line 217
    .line 218
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mScreenWidth:Ljava/lang/Integer;

    .line 219
    .line 220
    :cond_1b
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getExtraInfo()Ljava/util/Map;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    if-eqz v0, :cond_1c

    .line 225
    .line 226
    iget-object v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mExtraInfo:Ljava/util/Map;

    .line 227
    .line 228
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 229
    .line 230
    .line 231
    :cond_1c
    const/4 v0, 0x1

    .line 232
    const/4 v1, 0x0

    .line 233
    invoke-virtual {p1, v0, v1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getValue(ILjava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    if-eqz p1, :cond_1d

    .line 238
    .line 239
    check-cast p1, Landroid/os/Bundle;

    .line 240
    .line 241
    iput-object p1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->mEffectBuddle:Landroid/os/Bundle;

    .line 242
    .line 243
    :cond_1d
    return-void
.end method
