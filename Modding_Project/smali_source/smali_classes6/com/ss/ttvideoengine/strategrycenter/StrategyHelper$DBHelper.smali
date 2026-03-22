.class final Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;
.super Ljava/lang/Object;
.source "StrategyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DBHelper"
.end annotation


# static fields
.field private static final dataBaseName:Ljava/lang/String; = "TTVideoEngine_vod_strategy_database_v01"

.field private static final dataIndex:Ljava/lang/String; = "data_index"


# instance fields
.field mContext:Landroid/content/Context;

.field private final mIndexArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mKVStorage:Lcom/ss/ttvideoengine/database/IKVStorage;

.field final mMaxCacheNum:I

.field mSHelper:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;Landroid/content/Context;Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->mIndexArray:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->mKVStorage:Lcom/ss/ttvideoengine/database/IKVStorage;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->mSHelper:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    const/16 p1, 0x7d0

    .line 19
    .line 20
    iput p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->mMaxCacheNum:I

    .line 21
    .line 22
    iput-object p2, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->mSHelper:Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    return-void
.end method

.method private _create()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->mKVStorage:Lcom/ss/ttvideoengine/database/IKVStorage;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->access$1000(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Lcom/ss/ttvideoengine/database/IKVStorageProvider;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "VCStrategy"

    .line 12
    .line 13
    const-string v2, "TTVideoEngine_vod_strategy_database_v01"

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->access$1000(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Lcom/ss/ttvideoengine/database/IKVStorageProvider;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0, v2}, Lcom/ss/ttvideoengine/database/IKVStorageProvider;->getKVStorage(Ljava/lang/String;)Lcom/ss/ttvideoengine/database/IKVStorage;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->mKVStorage:Lcom/ss/ttvideoengine/database/IKVStorage;

    .line 28
    .line 29
    const-string/jumbo v0, "use kv storage provider"

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Lcom/ss/ttvideoengine/database/KVDBManager;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-direct {v0, v3, v2}, Lcom/ss/ttvideoengine/database/KVDBManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->mKVStorage:Lcom/ss/ttvideoengine/database/IKVStorage;

    .line 44
    .line 45
    const-string/jumbo v0, "use KVDBManager"

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->mKVStorage:Lcom/ss/ttvideoengine/database/IKVStorage;

    .line 52
    .line 53
    check-cast v0, Lcom/ss/ttvideoengine/database/KVDBManager;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/database/KVDBManager;->isCreateDBSuccess()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    return v0

    .line 60
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->mKVStorage:Lcom/ss/ttvideoengine/database/IKVStorage;

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const/4 v0, 0x0

    .line 67
    :goto_1
    return v0
.end method

.method private _loadData()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->mSHelper:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->mKVStorage:Lcom/ss/ttvideoengine/database/IKVStorage;

    .line 13
    .line 14
    const-string v2, "data_index"

    .line 15
    .line 16
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/database/IKVStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {p0, v1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->stringToStringArray(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->mIndexArray:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Ljava/lang/String;

    .line 53
    .line 54
    iget-object v3, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->mKVStorage:Lcom/ss/ttvideoengine/database/IKVStorage;

    .line 55
    .line 56
    invoke-interface {v3, v2}, Lcom/ss/ttvideoengine/database/IKVStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const/16 v4, 0x79ea

    .line 72
    .line 73
    invoke-virtual {v3, v4, v2}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->businessEvent(ILjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    :goto_1
    return-void
.end method

.method private _saveDataIndexes()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->mIndexArray:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->indexToString(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->mKVStorage:Lcom/ss/ttvideoengine/database/IKVStorage;

    .line 8
    .line 9
    const-string v2, "data_index"

    .line 10
    .line 11
    invoke-interface {v1, v2, v0}, Lcom/ss/ttvideoengine/database/IKVStorage;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private indexToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    add-int/lit8 v2, v2, -0x1

    .line 33
    .line 34
    if-ge v1, v2, :cond_0

    .line 35
    .line 36
    const-string v2, ","

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :cond_2
    const/4 p1, 0x0

    .line 50
    return-object p1
.end method

.method private stringToStringArray(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    const-string v0, ","

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    array-length v0, p1

    .line 18
    if-lez v0, :cond_3

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    .line 24
    .line 25
    :try_start_1
    array-length v1, p1

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_0
    if-ge v2, v1, :cond_2

    .line 28
    .line 29
    aget-object v3, p1, v2

    .line 30
    .line 31
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    move-object v1, v0

    .line 43
    goto :goto_2

    .line 44
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move-object v1, v0

    .line 48
    goto :goto_3

    .line 49
    :catchall_1
    move-exception p1

    .line 50
    :goto_2
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_3
    return-object v1
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->mKVStorage:Lcom/ss/ttvideoengine/database/IKVStorage;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/database/IKVStorage;->clear()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "clear fail. "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "VCStrategy"

    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public event(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :pswitch_0
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->clear()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->loadKeyValue(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_2
    invoke-virtual {p0, p2, p3}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->saveKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->removeData(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_4
    invoke-virtual {p0, p2, p3}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->saveData(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_5
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->loadDB()V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public loadDB()V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->_create()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "VCStrategy"

    .line 8
    .line 9
    const-string v1, "create db fail."

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->_loadData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :goto_0
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :goto_1
    return-void
.end method

.method public loadKeyValue(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "VCStrategy"

    .line 2
    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->_create()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string p1, "create db fail."

    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->mSHelper:Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->mKVStorage:Lcom/ss/ttvideoengine/database/IKVStorage;

    .line 29
    .line 30
    invoke-interface {v2, p1}, Lcom/ss/ttvideoengine/database/IKVStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const/16 v2, 0x79ec

    .line 39
    .line 40
    invoke-virtual {v1, v2, p1}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->businessEvent(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v2, "load key value fail. "

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_1
    return-void
.end method

.method public removeData(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->mIndexArray:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->mKVStorage:Lcom/ss/ttvideoengine/database/IKVStorage;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/database/IKVStorage;->removeString(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->_saveDataIndexes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "remove data fail. "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v0, "VCStrategy"

    .line 38
    .line 39
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method public saveData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->mIndexArray:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->mIndexArray:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x7d0

    .line 13
    .line 14
    if-le v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->mIndexArray:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->mKVStorage:Lcom/ss/ttvideoengine/database/IKVStorage;

    .line 26
    .line 27
    invoke-interface {v1, v0}, Lcom/ss/ttvideoengine/database/IKVStorage;->removeString(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->_saveDataIndexes()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->mKVStorage:Lcom/ss/ttvideoengine/database/IKVStorage;

    .line 37
    .line 38
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/database/IKVStorage;->putString(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v0, "save data fail. "

    .line 48
    .line 49
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string p2, "VCStrategy"

    .line 64
    .line 65
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_2
    return-void
.end method

.method public saveKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->mKVStorage:Lcom/ss/ttvideoengine/database/IKVStorage;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/database/IKVStorage;->putString(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v0, "save key value fail. "

    .line 14
    .line 15
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string p2, "VCStrategy"

    .line 30
    .line 31
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method
