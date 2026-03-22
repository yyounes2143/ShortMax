.class public Lcom/bytertc/volcbaselog/VolcBaseLogNative;
.super Ljava/lang/Object;
.source "VolcBaseLogNative.java"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "VolcBaseLog"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
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

.method public static native enableThreadLoop(JII)V
.end method

.method public static native getWriteLogFunctionPtr(J)J
.end method

.method public static native init(Lcom/bytertc/volcbaselog/VolcBaseLogConfig;ILjava/lang/String;)J
.end method

.method public static native logQuerySalvage(J)V
.end method

.method public static native setEnableLogFile(JI)V
.end method

.method public static native setEnableStdout(JI)V
.end method

.method public static native setHttpTimeout(JI)I
.end method

.method public static native setHttpUploadFileTimeout(JI)I
.end method

.method public static native setLogExpireTime(JI)V
.end method

.method public static native setLogLevel(JI)I
.end method

.method public static native setLogPath(JLjava/lang/String;)V
.end method

.method public static native setMaxLogSize(JI)V
.end method

.method public static native setQueryInterval(JI)V
.end method

.method public static native setSingleFileSize(JI)V
.end method

.method public static native uninit(J)V
.end method

.method public static native writeLog(JILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public static native writeLogContent(JILjava/lang/String;)V
.end method
