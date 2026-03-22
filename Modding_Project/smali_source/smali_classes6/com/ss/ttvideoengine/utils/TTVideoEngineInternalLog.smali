.class public Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;
.super Ljava/lang/Object;
.source "TTVideoEngineInternalLog.java"


# static fields
.field public static final FORMAT:Ljava/lang/String; = "<%s>%s"

.field public static final LOG_DEBUG:I = 0x1

.field public static final LOG_ERROR:I = 0x6

.field public static final LOG_INFO:I = 0x2

.field public static final LOG_KILL:I = 0x4

.field public static final LOG_TRACK:I = 0x3

.field public static final LOG_VERBOSE:I = 0x0

.field public static final LOG_WARN:I = 0x5

.field public static LogNotifyLevel:I = 0x74

.field public static LogTurnOn:I = 0x70

.field private static final TAG:Ljava/lang/String; = "TTVideoEngineLog"

.field public static mListener:Lcom/ss/ttvideoengine/utils/TTVideoEngineLogListener;


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

.method protected static _notifyListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->mListener:Lcom/ss/ttvideoengine/utils/TTVideoEngineLogListener;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    sget-object v0, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->mListener:Lcom/ss/ttvideoengine/utils/TTVideoEngineLogListener;

    .line 12
    .line 13
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "TTVideoEngine: tag = "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p0, ";  "

    .line 34
    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :goto_0
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLogListener;->consoleLog(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->LogNotifyLevel:I

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->_notifyListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    sget v0, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->LogTurnOn:I

    shr-int/2addr v0, v1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 4
    const-string v0, "<%s>%s"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "TTVideoEngineLog"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/Throwable;)V
    .locals 2

    .line 5
    sget v0, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->LogTurnOn:I

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static d()Z
    .locals 2

    .line 7
    sget v0, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->LogTurnOn:I

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_1

    sget v0, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->LogNotifyLevel:I

    shr-int/2addr v0, v1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->LogNotifyLevel:I

    shr-int/lit8 v0, v0, 0x6

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->_notifyListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    sget v0, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->LogTurnOn:I

    shr-int/lit8 v0, v0, 0x6

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 4
    const-string v0, "<%s>%s"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "TTVideoEngineLog"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static e()Z
    .locals 2

    .line 5
    sget v0, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->LogTurnOn:I

    shr-int/lit8 v0, v0, 0x6

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_1

    sget v0, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->LogNotifyLevel:I

    shr-int/lit8 v0, v0, 0x6

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->LogNotifyLevel:I

    .line 2
    .line 3
    shr-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    and-int/2addr v0, v1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->_notifyListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget v0, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->LogTurnOn:I

    .line 13
    .line 14
    shr-int/lit8 v0, v0, 0x2

    .line 15
    .line 16
    and-int/2addr v0, v1

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    const-string v0, "<%s>%s"

    .line 20
    .line 21
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "TTVideoEngineLog"

    .line 30
    .line 31
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->LogNotifyLevel:I

    .line 2
    .line 3
    shr-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    and-int/2addr v0, v1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->_notifyListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget v0, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->LogTurnOn:I

    .line 13
    .line 14
    shr-int/lit8 v0, v0, 0x4

    .line 15
    .line 16
    and-int/2addr v0, v1

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    const-string v0, "<%s>%s"

    .line 20
    .line 21
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "TTVideoEngineLog"

    .line 30
    .line 31
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public static setListener(Lcom/ss/ttvideoengine/utils/TTVideoEngineLogListener;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->mListener:Lcom/ss/ttvideoengine/utils/TTVideoEngineLogListener;

    .line 2
    .line 3
    return-void
.end method

.method public static setLogNotifyLevel(II)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    shl-int/2addr v0, p0

    .line 3
    not-int v0, v0

    .line 4
    sget v1, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->LogNotifyLevel:I

    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    shl-int p0, p1, p0

    .line 8
    .line 9
    or-int/2addr p0, v0

    .line 10
    sput p0, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->LogNotifyLevel:I

    .line 11
    .line 12
    return-void
.end method

.method public static t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->LogNotifyLevel:I

    .line 2
    .line 3
    shr-int/lit8 v0, v0, 0x3

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    and-int/2addr v0, v1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->_notifyListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget v0, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->LogTurnOn:I

    .line 13
    .line 14
    shr-int/lit8 v0, v0, 0x3

    .line 15
    .line 16
    and-int/2addr v0, v1

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    const-string v0, "<%s>%s"

    .line 20
    .line 21
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "TTVideoEngineLog"

    .line 30
    .line 31
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public static turnOn(II)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    shl-int v1, v0, p0

    .line 3
    .line 4
    not-int v1, v1

    .line 5
    sget v2, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->LogTurnOn:I

    .line 6
    .line 7
    and-int/2addr v1, v2

    .line 8
    shl-int v2, p1, p0

    .line 9
    .line 10
    or-int/2addr v1, v2

    .line 11
    sput v1, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->LogTurnOn:I

    .line 12
    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    and-int/lit8 p0, v1, -0x5

    .line 18
    .line 19
    shl-int/lit8 p1, p1, 0x2

    .line 20
    .line 21
    or-int/2addr p0, p1

    .line 22
    sput p0, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->LogTurnOn:I

    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->LogNotifyLevel:I

    .line 2
    .line 3
    shr-int/lit8 v0, v0, 0x5

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    and-int/2addr v0, v1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->_notifyListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget v0, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->LogTurnOn:I

    .line 13
    .line 14
    shr-int/lit8 v0, v0, 0x5

    .line 15
    .line 16
    and-int/2addr v0, v1

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    const-string v0, "<%s>%s"

    .line 20
    .line 21
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "TTVideoEngineLog"

    .line 30
    .line 31
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method
