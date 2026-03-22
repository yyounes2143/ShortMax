.class public final Lcom/apm/insight/nativecrash/a;
.super Ljava/lang/Object;
.source "NativeCrashFileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apm/insight/nativecrash/a$c;,
        Lcom/apm/insight/nativecrash/a$f;,
        Lcom/apm/insight/nativecrash/a$d;,
        Lcom/apm/insight/nativecrash/a$e;,
        Lcom/apm/insight/nativecrash/a$a;,
        Lcom/apm/insight/nativecrash/a$b;
    }
.end annotation


# static fields
.field private static d:Ljava/lang/Boolean;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lorg/json/JSONObject;

.field private c:Lcom/apm/insight/nativecrash/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/apm/insight/nativecrash/a;->b:Lorg/json/JSONObject;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/apm/insight/nativecrash/a;->a:Landroid/content/Context;

    .line 8
    .line 9
    return-void
.end method

.method static synthetic a(Lcom/apm/insight/nativecrash/a;)Lcom/apm/insight/nativecrash/a$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/apm/insight/nativecrash/a;->c:Lcom/apm/insight/nativecrash/a$b;

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x6

    .line 19
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    .line 20
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    .line 21
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    .line 23
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    .line 24
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 25
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 26
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    .line 27
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0xb

    .line 28
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    .line 30
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0xe

    .line 31
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0xf

    .line 32
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0xc

    .line 33
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0xd

    .line 34
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x20

    if-lt v1, v3, :cond_1

    .line 36
    invoke-virtual {v0, p0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const/16 p0, 0x30

    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 38
    :goto_0
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    const-string v1, "NPTH_CATCH"

    .line 39
    invoke-static {p0, v1}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 40
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/apm/insight/entity/a;)V
    .locals 6

    .line 5
    const-string v0, "\n"

    iget-object v1, p0, Lcom/apm/insight/nativecrash/a;->c:Lcom/apm/insight/nativecrash/a$b;

    invoke-virtual {v1}, Lcom/apm/insight/nativecrash/a$b;->b()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/apm/insight/l/j;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/apm/insight/l/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    const-string v2, "native_log"

    .line 9
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 11
    array-length v1, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    .line 12
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p1, v2, v3}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 14
    :goto_1
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    const-string v0, "NPTH_CATCH"

    .line 15
    invoke-static {p1, v0}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/apm/insight/entity/a;)V
    .locals 8

    .line 9
    iget-object v0, p0, Lcom/apm/insight/nativecrash/a;->c:Lcom/apm/insight/nativecrash/a$b;

    invoke-virtual {v0}, Lcom/apm/insight/nativecrash/a$b;->b()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/apm/insight/l/j;->h(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {}, Lcom/apm/insight/e;->i()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apm/insight/runtime/ConfigManager;->getLogcatDumpCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-static {}, Lcom/apm/insight/e;->i()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apm/insight/runtime/ConfigManager;->getLogcatLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-static {v1, v2, v3}, Lcom/apm/insight/nativecrash/NativeImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/apm/insight/nativecrash/a;->c:Lcom/apm/insight/nativecrash/a$b;

    invoke-static {v4}, Lcom/apm/insight/nativecrash/a$b;->a(Lcom/apm/insight/nativecrash/a$b;)Lcom/apm/insight/h/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/apm/insight/h/b;->f()Ljava/util/Map;

    move-result-object v4

    const-string v5, "pid"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 17
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x7d000

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 19
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/io/BufferedReader;->skip(J)J

    .line 20
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x20

    if-le v4, v5, :cond_2

    const/4 v4, 0x0

    const/16 v5, 0x1f

    .line 22
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v0

    .line 23
    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 24
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 25
    :catchall_0
    :cond_3
    :goto_2
    invoke-static {v3}, Lcom/apm/insight/a;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_1
    const/4 v3, 0x0

    goto :goto_2

    .line 26
    :goto_3
    const-string v0, "logcat"

    invoke-virtual {p1, v0, v1}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static g()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/apm/insight/nativecrash/NativeImpl;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-wide v0, 0x7fffffffffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    return-wide v0

    .line 13
    :cond_0
    invoke-static {}, Lcom/apm/insight/entity/Header;->a()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const-wide/32 v0, 0x3b6000

    .line 20
    .line 21
    .line 22
    return-wide v0

    .line 23
    :cond_1
    const-wide/32 v0, 0x2bc000

    .line 24
    .line 25
    .line 26
    return-wide v0
.end method

.method public static k()Z
    .locals 12

    .line 1
    sget-object v0, Lcom/apm/insight/nativecrash/a;->d:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const-string v10, "/sbin/su"

    .line 11
    .line 12
    const-string v11, "/su/bin/su"

    .line 13
    .line 14
    const-string v1, "/data/local/su"

    .line 15
    .line 16
    const-string v2, "/data/local/bin/su"

    .line 17
    .line 18
    const-string v3, "/data/local/xbin/su"

    .line 19
    .line 20
    const-string v4, "/system/xbin/su"

    .line 21
    .line 22
    const-string v5, "/system/bin/su"

    .line 23
    .line 24
    const-string v6, "/system/bin/.ext/su"

    .line 25
    .line 26
    const-string v7, "/system/bin/failsafe/su"

    .line 27
    .line 28
    const-string v8, "/system/sd/xbin/su"

    .line 29
    .line 30
    const-string v9, "/system/usr/we-need-root/su"

    .line 31
    .line 32
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x0

    .line 37
    move v2, v1

    .line 38
    :goto_0
    const/16 v3, 0xb

    .line 39
    .line 40
    if-ge v2, v3, :cond_2

    .line 41
    .line 42
    aget-object v3, v0, v2

    .line 43
    .line 44
    :try_start_0
    new-instance v4, Ljava/io/File;

    .line 45
    .line 46
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 56
    .line 57
    sput-object v3, Lcom/apm/insight/nativecrash/a;->d:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    return v0

    .line 61
    :catchall_0
    move-exception v3

    .line 62
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    .line 63
    .line 64
    .line 65
    const-string v4, "NPTH_CATCH"

    .line 66
    .line 67
    invoke-static {v3, v4}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 74
    .line 75
    sput-object v0, Lcom/apm/insight/nativecrash/a;->d:Ljava/lang/Boolean;

    .line 76
    .line 77
    return v1
.end method

.method private l()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apm/insight/nativecrash/a;->c:Lcom/apm/insight/nativecrash/a$b;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-static {v0}, Lcom/apm/insight/nativecrash/a$b;->b(Lcom/apm/insight/nativecrash/a$b;)Lcom/apm/insight/nativecrash/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/apm/insight/nativecrash/c;->c()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/apm/insight/nativecrash/a;->c:Lcom/apm/insight/nativecrash/a$b;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/apm/insight/nativecrash/a$b;->a(Lcom/apm/insight/nativecrash/a$b;)Lcom/apm/insight/h/b;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/apm/insight/h/b;->e()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_1
    return-object v0

    .line 32
    :cond_2
    const/4 v0, 0x0

    .line 33
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/io/File;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/apm/insight/nativecrash/a$b;

    invoke-direct {v0, p0, p1}, Lcom/apm/insight/nativecrash/a$b;-><init>(Lcom/apm/insight/nativecrash/a;Ljava/io/File;)V

    iput-object v0, p0, Lcom/apm/insight/nativecrash/a;->c:Lcom/apm/insight/nativecrash/a$b;

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/apm/insight/nativecrash/a;->c:Lcom/apm/insight/nativecrash/a$b;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/apm/insight/nativecrash/a$b;->c()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apm/insight/nativecrash/a;->c:Lcom/apm/insight/nativecrash/a$b;

    invoke-virtual {v0}, Lcom/apm/insight/nativecrash/a$b;->b()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/apm/insight/l/j;->f(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 4
    const-string v1, "\n"

    invoke-static {v0, v1}, Lcom/apm/insight/l/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    const-string v1, "NPTH_CATCH"

    .line 8
    invoke-static {v0, v1}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    return-object v2
.end method

.method public final c()V
    .locals 12

    .line 1
    const-string v0, "err_write"

    .line 2
    .line 3
    const-string v1, "NPTH_CATCH"

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/apm/insight/nativecrash/a;->c:Lcom/apm/insight/nativecrash/a$b;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/apm/insight/nativecrash/a$b;->b()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v2}, Lcom/apm/insight/l/j;->e(Ljava/io/File;)Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v3, Ljava/io/File;

    .line 16
    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v5, ".tmp\'"

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    goto/16 :goto_a

    .line 53
    .line 54
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    const/16 v5, 0x2e

    .line 59
    .line 60
    const/4 v6, 0x0

    .line 61
    if-eqz v4, :cond_3

    .line 62
    .line 63
    :goto_1
    invoke-static {}, Lcom/apm/insight/nativecrash/NativeCrashCollector;->a()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-ge v6, v0, :cond_2

    .line 68
    .line 69
    new-instance v0, Ljava/io/File;

    .line 70
    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_1

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 103
    .line 104
    .line 105
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    return-void

    .line 109
    :cond_3
    new-instance v4, Lcom/apm/insight/entity/a;

    .line 110
    .line 111
    invoke-direct {v4}, Lcom/apm/insight/entity/a;-><init>()V

    .line 112
    .line 113
    .line 114
    move v7, v6

    .line 115
    :goto_2
    invoke-static {}, Lcom/apm/insight/nativecrash/NativeCrashCollector;->a()I

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    if-ge v7, v8, :cond_5

    .line 120
    .line 121
    new-instance v8, Ljava/io/File;

    .line 122
    .line 123
    new-instance v9, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v10

    .line 132
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 149
    .line 150
    .line 151
    move-result v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    if-eqz v9, :cond_4

    .line 153
    .line 154
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    const-string v9, "\n"

    .line 159
    .line 160
    invoke-static {v8, v9}, Lcom/apm/insight/l/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 165
    .line 166
    .line 167
    move-result v9

    .line 168
    if-nez v9, :cond_4

    .line 169
    .line 170
    new-instance v9, Lorg/json/JSONObject;

    .line 171
    .line 172
    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v9}, Lorg/json/JSONObject;->length()I

    .line 176
    .line 177
    .line 178
    move-result v8

    .line 179
    if-lez v8, :cond_4

    .line 180
    .line 181
    invoke-virtual {v4, v9}, Lcom/apm/insight/entity/a;->c(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :catch_1
    move-exception v8

    .line 186
    :try_start_2
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    .line 187
    .line 188
    .line 189
    invoke-static {v8, v1}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_5
    invoke-virtual {v4}, Lcom/apm/insight/entity/a;->c()Lorg/json/JSONObject;

    .line 196
    .line 197
    .line 198
    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 199
    :try_start_3
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    .line 200
    .line 201
    .line 202
    move-result v7

    .line 203
    if-eqz v7, :cond_6

    .line 204
    .line 205
    const-string v7, "storage"

    .line 206
    .line 207
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    if-nez v7, :cond_6

    .line 212
    .line 213
    invoke-static {}, Lcom/apm/insight/e;->g()Landroid/content/Context;

    .line 214
    .line 215
    .line 216
    invoke-static {}, Lcom/apm/insight/l/n;->a()Lorg/json/JSONObject;

    .line 217
    .line 218
    .line 219
    move-result-object v7

    .line 220
    invoke-static {v4, v7}, Lcom/apm/insight/entity/a;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 221
    .line 222
    .line 223
    :catchall_0
    :cond_6
    :try_start_4
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    .line 224
    .line 225
    .line 226
    move-result v7

    .line 227
    if-eqz v7, :cond_8

    .line 228
    .line 229
    iput-object v4, p0, Lcom/apm/insight/nativecrash/a;->b:Lorg/json/JSONObject;

    .line 230
    .line 231
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 236
    .line 237
    .line 238
    const/4 v7, 0x0

    .line 239
    :try_start_5
    new-instance v8, Ljava/io/BufferedWriter;

    .line 240
    .line 241
    new-instance v9, Ljava/io/FileWriter;

    .line 242
    .line 243
    invoke-direct {v9, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 244
    .line 245
    .line 246
    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 247
    .line 248
    .line 249
    :try_start_6
    invoke-static {v4, v8}, Lcom/apm/insight/l/h;->a(Lorg/json/JSONObject;Ljava/io/Writer;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 250
    .line 251
    .line 252
    :goto_4
    :try_start_7
    invoke-static {v8}, Lcom/apm/insight/a;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 253
    .line 254
    .line 255
    goto :goto_7

    .line 256
    :catchall_1
    move-exception v7

    .line 257
    goto :goto_5

    .line 258
    :catchall_2
    move-exception v8

    .line 259
    move-object v11, v8

    .line 260
    move-object v8, v7

    .line 261
    move-object v7, v11

    .line 262
    :goto_5
    :try_start_8
    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v9

    .line 266
    invoke-virtual {v4, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    .line 268
    .line 269
    const-string v9, "filters"

    .line 270
    .line 271
    invoke-virtual {v7}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v10

    .line 275
    invoke-static {v4, v9, v0, v10}, Lcom/apm/insight/entity/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 276
    .line 277
    .line 278
    goto :goto_6

    .line 279
    :catchall_3
    move-exception v0

    .line 280
    goto :goto_9

    .line 281
    :catch_2
    :goto_6
    :try_start_9
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    .line 282
    .line 283
    .line 284
    invoke-static {v7, v1}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 285
    .line 286
    .line 287
    goto :goto_4

    .line 288
    :goto_7
    :try_start_a
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    if-eqz v0, :cond_8

    .line 293
    .line 294
    :goto_8
    invoke-static {}, Lcom/apm/insight/nativecrash/NativeCrashCollector;->a()I

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-ge v6, v0, :cond_8

    .line 299
    .line 300
    new-instance v0, Ljava/io/File;

    .line 301
    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    if-eqz v3, :cond_7

    .line 332
    .line 333
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 334
    .line 335
    .line 336
    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 337
    .line 338
    goto :goto_8

    .line 339
    :goto_9
    invoke-static {v8}, Lcom/apm/insight/a;->a(Ljava/io/Closeable;)V

    .line 340
    .line 341
    .line 342
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 343
    :cond_8
    return-void

    .line 344
    :goto_a
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    .line 345
    .line 346
    .line 347
    invoke-static {v0, v1}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    return-void
.end method

.method public final d()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/apm/insight/e;->b()Lcom/apm/insight/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/apm/insight/a;->b()Lcom/apm/insight/ICrashFilter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-direct {p0}, Lcom/apm/insight/nativecrash/a;->l()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, ""

    .line 16
    .line 17
    invoke-interface {v0, v1, v2}, Lcom/apm/insight/ICrashFilter;->onNativeCrashFilter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    return v0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    .line 27
    .line 28
    .line 29
    const-string v1, "NPTH_CATCH"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    const/4 v0, 0x1

    .line 35
    return v0
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apm/insight/nativecrash/a;->c:Lcom/apm/insight/nativecrash/a$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/apm/insight/nativecrash/a$b;->b()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/apm/insight/l/j;->f(Ljava/io/File;)Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/apm/insight/e/a;->a()Lcom/apm/insight/e/a;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v1, v0}, Lcom/apm/insight/e/a;->a(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apm/insight/nativecrash/a;->c:Lcom/apm/insight/nativecrash/a$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/apm/insight/nativecrash/a$b;->b()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/apm/insight/l/j;->f(Ljava/io/File;)Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/apm/insight/d/a;->b(Ljava/lang/String;)Lcom/apm/insight/d/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {}, Lcom/apm/insight/e/a;->a()Lcom/apm/insight/e/a;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, v0}, Lcom/apm/insight/e/a;->a(Lcom/apm/insight/d/a;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final h()Lorg/json/JSONObject;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "java_data"

    .line 4
    .line 5
    const-string/jumbo v3, "total_cost"

    .line 6
    .line 7
    .line 8
    const-string v4, "crash_thread_name"

    .line 9
    .line 10
    const-string v5, "pid"

    .line 11
    .line 12
    const-string v0, "process_name"

    .line 13
    .line 14
    const-string v6, "NPTH_CATCH"

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    :try_start_0
    new-instance v8, Lcom/apm/insight/entity/a;

    .line 18
    .line 19
    invoke-direct {v8}, Lcom/apm/insight/entity/a;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v9, Lcom/apm/insight/entity/Header;

    .line 23
    .line 24
    iget-object v10, v1, Lcom/apm/insight/nativecrash/a;->a:Landroid/content/Context;

    .line 25
    .line 26
    invoke-direct {v9, v10}, Lcom/apm/insight/entity/Header;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/apm/insight/runtime/o;->a()Lcom/apm/insight/runtime/o;

    .line 30
    .line 31
    .line 32
    move-result-object v10

    .line 33
    iget-object v11, v1, Lcom/apm/insight/nativecrash/a;->c:Lcom/apm/insight/nativecrash/a$b;

    .line 34
    .line 35
    invoke-virtual {v11}, Lcom/apm/insight/nativecrash/a$b;->a()J

    .line 36
    .line 37
    .line 38
    move-result-wide v11

    .line 39
    invoke-virtual {v10, v11, v12}, Lcom/apm/insight/runtime/o;->a(J)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    move-result-object v10

    .line 43
    if-eqz v10, :cond_0

    .line 44
    .line 45
    invoke-virtual {v9, v10}, Lcom/apm/insight/entity/Header;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v9}, Lcom/apm/insight/entity/Header;->d()Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v9}, Lcom/apm/insight/entity/Header;->e()Lorg/json/JSONObject;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    goto/16 :goto_18

    .line 57
    .line 58
    :cond_0
    :goto_0
    invoke-static {v9}, Lcom/apm/insight/entity/Header;->b(Lcom/apm/insight/entity/Header;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v8, v9}, Lcom/apm/insight/entity/a;->a(Lcom/apm/insight/entity/Header;)Lcom/apm/insight/entity/a;

    .line 62
    .line 63
    .line 64
    const-string v9, "is_native_crash"

    .line 65
    .line 66
    const/4 v10, 0x1

    .line 67
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v11

    .line 71
    invoke-virtual {v8, v9, v11}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    const-string v9, "repack_time"

    .line 75
    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 77
    .line 78
    .line 79
    move-result-wide v11

    .line 80
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object v11

    .line 84
    invoke-virtual {v8, v9, v11}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    const-string v9, "crash_uuid"

    .line 88
    .line 89
    iget-object v11, v1, Lcom/apm/insight/nativecrash/a;->c:Lcom/apm/insight/nativecrash/a$b;

    .line 90
    .line 91
    invoke-virtual {v11}, Lcom/apm/insight/nativecrash/a$b;->b()Ljava/io/File;

    .line 92
    .line 93
    .line 94
    move-result-object v11

    .line 95
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v11

    .line 99
    invoke-virtual {v8, v9, v11}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iget-object v9, v1, Lcom/apm/insight/nativecrash/a;->c:Lcom/apm/insight/nativecrash/a$b;

    .line 103
    .line 104
    if-eqz v9, :cond_1

    .line 105
    .line 106
    invoke-static {v9}, Lcom/apm/insight/nativecrash/a$b;->a(Lcom/apm/insight/nativecrash/a$b;)Lcom/apm/insight/h/b;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    invoke-virtual {v9}, Lcom/apm/insight/h/b;->f()Ljava/util/Map;

    .line 111
    .line 112
    .line 113
    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    goto :goto_1

    .line 115
    :cond_1
    move-object v9, v7

    .line 116
    :goto_1
    const-string v11, "crash_time"

    .line 117
    .line 118
    if-eqz v9, :cond_7

    .line 119
    .line 120
    :try_start_1
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v12

    .line 124
    check-cast v12, Ljava/lang/String;

    .line 125
    .line 126
    if-eqz v12, :cond_2

    .line 127
    .line 128
    invoke-virtual {v8, v0, v12}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_2
    const-string v0, "start_time"

    .line 132
    .line 133
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    .line 139
    if-eqz v0, :cond_3

    .line 140
    .line 141
    :try_start_2
    invoke-static {v0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 146
    .line 147
    .line 148
    move-result-wide v12

    .line 149
    invoke-virtual {v8, v12, v13}, Lcom/apm/insight/entity/a;->a(J)Lcom/apm/insight/entity/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :catchall_1
    move-exception v0

    .line 154
    :try_start_3
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    .line 155
    .line 156
    .line 157
    invoke-static {v0, v6}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :cond_3
    :goto_2
    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    check-cast v0, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 165
    .line 166
    if-eqz v0, :cond_4

    .line 167
    .line 168
    :try_start_4
    invoke-static {v0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v8, v5, v0}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 173
    .line 174
    .line 175
    goto :goto_3

    .line 176
    :catchall_2
    move-exception v0

    .line 177
    :try_start_5
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    .line 178
    .line 179
    .line 180
    invoke-static {v0, v6}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    :cond_4
    :goto_3
    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    check-cast v0, Ljava/lang/String;

    .line 188
    .line 189
    if-eqz v0, :cond_5

    .line 190
    .line 191
    invoke-virtual {v8, v4, v0}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    :cond_5
    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    check-cast v0, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 199
    .line 200
    if-eqz v0, :cond_6

    .line 201
    .line 202
    :try_start_6
    invoke-static {v0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {v8, v11, v0}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 207
    .line 208
    .line 209
    goto :goto_4

    .line 210
    :catchall_3
    move-exception v0

    .line 211
    :try_start_7
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    .line 212
    .line 213
    .line 214
    invoke-static {v0, v6}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    :cond_6
    :goto_4
    const-string v0, "data"

    .line 218
    .line 219
    invoke-direct/range {p0 .. p0}, Lcom/apm/insight/nativecrash/a;->l()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    invoke-virtual {v8, v0, v4}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    :cond_7
    iget-object v0, v1, Lcom/apm/insight/nativecrash/a;->c:Lcom/apm/insight/nativecrash/a$b;

    .line 227
    .line 228
    invoke-static {v0}, Lcom/apm/insight/nativecrash/a$b;->b(Lcom/apm/insight/nativecrash/a$b;)Lcom/apm/insight/nativecrash/c;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {v0}, Lcom/apm/insight/nativecrash/c;->b()Ljava/util/Map;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-nez v0, :cond_9

    .line 241
    .line 242
    new-instance v5, Lorg/json/JSONArray;

    .line 243
    .line 244
    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 245
    .line 246
    .line 247
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 252
    .line 253
    .line 254
    move-result-object v9

    .line 255
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-eqz v0, :cond_8

    .line 260
    .line 261
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    check-cast v0, Ljava/lang/String;

    .line 266
    .line 267
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v12

    .line 271
    check-cast v12, Ljava/lang/String;

    .line 272
    .line 273
    invoke-static {v12}, Lcom/apm/insight/nativecrash/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 277
    :try_start_8
    new-instance v13, Lorg/json/JSONObject;

    .line 278
    .line 279
    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 280
    .line 281
    .line 282
    const-string v14, "lib_name"

    .line 283
    .line 284
    invoke-virtual {v13, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    .line 286
    .line 287
    const-string v0, "lib_uuid"

    .line 288
    .line 289
    invoke-virtual {v13, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v5, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 293
    .line 294
    .line 295
    goto :goto_5

    .line 296
    :catch_0
    move-exception v0

    .line 297
    :try_start_9
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    .line 298
    .line 299
    .line 300
    invoke-static {v0, v6}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    goto :goto_5

    .line 304
    :cond_8
    const-string v0, "crash_lib_uuid"

    .line 305
    .line 306
    invoke-virtual {v8, v0, v5}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    :cond_9
    iget-object v0, v1, Lcom/apm/insight/nativecrash/a;->c:Lcom/apm/insight/nativecrash/a$b;

    .line 310
    .line 311
    invoke-virtual {v0}, Lcom/apm/insight/nativecrash/a$b;->b()Ljava/io/File;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-static {v0}, Lcom/apm/insight/l/j;->e(Ljava/io/File;)Ljava/io/File;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 320
    .line 321
    .line 322
    move-result v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 323
    const-string v5, "\n"

    .line 324
    .line 325
    const-string v9, "has_callback"

    .line 326
    .line 327
    const-string/jumbo v12, "true"

    .line 328
    .line 329
    .line 330
    const-string v13, "false"

    .line 331
    .line 332
    if-nez v4, :cond_a

    .line 333
    .line 334
    :try_start_a
    iget-object v4, v1, Lcom/apm/insight/nativecrash/a;->b:Lorg/json/JSONObject;

    .line 335
    .line 336
    if-nez v4, :cond_a

    .line 337
    .line 338
    invoke-static {}, Lcom/apm/insight/e;->g()Landroid/content/Context;

    .line 339
    .line 340
    .line 341
    invoke-static {}, Lcom/apm/insight/l/n;->a()Lorg/json/JSONObject;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-virtual {v8, v0}, Lcom/apm/insight/entity/a;->b(Lorg/json/JSONObject;)Lcom/apm/insight/entity/a;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v8, v9, v13}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/apm/insight/entity/a;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 349
    .line 350
    .line 351
    goto :goto_9

    .line 352
    :cond_a
    :try_start_b
    iget-object v4, v1, Lcom/apm/insight/nativecrash/a;->b:Lorg/json/JSONObject;

    .line 353
    .line 354
    if-nez v4, :cond_b

    .line 355
    .line 356
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-static {v0, v5}, Lcom/apm/insight/l/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    new-instance v4, Lorg/json/JSONObject;

    .line 365
    .line 366
    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    goto :goto_6

    .line 370
    :catchall_4
    move-exception v0

    .line 371
    goto :goto_7

    .line 372
    :cond_b
    :goto_6
    invoke-virtual {v8, v4}, Lcom/apm/insight/entity/a;->c(Lorg/json/JSONObject;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v8, v9, v12}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/apm/insight/entity/a;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v8}, Lcom/apm/insight/entity/a;->c()Lorg/json/JSONObject;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    const-string v4, "storage"

    .line 383
    .line 384
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    if-nez v0, :cond_c

    .line 389
    .line 390
    invoke-static {}, Lcom/apm/insight/e;->g()Landroid/content/Context;

    .line 391
    .line 392
    .line 393
    invoke-static {}, Lcom/apm/insight/l/n;->a()Lorg/json/JSONObject;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    invoke-virtual {v8, v0}, Lcom/apm/insight/entity/a;->b(Lorg/json/JSONObject;)Lcom/apm/insight/entity/a;

    .line 398
    .line 399
    .line 400
    :cond_c
    invoke-virtual {v8}, Lcom/apm/insight/entity/a;->d()Lcom/apm/insight/entity/Header;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    sget-object v4, Lcom/apm/insight/CrashType;->NATIVE:Lcom/apm/insight/CrashType;

    .line 405
    .line 406
    invoke-static {v8, v0, v4}, Lcom/apm/insight/a;->a(Lcom/apm/insight/entity/a;Lcom/apm/insight/entity/Header;Lcom/apm/insight/CrashType;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 407
    .line 408
    .line 409
    goto :goto_8

    .line 410
    :goto_7
    :try_start_c
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    .line 411
    .line 412
    .line 413
    invoke-static {v0, v6}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    :goto_8
    invoke-virtual {v8}, Lcom/apm/insight/entity/a;->c()Lorg/json/JSONObject;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    const-wide/16 v14, -0x1

    .line 421
    .line 422
    invoke-virtual {v0, v11, v14, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 423
    .line 424
    .line 425
    move-result-wide v16

    .line 426
    invoke-virtual {v8}, Lcom/apm/insight/entity/a;->c()Lorg/json/JSONObject;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    const-string v4, "java_end"

    .line 431
    .line 432
    invoke-virtual {v0, v4, v14, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 433
    .line 434
    .line 435
    move-result-wide v18
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 436
    cmp-long v0, v18, v14

    .line 437
    .line 438
    if-eqz v0, :cond_d

    .line 439
    .line 440
    cmp-long v0, v16, v14

    .line 441
    .line 442
    if-eqz v0, :cond_d

    .line 443
    .line 444
    sub-long v14, v18, v16

    .line 445
    .line 446
    :cond_d
    :try_start_d
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    invoke-virtual {v8, v3, v0}, Lcom/apm/insight/entity/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/apm/insight/entity/a;

    .line 451
    .line 452
    .line 453
    const-wide/16 v16, 0x3e8

    .line 454
    .line 455
    div-long v14, v14, v16

    .line 456
    .line 457
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    invoke-virtual {v8, v3, v0}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/apm/insight/entity/a;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 462
    .line 463
    .line 464
    :catchall_5
    :goto_9
    :try_start_e
    iget-object v0, v1, Lcom/apm/insight/nativecrash/a;->c:Lcom/apm/insight/nativecrash/a$b;

    .line 465
    .line 466
    invoke-virtual {v0}, Lcom/apm/insight/nativecrash/a$b;->b()Ljava/io/File;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    invoke-static {v0}, Lcom/apm/insight/l/j;->g(Ljava/io/File;)Ljava/io/File;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    const-string v3, ""

    .line 475
    .line 476
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 477
    .line 478
    .line 479
    move-result v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 480
    if-eqz v4, :cond_e

    .line 481
    .line 482
    :try_start_f
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    invoke-static {v0}, Lcom/apm/insight/l/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 490
    goto :goto_a

    .line 491
    :catchall_6
    move-exception v0

    .line 492
    :try_start_10
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    .line 493
    .line 494
    .line 495
    invoke-static {v0, v6}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    :cond_e
    :goto_a
    iget-object v0, v1, Lcom/apm/insight/nativecrash/a;->c:Lcom/apm/insight/nativecrash/a$b;

    .line 499
    .line 500
    invoke-virtual {v0}, Lcom/apm/insight/nativecrash/a$b;->b()Ljava/io/File;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    invoke-static {v0}, Lcom/apm/insight/l/j;->o(Ljava/io/File;)Ljava/io/File;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 509
    .line 510
    .line 511
    move-result v4

    .line 512
    if-eqz v4, :cond_10

    .line 513
    .line 514
    invoke-static {v0}, Lcom/apm/insight/nativecrash/a$a;->a(Ljava/io/File;)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 519
    .line 520
    .line 521
    move-result v4

    .line 522
    if-nez v4, :cond_f

    .line 523
    .line 524
    new-instance v4, Ljava/lang/StringBuilder;

    .line 525
    .line 526
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 542
    goto :goto_b

    .line 543
    :cond_f
    move-object v3, v0

    .line 544
    :cond_10
    :goto_b
    :try_start_11
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 545
    .line 546
    .line 547
    move-result v0

    .line 548
    if-nez v0, :cond_11

    .line 549
    .line 550
    invoke-virtual {v8, v2, v3}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 551
    .line 552
    .line 553
    goto :goto_c

    .line 554
    :catchall_7
    move-exception v0

    .line 555
    :try_start_12
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    .line 556
    .line 557
    .line 558
    invoke-static {v0, v6}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    :cond_11
    :goto_c
    invoke-direct {v1, v8}, Lcom/apm/insight/nativecrash/a;->b(Lcom/apm/insight/entity/a;)V

    .line 562
    .line 563
    .line 564
    invoke-direct {v1, v8}, Lcom/apm/insight/nativecrash/a;->a(Lcom/apm/insight/entity/a;)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v8}, Lcom/apm/insight/entity/a;->c()Lorg/json/JSONObject;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    invoke-static {v0}, Lcom/apm/insight/entity/d;->b(Lorg/json/JSONObject;)V

    .line 572
    .line 573
    .line 574
    new-instance v0, Ljava/util/HashMap;

    .line 575
    .line 576
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 577
    .line 578
    .line 579
    invoke-static {}, Lcom/apm/insight/nativecrash/a;->k()Z

    .line 580
    .line 581
    .line 582
    move-result v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 583
    const-string v4, "is_root"

    .line 584
    .line 585
    if-eqz v3, :cond_12

    .line 586
    .line 587
    :try_start_13
    invoke-interface {v0, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v8, v4, v12}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 591
    .line 592
    .line 593
    goto :goto_d

    .line 594
    :cond_12
    invoke-interface {v0, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    invoke-virtual {v8, v4, v13}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 598
    .line 599
    .line 600
    :goto_d
    iget-object v3, v1, Lcom/apm/insight/nativecrash/a;->c:Lcom/apm/insight/nativecrash/a$b;

    .line 601
    .line 602
    invoke-virtual {v3}, Lcom/apm/insight/nativecrash/a$b;->b()Ljava/io/File;

    .line 603
    .line 604
    .line 605
    move-result-object v3

    .line 606
    invoke-static {v3}, Lcom/apm/insight/l/j;->i(Ljava/io/File;)Ljava/io/File;

    .line 607
    .line 608
    .line 609
    move-result-object v3

    .line 610
    const-string v4, "has_fds_file"

    .line 611
    .line 612
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 613
    .line 614
    .line 615
    move-result v3

    .line 616
    if-eqz v3, :cond_13

    .line 617
    .line 618
    move-object v3, v12

    .line 619
    goto :goto_e

    .line 620
    :cond_13
    move-object v3, v13

    .line 621
    :goto_e
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    iget-object v3, v1, Lcom/apm/insight/nativecrash/a;->c:Lcom/apm/insight/nativecrash/a$b;

    .line 625
    .line 626
    invoke-virtual {v3}, Lcom/apm/insight/nativecrash/a$b;->b()Ljava/io/File;

    .line 627
    .line 628
    .line 629
    move-result-object v3

    .line 630
    invoke-static {v3}, Lcom/apm/insight/l/j;->h(Ljava/io/File;)Ljava/io/File;

    .line 631
    .line 632
    .line 633
    move-result-object v3

    .line 634
    const-string v4, "has_logcat_file"

    .line 635
    .line 636
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 637
    .line 638
    .line 639
    move-result v5

    .line 640
    if-eqz v5, :cond_14

    .line 641
    .line 642
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 643
    .line 644
    .line 645
    move-result-wide v14

    .line 646
    const-wide/16 v16, 0x80

    .line 647
    .line 648
    cmp-long v3, v14, v16

    .line 649
    .line 650
    if-lez v3, :cond_14

    .line 651
    .line 652
    move-object v3, v12

    .line 653
    goto :goto_f

    .line 654
    :cond_14
    move-object v3, v13

    .line 655
    :goto_f
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    iget-object v3, v1, Lcom/apm/insight/nativecrash/a;->c:Lcom/apm/insight/nativecrash/a$b;

    .line 659
    .line 660
    invoke-virtual {v3}, Lcom/apm/insight/nativecrash/a$b;->b()Ljava/io/File;

    .line 661
    .line 662
    .line 663
    move-result-object v3

    .line 664
    invoke-static {v3}, Lcom/apm/insight/l/j;->d(Ljava/io/File;)Ljava/io/File;

    .line 665
    .line 666
    .line 667
    move-result-object v3

    .line 668
    const-string v4, "has_maps_file"

    .line 669
    .line 670
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 671
    .line 672
    .line 673
    move-result v3

    .line 674
    if-eqz v3, :cond_15

    .line 675
    .line 676
    move-object v3, v12

    .line 677
    goto :goto_10

    .line 678
    :cond_15
    move-object v3, v13

    .line 679
    :goto_10
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    iget-object v3, v1, Lcom/apm/insight/nativecrash/a;->c:Lcom/apm/insight/nativecrash/a$b;

    .line 683
    .line 684
    invoke-virtual {v3}, Lcom/apm/insight/nativecrash/a$b;->b()Ljava/io/File;

    .line 685
    .line 686
    .line 687
    move-result-object v3

    .line 688
    invoke-static {v3}, Lcom/apm/insight/l/j;->b(Ljava/io/File;)Ljava/io/File;

    .line 689
    .line 690
    .line 691
    move-result-object v3

    .line 692
    const-string v4, "has_tombstone_file"

    .line 693
    .line 694
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 695
    .line 696
    .line 697
    move-result v3

    .line 698
    if-eqz v3, :cond_16

    .line 699
    .line 700
    move-object v3, v12

    .line 701
    goto :goto_11

    .line 702
    :cond_16
    move-object v3, v13

    .line 703
    :goto_11
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    iget-object v3, v1, Lcom/apm/insight/nativecrash/a;->c:Lcom/apm/insight/nativecrash/a$b;

    .line 707
    .line 708
    invoke-virtual {v3}, Lcom/apm/insight/nativecrash/a$b;->b()Ljava/io/File;

    .line 709
    .line 710
    .line 711
    move-result-object v3

    .line 712
    invoke-static {v3}, Lcom/apm/insight/l/j;->k(Ljava/io/File;)Ljava/io/File;

    .line 713
    .line 714
    .line 715
    move-result-object v3

    .line 716
    const-string v4, "has_meminfo_file"

    .line 717
    .line 718
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 719
    .line 720
    .line 721
    move-result v3

    .line 722
    if-eqz v3, :cond_17

    .line 723
    .line 724
    move-object v3, v12

    .line 725
    goto :goto_12

    .line 726
    :cond_17
    move-object v3, v13

    .line 727
    :goto_12
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    iget-object v3, v1, Lcom/apm/insight/nativecrash/a;->c:Lcom/apm/insight/nativecrash/a$b;

    .line 731
    .line 732
    invoke-virtual {v3}, Lcom/apm/insight/nativecrash/a$b;->b()Ljava/io/File;

    .line 733
    .line 734
    .line 735
    move-result-object v3

    .line 736
    invoke-static {v3}, Lcom/apm/insight/l/j;->j(Ljava/io/File;)Ljava/io/File;

    .line 737
    .line 738
    .line 739
    move-result-object v3

    .line 740
    const-string v4, "has_threads_file"

    .line 741
    .line 742
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 743
    .line 744
    .line 745
    move-result v3

    .line 746
    if-eqz v3, :cond_18

    .line 747
    .line 748
    move-object v3, v12

    .line 749
    goto :goto_13

    .line 750
    :cond_18
    move-object v3, v13

    .line 751
    :goto_13
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    .line 753
    .line 754
    new-instance v3, Lcom/apm/insight/nativecrash/a$c;

    .line 755
    .line 756
    invoke-direct {v3, v1}, Lcom/apm/insight/nativecrash/a$c;-><init>(Lcom/apm/insight/nativecrash/a;)V

    .line 757
    .line 758
    .line 759
    invoke-virtual {v3}, Lcom/apm/insight/nativecrash/a$e;->a()I

    .line 760
    .line 761
    .line 762
    move-result v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 763
    if-lez v3, :cond_1a

    .line 764
    .line 765
    const/16 v4, 0x3c0

    .line 766
    .line 767
    const-string v5, "fd_leak"

    .line 768
    .line 769
    if-le v3, v4, :cond_19

    .line 770
    .line 771
    :try_start_14
    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    .line 773
    .line 774
    goto :goto_14

    .line 775
    :cond_19
    invoke-interface {v0, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    .line 777
    .line 778
    :goto_14
    const-string v4, "fd_count"

    .line 779
    .line 780
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 781
    .line 782
    .line 783
    move-result-object v3

    .line 784
    invoke-virtual {v8, v4, v3}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 785
    .line 786
    .line 787
    :cond_1a
    new-instance v3, Lcom/apm/insight/nativecrash/a$f;

    .line 788
    .line 789
    invoke-direct {v3, v1}, Lcom/apm/insight/nativecrash/a$f;-><init>(Lcom/apm/insight/nativecrash/a;)V

    .line 790
    .line 791
    .line 792
    invoke-virtual {v3}, Lcom/apm/insight/nativecrash/a$e;->a()I

    .line 793
    .line 794
    .line 795
    move-result v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 796
    if-lez v3, :cond_1c

    .line 797
    .line 798
    const/16 v4, 0x15e

    .line 799
    .line 800
    const-string v5, "threads_leak"

    .line 801
    .line 802
    if-le v3, v4, :cond_1b

    .line 803
    .line 804
    :try_start_15
    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    .line 806
    .line 807
    goto :goto_15

    .line 808
    :cond_1b
    invoke-interface {v0, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    .line 810
    .line 811
    :goto_15
    const-string v4, "threads_count"

    .line 812
    .line 813
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 814
    .line 815
    .line 816
    move-result-object v3

    .line 817
    invoke-virtual {v8, v4, v3}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 818
    .line 819
    .line 820
    :cond_1c
    new-instance v3, Lcom/apm/insight/nativecrash/a$d;

    .line 821
    .line 822
    invoke-direct {v3, v1}, Lcom/apm/insight/nativecrash/a$d;-><init>(Lcom/apm/insight/nativecrash/a;)V

    .line 823
    .line 824
    .line 825
    invoke-virtual {v3}, Lcom/apm/insight/nativecrash/a$e;->a()I

    .line 826
    .line 827
    .line 828
    move-result v3

    .line 829
    if-lez v3, :cond_1e

    .line 830
    .line 831
    int-to-long v4, v3

    .line 832
    invoke-static {}, Lcom/apm/insight/nativecrash/a;->g()J

    .line 833
    .line 834
    .line 835
    move-result-wide v14
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 836
    cmp-long v4, v4, v14

    .line 837
    .line 838
    const-string v5, "memory_leak"

    .line 839
    .line 840
    if-lez v4, :cond_1d

    .line 841
    .line 842
    :try_start_16
    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    .line 844
    .line 845
    goto :goto_16

    .line 846
    :cond_1d
    invoke-interface {v0, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    :goto_16
    const-string v4, "memory_size"

    .line 850
    .line 851
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 852
    .line 853
    .line 854
    move-result-object v3

    .line 855
    invoke-virtual {v8, v4, v3}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 856
    .line 857
    .line 858
    :cond_1e
    const-string v3, "sdk_version"

    .line 859
    .line 860
    const-string v4, "2008-20250701130429"

    .line 861
    .line 862
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    .line 864
    .line 865
    const-string v3, "has_java_stack"

    .line 866
    .line 867
    invoke-virtual {v8}, Lcom/apm/insight/entity/a;->c()Lorg/json/JSONObject;

    .line 868
    .line 869
    .line 870
    move-result-object v4

    .line 871
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 872
    .line 873
    .line 874
    move-result-object v2

    .line 875
    if-eqz v2, :cond_1f

    .line 876
    .line 877
    goto :goto_17

    .line 878
    :cond_1f
    const/4 v10, 0x0

    .line 879
    :goto_17
    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 880
    .line 881
    .line 882
    move-result-object v2

    .line 883
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    .line 885
    .line 886
    iget-object v2, v1, Lcom/apm/insight/nativecrash/a;->c:Lcom/apm/insight/nativecrash/a$b;

    .line 887
    .line 888
    invoke-static {v2}, Lcom/apm/insight/nativecrash/a$b;->c(Lcom/apm/insight/nativecrash/a$b;)Ljava/io/File;

    .line 889
    .line 890
    .line 891
    move-result-object v2

    .line 892
    invoke-static {v2}, Lcom/apm/insight/l/j;->l(Ljava/io/File;)Ljava/io/File;

    .line 893
    .line 894
    .line 895
    move-result-object v2

    .line 896
    iget-object v3, v1, Lcom/apm/insight/nativecrash/a;->c:Lcom/apm/insight/nativecrash/a$b;

    .line 897
    .line 898
    invoke-static {v3}, Lcom/apm/insight/nativecrash/a$b;->c(Lcom/apm/insight/nativecrash/a$b;)Ljava/io/File;

    .line 899
    .line 900
    .line 901
    move-result-object v3

    .line 902
    invoke-static {v3}, Lcom/apm/insight/l/j;->m(Ljava/io/File;)Ljava/io/File;

    .line 903
    .line 904
    .line 905
    move-result-object v3

    .line 906
    invoke-static {v2, v3}, Lcom/apm/insight/nativecrash/b;->a(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONArray;

    .line 907
    .line 908
    .line 909
    move-result-object v2

    .line 910
    const-string v3, "leak_threads_count"

    .line 911
    .line 912
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 913
    .line 914
    .line 915
    move-result v4

    .line 916
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v4

    .line 920
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    .line 922
    .line 923
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 924
    .line 925
    .line 926
    move-result v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 927
    if-lez v3, :cond_20

    .line 928
    .line 929
    :try_start_17
    iget-object v3, v1, Lcom/apm/insight/nativecrash/a;->c:Lcom/apm/insight/nativecrash/a$b;

    .line 930
    .line 931
    invoke-static {v3}, Lcom/apm/insight/nativecrash/a$b;->c(Lcom/apm/insight/nativecrash/a$b;)Ljava/io/File;

    .line 932
    .line 933
    .line 934
    move-result-object v3

    .line 935
    invoke-static {v3}, Lcom/apm/insight/l/j;->n(Ljava/io/File;)Ljava/io/File;

    .line 936
    .line 937
    .line 938
    move-result-object v3

    .line 939
    invoke-static {v3, v2}, Lcom/apm/insight/l/f;->a(Ljava/io/File;Lorg/json/JSONArray;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    .line 940
    .line 941
    .line 942
    :catchall_8
    :cond_20
    :try_start_18
    invoke-virtual {v8}, Lcom/apm/insight/entity/a;->b()V

    .line 943
    .line 944
    .line 945
    const-string v2, "is_64_devices"

    .line 946
    .line 947
    invoke-static {}, Lcom/apm/insight/entity/Header;->a()Z

    .line 948
    .line 949
    .line 950
    move-result v3

    .line 951
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v3

    .line 955
    invoke-virtual {v8, v2, v3}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/apm/insight/entity/a;

    .line 956
    .line 957
    .line 958
    const-string v2, "is_64_runtime"

    .line 959
    .line 960
    invoke-static {}, Lcom/apm/insight/nativecrash/NativeImpl;->f()Z

    .line 961
    .line 962
    .line 963
    move-result v3

    .line 964
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 965
    .line 966
    .line 967
    move-result-object v3

    .line 968
    invoke-virtual {v8, v2, v3}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/apm/insight/entity/a;

    .line 969
    .line 970
    .line 971
    const-string v2, "is_x86_devices"

    .line 972
    .line 973
    invoke-static {}, Lcom/apm/insight/entity/Header;->b()Z

    .line 974
    .line 975
    .line 976
    move-result v3

    .line 977
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 978
    .line 979
    .line 980
    move-result-object v3

    .line 981
    invoke-virtual {v8, v2, v3}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/apm/insight/entity/a;

    .line 982
    .line 983
    .line 984
    invoke-virtual {v8, v0}, Lcom/apm/insight/entity/a;->c(Ljava/util/Map;)Lcom/apm/insight/entity/a;

    .line 985
    .line 986
    .line 987
    iget-object v0, v1, Lcom/apm/insight/nativecrash/a;->c:Lcom/apm/insight/nativecrash/a$b;

    .line 988
    .line 989
    invoke-virtual {v0}, Lcom/apm/insight/nativecrash/a$b;->b()Ljava/io/File;

    .line 990
    .line 991
    .line 992
    move-result-object v0

    .line 993
    invoke-static {v0}, Lcom/apm/insight/l/j;->f(Ljava/io/File;)Ljava/io/File;

    .line 994
    .line 995
    .line 996
    move-result-object v0

    .line 997
    invoke-virtual {v8}, Lcom/apm/insight/entity/a;->c()Lorg/json/JSONObject;

    .line 998
    .line 999
    .line 1000
    move-result-object v2

    .line 1001
    invoke-static {v0, v2}, Lcom/apm/insight/l/f;->a(Ljava/io/File;Lorg/json/JSONObject;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 1002
    .line 1003
    .line 1004
    return-object v2

    .line 1005
    :goto_18
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    .line 1006
    .line 1007
    .line 1008
    invoke-static {v0, v6}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1009
    .line 1010
    .line 1011
    return-object v7
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/insight/nativecrash/a;->c:Lcom/apm/insight/nativecrash/a$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/apm/insight/nativecrash/a$b;->b()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/apm/insight/l/f;->a(Ljava/io/File;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final j()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apm/insight/nativecrash/a;->c:Lcom/apm/insight/nativecrash/a$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/apm/insight/nativecrash/a$b;->b()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, "/localDebug/"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/apm/insight/e;->g()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, "/"

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/apm/insight/nativecrash/a;->c:Lcom/apm/insight/nativecrash/a$b;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/apm/insight/nativecrash/a$b;->b()Ljava/io/File;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v2, ".zip"

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Lcom/apm/insight/l/f;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    .line 76
    .line 77
    .line 78
    const-string v1, "NPTH_CATCH"

    .line 79
    .line 80
    invoke-static {v0, v1}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method
