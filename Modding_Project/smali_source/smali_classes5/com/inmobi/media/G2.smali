.class public final Lcom/inmobi/media/G2;
.super Ljava/lang/Object;
.source "SourceFile"


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

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/commons/core/configs/Config;
    .locals 1

    const-string v0, "configType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "signals"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Lcom/inmobi/commons/core/configs/SignalsConfig;

    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/configs/SignalsConfig;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :sswitch_1
    const-string v0, "telemetry"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;

    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/configs/TelemetryConfig;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :sswitch_2
    const-string v0, "root"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    new-instance p0, Lcom/inmobi/commons/core/configs/RootConfig;

    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/configs/RootConfig;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :sswitch_3
    const-string v0, "ads"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    new-instance p0, Lcom/inmobi/commons/core/configs/AdConfig;

    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/configs/AdConfig;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :sswitch_4
    const-string v0, "crashReporting"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 10
    :goto_0
    new-instance p0, Lcom/inmobi/commons/core/configs/AdConfig;

    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/configs/AdConfig;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_4
    new-instance p0, Lcom/inmobi/commons/core/configs/CrashConfig;

    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/configs/CrashConfig;-><init>(Ljava/lang/String;)V

    :goto_1
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x39d51b9 -> :sswitch_4
        0x178b0 -> :sswitch_3
        0x3580e2 -> :sswitch_2
        0x2e8323b9 -> :sswitch_1
        0x7c7866cb -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;J)Lcom/inmobi/commons/core/configs/Config;
    .locals 6

    const-string v0, "configType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-class v1, Lcom/inmobi/commons/core/configs/AdConfig;

    const-class v2, Ljava/lang/String;

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "signals"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    .line 13
    :cond_0
    sget-object p0, Lcom/inmobi/commons/core/configs/SignalsConfig;->Companion:Lcom/inmobi/commons/core/configs/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/inmobi/commons/core/configs/f;->a()Lcom/inmobi/media/q6;

    move-result-object p0

    const-class v0, Lcom/inmobi/commons/core/configs/SignalsConfig;

    invoke-virtual {p0, p1, v0}, Lcom/inmobi/media/q6;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/inmobi/commons/core/configs/Config;

    goto/16 :goto_1

    .line 14
    :sswitch_1
    const-string v0, "telemetry"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    .line 15
    :cond_1
    sget-object p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->Companion:Lcom/inmobi/media/Rd;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance p0, Lcom/inmobi/media/q6;

    invoke-direct {p0}, Lcom/inmobi/media/q6;-><init>()V

    .line 17
    new-instance v0, Lcom/inmobi/media/Ec;

    const-string v1, "priorityEvents"

    const-class v3, Lcom/inmobi/commons/core/configs/TelemetryConfig;

    invoke-direct {v0, v1, v3}, Lcom/inmobi/media/Ec;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 18
    new-instance v1, Lcom/inmobi/media/U6;

    new-instance v4, Lcom/inmobi/media/Qd;

    invoke-direct {v4}, Lcom/inmobi/media/Qd;-><init>()V

    invoke-direct {v1, v4, v2}, Lcom/inmobi/media/U6;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/inmobi/media/q6;->a(Lcom/inmobi/media/Ec;Lcom/inmobi/media/Dc;)Lcom/inmobi/media/q6;

    move-result-object p0

    .line 20
    invoke-virtual {p0, p1, v3}, Lcom/inmobi/media/q6;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/inmobi/commons/core/configs/Config;

    goto/16 :goto_1

    .line 21
    :sswitch_2
    const-string v0, "root"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 22
    :cond_2
    sget-object p0, Lcom/inmobi/commons/core/configs/RootConfig;->Companion:Lcom/inmobi/commons/core/configs/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    new-instance p0, Lcom/inmobi/media/q6;

    invoke-direct {p0}, Lcom/inmobi/media/q6;-><init>()V

    .line 24
    new-instance v0, Lcom/inmobi/media/Ec;

    const-string v1, "components"

    const-class v3, Lcom/inmobi/commons/core/configs/RootConfig;

    invoke-direct {v0, v1, v3}, Lcom/inmobi/media/Ec;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 25
    new-instance v1, Lcom/inmobi/media/U6;

    new-instance v4, Lcom/inmobi/commons/core/configs/d;

    invoke-direct {v4}, Lcom/inmobi/commons/core/configs/d;-><init>()V

    const-class v5, Lcom/inmobi/commons/core/configs/RootConfig$ComponentConfig;

    invoke-direct {v1, v4, v5}, Lcom/inmobi/media/U6;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/inmobi/media/q6;->a(Lcom/inmobi/media/Ec;Lcom/inmobi/media/Dc;)Lcom/inmobi/media/q6;

    move-result-object p0

    .line 27
    new-instance v0, Lcom/inmobi/media/Ec;

    const-string v1, "ipAddrTPSupport"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/media/Ec;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 28
    new-instance v1, Lcom/inmobi/media/U6;

    new-instance v4, Lcom/inmobi/media/Bc;

    invoke-direct {v4}, Lcom/inmobi/media/Bc;-><init>()V

    invoke-direct {v1, v4, v2}, Lcom/inmobi/media/U6;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/inmobi/media/q6;->a(Lcom/inmobi/media/Ec;Lcom/inmobi/media/Dc;)Lcom/inmobi/media/q6;

    move-result-object p0

    .line 30
    invoke-virtual {p0, p1, v3}, Lcom/inmobi/media/q6;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/inmobi/commons/core/configs/Config;

    goto :goto_1

    .line 31
    :sswitch_3
    const-string v0, "ads"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    .line 32
    :cond_3
    sget-object p0, Lcom/inmobi/commons/core/configs/AdConfig;->Companion:Lcom/inmobi/commons/core/configs/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/media/q6;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lcom/inmobi/media/q6;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/inmobi/commons/core/configs/Config;

    goto :goto_1

    .line 33
    :sswitch_4
    const-string v0, "crashReporting"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 34
    :goto_0
    sget-object p0, Lcom/inmobi/commons/core/configs/AdConfig;->Companion:Lcom/inmobi/commons/core/configs/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/media/q6;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lcom/inmobi/media/q6;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/inmobi/commons/core/configs/Config;

    goto :goto_1

    .line 35
    :cond_4
    sget-object p0, Lcom/inmobi/commons/core/configs/CrashConfig;->Companion:Lcom/inmobi/media/k3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    new-instance p0, Lcom/inmobi/media/q6;

    invoke-direct {p0}, Lcom/inmobi/media/q6;-><init>()V

    .line 37
    const-class v0, Lcom/inmobi/commons/core/configs/CrashConfig;

    invoke-virtual {p0, p1, v0}, Lcom/inmobi/media/q6;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/inmobi/commons/core/configs/Config;

    :goto_1
    if-eqz p0, :cond_5

    .line 38
    invoke-virtual {p0, p2}, Lcom/inmobi/commons/core/configs/Config;->setAccountId$media_release(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, p3, p4}, Lcom/inmobi/commons/core/configs/Config;->setLastUpdateTimeStamp(J)V

    :cond_5
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x39d51b9 -> :sswitch_4
        0x178b0 -> :sswitch_3
        0x3580e2 -> :sswitch_2
        0x2e8323b9 -> :sswitch_1
        0x7c7866cb -> :sswitch_0
    .end sparse-switch
.end method
