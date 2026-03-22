.class public final Lcom/adjust/sdk/sig/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/adjust/sdk/sig/c;Lcom/adjust/sdk/sig/a;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x2

    sget-boolean v2, Lcom/adjust/sdk/sig/d;->a:Z

    const-string v3, "SignerInstance"

    if-eqz v2, :cond_0

    const-string p0, "sign: library received error. It has locked down"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p3, :cond_a

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v2

    if-eqz v2, :cond_a

    if-eqz p4, :cond_a

    if-nez p5, :cond_1

    goto/16 :goto_6

    :cond_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v4, "environment"

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "sandbox"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Signing all the parameters begin: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_2
    const-string v5, "activity_kind"

    invoke-interface {p3, v5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "client_sdk"

    invoke-interface {p3, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p5, v1

    :goto_0
    if-lez p5, :cond_3

    .line 3
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/adjust/sdk/sig/c;->b(Landroid/content/Context;)V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p1, p0, v6}, Lcom/adjust/sdk/sig/c;->a(Landroid/content/Context;[B)[B

    move-result-object v6
    :try_end_0
    .catch Lcom/adjust/sdk/sig/b; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception v6

    goto :goto_2

    :catch_2
    move-exception v6

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_3

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "sign: Received an Exception: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    invoke-interface {p3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    throw p0

    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sign: Received a retriable exception: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sign: Attempting retry #"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p5, p5, -0x1

    invoke-virtual {p1, p0}, Lcom/adjust/sdk/sig/c;->a(Landroid/content/Context;)V

    goto :goto_0

    :goto_3
    const-string p1, "sign: Api is less than JellyBean-4-18"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v0, Lcom/adjust/sdk/sig/d;->a:Z

    .line 6
    invoke-interface {p3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    throw p0

    :cond_3
    const/4 v6, 0x0

    :goto_4
    if-nez p5, :cond_4

    sput-boolean v0, Lcom/adjust/sdk/sig/d;->a:Z

    .line 8
    invoke-interface {p3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    if-eqz v4, :cond_5

    .line 9
    new-instance p5, Ljava/lang/StringBuilder;

    const-string v7, "Calling native begin: "

    invoke-direct {p5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v3, p5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_5
    iget p1, p1, Lcom/adjust/sdk/sig/c;->a:I

    .line 11
    check-cast p2, Lcom/adjust/sdk/sig/NativeLibHelper;

    invoke-virtual {p2, p0, p3, v6, p1}, Lcom/adjust/sdk/sig/NativeLibHelper;->b(Landroid/content/Context;Ljava/lang/Object;[BI)[B

    move-result-object p0

    if-eqz v4, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Calling native end  : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {p2, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-nez p0, :cond_7

    const-string p0, "sign: Returned an null signature. Exiting..."

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-interface {p3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 13
    :cond_7
    array-length p1, p0

    sget-object p2, Lcom/adjust/sdk/sig/e;->a:[C

    mul-int/lit8 p2, p1, 0x2

    .line 14
    new-array p2, p2, [C

    const/4 p5, 0x0

    :goto_5
    if-ge p5, p1, :cond_8

    aget-byte v6, p0, p5

    and-int/lit16 v7, v6, 0xff

    mul-int/lit8 v8, p5, 0x2

    sget-object v9, Lcom/adjust/sdk/sig/e;->a:[C

    ushr-int/lit8 v7, v7, 0x4

    aget-char v7, v9, v7

    aput-char v7, p2, v8

    add-int/2addr v8, v0

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v9, v6

    aput-char v6, p2, v8

    add-int/2addr p5, v0

    goto :goto_5

    :cond_8
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>([C)V

    .line 15
    const-string p1, "signature"

    invoke-interface {p3, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-interface {p3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_9

    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Signing all the parameters end  : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void

    :cond_a
    :goto_6
    const-string p0, "sign: One or more parameters are null"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static a(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
