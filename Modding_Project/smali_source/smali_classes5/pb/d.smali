.class public Lpb/d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Context;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "d"

.field private static volatile b:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static b()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-static {}, Lpb/d;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lpb/d;->a:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "checkUpgradeBks, execute check task"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lpb/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lpb/d;

    .line 15
    .line 16
    invoke-direct {v0}, Lpb/d;-><init>()V

    .line 17
    .line 18
    .line 19
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 20
    .line 21
    invoke-static {}, Lpb/b;->a()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    filled-new-array {v2}, [Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method private static e()Z
    .locals 10

    .line 1
    sget-boolean v0, Lpb/d;->b:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lpb/b;->a()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    sget-object v0, Lpb/d;->a:Ljava/lang/String;

    .line 14
    .line 15
    const-string v2, "checkUpgradeBks, context is null"

    .line 16
    .line 17
    invoke-static {v0, v2}, Lpb/f;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    const/4 v2, 0x1

    .line 22
    sput-boolean v2, Lpb/d;->b:Z

    .line 23
    .line 24
    const-wide/16 v3, 0x0

    .line 25
    .line 26
    const-string v5, "lastCheckTime"

    .line 27
    .line 28
    invoke-static {v5, v3, v4, v0}, Lpb/h;->a(Ljava/lang/String;JLandroid/content/Context;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v6

    .line 36
    sub-long v3, v6, v3

    .line 37
    .line 38
    const-wide/32 v8, 0x19bfcc00

    .line 39
    .line 40
    .line 41
    cmp-long v3, v3, v8

    .line 42
    .line 43
    if-lez v3, :cond_2

    .line 44
    .line 45
    invoke-static {v5, v6, v7, v0}, Lpb/h;->d(Ljava/lang/String;JLandroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    return v2

    .line 49
    :cond_2
    sget-object v0, Lpb/d;->a:Ljava/lang/String;

    .line 50
    .line 51
    const-string v2, "checkUpgradeBks, ignore"

    .line 52
    .line 53
    invoke-static {v0, v2}, Lpb/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return v1
.end method


# virtual methods
.method protected varargs a([Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    aget-object p1, p1, v2

    .line 7
    .line 8
    invoke-static {p1}, Lpb/a;->m(Landroid/content/Context;)Ljava/io/InputStream;

    .line 9
    .line 10
    .line 11
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    sget-object v2, Lpb/d;->a:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v4, "doInBackground: exception : "

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {v2, p1}, Lpb/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    :goto_0
    sget-object v2, Lpb/d;->a:Ljava/lang/String;

    .line 42
    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v4, "doInBackground: get bks from hms tss cost : "

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    .line 55
    .line 56
    move-result-wide v4

    .line 57
    sub-long/2addr v4, v0

    .line 58
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, " ms"

    .line 62
    .line 63
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v2, v0}, Lpb/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    if-eqz p1, :cond_0

    .line 74
    .line 75
    invoke-static {p1}, Lpb/e;->b(Ljava/io/InputStream;)V

    .line 76
    .line 77
    .line 78
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 79
    .line 80
    return-object p1

    .line 81
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 82
    .line 83
    return-object p1
.end method

.method protected c(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget-object p1, Lpb/d;->a:Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "onPostExecute: upate done"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lpb/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object p1, Lpb/d;->a:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "onPostExecute: upate failed"

    .line 18
    .line 19
    invoke-static {p1, v0}, Lpb/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method protected varargs d([Ljava/lang/Integer;)V
    .locals 1

    .line 1
    sget-object p1, Lpb/d;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "onProgressUpdate"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lpb/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lpb/d;->a([Landroid/content/Context;)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lpb/d;->c(Ljava/lang/Boolean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 1
    sget-object v0, Lpb/d;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "onPreExecute"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lpb/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lpb/d;->d([Ljava/lang/Integer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
