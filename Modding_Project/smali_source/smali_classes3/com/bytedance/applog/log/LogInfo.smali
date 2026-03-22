.class public Lcom/bytedance/applog/log/LogInfo;
.super Ljava/lang/Object;
.source "LogInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/applog/log/LogInfo$Category;,
        Lcom/bytedance/applog/log/LogInfo$Level;
    }
.end annotation


# static fields
.field private static final threadLocalDateFormat:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appId:Ljava/lang/String;

.field private category:I

.field private level:I

.field private message:Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private thread:Ljava/lang/String;

.field private throwable:Ljava/lang/Throwable;

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/applog/log/LogInfo$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/applog/log/LogInfo$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bytedance/applog/log/LogInfo;->threadLocalDateFormat:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/bytedance/applog/log/LogInfo;->level:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/bytedance/applog/log/LogInfo;->category:I

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lcom/bytedance/applog/log/LogInfo;->time:J

    .line 15
    .line 16
    return-void
.end method

.method private appendStackString(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    array-length v0, p2

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_0

    .line 15
    .line 16
    aget-object v2, p2, v1

    .line 17
    .line 18
    const-string v3, "\n\tat "

    .line 19
    .line 20
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public static builder()Lcom/bytedance/applog/log/LogInfoBuilder;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/applog/log/LogInfoBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/applog/log/LogInfoBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private getExceptionStackString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Lcom/bytedance/applog/log/LogInfo;->appendStackString(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method private toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/log/LogInfo;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCategory()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/applog/log/LogInfo;->category:I

    .line 2
    .line 3
    return v0
.end method

.method public getCategoryString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/applog/log/LogInfo;->category:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "DEFAULT"

    .line 7
    .line 8
    return-object v0

    .line 9
    :pswitch_0
    const-string v0, "ONE_ID"

    .line 10
    .line 11
    return-object v0

    .line 12
    :pswitch_1
    const-string v0, "COMPRESS"

    .line 13
    .line 14
    return-object v0

    .line 15
    :pswitch_2
    const-string v0, "EVENT_PRIORITY"

    .line 16
    .line 17
    return-object v0

    .line 18
    :pswitch_3
    const-string v0, "EVENT_SAMPLING"

    .line 19
    .line 20
    return-object v0

    .line 21
    :pswitch_4
    const-string v0, "REQUEST"

    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_5
    const-string v0, "PICKER"

    .line 25
    .line 26
    return-object v0

    .line 27
    :pswitch_6
    const-string v0, "USER_PROFILE"

    .line 28
    .line 29
    return-object v0

    .line 30
    :pswitch_7
    const-string v0, "MONITOR"

    .line 31
    .line 32
    return-object v0

    .line 33
    :pswitch_8
    const-string v0, "VIEW_EXPOSURE"

    .line 34
    .line 35
    return-object v0

    .line 36
    :pswitch_9
    const-string v0, "EVENT_VERIFY"

    .line 37
    .line 38
    return-object v0

    .line 39
    :pswitch_a
    const-string v0, "DATABASE"

    .line 40
    .line 41
    return-object v0

    .line 42
    :pswitch_b
    const-string v0, "EVENT"

    .line 43
    .line 44
    return-object v0

    .line 45
    :pswitch_c
    const-string v0, "ALINK"

    .line 46
    .line 47
    return-object v0

    .line 48
    :pswitch_d
    const-string v0, "ABTEST"

    .line 49
    .line 50
    return-object v0

    .line 51
    :pswitch_e
    const-string v0, "DEVICE_REGISTER"

    .line 52
    .line 53
    return-object v0

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/applog/log/LogInfo;->level:I

    .line 2
    .line 3
    return v0
.end method

.method public getLevelString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/applog/log/LogInfo;->level:I

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_4

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_3

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x5

    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    const-string v0, ""

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    const-string v0, "ASSERT"

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_1
    const-string v0, "ERROR"

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_2
    const-string v0, "WARN"

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_3
    const-string v0, "INFO"

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_4
    const-string v0, "DEBUG"

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_5
    const-string v0, "VERBOSE"

    .line 39
    .line 40
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/log/LogInfo;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTagString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/log/LogInfo;->tags:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_2

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    iget-object v2, p0, Lcom/bytedance/applog/log/LogInfo;->tags:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ge v1, v2, :cond_1

    .line 24
    .line 25
    iget-object v2, p0, Lcom/bytedance/applog/log/LogInfo;->tags:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/bytedance/applog/log/LogInfo;->tags:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    add-int/lit8 v2, v2, -0x1

    .line 43
    .line 44
    if-ge v1, v2, :cond_0

    .line 45
    .line 46
    const-string v2, ","

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    return-object v0

    .line 59
    :cond_2
    const-string v0, ""

    .line 60
    .line 61
    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/log/LogInfo;->tags:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getThread()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/log/LogInfo;->thread:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/log/LogInfo;->throwable:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/applog/log/LogInfo;->time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTimeString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/applog/log/LogInfo;->time:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/bytedance/applog/log/LogInfo;->threadLocalDateFormat:Ljava/lang/ThreadLocal;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 16
    .line 17
    new-instance v1, Ljava/util/Date;

    .line 18
    .line 19
    iget-wide v2, p0, Lcom/bytedance/applog/log/LogInfo;->time:J

    .line 20
    .line 21
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0

    .line 29
    :cond_0
    const-string v0, "--"

    .line 30
    .line 31
    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/log/LogInfo;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCategory(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/applog/log/LogInfo;->category:I

    .line 2
    .line 3
    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/applog/log/LogInfo;->level:I

    .line 2
    .line 3
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/log/LogInfo;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/log/LogInfo;->tags:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setThread(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/log/LogInfo;->thread:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/log/LogInfo;->throwable:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/applog/log/LogInfo;->time:J

    .line 2
    .line 3
    return-void
.end method

.method public toLiteString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/bytedance/applog/log/LogInfo;->getLevelString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "]["

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/bytedance/applog/log/LogInfo;->appId:Ljava/lang/String;

    .line 24
    .line 25
    invoke-direct {p0, v1}, Lcom/bytedance/applog/log/LogInfo;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, "] "

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/bytedance/applog/log/LogInfo;->message:Ljava/lang/String;

    .line 38
    .line 39
    invoke-direct {p0, v1}, Lcom/bytedance/applog/log/LogInfo;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method

.method public toMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/log/LogInfo;->message:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/bytedance/applog/log/LogInfo;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/applog/log/LogInfo;->getTimeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/applog/log/LogInfo;->getLevelString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/applog/log/LogInfo;->appId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/bytedance/applog/log/LogInfo;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/applog/log/LogInfo;->thread:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/bytedance/applog/log/LogInfo;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/applog/log/LogInfo;->getCategoryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/applog/log/LogInfo;->getTagString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/applog/log/LogInfo;->message:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/bytedance/applog/log/LogInfo;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/applog/log/LogInfo;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nstacktrace: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/applog/log/LogInfo;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/applog/log/LogInfo;->getExceptionStackString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
