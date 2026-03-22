.class public Lcom/ss/mediakit/vcnlib/VcnlibloadWrapper;
.super Ljava/lang/Object;
.source "VcnlibloadWrapper.java"


# static fields
.field private static isVcnload:Z = false

.field private static isVcnverifyLiteload:Z = false

.field private static isVcnverifyload:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
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

.method public static tryLoadVcnlib()Z
    .locals 5

    .line 1
    const-class v0, Lcom/ss/mediakit/vcnlib/VcnlibloadWrapper;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/ss/mediakit/vcnlib/VcnlibloadWrapper;->isVcnload:Z

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    return v2

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    :try_start_1
    const-string/jumbo v1, "vcn"

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v1

    .line 21
    :try_start_2
    const-string/jumbo v2, "vcn"

    .line 22
    .line 23
    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v4, "Can\'t load vcn library: "

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    :goto_0
    sput-boolean v2, Lcom/ss/mediakit/vcnlib/VcnlibloadWrapper;->isVcnload:Z

    .line 46
    .line 47
    monitor-exit v0

    .line 48
    return v2

    .line 49
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    throw v1
.end method

.method public static tryLoadVcnverifyLitelib()Z
    .locals 5

    .line 1
    const-class v0, Lcom/ss/mediakit/vcnlib/VcnlibloadWrapper;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/ss/mediakit/vcnlib/VcnlibloadWrapper;->isVcnverifyLiteload:Z

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    return v2

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    :try_start_1
    const-string/jumbo v1, "vcnverifylite"

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v1, "vcn"

    .line 20
    .line 21
    .line 22
    const-string v3, "load vcnverifylite suc"

    .line 23
    .line 24
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/ss/mediakit/vcnlib/CustomVerify;->init()V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v1

    .line 32
    :try_start_2
    const-string/jumbo v2, "vcn"

    .line 33
    .line 34
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v4, "Can\'t load vcnverifylite library: "

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    :goto_0
    sput-boolean v2, Lcom/ss/mediakit/vcnlib/VcnlibloadWrapper;->isVcnverifyLiteload:Z

    .line 57
    .line 58
    monitor-exit v0

    .line 59
    return v2

    .line 60
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    throw v1
.end method

.method public static tryLoadVcnverifylib()Z
    .locals 7

    .line 1
    const-class v0, Lcom/ss/mediakit/vcnlib/VcnlibloadWrapper;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/ss/mediakit/vcnlib/VcnlibloadWrapper;->isVcnverifyload:Z

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    return v2

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    goto :goto_2

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :try_start_1
    const-string/jumbo v3, "vcnverify"

    .line 15
    .line 16
    .line 17
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    move v3, v2

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v3

    .line 23
    :try_start_2
    const-string/jumbo v4, "vcn"

    .line 24
    .line 25
    .line 26
    new-instance v5, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v6, "Can\'t load vcnverify library: "

    .line 32
    .line 33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move v3, v1

    .line 47
    :goto_0
    sput-boolean v3, Lcom/ss/mediakit/vcnlib/VcnlibloadWrapper;->isVcnverifyload:Z

    .line 48
    .line 49
    if-nez v3, :cond_2

    .line 50
    .line 51
    invoke-static {}, Lcom/ss/mediakit/vcnlib/VcnlibloadWrapper;->tryLoadVcnverifyLitelib()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move v2, v1

    .line 59
    :cond_2
    :goto_1
    monitor-exit v0

    .line 60
    return v2

    .line 61
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    throw v1
.end method
