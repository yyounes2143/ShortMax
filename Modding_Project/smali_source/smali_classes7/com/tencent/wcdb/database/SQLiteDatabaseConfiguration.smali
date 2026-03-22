.class public final Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;
.super Ljava/lang/Object;
.source "SQLiteDatabaseConfiguration.java"


# static fields
.field public static final MEMORY_DB_PATH:Ljava/lang/String; = ":memory:"


# instance fields
.field public final customFunctions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/wcdb/database/SQLiteCustomFunction;",
            ">;"
        }
    .end annotation
.end field

.field public customWALHookEnabled:Z

.field public foreignKeyConstraintsEnabled:Z

.field public final label:Ljava/lang/String;

.field public locale:Ljava/util/Locale;

.field public maxSqlCacheSize:I

.field public openFlags:I

.field public final path:Ljava/lang/String;

.field public synchronousMode:I

.field public updateNotificationEnabled:Z

.field public updateNotificationRowID:Z

.field public vfsName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 13
    iget-object v0, p1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    .line 14
    iget-object v0, p1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    .line 15
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->updateParametersFrom(Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;)V

    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "other must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 3
    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    .line 5
    iput p2, p0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->openFlags:I

    const/4 p1, 0x2

    .line 6
    iput p1, p0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->synchronousMode:I

    const/16 p1, 0x19

    .line 7
    iput p1, p0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    .line 8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    and-int/lit16 p1, p2, 0x100

    if-eqz p1, :cond_0

    .line 9
    const-string p1, "vfslog"

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->vfsName:Ljava/lang/String;

    return-void

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "path must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public isInMemoryDb()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, ":memory:"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public updateParametersFrom(Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget v0, p1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->openFlags:I

    .line 14
    .line 15
    iput v0, p0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->openFlags:I

    .line 16
    .line 17
    iget v0, p1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    .line 18
    .line 19
    iput v0, p0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    .line 20
    .line 21
    iget-object v0, p1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    .line 24
    .line 25
    iget-boolean v0, p1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    .line 28
    .line 29
    iget-boolean v0, p1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->customWALHookEnabled:Z

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->customWALHookEnabled:Z

    .line 32
    .line 33
    iget-boolean v0, p1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->updateNotificationEnabled:Z

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->updateNotificationEnabled:Z

    .line 36
    .line 37
    iget-boolean v0, p1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->updateNotificationRowID:Z

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->updateNotificationRowID:Z

    .line 40
    .line 41
    iget v0, p1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->synchronousMode:I

    .line 42
    .line 43
    iput v0, p0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->synchronousMode:I

    .line 44
    .line 45
    iget-object v0, p1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->vfsName:Ljava/lang/String;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->vfsName:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    .line 55
    .line 56
    iget-object p1, p1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 63
    .line 64
    const-string v0, "other configuration must refer to the same database."

    .line 65
    .line 66
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    const-string v0, "other must not be null."

    .line 73
    .line 74
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1
.end method
