.class public Lcom/bytedance/applog/util/UriConstants;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final AMERICA:I = 0x2

.field public static final REGION_DEFAULT:I = 0x1

.field public static final SINGAPORE:I = 0x1

.field public static final SINGAPORE_ALI:I = 0x3

.field public static final a:Lcom/bytedance/applog/UriConfig;

.field public static final b:Lcom/bytedance/applog/UriConfig;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/bytedance/applog/UriConfig$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/applog/UriConfig$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "https://toblog.tobsnssdk.com/service/2/device_register/"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/bytedance/applog/UriConfig$Builder;->setRegisterUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "https://toblog.tobsnssdk.com/service/2/app_alert_check/"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/bytedance/applog/UriConfig$Builder;->setActiveUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "https://toblog.tobsnssdk.com/service/2/app_log/"

    .line 19
    .line 20
    const-string v2, "https://tobapplog.tobsnssdk.com/service/2/app_log/"

    .line 21
    .line 22
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/bytedance/applog/UriConfig$Builder;->setSendUris([Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "https://toblog.tobsnssdk.com/service/2/profile/"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/bytedance/applog/UriConfig$Builder;->setProfileUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "https://toblog.tobsnssdk.com/service/2/log_settings/"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/bytedance/applog/UriConfig$Builder;->setSettingUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "https://toblog.tobsnssdk.com/service/2/abtest_config/"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/bytedance/applog/UriConfig$Builder;->setAbUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "https://toblog-alink.tobsnssdk.com/service/2/attribution_data"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/bytedance/applog/UriConfig$Builder;->setALinkAttributionUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "https://toblog-alink.tobsnssdk.com/service/2/alink_data"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/bytedance/applog/UriConfig$Builder;->setALinkQueryUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/bytedance/applog/UriConfig$Builder;->build()Lcom/bytedance/applog/UriConfig;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sput-object v0, Lcom/bytedance/applog/util/UriConstants;->a:Lcom/bytedance/applog/UriConfig;

    .line 65
    .line 66
    new-instance v0, Lcom/bytedance/applog/UriConfig$Builder;

    .line 67
    .line 68
    invoke-direct {v0}, Lcom/bytedance/applog/UriConfig$Builder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v1, "https://toblog.itobsnssdk.com/service/2/device_register/"

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/bytedance/applog/UriConfig$Builder;->setRegisterUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v1, "https://toblog.itobsnssdk.com/service/2/app_alert_check/"

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/bytedance/applog/UriConfig$Builder;->setActiveUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string v1, "https://toblog.itobsnssdk.com/service/2/app_log/"

    .line 84
    .line 85
    const-string v2, "https://tobapplog.itobsnssdk.com/service/2/app_log/"

    .line 86
    .line 87
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lcom/bytedance/applog/UriConfig$Builder;->setSendUris([Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const-string v1, "https://toblog.itobsnssdk.com/service/2/profile/"

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/bytedance/applog/UriConfig$Builder;->setProfileUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const-string v1, "https://toblog.itobsnssdk.com/service/2/log_settings/"

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Lcom/bytedance/applog/UriConfig$Builder;->setSettingUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const-string v1, "https://toblog.itobsnssdk.com/service/2/abtest_config/"

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Lcom/bytedance/applog/UriConfig$Builder;->setAbUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const-string v1, "https://toblog-alink.itobsnssdk.com/service/2/attribution_data"

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Lcom/bytedance/applog/UriConfig$Builder;->setALinkAttributionUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const-string v1, "https://toblog-alink.itobsnssdk.com/service/2/alink_data"

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Lcom/bytedance/applog/UriConfig$Builder;->setALinkQueryUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/bytedance/applog/UriConfig$Builder;->build()Lcom/bytedance/applog/UriConfig;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    sput-object v0, Lcom/bytedance/applog/util/UriConstants;->b:Lcom/bytedance/applog/UriConfig;

    .line 130
    .line 131
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

.method public static final createUriConfig(I)Lcom/bytedance/applog/UriConfig;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne v0, p0, :cond_0

    .line 3
    .line 4
    sget-object p0, Lcom/bytedance/applog/util/UriConstants;->a:Lcom/bytedance/applog/UriConfig;

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    const/4 v0, 0x2

    .line 8
    if-ne v0, p0, :cond_1

    .line 9
    .line 10
    sget-object p0, Lcom/bytedance/applog/util/UriConstants;->b:Lcom/bytedance/applog/UriConfig;

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_1
    sget-object p0, Lcom/bytedance/applog/util/UriConstants;->a:Lcom/bytedance/applog/UriConfig;

    .line 14
    .line 15
    return-object p0
.end method
