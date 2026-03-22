.class public abstract Lcom/bytedance/bdtracker/u3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final q:Ljava/text/SimpleDateFormat;

.field public static final r:Lcom/bytedance/bdtracker/j4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/bdtracker/j4<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/bdtracker/u3;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:J

.field public c:J

.field public d:J

.field public e:Ljava/lang/String;

.field public f:J

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:I

.field public l:I

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Lorg/json/JSONObject;

.field public p:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 4
    .line 5
    const-string v2, "yyyy-MM-dd HH:mm:ss"

    .line 6
    .line 7
    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/bytedance/bdtracker/u3;->q:Ljava/text/SimpleDateFormat;

    .line 11
    .line 12
    new-instance v0, Lcom/bytedance/bdtracker/u3$a;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/bytedance/bdtracker/u3$a;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/bytedance/bdtracker/u3;->r:Lcom/bytedance/bdtracker/j4;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/bdtracker/u3;->a(J)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/u3;->f()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/bytedance/bdtracker/u3;->a:Ljava/util/List;

    .line 18
    .line 19
    invoke-static {}, Lcom/bytedance/bdtracker/l0$b;->c()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/bytedance/bdtracker/u3;->p:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/bytedance/bdtracker/u3;
    .locals 4

    .line 3
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcom/bytedance/bdtracker/u3;->r:Lcom/bytedance/bdtracker/j4;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/bytedance/bdtracker/j4;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    const-string v2, "k_cls"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/bdtracker/u3;

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/u3;->clone()Lcom/bytedance/bdtracker/u3;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/bytedance/bdtracker/u3;->a(Lorg/json/JSONObject;)Lcom/bytedance/bdtracker/u3;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x4

    const-string v3, "JSON handle failed"

    invoke-interface {v1, v2, v3, p0, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(J)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/bdtracker/u3;->q:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/bdtracker/u3;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/bytedance/bdtracker/e4;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/bytedance/bdtracker/e4;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "page"

    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/bytedance/bdtracker/c4;

    .line 17
    .line 18
    invoke-direct {v1}, Lcom/bytedance/bdtracker/c4;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "launch"

    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    new-instance v1, Lcom/bytedance/bdtracker/h4;

    .line 27
    .line 28
    invoke-direct {v1}, Lcom/bytedance/bdtracker/h4;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "terminate"

    .line 32
    .line 33
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    new-instance v1, Lcom/bytedance/bdtracker/d4;

    .line 37
    .line 38
    invoke-direct {v1}, Lcom/bytedance/bdtracker/d4;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v2, "packV2"

    .line 42
    .line 43
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    new-instance v1, Lcom/bytedance/bdtracker/b4;

    .line 47
    .line 48
    invoke-direct {v1}, Lcom/bytedance/bdtracker/b4;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "eventv3"

    .line 52
    .line 53
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    new-instance v1, Lcom/bytedance/bdtracker/x3;

    .line 57
    .line 58
    invoke-direct {v1}, Lcom/bytedance/bdtracker/x3;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v2, "custom_event"

    .line 62
    .line 63
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    new-instance v1, Lcom/bytedance/bdtracker/f4;

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    invoke-direct {v1, v2, v2}, Lcom/bytedance/bdtracker/f4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v2, "profile"

    .line 73
    .line 74
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    new-instance v1, Lcom/bytedance/bdtracker/i4;

    .line 78
    .line 79
    invoke-direct {v1}, Lcom/bytedance/bdtracker/i4;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v2, "trace"

    .line 83
    .line 84
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    return-object v0
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)I
    .locals 2
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/bdtracker/u3;->b:J

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/bdtracker/u3;->c:J

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/bdtracker/u3;->d:J

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/bdtracker/u3;->k:I

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/bdtracker/u3;->f:J

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/bdtracker/u3;->e:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/bdtracker/u3;->g:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/bdtracker/u3;->h:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/bdtracker/u3;->i:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/bdtracker/u3;->j:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/bdtracker/u3;->l:I

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/bdtracker/u3;->m:Ljava/lang/String;

    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/bdtracker/u3;->p:Ljava/lang/String;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/bytedance/bdtracker/u3;->o:Lorg/json/JSONObject;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bytedance/bdtracker/u3;->o:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/16 p1, 0xe

    return p1
.end method

.method public final a(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 0
    .param p1    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    if-nez p1, :cond_0

    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/u3;->b(Landroid/content/ContentValues;)V

    return-object p1
.end method

.method public a(Lorg/json/JSONObject;)Lcom/bytedance/bdtracker/u3;
    .locals 5
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    const-string v0, "local_time_ms"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/bytedance/bdtracker/u3;->c:J

    iput-wide v1, p0, Lcom/bytedance/bdtracker/u3;->b:J

    iput-wide v1, p0, Lcom/bytedance/bdtracker/u3;->d:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/bdtracker/u3;->k:I

    iput-wide v1, p0, Lcom/bytedance/bdtracker/u3;->f:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/bdtracker/u3;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/bdtracker/u3;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/bdtracker/u3;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/bdtracker/u3;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/bdtracker/u3;->j:Ljava/lang/String;

    const-string v0, "_app_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/bdtracker/u3;->m:Ljava/lang/String;

    const-string v0, "properties"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/bdtracker/u3;->o:Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/bdtracker/l0$b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "local_event_id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/bdtracker/u3;->p:Ljava/lang/String;

    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 4

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/u3;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "create table if not exists "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/u3;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public a(J)V
    .locals 2

    .line 6
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    :cond_0
    iput-wide p1, p0, Lcom/bytedance/bdtracker/u3;->c:J

    return-void
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6

    .line 7
    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/bdtracker/u3;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/bdtracker/u3;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v4, p1

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/u3;->d()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/bdtracker/u3;->a:Ljava/util/List;

    const/4 p1, 0x0

    new-array v5, p1, [Ljava/lang/Object;

    const/4 v1, 0x4

    const-string v3, "Merge params failed"

    invoke-interface/range {v0 .. v5}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 6

    .line 8
    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {p2, v0}, Lcom/bytedance/bdtracker/l0$b;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    :cond_1
    iget-object p2, p0, Lcom/bytedance/bdtracker/u3;->o:Lorg/json/JSONObject;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p2

    if-lez p2, :cond_2

    iget-object p2, p0, Lcom/bytedance/bdtracker/u3;->o:Lorg/json/JSONObject;

    invoke-static {p2, v0}, Lcom/bytedance/bdtracker/l0$b;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    :cond_2
    :try_start_0
    const-string p2, "params"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v4, p1

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/u3;->d()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/bdtracker/u3;->a:Ljava/util/List;

    const/4 p1, 0x0

    new-array v5, p1, [Ljava/lang/Object;

    const/4 v1, 0x4

    const-string v3, "Merge params failed"

    invoke-interface/range {v0 .. v5}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    const-string v26, "local_event_id"

    const-string v27, "varchar"

    const-string v0, "_id"

    const-string v1, "integer primary key autoincrement"

    const-string v2, "local_time_ms"

    const-string v3, "integer"

    const-string v4, "tea_event_index"

    const-string v5, "integer"

    const-string v6, "nt"

    const-string v7, "integer"

    const-string v8, "user_id"

    const-string v9, "integer"

    const-string v10, "session_id"

    const-string v11, "varchar"

    const-string v12, "user_unique_id"

    const-string v13, "varchar"

    const-string v14, "user_unique_id_type"

    const-string v15, "varchar"

    const-string v16, "ssid"

    const-string v17, "varchar"

    const-string v18, "ab_sdk_version"

    const-string v19, "varchar"

    const-string v20, "event_type"

    const-string v21, "integer"

    const-string v22, "_app_id"

    const-string v23, "varchar"

    const-string v24, "properties"

    const-string v25, "varchar"

    filled-new-array/range {v0 .. v27}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/ContentValues;)V
    .locals 2
    .param p1    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    iget-wide v0, p0, Lcom/bytedance/bdtracker/u3;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "local_time_ms"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v0, p0, Lcom/bytedance/bdtracker/u3;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "tea_event_index"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget v0, p0, Lcom/bytedance/bdtracker/u3;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "nt"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-wide v0, p0, Lcom/bytedance/bdtracker/u3;->f:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/u3;->e:Ljava/lang/String;

    const-string v1, "session_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/u3;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user_unique_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/u3;->h:Ljava/lang/String;

    const-string v1, "user_unique_id_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/u3;->i:Ljava/lang/String;

    const-string v1, "ssid"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/u3;->j:Ljava/lang/String;

    const-string v1, "ab_sdk_version"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/bytedance/bdtracker/u3;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "event_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/u3;->m:Ljava/lang/String;

    const-string v1, "_app_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/u3;->o:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-string v1, "properties"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/u3;->p:Ljava/lang/String;

    const-string v1, "local_event_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    iget-wide v0, p0, Lcom/bytedance/bdtracker/u3;->c:J

    const-string v2, "local_time_ms"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/bdtracker/u3;->m:Ljava/lang/String;

    const-string v1, "_app_id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/bdtracker/u3;->o:Lorg/json/JSONObject;

    const-string v1, "properties"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/bdtracker/u3;->p:Ljava/lang/String;

    const-string v1, "local_event_id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "sid:"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bytedance/bdtracker/u3;->e:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public clone()Lcom/bytedance/bdtracker/u3;
    .locals 7

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/bdtracker/u3;

    invoke-static {}, Lcom/bytedance/bdtracker/l0$b;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/bdtracker/u3;->p:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v5, v0

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/u3;->d()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/bdtracker/u3;->a:Ljava/util/List;

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v2, 0x4

    const-string v4, "Clone data failed"

    invoke-interface/range {v1 .. v6}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/u3;->clone()Lcom/bytedance/bdtracker/u3;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/bytedance/applog/log/IAppLogLogger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/u3;->m:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/applog/log/AbstractAppLogLogger;->getLogger(Ljava/lang/String;)Lcom/bytedance/applog/log/IAppLogLogger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public abstract f()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public final g()Lorg/json/JSONObject;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "k_cls"

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/u3;->f()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/u3;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v1

    .line 20
    move-object v6, v1

    .line 21
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/u3;->d()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v4, p0, Lcom/bytedance/bdtracker/u3;->a:Ljava/util/List;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    new-array v7, v1, [Ljava/lang/Object;

    .line 29
    .line 30
    const/4 v3, 0x4

    .line 31
    const-string v5, "JSON handle failed"

    .line 32
    .line 33
    invoke-interface/range {v2 .. v7}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-object v0
.end method

.method public final h()Lorg/json/JSONObject;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-wide v1, p0, Lcom/bytedance/bdtracker/u3;->c:J

    .line 7
    .line 8
    invoke-static {v1, v2}, Lcom/bytedance/bdtracker/u3;->b(J)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, p0, Lcom/bytedance/bdtracker/u3;->n:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/u3;->i()Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v1

    .line 20
    move-object v6, v1

    .line 21
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/u3;->d()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v4, p0, Lcom/bytedance/bdtracker/u3;->a:Ljava/util/List;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    new-array v7, v1, [Ljava/lang/Object;

    .line 29
    .line 30
    const/4 v3, 0x4

    .line 31
    const-string v5, "JSON handle failed"

    .line 32
    .line 33
    invoke-interface/range {v2 .. v7}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-object v0
.end method

.method public abstract i()Lorg/json/JSONObject;
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/u3;->f()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const-string v2, ", "

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/u3;->e:Ljava/lang/String;

    .line 48
    .line 49
    const-string v3, "-"

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-ltz v3, :cond_2

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    move-object v1, v3

    .line 66
    :cond_2
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v4, "{"

    .line 72
    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/u3;->c()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-wide v0, p0, Lcom/bytedance/bdtracker/u3;->c:J

    .line 99
    .line 100
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v0, "}"

    .line 104
    .line 105
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    return-object v0
.end method
