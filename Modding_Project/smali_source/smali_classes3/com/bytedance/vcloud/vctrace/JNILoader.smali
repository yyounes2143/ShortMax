.class public Lcom/bytedance/vcloud/vctrace/JNILoader;
.super Ljava/lang/Object;
.source "JNILoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VCSTrace"

.field public static volatile isLibraryLoaded:Z = false


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

.method public static declared-synchronized loadLibrary(Landroid/content/Context;)V
    .locals 4

    .line 1
    const-class p0, Lcom/bytedance/vcloud/vctrace/JNILoader;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    sget-boolean v0, Lcom/bytedance/vcloud/vctrace/JNILoader;->isLibraryLoaded:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string v0, "vctrace"

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    sput-boolean v0, Lcom/bytedance/vcloud/vctrace/JNILoader;->isLibraryLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    :try_start_1
    const-string v1, "VCSTrace"

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "load so fail: "

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    .line 39
    .line 40
    :cond_0
    :goto_0
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :catchall_1
    move-exception v0

    .line 43
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 44
    throw v0
.end method
