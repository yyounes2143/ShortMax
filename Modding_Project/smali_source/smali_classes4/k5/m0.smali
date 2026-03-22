.class public Lk5/m0;
.super Ljava/lang/Object;
.source "SQLiteEventStore.java"

# interfaces
.implements Lk5/d;
.implements Ll5/a;
.implements Lk5/c;


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk5/m0$c;,
        Lk5/m0$b;,
        Lk5/m0$d;
    }
.end annotation


# static fields
.field private static final f:La5/c;


# instance fields
.field private final a:Lk5/v0;

.field private final b:Lm5/a;

.field private final c:Lm5/a;

.field private final d:Lk5/e;

.field private final e:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {v0}, La5/c;->b(Ljava/lang/String;)La5/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lk5/m0;->f:La5/c;

    .line 8
    .line 9
    return-void
.end method

.method constructor <init>(Lm5/a;Lm5/a;Lk5/e;Lk5/v0;Lls/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm5/a;",
            "Lm5/a;",
            "Lk5/e;",
            "Lk5/v0;",
            "Lls/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lk5/m0;->a:Lk5/v0;

    .line 5
    .line 6
    iput-object p1, p0, Lk5/m0;->b:Lm5/a;

    .line 7
    .line 8
    iput-object p2, p0, Lk5/m0;->c:Lm5/a;

    .line 9
    .line 10
    iput-object p3, p0, Lk5/m0;->d:Lk5/e;

    .line 11
    .line 12
    iput-object p5, p0, Lk5/m0;->e:Lls/a;

    .line 13
    .line 14
    return-void
.end method

.method private static synthetic A0(Ljava/lang/Throwable;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;

    .line 2
    .line 3
    const-string v1, "Timed out while trying to open db."

    .line 4
    .line 5
    invoke-direct {v0, v1, p0}, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method private static synthetic C0(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 2

    .line 1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method private static synthetic D0(JLandroid/database/Cursor;)Lf5/e;
    .locals 2

    .line 1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {}, Lf5/e;->c()Lf5/e$a;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2, v0, v1}, Lf5/e$a;->c(J)Lf5/e$a;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2, p0, p1}, Lf5/e$a;->b(J)Lf5/e$a;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lf5/e$a;->a()Lf5/e;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method private static synthetic E0(JLandroid/database/sqlite/SQLiteDatabase;)Lf5/e;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1"

    .line 5
    .line 6
    invoke-virtual {p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    new-instance v0, Lk5/d0;

    .line 11
    .line 12
    invoke-direct {v0, p0, p1}, Lk5/d0;-><init>(J)V

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lk5/m0;->f1(Landroid/database/Cursor;Lk5/m0$b;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lf5/e;

    .line 20
    .line 21
    return-object p0
.end method

.method public static synthetic F(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 0

    .line 1
    invoke-static {p0}, Lk5/m0;->F0(Landroid/database/Cursor;)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic F0(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 2

    .line 1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method private synthetic G0(Lc5/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-direct {p0, p2, p1}, Lk5/m0;->m0(Landroid/database/sqlite/SQLiteDatabase;Lc5/p;)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-virtual {p0}, Lk5/m0;->h0()Landroid/database/sqlite/SQLiteDatabase;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    filled-new-array {p1}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "SELECT 1 FROM events WHERE context_id = ? LIMIT 1"

    .line 23
    .line 24
    invoke-virtual {p2, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance p2, Lk5/u;

    .line 29
    .line 30
    invoke-direct {p2}, Lk5/u;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p2}, Lk5/m0;->f1(Landroid/database/Cursor;Lk5/m0$b;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Ljava/lang/Boolean;

    .line 38
    .line 39
    return-object p1
.end method

.method private static synthetic H0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id"

    .line 5
    .line 6
    invoke-virtual {p0, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance v0, Lk5/k0;

    .line 11
    .line 12
    invoke-direct {v0}, Lk5/k0;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Lk5/m0;->f1(Landroid/database/Cursor;Lk5/m0$b;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/util/List;

    .line 20
    .line 21
    return-object p0
.end method

.method private static synthetic I0(Landroid/database/Cursor;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lc5/p;->a()Lc5/p$a;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Lc5/p$a;->b(Ljava/lang/String;)Lc5/p$a;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-static {v2}, Ln5/a;->b(I)Lcom/google/android/datatransport/Priority;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Lc5/p$a;->d(Lcom/google/android/datatransport/Priority;)Lc5/p$a;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const/4 v2, 0x3

    .line 39
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v2}, Lk5/m0;->Z0(Ljava/lang/String;)[B

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Lc5/p$a;->c([B)Lc5/p$a;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lc5/p$a;->a()Lc5/p;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    return-object v0
.end method

.method private synthetic K0(Lc5/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 7

    .line 1
    iget-object v0, p0, Lk5/m0;->d:Lk5/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk5/e;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, p2, p1, v0}, Lk5/m0;->X0(Landroid/database/sqlite/SQLiteDatabase;Lc5/p;I)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/google/android/datatransport/Priority;->values()[Lcom/google/android/datatransport/Priority;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    array-length v2, v1

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-ge v3, v2, :cond_2

    .line 18
    .line 19
    aget-object v4, v1, v3

    .line 20
    .line 21
    invoke-virtual {p1}, Lc5/p;->d()Lcom/google/android/datatransport/Priority;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    if-ne v4, v5, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget-object v5, p0, Lk5/m0;->d:Lk5/e;

    .line 29
    .line 30
    invoke-virtual {v5}, Lk5/e;->d()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    sub-int/2addr v5, v6

    .line 39
    if-gtz v5, :cond_1

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_1
    invoke-virtual {p1, v4}, Lc5/p;->f(Lcom/google/android/datatransport/Priority;)Lc5/p;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-direct {p0, p2, v4, v5}, Lk5/m0;->X0(Landroid/database/sqlite/SQLiteDatabase;Lc5/p;I)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    .line 52
    .line 53
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    :goto_2
    invoke-direct {p0, p2, v0}, Lk5/m0;->Y0(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {p0, v0, p1}, Lk5/m0;->s0(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1
.end method

.method private synthetic L0(Ljava/util/Map;Lf5/a$a;Landroid/database/Cursor;)Lf5/a;
    .locals 5

    .line 1
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-direct {p0, v1}, Lk5/m0;->d0(I)Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    new-instance v4, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/util/List;

    .line 45
    .line 46
    invoke-static {}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;->c()Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$a;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4, v1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$a;->c(Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;)Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$a;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1, v2, v3}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$a;->b(J)Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$a;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$a;->a()Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-direct {p0, p2, p1}, Lk5/m0;->a1(Lf5/a$a;Ljava/util/Map;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {p0}, Lk5/m0;->l0()Lf5/e;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p2, p1}, Lf5/a$a;->e(Lf5/e;)Lf5/a$a;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-direct {p0}, Lk5/m0;->i0()Lf5/b;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p1, p2}, Lf5/a$a;->d(Lf5/b;)Lf5/a$a;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object p2, p0, Lk5/m0;->e:Lls/a;

    .line 86
    .line 87
    invoke-interface {p2}, Lls/a;->get()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    check-cast p2, Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Lf5/a$a;->c(Ljava/lang/String;)Lf5/a$a;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Lf5/a$a;->b()Lf5/a;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    return-object p1
.end method

.method private synthetic M0(Ljava/lang/String;Ljava/util/Map;Lf5/a$a;Landroid/database/sqlite/SQLiteDatabase;)Lf5/a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    invoke-virtual {p4, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance p4, Lk5/a0;

    .line 9
    .line 10
    invoke-direct {p4, p0, p2, p3}, Lk5/a0;-><init>(Lk5/m0;Ljava/util/Map;Lf5/a$a;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p4}, Lk5/m0;->f1(Landroid/database/Cursor;Lk5/m0$b;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lf5/a;

    .line 18
    .line 19
    return-object p1
.end method

.method private synthetic N0(Ljava/util/List;Lc5/p;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 6

    .line 1
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    const/4 v3, 0x7

    .line 13
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x1

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    move v0, v4

    .line 21
    :cond_0
    invoke-static {}, Lc5/i;->a()Lc5/i$a;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v3, v4}, Lc5/i$a;->n(Ljava/lang/String;)Lc5/i$a;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const/4 v4, 0x2

    .line 34
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    invoke-virtual {v3, v4, v5}, Lc5/i$a;->i(J)Lc5/i$a;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const/4 v4, 0x3

    .line 43
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    invoke-virtual {v3, v4, v5}, Lc5/i$a;->o(J)Lc5/i$a;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const/4 v4, 0x4

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    new-instance v0, Lc5/h;

    .line 55
    .line 56
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-static {v4}, Lk5/m0;->d1(Ljava/lang/String;)La5/c;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const/4 v5, 0x5

    .line 65
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getBlob(I)[B

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-direct {v0, v4, v5}, Lc5/h;-><init>(La5/c;[B)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v0}, Lc5/i$a;->h(Lc5/h;)Lc5/i$a;

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    new-instance v0, Lc5/h;

    .line 77
    .line 78
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-static {v4}, Lk5/m0;->d1(Ljava/lang/String;)La5/c;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-direct {p0, v1, v2}, Lk5/m0;->b1(J)[B

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-direct {v0, v4, v5}, Lc5/h;-><init>(La5/c;[B)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v0}, Lc5/i$a;->h(Lc5/h;)Lc5/i$a;

    .line 94
    .line 95
    .line 96
    :goto_1
    const/4 v0, 0x6

    .line 97
    invoke-interface {p3, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-nez v4, :cond_2

    .line 102
    .line 103
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v3, v0}, Lc5/i$a;->g(Ljava/lang/Integer;)Lc5/i$a;

    .line 112
    .line 113
    .line 114
    :cond_2
    const/16 v0, 0x8

    .line 115
    .line 116
    invoke-interface {p3, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-nez v4, :cond_3

    .line 121
    .line 122
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v3, v0}, Lc5/i$a;->l(Ljava/lang/Integer;)Lc5/i$a;

    .line 131
    .line 132
    .line 133
    :cond_3
    const/16 v0, 0x9

    .line 134
    .line 135
    invoke-interface {p3, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-nez v4, :cond_4

    .line 140
    .line 141
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v3, v0}, Lc5/i$a;->m(Ljava/lang/String;)Lc5/i$a;

    .line 146
    .line 147
    .line 148
    :cond_4
    const/16 v0, 0xa

    .line 149
    .line 150
    invoke-interface {p3, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    if-nez v4, :cond_5

    .line 155
    .line 156
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v3, v0}, Lc5/i$a;->j([B)Lc5/i$a;

    .line 161
    .line 162
    .line 163
    :cond_5
    const/16 v0, 0xb

    .line 164
    .line 165
    invoke-interface {p3, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    if-nez v4, :cond_6

    .line 170
    .line 171
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v3, v0}, Lc5/i$a;->k([B)Lc5/i$a;

    .line 176
    .line 177
    .line 178
    :cond_6
    invoke-virtual {v3}, Lc5/i$a;->d()Lc5/i;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-static {v1, v2, p2, v0}, Lk5/k;->a(JLc5/p;Lc5/i;)Lk5/k;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    goto/16 :goto_0

    .line 190
    .line 191
    :cond_7
    const/4 p1, 0x0

    .line 192
    return-object p1
.end method

.method private static synthetic O0(Ljava/util/Map;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 5

    .line 1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/Set;

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashSet;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :cond_0
    new-instance v2, Lk5/m0$c;

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const/4 v4, 0x2

    .line 45
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-direct {v2, v3, v4, v1}, Lk5/m0$c;-><init>(Ljava/lang/String;Ljava/lang/String;Lk5/m0$a;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return-object v1
.end method

.method public static synthetic P(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lk5/m0;->z0(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private synthetic P0(Lc5/i;Lc5/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;
    .locals 11

    .line 1
    invoke-direct {p0}, Lk5/m0;->o0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p2, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->CACHE_FULL:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 8
    .line 9
    invoke-virtual {p1}, Lc5/i;->n()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-wide/16 v0, 0x1

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1, p2, p1}, Lk5/m0;->l(JLcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-wide/16 p1, -0x1

    .line 19
    .line 20
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_0
    invoke-direct {p0, p3, p2}, Lk5/m0;->f0(Landroid/database/sqlite/SQLiteDatabase;Lc5/p;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iget-object p2, p0, Lk5/m0;->d:Lk5/e;

    .line 30
    .line 31
    invoke-virtual {p2}, Lk5/e;->e()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-virtual {p1}, Lc5/i;->e()Lc5/h;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lc5/h;->a()[B

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    array-length v3, v2

    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v5, 0x1

    .line 46
    if-gt v3, p2, :cond_1

    .line 47
    .line 48
    move v3, v5

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move v3, v4

    .line 51
    :goto_0
    new-instance v6, Landroid/content/ContentValues;

    .line 52
    .line 53
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v1, "context_id"

    .line 61
    .line 62
    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 63
    .line 64
    .line 65
    const-string v0, "transport_name"

    .line 66
    .line 67
    invoke-virtual {p1}, Lc5/i;->n()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lc5/i;->f()J

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v1, "timestamp_ms"

    .line 83
    .line 84
    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lc5/i;->o()J

    .line 88
    .line 89
    .line 90
    move-result-wide v0

    .line 91
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const-string v1, "uptime_ms"

    .line 96
    .line 97
    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lc5/i;->e()Lc5/h;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lc5/h;->b()La5/c;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, La5/c;->a()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const-string v1, "payload_encoding"

    .line 113
    .line 114
    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const-string v0, "code"

    .line 118
    .line 119
    invoke-virtual {p1}, Lc5/i;->d()Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    .line 125
    .line 126
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    const-string v1, "num_attempts"

    .line 131
    .line 132
    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    .line 134
    .line 135
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    const-string v1, "inline"

    .line 140
    .line 141
    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 142
    .line 143
    .line 144
    if-eqz v3, :cond_2

    .line 145
    .line 146
    move-object v0, v2

    .line 147
    goto :goto_1

    .line 148
    :cond_2
    new-array v0, v4, [B

    .line 149
    .line 150
    :goto_1
    const-string v1, "payload"

    .line 151
    .line 152
    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 153
    .line 154
    .line 155
    const-string v0, "product_id"

    .line 156
    .line 157
    invoke-virtual {p1}, Lc5/i;->l()Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    .line 163
    .line 164
    const-string v0, "pseudonymous_id"

    .line 165
    .line 166
    invoke-virtual {p1}, Lc5/i;->m()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const-string v0, "experiment_ids_clear_blob"

    .line 174
    .line 175
    invoke-virtual {p1}, Lc5/i;->g()[B

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 180
    .line 181
    .line 182
    const-string v0, "experiment_ids_encrypted_blob"

    .line 183
    .line 184
    invoke-virtual {p1}, Lc5/i;->h()[B

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 189
    .line 190
    .line 191
    const-string v0, "events"

    .line 192
    .line 193
    const/4 v1, 0x0

    .line 194
    invoke-virtual {p3, v0, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 195
    .line 196
    .line 197
    move-result-wide v6

    .line 198
    const-string v0, "event_id"

    .line 199
    .line 200
    if-nez v3, :cond_3

    .line 201
    .line 202
    array-length v3, v2

    .line 203
    int-to-double v3, v3

    .line 204
    int-to-double v8, p2

    .line 205
    div-double/2addr v3, v8

    .line 206
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 207
    .line 208
    .line 209
    move-result-wide v3

    .line 210
    double-to-int v3, v3

    .line 211
    :goto_2
    if-gt v5, v3, :cond_3

    .line 212
    .line 213
    add-int/lit8 v4, v5, -0x1

    .line 214
    .line 215
    mul-int/2addr v4, p2

    .line 216
    mul-int v8, v5, p2

    .line 217
    .line 218
    array-length v9, v2

    .line 219
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    .line 220
    .line 221
    .line 222
    move-result v8

    .line 223
    invoke-static {v2, v4, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    new-instance v8, Landroid/content/ContentValues;

    .line 228
    .line 229
    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 233
    .line 234
    .line 235
    move-result-object v9

    .line 236
    invoke-virtual {v8, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 237
    .line 238
    .line 239
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    .line 241
    .line 242
    move-result-object v9

    .line 243
    const-string v10, "sequence_num"

    .line 244
    .line 245
    invoke-virtual {v8, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    .line 247
    .line 248
    const-string v9, "bytes"

    .line 249
    .line 250
    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 251
    .line 252
    .line 253
    const-string v4, "event_payloads"

    .line 254
    .line 255
    invoke-virtual {p3, v4, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 256
    .line 257
    .line 258
    add-int/lit8 v5, v5, 0x1

    .line 259
    .line 260
    goto :goto_2

    .line 261
    :cond_3
    invoke-virtual {p1}, Lc5/i;->k()Ljava/util/Map;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 274
    .line 275
    .line 276
    move-result p2

    .line 277
    if-eqz p2, :cond_4

    .line 278
    .line 279
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object p2

    .line 283
    check-cast p2, Ljava/util/Map$Entry;

    .line 284
    .line 285
    new-instance v2, Landroid/content/ContentValues;

    .line 286
    .line 287
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 295
    .line 296
    .line 297
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    check-cast v3, Ljava/lang/String;

    .line 302
    .line 303
    const-string v4, "name"

    .line 304
    .line 305
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object p2

    .line 312
    check-cast p2, Ljava/lang/String;

    .line 313
    .line 314
    const-string v3, "value"

    .line 315
    .line 316
    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    const-string p2, "event_metadata"

    .line 320
    .line 321
    invoke-virtual {p3, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 322
    .line 323
    .line 324
    goto :goto_3

    .line 325
    :cond_4
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    return-object p1
.end method

.method private static synthetic Q0(Landroid/database/Cursor;)[B
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    array-length v3, v3

    .line 22
    add-int/2addr v2, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-array p0, v2, [B

    .line 25
    .line 26
    move v2, v1

    .line 27
    move v3, v2

    .line 28
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-ge v2, v4, :cond_1

    .line 33
    .line 34
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, [B

    .line 39
    .line 40
    array-length v5, v4

    .line 41
    invoke-static {v4, v1, p0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    .line 43
    .line 44
    array-length v4, v4

    .line 45
    add-int/2addr v3, v4

    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    return-object p0
.end method

.method public static synthetic R(Ljava/lang/String;Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lk5/m0;->U0(Ljava/lang/String;Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private synthetic R0(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 4

    .line 1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    int-to-long v2, v0

    .line 18
    sget-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->MAX_RETRIES_REACHED:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 19
    .line 20
    invoke-virtual {p0, v2, v3, v0, v1}, Lk5/m0;->l(JLcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return-object p1
.end method

.method private synthetic S0(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p3, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p3, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    new-instance v0, Lk5/v;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lk5/v;-><init>(Lk5/m0;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p2, v0}, Lk5/m0;->f1(Landroid/database/Cursor;Lk5/m0$b;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const-string p2, "DELETE FROM events WHERE num_attempts >= 16"

    .line 22
    .line 23
    invoke-virtual {p3, p2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 28
    .line 29
    .line 30
    return-object p1
.end method

.method public static synthetic T(Ljava/util/Map;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lk5/m0;->O0(Ljava/util/Map;Landroid/database/Cursor;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic T0(Landroid/database/Cursor;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-lez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static synthetic U0(Ljava/lang/String;Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    filled-new-array {p0, v0}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?"

    .line 14
    .line 15
    invoke-virtual {p4, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lk5/y;

    .line 20
    .line 21
    invoke-direct {v1}, Lk5/y;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Lk5/m0;->f1(Landroid/database/Cursor;Lk5/m0$b;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v1, 0x0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    new-instance v0, Landroid/content/ContentValues;

    .line 38
    .line 39
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v2, "log_source"

    .line 43
    .line 44
    invoke-virtual {v0, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const-string p1, "reason"

    .line 56
    .line 57
    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 58
    .line 59
    .line 60
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string p1, "events_dropped_count"

    .line 65
    .line 66
    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 67
    .line 68
    .line 69
    const-string p0, "log_event_dropped"

    .line 70
    .line 71
    invoke-virtual {p4, p0, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v2, "UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + "

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p2, " WHERE log_source = ? AND reason = ?"

    .line 89
    .line 90
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    filled-new-array {p0, p1}, [Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {p4, p2, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    :goto_0
    return-object v1
.end method

.method private static synthetic V0(JLc5/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string p1, "next_request_ms"

    .line 11
    .line 12
    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Lc5/p;->b()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p2}, Lc5/p;->d()Lcom/google/android/datatransport/Priority;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Ln5/a;->a(Lcom/google/android/datatransport/Priority;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    filled-new-array {p0, p1}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string p1, "transport_contexts"

    .line 36
    .line 37
    const-string v1, "backend_name = ? and priority = ?"

    .line 38
    .line 39
    invoke-virtual {p3, p1, v0, v1, p0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    const/4 v1, 0x1

    .line 44
    const/4 v2, 0x0

    .line 45
    if-ge p0, v1, :cond_0

    .line 46
    .line 47
    const-string p0, "backend_name"

    .line 48
    .line 49
    invoke-virtual {p2}, Lc5/p;->b()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Lc5/p;->d()Lcom/google/android/datatransport/Priority;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {p0}, Ln5/a;->a(Lcom/google/android/datatransport/Priority;)I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string p2, "priority"

    .line 69
    .line 70
    invoke-virtual {v0, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3, p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 74
    .line 75
    .line 76
    :cond_0
    return-object v2
.end method

.method public static synthetic W(Lk5/m0;JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lk5/m0;->w0(JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private synthetic W0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 3

    .line 1
    const-string v0, "DELETE FROM log_event_dropped"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "UPDATE global_log_event_state SET last_metrics_upload_ms="

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lk5/m0;->b:Lm5/a;

    .line 21
    .line 22
    invoke-interface {v1}, Lm5/a;->getTime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    return-object p1
.end method

.method private X0(Landroid/database/sqlite/SQLiteDatabase;Lc5/p;I)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lc5/p;",
            "I)",
            "Ljava/util/List<",
            "Lk5/k;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct/range {p0 .. p2}, Lk5/m0;->m0(Landroid/database/sqlite/SQLiteDatabase;Lc5/p;)Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    const-string v12, "experiment_ids_clear_blob"

    .line 14
    .line 15
    const-string v13, "experiment_ids_encrypted_blob"

    .line 16
    .line 17
    const-string v2, "_id"

    .line 18
    .line 19
    const-string v3, "transport_name"

    .line 20
    .line 21
    const-string v4, "timestamp_ms"

    .line 22
    .line 23
    const-string v5, "uptime_ms"

    .line 24
    .line 25
    const-string v6, "payload_encoding"

    .line 26
    .line 27
    const-string v7, "payload"

    .line 28
    .line 29
    const-string v8, "code"

    .line 30
    .line 31
    const-string v9, "inline"

    .line 32
    .line 33
    const-string v10, "product_id"

    .line 34
    .line 35
    const-string v11, "pseudonymous_id"

    .line 36
    .line 37
    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v16

    .line 41
    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    filled-new-array {v1}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v18

    .line 49
    const/16 v21, 0x0

    .line 50
    .line 51
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v22

    .line 55
    const-string v15, "events"

    .line 56
    .line 57
    const-string v17, "context_id = ?"

    .line 58
    .line 59
    const/16 v19, 0x0

    .line 60
    .line 61
    const/16 v20, 0x0

    .line 62
    .line 63
    move-object/from16 v14, p1

    .line 64
    .line 65
    invoke-virtual/range {v14 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    new-instance v2, Lk5/x;

    .line 70
    .line 71
    move-object/from16 v3, p0

    .line 72
    .line 73
    move-object/from16 v4, p2

    .line 74
    .line 75
    invoke-direct {v2, v3, v0, v4}, Lk5/x;-><init>(Lk5/m0;Ljava/util/List;Lc5/p;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v1, v2}, Lk5/m0;->f1(Landroid/database/Cursor;Lk5/m0$b;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    return-object v0
.end method

.method public static synthetic Y(Lk5/m0;Ljava/util/List;Lc5/p;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lk5/m0;->N0(Ljava/util/List;Lc5/p;Landroid/database/Cursor;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private Y0(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Lk5/k;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Set<",
            "Lk5/m0$c;",
            ">;>;"
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
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "event_id IN ("

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v2, v3, :cond_1

    .line 19
    .line 20
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lk5/k;

    .line 25
    .line 26
    invoke-virtual {v3}, Lk5/k;->c()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    add-int/lit8 v3, v3, -0x1

    .line 38
    .line 39
    if-ge v2, v3, :cond_0

    .line 40
    .line 41
    const/16 v3, 0x2c

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/16 p2, 0x29

    .line 50
    .line 51
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p2, "name"

    .line 55
    .line 56
    const-string v2, "value"

    .line 57
    .line 58
    const-string v3, "event_id"

    .line 59
    .line 60
    filled-new-array {v3, p2, v2}, [Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    const/4 v10, 0x0

    .line 69
    const/4 v11, 0x0

    .line 70
    const-string v5, "event_metadata"

    .line 71
    .line 72
    const/4 v8, 0x0

    .line 73
    const/4 v9, 0x0

    .line 74
    move-object v4, p1

    .line 75
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    new-instance p2, Lk5/z;

    .line 80
    .line 81
    invoke-direct {p2, v0}, Lk5/z;-><init>(Ljava/util/Map;)V

    .line 82
    .line 83
    .line 84
    invoke-static {p1, p2}, Lk5/m0;->f1(Landroid/database/Cursor;Lk5/m0$b;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    return-object v0
.end method

.method public static synthetic Z(Lk5/m0;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lk5/m0;->W0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static Z0(Ljava/lang/String;)[B
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static synthetic a0(Lk5/m0;Ljava/lang/String;Ljava/util/Map;Lf5/a$a;Landroid/database/sqlite/SQLiteDatabase;)Lf5/a;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lk5/m0;->M0(Ljava/lang/String;Ljava/util/Map;Lf5/a$a;Landroid/database/sqlite/SQLiteDatabase;)Lf5/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private a1(Lf5/a$a;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf5/a$a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/util/Map$Entry;

    .line 20
    .line 21
    invoke-static {}, Lf5/c;->c()Lf5/c$a;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lf5/c$a;->c(Ljava/lang/String;)Lf5/c$a;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/util/List;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Lf5/c$a;->b(Ljava/util/List;)Lf5/c$a;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lf5/c$a;->a()Lf5/c;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Lf5/a$a;->a(Lf5/c;)Lf5/a$a;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method public static synthetic b(JLandroid/database/Cursor;)Lf5/e;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lk5/m0;->D0(JLandroid/database/Cursor;)Lf5/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b0(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 0

    .line 1
    invoke-static {p0}, Lk5/m0;->C0(Landroid/database/Cursor;)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private b1(J)[B
    .locals 8

    .line 1
    invoke-virtual {p0}, Lk5/m0;->h0()Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "bytes"

    .line 6
    .line 7
    filled-new-array {v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    filled-new-array {p1}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    const/4 v6, 0x0

    .line 20
    const-string v7, "sequence_num"

    .line 21
    .line 22
    const-string v1, "event_payloads"

    .line 23
    .line 24
    const-string v3, "event_id = ?"

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance p2, Lk5/b0;

    .line 32
    .line 33
    invoke-direct {p2}, Lk5/b0;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-static {p1, p2}, Lk5/m0;->f1(Landroid/database/Cursor;Lk5/m0$b;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, [B

    .line 41
    .line 42
    return-object p1
.end method

.method public static synthetic c(Lk5/m0;Lc5/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lk5/m0;->K0(Lc5/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c0(JLandroid/database/sqlite/SQLiteDatabase;)Lf5/e;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lk5/m0;->E0(JLandroid/database/sqlite/SQLiteDatabase;)Lf5/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private c1(Lk5/m0$d;Lk5/m0$b;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lk5/m0$d<",
            "TT;>;",
            "Lk5/m0$b<",
            "Ljava/lang/Throwable;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk5/m0;->c:Lm5/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lm5/a;->getTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lk5/m0$d;->a()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p1

    .line 12
    :catch_0
    move-exception v2

    .line 13
    iget-object v3, p0, Lk5/m0;->c:Lm5/a;

    .line 14
    .line 15
    invoke-interface {v3}, Lm5/a;->getTime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    iget-object v5, p0, Lk5/m0;->d:Lk5/e;

    .line 20
    .line 21
    invoke-virtual {v5}, Lk5/e;->b()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    int-to-long v5, v5

    .line 26
    add-long/2addr v5, v0

    .line 27
    cmp-long v3, v3, v5

    .line 28
    .line 29
    if-ltz v3, :cond_0

    .line 30
    .line 31
    invoke-interface {p2, v2}, Lk5/m0$b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :cond_0
    const-wide/16 v2, 0x32

    .line 37
    .line 38
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 39
    .line 40
    .line 41
    goto :goto_0
.end method

.method private d0(I)Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->REASON_UNKNOWN:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v1, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->MESSAGE_TOO_OLD:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ne p1, v2, :cond_1

    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_1
    sget-object v1, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->CACHE_FULL:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-ne p1, v2, :cond_2

    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_2
    sget-object v1, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->PAYLOAD_TOO_BIG:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-ne p1, v2, :cond_3

    .line 35
    .line 36
    return-object v1

    .line 37
    :cond_3
    sget-object v1, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->MAX_RETRIES_REACHED:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-ne p1, v2, :cond_4

    .line 44
    .line 45
    return-object v1

    .line 46
    :cond_4
    sget-object v1, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->INVALID_PAYLOD:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-ne p1, v2, :cond_5

    .line 53
    .line 54
    return-object v1

    .line 55
    :cond_5
    sget-object v1, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->SERVER_ERROR:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-ne p1, v2, :cond_6

    .line 62
    .line 63
    return-object v1

    .line 64
    :cond_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string v1, "SQLiteEventStore"

    .line 69
    .line 70
    const-string v2, "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN"

    .line 71
    .line 72
    invoke-static {v1, v2, p1}, Lg5/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-object v0
.end method

.method private static d1(Ljava/lang/String;)La5/c;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lk5/m0;->f:La5/c;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-static {p0}, La5/c;->b(Ljava/lang/String;)La5/c;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private e0(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    new-instance v0, Lk5/l;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lk5/l;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lk5/w;

    .line 7
    .line 8
    invoke-direct {p1}, Lk5/w;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, p1}, Lk5/m0;->c1(Lk5/m0$d;Lk5/m0$b;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static e1(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lk5/k;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lk5/k;

    .line 23
    .line 24
    invoke-virtual {v1}, Lk5/k;->c()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    const/16 v1, 0x2c

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/16 p0, 0x29

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method private f0(Landroid/database/sqlite/SQLiteDatabase;Lc5/p;)J
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Lk5/m0;->m0(Landroid/database/sqlite/SQLiteDatabase;Lc5/p;)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    return-wide p1

    .line 12
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lc5/p;->b()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "backend_name"

    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Lc5/p;->d()Lcom/google/android/datatransport/Priority;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Ln5/a;->a(Lcom/google/android/datatransport/Priority;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "priority"

    .line 39
    .line 40
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string v3, "next_request_ms"

    .line 49
    .line 50
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Lc5/p;->c()[B

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    invoke-virtual {p2}, Lc5/p;->c()[B

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    const-string v1, "extras"

    .line 68
    .line 69
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    const-string p2, "transport_contexts"

    .line 73
    .line 74
    const/4 v1, 0x0

    .line 75
    invoke-virtual {p1, p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 76
    .line 77
    .line 78
    move-result-wide p1

    .line 79
    return-wide p1
.end method

.method static f1(Landroid/database/Cursor;Lk5/m0$b;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Lk5/m0$b<",
            "Landroid/database/Cursor;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Lk5/m0$b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 6
    .line 7
    .line 8
    return-object p1

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public static synthetic g(Landroid/database/Cursor;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lk5/m0;->I0(Landroid/database/Cursor;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private getPageSize()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk5/m0;->h0()Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "PRAGMA page_size"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    return-wide v0
.end method

.method public static synthetic i(Lk5/m0;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lk5/m0;->R0(Landroid/database/Cursor;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private i0()Lf5/b;
    .locals 4

    .line 1
    invoke-static {}, Lf5/b;->b()Lf5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lf5/d;->c()Lf5/d$a;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lk5/m0;->g0()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    invoke-virtual {v1, v2, v3}, Lf5/d$a;->b(J)Lf5/d$a;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-object v2, Lk5/e;->a:Lk5/e;

    .line 18
    .line 19
    invoke-virtual {v2}, Lk5/e;->f()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    invoke-virtual {v1, v2, v3}, Lf5/d$a;->c(J)Lf5/d$a;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lf5/d$a;->a()Lf5/d;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lf5/b$a;->b(Lf5/d;)Lf5/b$a;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lf5/b$a;->a()Lf5/b;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method private j0()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk5/m0;->h0()Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "PRAGMA page_count"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    return-wide v0
.end method

.method private l0()Lf5/e;
    .locals 3

    .line 1
    iget-object v0, p0, Lk5/m0;->b:Lm5/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lm5/a;->getTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    new-instance v2, Lk5/c0;

    .line 8
    .line 9
    invoke-direct {v2, v0, v1}, Lk5/c0;-><init>(J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v2}, Lk5/m0;->n0(Lk5/m0$b;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lf5/e;

    .line 17
    .line 18
    return-object v0
.end method

.method public static synthetic m(Ljava/lang/Throwable;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 1
    invoke-static {p0}, Lk5/m0;->A0(Ljava/lang/Throwable;)Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private m0(Landroid/database/sqlite/SQLiteDatabase;Lc5/p;)Ljava/lang/Long;
    .locals 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "backend_name = ? and priority = ?"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p2}, Lc5/p;->b()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {p2}, Lc5/p;->d()Lcom/google/android/datatransport/Priority;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-static {v3}, Ln5/a;->a(Lcom/google/android/datatransport/Priority;)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Lc5/p;->c()[B

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const/4 v3, 0x0

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    const-string v2, " and extras = ?"

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Lc5/p;->c()[B

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-static {p2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const-string p2, " and extras is null"

    .line 62
    .line 63
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    :goto_0
    const-string p2, "_id"

    .line 67
    .line 68
    filled-new-array {p2}, [Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    new-array p2, v3, [Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    move-object v8, p2

    .line 83
    check-cast v8, [Ljava/lang/String;

    .line 84
    .line 85
    const/4 v10, 0x0

    .line 86
    const/4 v11, 0x0

    .line 87
    const-string v5, "transport_contexts"

    .line 88
    .line 89
    const/4 v9, 0x0

    .line 90
    move-object v4, p1

    .line 91
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    new-instance p2, Lk5/n;

    .line 96
    .line 97
    invoke-direct {p2}, Lk5/n;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-static {p1, p2}, Lk5/m0;->f1(Landroid/database/Cursor;Lk5/m0$b;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Ljava/lang/Long;

    .line 105
    .line 106
    return-object p1
.end method

.method public static synthetic o(Lk5/m0;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lk5/m0;->t0(Landroid/database/Cursor;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private o0()Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lk5/m0;->j0()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-direct {p0}, Lk5/m0;->getPageSize()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    mul-long/2addr v0, v2

    .line 10
    iget-object v2, p0, Lk5/m0;->d:Lk5/e;

    .line 11
    .line 12
    invoke-virtual {v2}, Lk5/e;->f()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    cmp-long v0, v0, v2

    .line 17
    .line 18
    if-ltz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method

.method public static synthetic p(Lk5/m0;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lk5/m0;->S0(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic q(Lk5/m0;Lc5/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lk5/m0;->G0(Lc5/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic r(JLc5/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lk5/m0;->V0(JLc5/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s(Landroid/database/Cursor;)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lk5/m0;->Q0(Landroid/database/Cursor;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private s0(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lk5/k;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Set<",
            "Lk5/m0$c;",
            ">;>;)",
            "Ljava/util/List<",
            "Lk5/k;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lk5/k;

    .line 16
    .line 17
    invoke-virtual {v1}, Lk5/k;->c()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v1}, Lk5/k;->b()Lc5/i;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lc5/i;->p()Lc5/i$a;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1}, Lk5/k;->c()J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Ljava/util/Set;

    .line 53
    .line 54
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_1

    .line 63
    .line 64
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Lk5/m0$c;

    .line 69
    .line 70
    iget-object v5, v4, Lk5/m0$c;->a:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v4, v4, Lk5/m0$c;->b:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v2, v5, v4}, Lc5/i$a;->c(Ljava/lang/String;Ljava/lang/String;)Lc5/i$a;

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {v1}, Lk5/k;->c()J

    .line 79
    .line 80
    .line 81
    move-result-wide v3

    .line 82
    invoke-virtual {v1}, Lk5/k;->d()Lc5/p;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v2}, Lc5/i$a;->d()Lc5/i;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-static {v3, v4, v1, v2}, Lk5/k;->a(JLc5/p;Lc5/i;)Lk5/k;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    return-object p1
.end method

.method public static synthetic t(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lk5/m0;->H0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private synthetic t0(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 4

    .line 1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    int-to-long v2, v0

    .line 18
    sget-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->MESSAGE_TOO_OLD:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 19
    .line 20
    invoke-virtual {p0, v2, v3, v0, v1}, Lk5/m0;->l(JLcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return-object p1
.end method

.method public static synthetic u(Lk5/m0;Ljava/util/Map;Lf5/a$a;Landroid/database/Cursor;)Lf5/a;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lk5/m0;->L0(Ljava/util/Map;Lf5/a$a;Landroid/database/Cursor;)Lf5/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic v(Landroid/database/Cursor;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-static {p0}, Lk5/m0;->T0(Landroid/database/Cursor;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic w(Lk5/m0;Lc5/i;Lc5/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lk5/m0;->P0(Lc5/i;Lc5/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private synthetic w0(JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    filled-new-array {p1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string p2, "SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name"

    .line 10
    .line 11
    invoke-virtual {p3, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    new-instance v0, Lk5/s;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lk5/s;-><init>(Lk5/m0;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p2, v0}, Lk5/m0;->f1(Landroid/database/Cursor;Lk5/m0$b;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    const-string p2, "events"

    .line 24
    .line 25
    const-string v0, "timestamp_ms < ?"

    .line 26
    .line 27
    invoke-virtual {p3, p2, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method public static synthetic x(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lk5/m0;->y0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic y0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method private static synthetic z0(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;

    .line 2
    .line 3
    const-string v1, "Timed out while trying to acquire the lock."

    .line 4
    .line 5
    invoke-direct {v0, v1, p0}, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method


# virtual methods
.method public O(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lk5/k;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "DELETE FROM events WHERE _id in "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lk5/m0;->e1(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0}, Lk5/m0;->h0()Landroid/database/sqlite/SQLiteDatabase;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public Q()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lc5/p;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lk5/g0;

    .line 2
    .line 3
    invoke-direct {v0}, Lk5/g0;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lk5/m0;->n0(Lk5/m0$b;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/Iterable;

    .line 11
    .line 12
    return-object v0
.end method

.method public X(Lc5/p;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc5/p;",
            ")",
            "Ljava/lang/Iterable<",
            "Lk5/k;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lk5/m;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lk5/m;-><init>(Lk5/m0;Lc5/p;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lk5/m0;->n0(Lk5/m0$b;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Iterable;

    .line 11
    .line 12
    return-object p1
.end method

.method public a(Ll5/a$a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll5/a$a<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lk5/m0;->h0()Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lk5/m0;->e0(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-interface {p1}, Ll5/a$a;->execute()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk5/m0;->a:Lk5/v0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    new-instance v0, Lk5/q;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lk5/q;-><init>(Lk5/m0;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lk5/m0;->n0(Lk5/m0$b;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public e(Lc5/p;Lc5/i;)Lk5/k;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lc5/p;->d()Lcom/google/android/datatransport/Priority;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lc5/i;->n()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lc5/p;->b()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "SQLiteEventStore"

    .line 18
    .line 19
    const-string v2, "Storing event with priority=%s, name=%s for destination %s"

    .line 20
    .line 21
    invoke-static {v1, v2, v0}, Lg5/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lk5/i0;

    .line 25
    .line 26
    invoke-direct {v0, p0, p2, p1}, Lk5/i0;-><init>(Lk5/m0;Lc5/i;Lc5/p;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lk5/m0;->n0(Lk5/m0$b;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Long;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    const-wide/16 v2, 0x1

    .line 40
    .line 41
    cmp-long v2, v0, v2

    .line 42
    .line 43
    if-gez v2, :cond_0

    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    return-object p1

    .line 47
    :cond_0
    invoke-static {v0, v1, p1, p2}, Lk5/k;->a(JLc5/p;Lc5/i;)Lk5/k;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1
.end method

.method g0()J
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Lk5/m0;->j0()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-direct {p0}, Lk5/m0;->getPageSize()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    mul-long/2addr v0, v2

    .line 10
    return-wide v0
.end method

.method h0()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lk5/m0;->a:Lk5/v0;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lk5/e0;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lk5/e0;-><init>(Lk5/v0;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lk5/f0;

    .line 12
    .line 13
    invoke-direct {v0}, Lk5/f0;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v1, v0}, Lk5/m0;->c1(Lk5/m0$d;Lk5/m0$b;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 21
    .line 22
    return-object v0
.end method

.method public j(Lc5/p;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk5/m0;->h0()Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lc5/p;->b()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lc5/p;->d()Lcom/google/android/datatransport/Priority;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Ln5/a;->a(Lcom/google/android/datatransport/Priority;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    filled-new-array {v1, p1}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v1, "SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?"

    .line 26
    .line 27
    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance v0, Lk5/h0;

    .line 32
    .line 33
    invoke-direct {v0}, Lk5/h0;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v0}, Lk5/m0;->f1(Landroid/database/Cursor;Lk5/m0$b;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Ljava/lang/Long;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    return-wide v0
.end method

.method public k()Lf5/a;
    .locals 4

    .line 1
    invoke-static {}, Lf5/a;->e()Lf5/a$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lk5/t;

    .line 11
    .line 12
    const-string v3, "SELECT log_source, reason, events_dropped_count FROM log_event_dropped"

    .line 13
    .line 14
    invoke-direct {v2, p0, v3, v1, v0}, Lk5/t;-><init>(Lk5/m0;Ljava/lang/String;Ljava/util/Map;Lf5/a$a;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v2}, Lk5/m0;->n0(Lk5/m0$b;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lf5/a;

    .line 22
    .line 23
    return-object v0
.end method

.method public k0(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lk5/k;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lk5/m0;->e1(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v0, Lk5/l0;

    .line 34
    .line 35
    const-string v1, "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name"

    .line 36
    .line 37
    invoke-direct {v0, p0, p1, v1}, Lk5/l0;-><init>(Lk5/m0;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lk5/m0;->n0(Lk5/m0$b;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public l(JLcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lk5/r;

    .line 2
    .line 3
    invoke-direct {v0, p4, p3, p1, p2}, Lk5/r;-><init>(Ljava/lang/String;Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;J)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lk5/m0;->n0(Lk5/m0$b;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public n(Lc5/p;)Z
    .locals 1

    .line 1
    new-instance v0, Lk5/o;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lk5/o;-><init>(Lk5/m0;Lc5/p;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lk5/m0;->n0(Lk5/m0$b;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method n0(Lk5/m0$b;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lk5/m0$b<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lk5/m0;->h0()Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-interface {p1, v0}, Lk5/m0$b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public v0(Lc5/p;J)V
    .locals 1

    .line 1
    new-instance v0, Lk5/p;

    .line 2
    .line 3
    invoke-direct {v0, p2, p3, p1}, Lk5/p;-><init>(JLc5/p;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lk5/m0;->n0(Lk5/m0$b;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public z()I
    .locals 4

    .line 1
    iget-object v0, p0, Lk5/m0;->b:Lm5/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lm5/a;->getTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lk5/m0;->d:Lk5/e;

    .line 8
    .line 9
    invoke-virtual {v2}, Lk5/e;->c()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    sub-long/2addr v0, v2

    .line 14
    new-instance v2, Lk5/j0;

    .line 15
    .line 16
    invoke-direct {v2, p0, v0, v1}, Lk5/j0;-><init>(Lk5/m0;J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v2}, Lk5/m0;->n0(Lk5/m0$b;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    return v0
.end method
