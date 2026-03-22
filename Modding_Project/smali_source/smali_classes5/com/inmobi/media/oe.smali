.class public abstract Lcom/inmobi/media/oe;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 1
    const-string v0, "AB"

    const/4 v1, 0x0

    .line 2
    const-string v2, "getToken"

    invoke-static {v2, v0, v1}, Lcom/inmobi/media/Cb;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/inmobi/media/A5;

    move-result-object v0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz p0, :cond_0

    .line 4
    const-string v3, "tp"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/inmobi/media/Vc;->a(Ljava/lang/String;)V

    .line 5
    const-string v3, "tp-v"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/inmobi/media/Vc;->b(Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/inmobi/media/oe;->a()V

    .line 7
    invoke-static {}, Lcom/inmobi/media/Uc;->q()Z

    move-result v3

    const-string v4, "LOG_TAG"

    const/4 v5, 0x0

    const-string v6, "com.inmobi.media.oe"

    if-nez v3, :cond_2

    if-eqz v0, :cond_1

    .line 8
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "InMobi SDK is not initialised. Cannot fetch a token."

    invoke-virtual {v0, v6, p0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/16 p0, 0x5a

    .line 9
    invoke-static {p0, v1, v2, v0}, Lcom/inmobi/media/oe;->a(IJLcom/inmobi/media/A5;)V

    return-object v5

    .line 10
    :cond_2
    sget-object v3, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 11
    const-string v3, "root"

    const-string v7, "null cannot be cast to non-null type com.inmobi.commons.core.configs.RootConfig"

    invoke-static {v3, v7, v5}, Lcom/inmobi/media/p5;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v3

    .line 12
    check-cast v3, Lcom/inmobi/commons/core/configs/RootConfig;

    .line 13
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/RootConfig;->isMonetizationDisabled()Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 p0, 0x7dc

    .line 14
    invoke-static {p0, v1, v2, v0}, Lcom/inmobi/media/oe;->a(IJLcom/inmobi/media/A5;)V

    if-eqz v0, :cond_3

    .line 15
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "Monetization disabled. cannot provide token"

    invoke-virtual {v0, v6, p0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v5

    .line 16
    :cond_4
    const-string v7, "ads"

    const-string v8, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig"

    invoke-static {v7, v8, v5}, Lcom/inmobi/media/p5;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v7

    .line 17
    check-cast v7, Lcom/inmobi/commons/core/configs/AdConfig;

    .line 18
    new-instance v8, Lcom/inmobi/media/pe;

    new-instance v9, Lcom/inmobi/media/ue;

    invoke-virtual {v7}, Lcom/inmobi/commons/core/configs/Config;->getIncludeIdParams()Lcom/inmobi/media/W5;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/inmobi/media/ue;-><init>(Lcom/inmobi/media/W5;)V

    invoke-direct {v8, v9, v0, v3, v7}, Lcom/inmobi/media/pe;-><init>(Lcom/inmobi/media/ue;Lcom/inmobi/media/A5;Lcom/inmobi/commons/core/configs/RootConfig;Lcom/inmobi/commons/core/configs/AdConfig;)V

    .line 19
    iput-object p0, v8, Lcom/inmobi/media/pe;->C:Ljava/util/Map;

    .line 20
    iput-object p1, v8, Lcom/inmobi/media/pe;->B:Ljava/lang/String;

    .line 21
    invoke-static {}, Lcom/inmobi/media/Uc;->k()Ljava/lang/String;

    move-result-object p0

    const-string p1, "h-user-agent"

    invoke-static {p1, p0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    filled-new-array {p0}, [Lkotlin/Pair;

    move-result-object p0

    .line 22
    invoke-static {p0}, Lkotlin/collections/p0;->k([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 23
    iget-object p1, v8, Lcom/inmobi/media/N9;->k:Ljava/util/HashMap;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 24
    :cond_5
    invoke-virtual {v8}, Lcom/inmobi/media/pe;->f()V

    .line 25
    iget-boolean p0, v8, Lcom/inmobi/media/N9;->d:Z

    if-eqz p0, :cond_7

    .line 26
    invoke-static {v1, v2, v0}, Lcom/inmobi/media/oe;->a(JLcom/inmobi/media/A5;)V

    if-eqz v0, :cond_6

    .line 27
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "get signals success"

    invoke-virtual {v0, v6, p0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_6
    invoke-virtual {v8}, Lcom/inmobi/media/N9;->c()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v0, "this as java.lang.String).getBytes(charset)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-static {p0, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    const-string v0, "encode(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_7
    if-eqz v0, :cond_8

    .line 29
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "get Signals failed - GDPR Compliance"

    invoke-virtual {v0, v6, p0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const/16 p0, 0x85d    # 3.0E-42f

    .line 30
    invoke-static {p0, v1, v2, v0}, Lcom/inmobi/media/oe;->a(IJLcom/inmobi/media/A5;)V

    :goto_0
    return-object v5
.end method

.method public static a()V
    .locals 1

    new-instance v0, Lub/w5;

    invoke-direct {v0}, Lub/w5;-><init>()V

    .line 52
    invoke-static {v0}, Lcom/inmobi/media/Uc;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(IJLcom/inmobi/media/A5;)V
    .locals 3

    if-eqz p3, :cond_0

    .line 31
    const-string v0, "LOG_TAG"

    const-string v1, "com.inmobi.media.oe"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "submitAdGetSignalsFailed - errorCode - "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", startTime - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    new-instance v0, Lub/x5;

    invoke-direct {v0, p1, p2, p0}, Lub/x5;-><init>(JI)V

    invoke-static {v0}, Lcom/inmobi/media/Uc;->a(Ljava/lang/Runnable;)V

    if-eqz p3, :cond_1

    .line 33
    invoke-virtual {p3}, Lcom/inmobi/media/A5;->a()V

    :cond_1
    return-void
.end method

.method public static final a(J)V
    .locals 2

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "latency"

    invoke-static {p1, p0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    .line 46
    invoke-static {}, Lcom/inmobi/media/L3;->q()Ljava/lang/String;

    move-result-object p1

    const-string v0, "networkType"

    invoke-static {v0, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 47
    const-string v0, "plType"

    const-string v1, "AB"

    invoke-static {v0, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    filled-new-array {p0, p1, v0}, [Lkotlin/Pair;

    move-result-object p0

    .line 48
    invoke-static {p0}, Lkotlin/collections/p0;->k([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p0

    .line 49
    sget-object p1, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 50
    sget-object p1, Lcom/inmobi/media/Td;->a:Lcom/inmobi/media/Td;

    .line 51
    const-string v0, "AdGetSignalsSucceeded"

    invoke-static {v0, p0, p1}, Lcom/inmobi/media/Pd;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V

    return-void
.end method

.method public static final a(JI)V
    .locals 2

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "latency"

    invoke-static {p1, p0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    .line 35
    invoke-static {}, Lcom/inmobi/media/L3;->q()Ljava/lang/String;

    move-result-object p1

    const-string v0, "networkType"

    invoke-static {v0, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 36
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "errorCode"

    invoke-static {v0, p2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    .line 37
    const-string v0, "plType"

    const-string v1, "AB"

    invoke-static {v0, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    filled-new-array {p0, p1, p2, v0}, [Lkotlin/Pair;

    move-result-object p0

    .line 38
    invoke-static {p0}, Lkotlin/collections/p0;->k([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p0

    .line 39
    sget-object p1, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 40
    sget-object p1, Lcom/inmobi/media/Td;->a:Lcom/inmobi/media/Td;

    .line 41
    const-string p2, "AdGetSignalsFailed"

    invoke-static {p2, p0, p1}, Lcom/inmobi/media/Pd;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V

    return-void
.end method

.method public static a(JLcom/inmobi/media/A5;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 42
    const-string v0, "LOG_TAG"

    const-string v1, "com.inmobi.media.oe"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "submitAdGetSignalsSucceeded - startTime - "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    new-instance v0, Lub/v5;

    invoke-direct {v0, p0, p1}, Lub/v5;-><init>(J)V

    invoke-static {v0}, Lcom/inmobi/media/Uc;->a(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_1

    .line 44
    invoke-virtual {p2}, Lcom/inmobi/media/A5;->a()V

    :cond_1
    return-void
.end method

.method public static final b()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/inmobi/media/L3;->q()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "networkType"

    .line 6
    .line 7
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "plType"

    .line 12
    .line 13
    const-string v2, "AB"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    filled-new-array {v0, v1}, [Lkotlin/Pair;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lkotlin/collections/p0;->k([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 28
    .line 29
    sget-object v1, Lcom/inmobi/media/Td;->a:Lcom/inmobi/media/Td;

    .line 30
    .line 31
    const-string v2, "AdGetSignalsCalled"

    .line 32
    .line 33
    invoke-static {v2, v0, v1}, Lcom/inmobi/media/Pd;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
