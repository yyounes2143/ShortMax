.class public Ldb/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String; = "e"


# direct methods
.method public static a(Ljava/lang/Long;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    sget-object p0, Ldb/e;->a:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "Method isTimeExpire input param expireTime is null."

    .line 7
    .line 8
    invoke-static {p0, v1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    sub-long/2addr v3, v1

    .line 21
    const-wide/16 v1, 0x0

    .line 22
    .line 23
    cmp-long p0, v3, v1

    .line 24
    .line 25
    if-ltz p0, :cond_1

    .line 26
    .line 27
    sget-object p0, Ldb/e;->a:Ljava/lang/String;

    .line 28
    .line 29
    const-string v1, "isSpExpire false."

    .line 30
    .line 31
    invoke-static {p0, v1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    return p0

    .line 36
    :cond_1
    sget-object p0, Ldb/e;->a:Ljava/lang/String;

    .line 37
    .line 38
    const-string v1, "isSpExpire true."

    .line 39
    .line 40
    invoke-static {p0, v1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    sget-object p0, Ldb/e;->a:Ljava/lang/String;

    .line 45
    .line 46
    const-string v1, "isSpExpire spValue NumberFormatException."

    .line 47
    .line 48
    invoke-static {p0, v1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return v0
.end method

.method public static b(Ljava/lang/Long;J)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    sget-object p0, Ldb/e;->a:Ljava/lang/String;

    .line 5
    .line 6
    const-string p1, "Method isTimeWillExpire input param expireTime is null."

    .line 7
    .line 8
    invoke-static {p0, p1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    add-long/2addr v1, p1

    .line 21
    sub-long/2addr v3, v1

    .line 22
    const-wide/16 p0, 0x0

    .line 23
    .line 24
    cmp-long p0, v3, p0

    .line 25
    .line 26
    if-ltz p0, :cond_1

    .line 27
    .line 28
    sget-object p0, Ldb/e;->a:Ljava/lang/String;

    .line 29
    .line 30
    const-string p1, "isSpExpire false."

    .line 31
    .line 32
    invoke-static {p0, p1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return p0

    .line 37
    :catch_0
    sget-object p0, Ldb/e;->a:Ljava/lang/String;

    .line 38
    .line 39
    const-string p1, "isSpExpire spValue NumberFormatException."

    .line 40
    .line 41
    invoke-static {p0, p1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return v0
.end method
