.class public Lcom/bytedance/sdk/openadsdk/utils/UN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static volatile oJ:Z


# instance fields
.field private final ZYk:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private tB:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/UN;->ZYk:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/UN;->ZYk()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private ZYk()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljava/io/File;

    .line 13
    .line 14
    const-string v2, "TTCache"

    .line 15
    .line 16
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/UN;->tB:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    :catchall_0
    return-void
.end method

.method public static oJ()Lcom/bytedance/sdk/openadsdk/utils/UN;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/UN;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/utils/UN;-><init>()V

    return-object v0
.end method

.method private oJ(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 11

    .line 2
    const-string p1, "0"

    const/4 p2, 0x0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/UN;->tB:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/UN;->ZYk()V

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, p2

    goto/16 :goto_8

    .line 5
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/UN;->tB:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/UN;->tB:Ljava/lang/String;

    const-string v2, "tt_crash_count.properties"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "tt_crash_info"

    const-string v3, "crash_last_time"

    const-string v4, "crash_count"

    if-eqz v1, :cond_8

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 8
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 9
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-virtual {v1, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 11
    invoke-virtual {v1, v4, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 12
    invoke-virtual {v1, v3, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 14
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sub-long/2addr v9, v7

    const-wide/32 v7, 0x493e0

    cmp-long p1, v9, v7

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-gez p1, :cond_2

    add-int/2addr v6, v8

    move p1, v7

    goto :goto_1

    :cond_2
    move p1, v8

    move v6, p1

    :goto_1
    const/4 v9, 0x3

    if-lt v6, v9, :cond_3

    goto :goto_2

    :cond_3
    move v8, v7

    :goto_2
    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    move v7, v6

    :goto_3
    if-eqz v8, :cond_5

    .line 16
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    .line 17
    :cond_5
    :try_start_4
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p1, :cond_6

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object v1, p2

    :goto_4
    move-object p2, v5

    goto :goto_8

    .line 19
    :cond_6
    :goto_5
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 20
    :try_start_5
    invoke-virtual {v1, p1, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object p2, p1

    :catchall_2
    :goto_6
    if-eqz v8, :cond_7

    .line 21
    :try_start_6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/UN;->tB()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_7
    move-object v1, p2

    move-object p2, v5

    goto :goto_7

    :catchall_3
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    goto :goto_4

    .line 22
    :cond_8
    :try_start_7
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    .line 23
    const-string v1, "1"

    invoke-virtual {p1, v4, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 26
    :try_start_8
    invoke-virtual {p1, v1, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :goto_7
    if-eqz p2, :cond_9

    .line 27
    :try_start_9
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    :cond_9
    if-eqz v1, :cond_b

    .line 28
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    return-void

    :catchall_6
    move-exception p1

    .line 29
    :goto_8
    :try_start_b
    const-string v0, "TTCrashHandler"

    const-string v2, "crash count error"

    invoke-static {v0, v2, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    if-eqz p2, :cond_a

    .line 30
    :try_start_c
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :catchall_7
    :cond_a
    if-eqz v1, :cond_b

    .line 31
    :try_start_d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    :catchall_8
    :cond_b
    return-void

    :catchall_9
    move-exception p1

    if-eqz p2, :cond_c

    .line 32
    :try_start_e
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    :catchall_a
    :cond_c
    if-eqz v1, :cond_d

    .line 33
    :try_start_f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    .line 34
    :catchall_b
    :cond_d
    throw p1
.end method

.method private tB()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/cFZ/oJ;->oJ(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    :catchall_0
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/PiB;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/PiB;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/PiB;->oJ()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    .line 18
    .line 19
    :catchall_1
    :try_start_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->oJ()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 28
    .line 29
    .line 30
    :catchall_2
    :try_start_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->oJ()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 35
    .line 36
    .line 37
    :catchall_3
    :try_start_4
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/ZYk;->ZYk()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 38
    .line 39
    .line 40
    :catchall_4
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/UN;->oJ:Z

    .line 3
    .line 4
    sput-boolean v0, Lcom/bytedance/sdk/component/so/jFA;->sCrashHappened:Z

    .line 5
    .line 6
    sput-boolean v0, Lcom/bytedance/sdk/component/so/tB/ex;->tB:Z

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {v0}, Lcom/bytedance/sdk/component/so/ba;->oJ(Z)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v2, Ljava/io/PrintWriter;

    .line 18
    .line 19
    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    const-class v2, Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :catchall_0
    :cond_0
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/UN;->oJ(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/UN;->ZYk:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    if-eq v0, p0, :cond_2

    .line 55
    .line 56
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    return-void
.end method
