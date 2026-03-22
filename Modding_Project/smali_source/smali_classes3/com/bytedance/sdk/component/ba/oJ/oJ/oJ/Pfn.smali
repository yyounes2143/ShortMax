.class public Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/Pfn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/ba/oJ/oJ/Pfn;


# static fields
.field public static final oJ:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/Pfn;


# instance fields
.field private volatile ZYk:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/Pfn;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/Pfn;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/Pfn;->oJ:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/Pfn;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public Pfn()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "logstatsbatch"

    .line 2
    .line 3
    return-object v0
.end method

.method public ZYk()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "adevent"

    .line 2
    .line 3
    return-object v0
.end method

.method public ba()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public ex()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "logstats"

    .line 2
    .line 3
    return-object v0
.end method

.method public oJ(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/Pfn;->ZYk:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/Pfn;->ZYk:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/ex;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/ex;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/Pfn;->ZYk:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw p1

    .line 7
    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/Pfn;->ZYk:Landroid/database/sqlite/SQLiteDatabase;

    return-object p1
.end method

.method public oJ()Ljava/lang/String;
    .locals 1

    .line 8
    const-string v0, "loghighpriority"

    return-object v0
.end method

.method public tB()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method
