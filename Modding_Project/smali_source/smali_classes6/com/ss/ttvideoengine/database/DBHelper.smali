.class public Lcom/ss/ttvideoengine/database/DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "fangqing.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static mInstance:Lcom/ss/ttvideoengine/database/DBHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "fangqing.db"

    .line 4
    .line 5
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ss/ttvideoengine/database/DBHelper;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/database/DBHelper;->mInstance:Lcom/ss/ttvideoengine/database/DBHelper;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/ss/ttvideoengine/database/DBHelper;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/ss/ttvideoengine/database/DBHelper;->mInstance:Lcom/ss/ttvideoengine/database/DBHelper;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/ss/ttvideoengine/database/DBHelper;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/ss/ttvideoengine/database/DBHelper;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/ss/ttvideoengine/database/DBHelper;->mInstance:Lcom/ss/ttvideoengine/database/DBHelper;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_2
    sget-object p0, Lcom/ss/ttvideoengine/database/DBHelper;->mInstance:Lcom/ss/ttvideoengine/database/DBHelper;

    .line 27
    .line 28
    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    return-void
.end method
