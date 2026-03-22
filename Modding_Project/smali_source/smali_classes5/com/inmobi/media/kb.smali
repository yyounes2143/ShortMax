.class public abstract Lcom/inmobi/media/kb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/inmobi/media/jb;)V
    .locals 3

    .line 1
    const-string v0, "telemetryType"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    instance-of v1, p0, Lcom/inmobi/media/fb;

    .line 12
    .line 13
    const-string v2, "trigger"

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    check-cast p0, Lcom/inmobi/media/fb;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/inmobi/media/fb;->a:Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    sget-object p0, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 25
    .line 26
    sget-object p0, Lcom/inmobi/media/Td;->a:Lcom/inmobi/media/Td;

    .line 27
    .line 28
    const-string v1, "BillingClientConnectionError"

    .line 29
    .line 30
    invoke-static {v1, v0, p0}, Lcom/inmobi/media/Pd;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    instance-of v1, p0, Lcom/inmobi/media/gb;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    check-cast p0, Lcom/inmobi/media/gb;

    .line 39
    .line 40
    iget-short p0, p0, Lcom/inmobi/media/gb;->a:S

    .line 41
    .line 42
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const-string v1, "errorCode"

    .line 47
    .line 48
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    sget-object p0, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 52
    .line 53
    sget-object p0, Lcom/inmobi/media/Td;->a:Lcom/inmobi/media/Td;

    .line 54
    .line 55
    const-string v1, "IAPFetchFailed"

    .line 56
    .line 57
    invoke-static {v1, v0, p0}, Lcom/inmobi/media/Pd;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    instance-of v1, p0, Lcom/inmobi/media/ib;

    .line 62
    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    check-cast p0, Lcom/inmobi/media/ib;

    .line 66
    .line 67
    iget-object p0, p0, Lcom/inmobi/media/ib;->a:Ljava/lang/String;

    .line 68
    .line 69
    if-eqz p0, :cond_2

    .line 70
    .line 71
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    :cond_2
    sget-object p0, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 75
    .line 76
    sget-object p0, Lcom/inmobi/media/Td;->a:Lcom/inmobi/media/Td;

    .line 77
    .line 78
    const-string v1, "BillingClientNotCompatible"

    .line 79
    .line 80
    invoke-static {v1, v0, p0}, Lcom/inmobi/media/Pd;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    instance-of p0, p0, Lcom/inmobi/media/hb;

    .line 85
    .line 86
    if-eqz p0, :cond_4

    .line 87
    .line 88
    sget-object p0, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 89
    .line 90
    sget-object p0, Lcom/inmobi/media/Td;->a:Lcom/inmobi/media/Td;

    .line 91
    .line 92
    const-string v1, "IAPFetchSuccess"

    .line 93
    .line 94
    invoke-static {v1, v0, p0}, Lcom/inmobi/media/Pd;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V

    .line 95
    .line 96
    .line 97
    :cond_4
    :goto_0
    return-void
.end method
