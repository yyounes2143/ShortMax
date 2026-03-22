.class Lcom/bytedance/vodsetting/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# static fields
.field public static final FILE:I = 0x2

.field private static final LoadLocalInit:I = 0x0

.field private static final LoadLocalLoadEnd:I = 0x2

.field private static final LoadLocalLoading:I = 0x1

.field public static final MEMORY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Storage"


# instance fields
.field public mContext:Landroid/content/Context;

.field private final mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mLoadLocaling:I

.field private final mName:Ljava/lang/String;

.field private mSP:Landroid/content/SharedPreferences;

.field public mSettingJson:Lorg/json/JSONObject;

.field private final mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mSettingJson:Lorg/json/JSONObject;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput v1, p0, Lcom/bytedance/vodsetting/Storage;->mLoadLocaling:I

    .line 18
    .line 19
    iput-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mSP:Landroid/content/SharedPreferences;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/bytedance/vodsetting/Storage;->mName:Ljava/lang/String;

    .line 22
    .line 23
    iput p2, p0, Lcom/bytedance/vodsetting/Storage;->mType:I

    .line 24
    .line 25
    return-void
.end method

.method private _storeJsonKey()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/bytedance/vodsetting/Storage;->mName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "_whole"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method


# virtual methods
.method public getInt(Ljava/lang/String;I)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return p2

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/bytedance/vodsetting/Storage;->tryToLoadLocal(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/bytedance/vodsetting/Storage;->mType:I

    .line 14
    .line 15
    and-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-lez v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mSettingJson:Lorg/json/JSONObject;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mSettingJson:Lorg/json/JSONObject;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-object v1, p0, Lcom/bytedance/vodsetting/Storage;->mSettingJson:Lorg/json/JSONObject;

    .line 46
    .line 47
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move v0, p2

    .line 53
    :goto_0
    iget-object v2, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    move v0, p2

    .line 64
    :goto_1
    if-nez v1, :cond_3

    .line 65
    .line 66
    iget v1, p0, Lcom/bytedance/vodsetting/Storage;->mType:I

    .line 67
    .line 68
    and-int/lit8 v1, v1, 0x2

    .line 69
    .line 70
    if-lez v1, :cond_3

    .line 71
    .line 72
    if-ne v0, p2, :cond_3

    .line 73
    .line 74
    iget-object v1, p0, Lcom/bytedance/vodsetting/Storage;->mSP:Landroid/content/SharedPreferences;

    .line 75
    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    new-instance p2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v1, "get int from SP, key = "

    .line 88
    .line 89
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string p1, ", retValue = "

    .line 96
    .line 97
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    const-string p2, "Storage"

    .line 108
    .line 109
    invoke-static {p2, p1}, Lcom/bytedance/vodsetting/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_3
    return v0
.end method

.method public getJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 5

    .line 1
    const-string v0, "Storage"

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/bytedance/vodsetting/Storage;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/bytedance/vodsetting/Storage;->tryToLoadLocal(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lcom/bytedance/vodsetting/Storage;->mType:I

    .line 17
    .line 18
    and-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    if-lez v1, :cond_2

    .line 21
    .line 22
    iget-object v1, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/bytedance/vodsetting/Storage;->mSettingJson:Lorg/json/JSONObject;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    iget-object v1, p0, Lcom/bytedance/vodsetting/Storage;->mSettingJson:Lorg/json/JSONObject;

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move-object v1, v2

    .line 49
    :goto_0
    iget-object v3, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move-object v1, v2

    .line 60
    :goto_1
    if-nez v1, :cond_3

    .line 61
    .line 62
    iget v3, p0, Lcom/bytedance/vodsetting/Storage;->mType:I

    .line 63
    .line 64
    and-int/lit8 v3, v3, 0x2

    .line 65
    .line 66
    if-lez v3, :cond_3

    .line 67
    .line 68
    iget-object v3, p0, Lcom/bytedance/vodsetting/Storage;->mSP:Landroid/content/SharedPreferences;

    .line 69
    .line 70
    if-eqz v3, :cond_3

    .line 71
    .line 72
    const-string v4, ""

    .line 73
    .line 74
    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-nez v4, :cond_3

    .line 83
    .line 84
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    .line 85
    .line 86
    invoke-direct {v1, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v4, "get JSONArray from SP, key= "

    .line 95
    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p1, ", retValue = "

    .line 103
    .line 104
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {v0, p1}, Lcom/bytedance/vodsetting/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    .line 117
    :cond_3
    move-object v2, v1

    .line 118
    goto :goto_2

    .line 119
    :catch_0
    move-exception p1

    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {v0, p1}, Lcom/bytedance/vodsetting/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :goto_2
    return-object v2
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/bytedance/vodsetting/Storage;->tryToLoadLocal(Landroid/content/Context;)Z

    .line 2
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/vodsetting/Storage;->mSettingJson:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/vodsetting/Storage;->mSettingJson:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_2

    .line 6
    :goto_1
    :try_start_1
    const-string v2, "Storage"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/vodsetting/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    return-object v0

    .line 7
    :goto_3
    iget-object v1, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .line 8
    const-string v0, "Storage"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/bytedance/vodsetting/Storage;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/bytedance/vodsetting/Storage;->tryToLoadLocal(Landroid/content/Context;)Z

    .line 10
    iget v1, p0, Lcom/bytedance/vodsetting/Storage;->mType:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 12
    iget-object v1, p0, Lcom/bytedance/vodsetting/Storage;->mSettingJson:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 14
    :goto_0
    iget-object v3, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_3

    .line 15
    :try_start_0
    iget v3, p0, Lcom/bytedance/vodsetting/Storage;->mType:I

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_3

    .line 16
    iget-object v3, p0, Lcom/bytedance/vodsetting/Storage;->mSP:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_3

    .line 17
    const-string v4, ""

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 19
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get jsonObject from SP, key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", retValue = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/vodsetting/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move-object v2, v1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/vodsetting/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-wide p2

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/bytedance/vodsetting/Storage;->tryToLoadLocal(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/bytedance/vodsetting/Storage;->mType:I

    .line 14
    .line 15
    and-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-lez v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mSettingJson:Lorg/json/JSONObject;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mSettingJson:Lorg/json/JSONObject;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    iget-object v2, p0, Lcom/bytedance/vodsetting/Storage;->mSettingJson:Lorg/json/JSONObject;

    .line 46
    .line 47
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move v2, v1

    .line 53
    move-wide v0, p2

    .line 54
    :goto_0
    iget-object v3, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    move v2, v1

    .line 65
    move-wide v0, p2

    .line 66
    :goto_1
    if-nez v2, :cond_3

    .line 67
    .line 68
    cmp-long v2, v0, p2

    .line 69
    .line 70
    if-nez v2, :cond_3

    .line 71
    .line 72
    iget v2, p0, Lcom/bytedance/vodsetting/Storage;->mType:I

    .line 73
    .line 74
    and-int/lit8 v2, v2, 0x2

    .line 75
    .line 76
    if-lez v2, :cond_3

    .line 77
    .line 78
    iget-object v2, p0, Lcom/bytedance/vodsetting/Storage;->mSP:Landroid/content/SharedPreferences;

    .line 79
    .line 80
    if-eqz v2, :cond_3

    .line 81
    .line 82
    invoke-interface {v2, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    new-instance p2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string p3, "get long from SP, key = "

    .line 92
    .line 93
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p1, ", retValue = "

    .line 100
    .line 101
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const-string p2, "Storage"

    .line 112
    .line 113
    invoke-static {p2, p1}, Lcom/bytedance/vodsetting/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_3
    return-wide v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p2

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/bytedance/vodsetting/Storage;->tryToLoadLocal(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/bytedance/vodsetting/Storage;->mType:I

    .line 14
    .line 15
    and-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    if-lez v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mSettingJson:Lorg/json/JSONObject;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mSettingJson:Lorg/json/JSONObject;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mSettingJson:Lorg/json/JSONObject;

    .line 47
    .line 48
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 59
    .line 60
    .line 61
    :cond_2
    if-nez v2, :cond_3

    .line 62
    .line 63
    if-nez v1, :cond_3

    .line 64
    .line 65
    iget v0, p0, Lcom/bytedance/vodsetting/Storage;->mType:I

    .line 66
    .line 67
    and-int/lit8 v0, v0, 0x2

    .line 68
    .line 69
    if-lez v0, :cond_3

    .line 70
    .line 71
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mSP:Landroid/content/SharedPreferences;

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v0, "get string from SP, key = "

    .line 85
    .line 86
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p1, ", retValue = "

    .line 93
    .line 94
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const-string p2, "Storage"

    .line 105
    .line 106
    invoke-static {p2, p1}, Lcom/bytedance/vodsetting/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    return-object v1
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/bytedance/vodsetting/Storage;->tryToLoadLocal(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/bytedance/vodsetting/Storage;->mType:I

    .line 14
    .line 15
    and-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    if-lez v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 26
    .line 27
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mSettingJson:Lorg/json/JSONObject;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_2

    .line 38
    :catch_0
    move-exception v0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 47
    .line 48
    .line 49
    goto :goto_3

    .line 50
    :goto_1
    :try_start_1
    const-string v1, "Storage"

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v1, v0}, Lcom/bytedance/vodsetting/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :goto_2
    iget-object p2, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_2
    :goto_3
    iget v0, p0, Lcom/bytedance/vodsetting/Storage;->mType:I

    .line 71
    .line 72
    and-int/lit8 v0, v0, 0x2

    .line 73
    .line 74
    if-lez v0, :cond_3

    .line 75
    .line 76
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mSP:Landroid/content/SharedPreferences;

    .line 77
    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 85
    .line 86
    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 88
    .line 89
    .line 90
    :cond_3
    return-void
.end method

.method public putJsonObject(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/bytedance/vodsetting/Storage;->tryToLoadLocal(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/bytedance/vodsetting/Storage;->mType:I

    .line 14
    .line 15
    and-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    if-lez v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 26
    .line 27
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mSettingJson:Lorg/json/JSONObject;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_2

    .line 38
    :catch_0
    move-exception v0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 47
    .line 48
    .line 49
    goto :goto_3

    .line 50
    :goto_1
    :try_start_1
    const-string v1, "Storage"

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v1, v0}, Lcom/bytedance/vodsetting/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :goto_2
    iget-object p2, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_2
    :goto_3
    iget v0, p0, Lcom/bytedance/vodsetting/Storage;->mType:I

    .line 71
    .line 72
    and-int/lit8 v0, v0, 0x2

    .line 73
    .line 74
    if-lez v0, :cond_3

    .line 75
    .line 76
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mSP:Landroid/content/SharedPreferences;

    .line 77
    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    .line 90
    .line 91
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 92
    .line 93
    .line 94
    :cond_3
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/bytedance/vodsetting/Storage;->tryToLoadLocal(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/bytedance/vodsetting/Storage;->mType:I

    .line 14
    .line 15
    and-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    if-lez v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 26
    .line 27
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mSettingJson:Lorg/json/JSONObject;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_2

    .line 38
    :catch_0
    move-exception v0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 47
    .line 48
    .line 49
    goto :goto_3

    .line 50
    :goto_1
    :try_start_1
    const-string v1, "Storage"

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v1, v0}, Lcom/bytedance/vodsetting/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :goto_2
    iget-object p2, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_2
    :goto_3
    iget v0, p0, Lcom/bytedance/vodsetting/Storage;->mType:I

    .line 71
    .line 72
    and-int/lit8 v0, v0, 0x2

    .line 73
    .line 74
    if-lez v0, :cond_3

    .line 75
    .line 76
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mSP:Landroid/content/SharedPreferences;

    .line 77
    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 85
    .line 86
    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 88
    .line 89
    .line 90
    :cond_3
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_4

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/bytedance/vodsetting/Storage;->tryToLoadLocal(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    iget v0, p0, Lcom/bytedance/vodsetting/Storage;->mType:I

    .line 20
    .line 21
    and-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    if-lez v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 32
    .line 33
    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mSettingJson:Lorg/json/JSONObject;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_2

    .line 44
    :catch_0
    move-exception v0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 53
    .line 54
    .line 55
    goto :goto_3

    .line 56
    :goto_1
    :try_start_1
    const-string v1, "Storage"

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v1, v0}, Lcom/bytedance/vodsetting/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :goto_2
    iget-object p2, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_2
    :goto_3
    iget v0, p0, Lcom/bytedance/vodsetting/Storage;->mType:I

    .line 77
    .line 78
    and-int/lit8 v0, v0, 0x2

    .line 79
    .line 80
    if-lez v0, :cond_3

    .line 81
    .line 82
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mSP:Landroid/content/SharedPreferences;

    .line 83
    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    .line 92
    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 94
    .line 95
    .line 96
    :cond_3
    :goto_4
    return-void
.end method

.method public removeAllCache()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mSettingJson:Lorg/json/JSONObject;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lorg/json/JSONObject;

    .line 15
    .line 16
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mSettingJson:Lorg/json/JSONObject;

    .line 20
    .line 21
    :cond_0
    iget v0, p0, Lcom/bytedance/vodsetting/Storage;->mType:I

    .line 22
    .line 23
    and-int/lit8 v0, v0, 0x2

    .line 24
    .line 25
    if-lez v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mSP:Landroid/content/SharedPreferences;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 36
    .line 37
    .line 38
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public storeJsonObject(Lorg/json/JSONObject;Z)V
    .locals 4

    .line 1
    const-string v0, "Storage"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/bytedance/vodsetting/Storage;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/bytedance/vodsetting/Storage;->tryToLoadLocal(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 18
    .line 19
    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/vodsetting/Storage;->mSettingJson:Lorg/json/JSONObject;

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/lang/String;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/bytedance/vodsetting/Storage;->mSettingJson:Lorg/json/JSONObject;

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v3, "update json, key = "

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v3, ", value = "

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {v0, v1}, Lcom/bytedance/vodsetting/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    goto :goto_5

    .line 87
    :catch_0
    move-exception p1

    .line 88
    goto :goto_3

    .line 89
    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/bytedance/vodsetting/Storage;->mSettingJson:Lorg/json/JSONObject;

    .line 90
    .line 91
    :cond_3
    iget p1, p0, Lcom/bytedance/vodsetting/Storage;->mType:I

    .line 92
    .line 93
    and-int/lit8 p1, p1, 0x2

    .line 94
    .line 95
    if-lez p1, :cond_4

    .line 96
    .line 97
    iget-object p1, p0, Lcom/bytedance/vodsetting/Storage;->mSP:Landroid/content/SharedPreferences;

    .line 98
    .line 99
    if-eqz p1, :cond_4

    .line 100
    .line 101
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-direct {p0}, Lcom/bytedance/vodsetting/Storage;->_storeJsonKey()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    iget-object v1, p0, Lcom/bytedance/vodsetting/Storage;->mSettingJson:Lorg/json/JSONObject;

    .line 110
    .line 111
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 116
    .line 117
    .line 118
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .line 120
    .line 121
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 128
    .line 129
    .line 130
    goto :goto_4

    .line 131
    :goto_3
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-static {v0, p1}, Lcom/bytedance/vodsetting/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :goto_4
    return-void

    .line 143
    :goto_5
    iget-object p2, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 144
    .line 145
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 150
    .line 151
    .line 152
    throw p1
.end method

.method public declared-synchronized tryToLoadLocal(Landroid/content/Context;)Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/bytedance/vodsetting/Storage;->mLoadLocaling:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return v2

    .line 10
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/bytedance/vodsetting/Storage;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    const-string p1, "Storage"

    .line 16
    .line 17
    const-string v1, "try to load local. Context is null"

    .line 18
    .line 19
    invoke-static {p1, v1}, Lcom/bytedance/vodsetting/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return v0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :cond_1
    :try_start_2
    iput v2, p0, Lcom/bytedance/vodsetting/Storage;->mLoadLocaling:I

    .line 28
    .line 29
    const-string p1, "Storage"

    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v4, "loading local settings, name = "

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v4, p0, Lcom/bytedance/vodsetting/Storage;->mName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-static {p1, v3}, Lcom/bytedance/vodsetting/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget p1, p0, Lcom/bytedance/vodsetting/Storage;->mType:I

    .line 54
    .line 55
    and-int/2addr p1, v1

    .line 56
    if-lez p1, :cond_4

    .line 57
    .line 58
    iget-object p1, p0, Lcom/bytedance/vodsetting/Storage;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v4, "com.bd.vod.ST.settings."

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object v4, p0, Lcom/bytedance/vodsetting/Storage;->mName:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lcom/bytedance/vodsetting/Storage;->mSP:Landroid/content/SharedPreferences;

    .line 84
    .line 85
    iget v3, p0, Lcom/bytedance/vodsetting/Storage;->mType:I

    .line 86
    .line 87
    and-int/2addr v3, v2

    .line 88
    if-lez v3, :cond_2

    .line 89
    .line 90
    if-eqz p1, :cond_2

    .line 91
    .line 92
    invoke-direct {p0}, Lcom/bytedance/vodsetting/Storage;->_storeJsonKey()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    const-string v4, ""

    .line 97
    .line 98
    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-nez v3, :cond_6

    .line 107
    .line 108
    iget-object v3, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    .line 116
    .line 117
    :try_start_3
    new-instance v3, Lorg/json/JSONObject;

    .line 118
    .line 119
    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iput-object v3, p0, Lcom/bytedance/vodsetting/Storage;->mSettingJson:Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 123
    .line 124
    :try_start_4
    iget-object p1, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :catchall_1
    move-exception p1

    .line 135
    goto :goto_0

    .line 136
    :catch_0
    move-exception p1

    .line 137
    :try_start_5
    const-string v1, "Storage"

    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-static {v1, p1}, Lcom/bytedance/vodsetting/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iput v0, p0, Lcom/bytedance/vodsetting/Storage;->mLoadLocaling:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 147
    .line 148
    :try_start_6
    iget-object p1, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 155
    .line 156
    .line 157
    monitor-exit p0

    .line 158
    return v0

    .line 159
    :goto_0
    :try_start_7
    iget-object v0, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 166
    .line 167
    .line 168
    throw p1

    .line 169
    :cond_2
    iget-object p1, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 170
    .line 171
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 176
    .line 177
    .line 178
    iget-object p1, p0, Lcom/bytedance/vodsetting/Storage;->mSettingJson:Lorg/json/JSONObject;

    .line 179
    .line 180
    if-nez p1, :cond_3

    .line 181
    .line 182
    new-instance p1, Lorg/json/JSONObject;

    .line 183
    .line 184
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 185
    .line 186
    .line 187
    iput-object p1, p0, Lcom/bytedance/vodsetting/Storage;->mSettingJson:Lorg/json/JSONObject;

    .line 188
    .line 189
    :cond_3
    iget-object p1, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 190
    .line 191
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_4
    iget-object p1, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 206
    .line 207
    .line 208
    iget-object p1, p0, Lcom/bytedance/vodsetting/Storage;->mSettingJson:Lorg/json/JSONObject;

    .line 209
    .line 210
    if-nez p1, :cond_5

    .line 211
    .line 212
    new-instance p1, Lorg/json/JSONObject;

    .line 213
    .line 214
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 215
    .line 216
    .line 217
    iput-object p1, p0, Lcom/bytedance/vodsetting/Storage;->mSettingJson:Lorg/json/JSONObject;

    .line 218
    .line 219
    :cond_5
    iget-object p1, p0, Lcom/bytedance/vodsetting/Storage;->mJsonLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 220
    .line 221
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 226
    .line 227
    .line 228
    :cond_6
    :goto_1
    iput v1, p0, Lcom/bytedance/vodsetting/Storage;->mLoadLocaling:I

    .line 229
    .line 230
    const-string p1, "Storage"

    .line 231
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .line 236
    .line 237
    const-string v1, "load local settings, name = "

    .line 238
    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    iget-object v1, p0, Lcom/bytedance/vodsetting/Storage;->mName:Ljava/lang/String;

    .line 243
    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-static {p1, v0}, Lcom/bytedance/vodsetting/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 252
    .line 253
    .line 254
    monitor-exit p0

    .line 255
    return v2

    .line 256
    :goto_2
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 257
    throw p1
.end method
