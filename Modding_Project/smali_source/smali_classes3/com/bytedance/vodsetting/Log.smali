.class Lcom/bytedance/vodsetting/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static final FORMAT:Ljava/lang/String; = "<%s> %s"

.field private static final TAG:Ljava/lang/String; = "VodSettings"

.field private static debugSwitch:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/bytedance/vodsetting/Log;->debugSwitch:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "<%s> %s"

    .line 7
    .line 8
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string p1, "VodSettings"

    .line 17
    .line 18
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static setDebugSwitch(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/bytedance/vodsetting/Log;->debugSwitch:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/bytedance/vodsetting/Log;->debugSwitch:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "<%s> %s"

    .line 7
    .line 8
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string p1, "VodSettings"

    .line 17
    .line 18
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void
.end method
