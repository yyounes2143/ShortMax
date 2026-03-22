.class Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;
.super Ljava/lang/Object;
.source "PortraitNetworkScore.java"

# interfaces
.implements Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/log/PortraitNetworkScore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkQualityAlgorithmV1"
.end annotation


# instance fields
.field private mLastNetworkScore:I

.field private mLevelCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRttCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mSigCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ss/ttvideoengine/log/PortraitNetworkScore;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/log/PortraitNetworkScore;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->this$0:Lcom/ss/ttvideoengine/log/PortraitNetworkScore;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mRttCodeMap:Ljava/util/Map;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mSigCodeMap:Ljava/util/Map;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mLevelCodeMap:Ljava/util/Map;

    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mLastNetworkScore:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->init()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private _jsonStringToMap(Ljava/lang/String;Z)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    new-instance p2, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p1

    .line 42
    goto :goto_2

    .line 43
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v0, Lorg/json/JSONObject;

    .line 49
    .line 50
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 70
    .line 71
    .line 72
    move-result-wide v2

    .line 73
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    return-object p2

    .line 82
    :goto_2
    const-string p2, "PortraitNetworkScore"

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {p2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1
.end method

.method private setDefaultLevelMap()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mLevelCodeMap:Ljava/util/Map;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "1_1"

    .line 14
    .line 15
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mLevelCodeMap:Ljava/util/Map;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "1_2"

    .line 26
    .line 27
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mLevelCodeMap:Ljava/util/Map;

    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "1_3"

    .line 38
    .line 39
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mLevelCodeMap:Ljava/util/Map;

    .line 43
    .line 44
    const/4 v1, 0x3

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "2_1"

    .line 50
    .line 51
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mLevelCodeMap:Ljava/util/Map;

    .line 55
    .line 56
    const/4 v1, 0x4

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v2, "2_2"

    .line 62
    .line 63
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mLevelCodeMap:Ljava/util/Map;

    .line 67
    .line 68
    const/4 v1, 0x5

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const-string v2, "1_4"

    .line 74
    .line 75
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mLevelCodeMap:Ljava/util/Map;

    .line 79
    .line 80
    const/4 v1, 0x6

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const-string v2, "2_3"

    .line 86
    .line 87
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mLevelCodeMap:Ljava/util/Map;

    .line 91
    .line 92
    const/4 v1, 0x7

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const-string v2, "3_1"

    .line 98
    .line 99
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mLevelCodeMap:Ljava/util/Map;

    .line 103
    .line 104
    const/16 v1, 0x8

    .line 105
    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    const-string v2, "3_2"

    .line 111
    .line 112
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mLevelCodeMap:Ljava/util/Map;

    .line 116
    .line 117
    const/16 v1, 0x9

    .line 118
    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    const-string v2, "3_3"

    .line 124
    .line 125
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mLevelCodeMap:Ljava/util/Map;

    .line 129
    .line 130
    const/16 v1, 0xa

    .line 131
    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    const-string v2, "2_4"

    .line 137
    .line 138
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mLevelCodeMap:Ljava/util/Map;

    .line 142
    .line 143
    const/16 v1, 0xb

    .line 144
    .line 145
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    const-string v2, "3_4"

    .line 150
    .line 151
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mLevelCodeMap:Ljava/util/Map;

    .line 155
    .line 156
    const/16 v1, 0xc

    .line 157
    .line 158
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    const-string v2, "4_1"

    .line 163
    .line 164
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mLevelCodeMap:Ljava/util/Map;

    .line 168
    .line 169
    const/16 v1, 0xd

    .line 170
    .line 171
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    const-string v2, "4_2"

    .line 176
    .line 177
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mLevelCodeMap:Ljava/util/Map;

    .line 181
    .line 182
    const/16 v1, 0xe

    .line 183
    .line 184
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    const-string v2, "4_3"

    .line 189
    .line 190
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mLevelCodeMap:Ljava/util/Map;

    .line 194
    .line 195
    const/16 v1, 0xf

    .line 196
    .line 197
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    const-string v2, "4_4"

    .line 202
    .line 203
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    return-void
.end method

.method private setDefaultRttMap()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mRttCodeMap:Ljava/util/Map;

    .line 7
    .line 8
    const-wide v1, 0x3ffccccccccccccdL    # 1.8

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "-1"

    .line 18
    .line 19
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mRttCodeMap:Ljava/util/Map;

    .line 23
    .line 24
    const-wide v1, 0x4057400000000000L    # 93.0

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "2"

    .line 34
    .line 35
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mRttCodeMap:Ljava/util/Map;

    .line 39
    .line 40
    const-wide v1, 0x4051800000000000L    # 70.0

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "3"

    .line 50
    .line 51
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mRttCodeMap:Ljava/util/Map;

    .line 55
    .line 56
    const-wide/high16 v1, 0x403a000000000000L    # 26.0

    .line 57
    .line 58
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v2, "4"

    .line 63
    .line 64
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mRttCodeMap:Ljava/util/Map;

    .line 68
    .line 69
    const-wide/high16 v1, 0x4028000000000000L    # 12.0

    .line 70
    .line 71
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const-string v2, "5"

    .line 76
    .line 77
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mRttCodeMap:Ljava/util/Map;

    .line 81
    .line 82
    const-wide/high16 v1, 0x401c000000000000L    # 7.0

    .line 83
    .line 84
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const-string v2, "6"

    .line 89
    .line 90
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mRttCodeMap:Ljava/util/Map;

    .line 94
    .line 95
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    .line 96
    .line 97
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    const-string v2, "7"

    .line 102
    .line 103
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mRttCodeMap:Ljava/util/Map;

    .line 107
    .line 108
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 109
    .line 110
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const-string v2, "8"

    .line 115
    .line 116
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method private setDefaultSigMap()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mSigCodeMap:Ljava/util/Map;

    .line 7
    .line 8
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 9
    .line 10
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "excellent"

    .line 15
    .line 16
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mSigCodeMap:Ljava/util/Map;

    .line 20
    .line 21
    const-wide v1, 0x4003333333333333L    # 2.4

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "good"

    .line 31
    .line 32
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mSigCodeMap:Ljava/util/Map;

    .line 36
    .line 37
    const-wide v1, 0x401599999999999aL    # 5.4

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string/jumbo v2, "unknown"

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mSigCodeMap:Ljava/util/Map;

    .line 53
    .line 54
    const-wide v1, 0x401e666666666666L    # 7.6

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v2, "medium"

    .line 64
    .line 65
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mSigCodeMap:Ljava/util/Map;

    .line 69
    .line 70
    const-wide v1, 0x403499999999999aL    # 20.6

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string/jumbo v2, "weak"

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mSigCodeMap:Ljava/util/Map;

    .line 86
    .line 87
    const-wide/high16 v1, 0x4042000000000000L    # 36.0

    .line 88
    .line 89
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string/jumbo v2, "unavailable"

    .line 94
    .line 95
    .line 96
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    return-void
.end method


# virtual methods
.method public calculateNetworkScore()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->this$0:Lcom/ss/ttvideoengine/log/PortraitNetworkScore;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->access$000(Lcom/ss/ttvideoengine/log/PortraitNetworkScore;)Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->getRttList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->this$0:Lcom/ss/ttvideoengine/log/PortraitNetworkScore;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->access$000(Lcom/ss/ttvideoengine/log/PortraitNetworkScore;)Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->getSignalStrengthList()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, v1, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mRttCodeMap:Ljava/util/Map;

    .line 24
    .line 25
    if-eqz v3, :cond_10

    .line 26
    .line 27
    iget-object v3, v1, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mSigCodeMap:Ljava/util/Map;

    .line 28
    .line 29
    if-eqz v3, :cond_10

    .line 30
    .line 31
    iget-object v3, v1, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mLevelCodeMap:Ljava/util/Map;

    .line 32
    .line 33
    if-eqz v3, :cond_10

    .line 34
    .line 35
    if-eqz v0, :cond_10

    .line 36
    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    goto/16 :goto_c

    .line 40
    .line 41
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_10

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    goto/16 :goto_c

    .line 54
    .line 55
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    const/4 v4, 0x0

    .line 60
    const-wide/16 v5, 0x0

    .line 61
    .line 62
    move v7, v4

    .line 63
    move-wide v8, v5

    .line 64
    :goto_0
    const-string v10, "PortraitNetworkScore"

    .line 65
    .line 66
    if-ge v7, v3, :cond_3

    .line 67
    .line 68
    :try_start_0
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v11

    .line 72
    check-cast v11, Ljava/lang/Integer;

    .line 73
    .line 74
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v11

    .line 78
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v11

    .line 82
    iget-object v12, v1, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mRttCodeMap:Ljava/util/Map;

    .line 83
    .line 84
    invoke-interface {v12, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    if-eqz v12, :cond_2

    .line 89
    .line 90
    iget-object v12, v1, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mRttCodeMap:Ljava/util/Map;

    .line 91
    .line 92
    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v11

    .line 96
    check-cast v11, Ljava/lang/Double;

    .line 97
    .line 98
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    .line 99
    .line 100
    .line 101
    move-result-wide v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    goto :goto_2

    .line 105
    :cond_2
    move-wide v10, v5

    .line 106
    :goto_1
    add-double/2addr v8, v10

    .line 107
    add-int/lit8 v7, v7, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v10, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_3
    int-to-double v11, v3

    .line 119
    div-double/2addr v8, v11

    .line 120
    :goto_3
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 121
    .line 122
    cmpg-double v0, v8, v11

    .line 123
    .line 124
    if-gez v0, :cond_4

    .line 125
    .line 126
    return-void

    .line 127
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    move-wide v13, v5

    .line 132
    :goto_4
    if-ge v4, v0, :cond_7

    .line 133
    .line 134
    :try_start_1
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    check-cast v3, Ljava/lang/String;

    .line 139
    .line 140
    if-nez v3, :cond_5

    .line 141
    .line 142
    goto :goto_6

    .line 143
    :cond_5
    iget-object v7, v1, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mSigCodeMap:Ljava/util/Map;

    .line 144
    .line 145
    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    if-eqz v7, :cond_6

    .line 150
    .line 151
    iget-object v7, v1, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mSigCodeMap:Ljava/util/Map;

    .line 152
    .line 153
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    check-cast v3, Ljava/lang/Double;

    .line 158
    .line 159
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 160
    .line 161
    .line 162
    move-result-wide v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 163
    goto :goto_5

    .line 164
    :catch_1
    move-exception v0

    .line 165
    goto :goto_7

    .line 166
    :cond_6
    move-wide v15, v5

    .line 167
    :goto_5
    add-double/2addr v13, v15

    .line 168
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-static {v10, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    goto :goto_8

    .line 179
    :cond_7
    int-to-double v2, v0

    .line 180
    div-double/2addr v13, v2

    .line 181
    :goto_8
    cmpg-double v0, v13, v11

    .line 182
    .line 183
    if-gez v0, :cond_8

    .line 184
    .line 185
    return-void

    .line 186
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 192
    .line 193
    cmpg-double v2, v8, v2

    .line 194
    .line 195
    const/16 v3, 0x34

    .line 196
    .line 197
    const/16 v4, 0x33

    .line 198
    .line 199
    const/16 v5, 0x32

    .line 200
    .line 201
    const/16 v6, 0x31

    .line 202
    .line 203
    if-gtz v2, :cond_9

    .line 204
    .line 205
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    goto :goto_9

    .line 209
    :cond_9
    const-wide/high16 v15, 0x4026000000000000L    # 11.0

    .line 210
    .line 211
    cmpg-double v2, v8, v15

    .line 212
    .line 213
    if-gtz v2, :cond_a

    .line 214
    .line 215
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    goto :goto_9

    .line 219
    :cond_a
    const-wide/high16 v15, 0x403a000000000000L    # 26.0

    .line 220
    .line 221
    cmpg-double v2, v8, v15

    .line 222
    .line 223
    if-gtz v2, :cond_b

    .line 224
    .line 225
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    goto :goto_9

    .line 229
    :cond_b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    :goto_9
    const/16 v2, 0x5f

    .line 233
    .line 234
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    cmpl-double v2, v13, v11

    .line 238
    .line 239
    if-nez v2, :cond_c

    .line 240
    .line 241
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    goto :goto_a

    .line 245
    :cond_c
    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    .line 246
    .line 247
    cmpg-double v2, v13, v6

    .line 248
    .line 249
    if-gtz v2, :cond_d

    .line 250
    .line 251
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    goto :goto_a

    .line 255
    :cond_d
    const-wide/high16 v5, 0x401c000000000000L    # 7.0

    .line 256
    .line 257
    cmpg-double v2, v13, v5

    .line 258
    .line 259
    if-gtz v2, :cond_e

    .line 260
    .line 261
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    goto :goto_a

    .line 265
    :cond_e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    :goto_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mLevelCodeMap:Ljava/util/Map;

    .line 273
    .line 274
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    if-eqz v2, :cond_f

    .line 279
    .line 280
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mLevelCodeMap:Ljava/util/Map;

    .line 281
    .line 282
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    check-cast v2, Ljava/lang/Integer;

    .line 287
    .line 288
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    goto :goto_b

    .line 293
    :cond_f
    const/4 v2, -0x1

    .line 294
    :goto_b
    iput v2, v1, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mLastNetworkScore:I

    .line 295
    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .line 300
    .line 301
    const-string v3, "rtt score:"

    .line 302
    .line 303
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    const-string v3, " sig score:"

    .line 310
    .line 311
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    const-string v3, " level:"

    .line 318
    .line 319
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-static {v10, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    :cond_10
    :goto_c
    return-void
.end method

.method public calculateTargetBitrate(Ljava/util/List;Ljava/util/List;)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)D"
        }
    .end annotation

    .line 1
    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    .line 2
    .line 3
    return-wide p1
.end method

.method public getLastNetworkScore()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mLastNetworkScore:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->calculateNetworkScore()V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mLastNetworkScore:I

    .line 10
    .line 11
    return v0
.end method

.method public getNetworkScore()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->calculateNetworkScore()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mLastNetworkScore:I

    .line 5
    .line 6
    return v0
.end method

.method public init()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->setDefaultRttMap()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->setDefaultSigMap()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->setDefaultLevelMap()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setStringOption(ILjava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p1, v0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x5

    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x1

    .line 13
    :try_start_0
    invoke-direct {p0, p2, p1}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->_jsonStringToMap(Ljava/lang/String;Z)Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mLevelCodeMap:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->setDefaultLevelMap()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    :try_start_1
    invoke-direct {p0, p2, v1}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->_jsonStringToMap(Ljava/lang/String;Z)Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mSigCodeMap:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->setDefaultSigMap()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    :try_start_2
    invoke-direct {p0, p2, v1}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->_jsonStringToMap(Ljava/lang/String;Z)Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->mRttCodeMap:Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_2
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;->setDefaultRttMap()V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method
