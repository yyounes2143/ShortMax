.class public Lcom/adjust/sdk/PackageFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ADJUST_PREFIX:Ljava/lang/String; = "adjust_"


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

.method public static buildDeeplinkSdkClickPackage(Landroid/net/Uri;Landroid/net/Uri;JLcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/GlobalParameters;Lcom/adjust/sdk/i1;Lcom/adjust/sdk/ActivityHandler$InternalState;)Lcom/adjust/sdk/ActivityPackage;
    .locals 11

    .line 1
    const/4 v1, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v1

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-eqz v2, :cond_4

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto/16 :goto_4

    .line 18
    .line 19
    :cond_1
    :try_start_0
    const-string v0, "UTF-8"

    .line 20
    .line 21
    invoke-static {v2, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_3

    .line 26
    :catch_0
    move-exception v0

    .line 27
    goto :goto_0

    .line 28
    :catch_1
    move-exception v0

    .line 29
    goto :goto_1

    .line 30
    :catch_2
    move-exception v0

    .line 31
    goto :goto_2

    .line 32
    :goto_0
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v4, "Deeplink url decoding failed. Message: (%s)"

    .line 45
    .line 46
    invoke-interface {v3, v4, v0}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_3

    .line 50
    :goto_1
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v4, "Deeplink url decoding failed due to IllegalArgumentException. Message: (%s)"

    .line 63
    .line 64
    invoke-interface {v3, v4, v0}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_3

    .line 68
    :goto_2
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v4, "Deeplink url decoding failed due to UnsupportedEncodingException. Message: (%s)"

    .line 81
    .line 82
    invoke-interface {v3, v4, v0}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :goto_3
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    const-string v4, "Url to parse (%s)"

    .line 94
    .line 95
    invoke-interface {v0, v4, v3}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    new-instance v0, Landroid/net/UrlQuerySanitizer;

    .line 99
    .line 100
    invoke-direct {v0}, Landroid/net/UrlQuerySanitizer;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-static {}, Landroid/net/UrlQuerySanitizer;->getAllButNulLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v0, v3}, Landroid/net/UrlQuerySanitizer;->setUnregisteredParameterValueSanitizer(Landroid/net/UrlQuerySanitizer$ValueSanitizer;)V

    .line 108
    .line 109
    .line 110
    const/4 v3, 0x1

    .line 111
    invoke-virtual {v0, v3}, Landroid/net/UrlQuerySanitizer;->setAllowUnregisteredParamaters(Z)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v2}, Landroid/net/UrlQuerySanitizer;->parseUrl(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Landroid/net/UrlQuerySanitizer;->getParameterList()Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    move-object v5, p4

    .line 122
    move-object/from16 v6, p5

    .line 123
    .line 124
    move-object/from16 v7, p6

    .line 125
    .line 126
    move-object/from16 v8, p7

    .line 127
    .line 128
    move-object/from16 v9, p8

    .line 129
    .line 130
    move-object/from16 v10, p9

    .line 131
    .line 132
    invoke-static/range {v4 .. v10}, Lcom/adjust/sdk/PackageFactory;->queryStringClickPackageBuilder(Ljava/util/List;Lcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/GlobalParameters;Lcom/adjust/sdk/i1;Lcom/adjust/sdk/ActivityHandler$InternalState;)Lcom/adjust/sdk/PackageBuilder;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    if-nez v0, :cond_2

    .line 137
    .line 138
    return-object v1

    .line 139
    :cond_2
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    iput-object v1, v0, Lcom/adjust/sdk/PackageBuilder;->deeplink:Ljava/lang/String;

    .line 144
    .line 145
    move-wide v1, p2

    .line 146
    iput-wide v1, v0, Lcom/adjust/sdk/PackageBuilder;->clickTimeInMilliseconds:J

    .line 147
    .line 148
    if-eqz p1, :cond_3

    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    iput-object v1, v0, Lcom/adjust/sdk/PackageBuilder;->referrer:Ljava/lang/String;

    .line 155
    .line 156
    :cond_3
    const-string v1, "deeplink"

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Lcom/adjust/sdk/PackageBuilder;->buildClickPackage(Ljava/lang/String;)Lcom/adjust/sdk/ActivityPackage;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    return-object v0

    .line 163
    :cond_4
    :goto_4
    return-object v1
.end method

.method public static buildInstallReferrerSdkClickPackage(Lcom/adjust/sdk/ReferrerDetails;Ljava/lang/String;Lcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/GlobalParameters;Lcom/adjust/sdk/i1;Lcom/adjust/sdk/ActivityHandler$InternalState;)Lcom/adjust/sdk/ActivityPackage;
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    .line 4
    .line 5
    move-result-wide v7

    .line 6
    new-instance v9, Lcom/adjust/sdk/PackageBuilder;

    .line 7
    .line 8
    move-object v1, v9

    .line 9
    move-object v2, p3

    .line 10
    move-object v3, p4

    .line 11
    move-object v4, p2

    .line 12
    move-object v5, p5

    .line 13
    move-object/from16 v6, p6

    .line 14
    .line 15
    invoke-direct/range {v1 .. v8}, Lcom/adjust/sdk/PackageBuilder;-><init>(Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/GlobalParameters;Lcom/adjust/sdk/i1;J)V

    .line 16
    .line 17
    .line 18
    move-object/from16 v1, p7

    .line 19
    .line 20
    iput-object v1, v9, Lcom/adjust/sdk/PackageBuilder;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    .line 21
    .line 22
    iget-object v1, v0, Lcom/adjust/sdk/ReferrerDetails;->installReferrer:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v1, v9, Lcom/adjust/sdk/PackageBuilder;->referrer:Ljava/lang/String;

    .line 25
    .line 26
    iget-wide v1, v0, Lcom/adjust/sdk/ReferrerDetails;->referrerClickTimestampSeconds:J

    .line 27
    .line 28
    iput-wide v1, v9, Lcom/adjust/sdk/PackageBuilder;->clickTimeInSeconds:J

    .line 29
    .line 30
    iget-wide v1, v0, Lcom/adjust/sdk/ReferrerDetails;->installBeginTimestampSeconds:J

    .line 31
    .line 32
    iput-wide v1, v9, Lcom/adjust/sdk/PackageBuilder;->installBeginTimeInSeconds:J

    .line 33
    .line 34
    iget-wide v1, v0, Lcom/adjust/sdk/ReferrerDetails;->referrerClickTimestampServerSeconds:J

    .line 35
    .line 36
    iput-wide v1, v9, Lcom/adjust/sdk/PackageBuilder;->clickTimeServerInSeconds:J

    .line 37
    .line 38
    iget-wide v1, v0, Lcom/adjust/sdk/ReferrerDetails;->installBeginTimestampServerSeconds:J

    .line 39
    .line 40
    iput-wide v1, v9, Lcom/adjust/sdk/PackageBuilder;->installBeginTimeServerInSeconds:J

    .line 41
    .line 42
    iget-object v1, v0, Lcom/adjust/sdk/ReferrerDetails;->installVersion:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v1, v9, Lcom/adjust/sdk/PackageBuilder;->installVersion:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v1, v0, Lcom/adjust/sdk/ReferrerDetails;->googlePlayInstant:Ljava/lang/Boolean;

    .line 47
    .line 48
    iput-object v1, v9, Lcom/adjust/sdk/PackageBuilder;->googlePlayInstant:Ljava/lang/Boolean;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/adjust/sdk/ReferrerDetails;->isClick:Ljava/lang/Boolean;

    .line 51
    .line 52
    iput-object v0, v9, Lcom/adjust/sdk/PackageBuilder;->isClick:Ljava/lang/Boolean;

    .line 53
    .line 54
    move-object v0, p1

    .line 55
    iput-object v0, v9, Lcom/adjust/sdk/PackageBuilder;->referrerApi:Ljava/lang/String;

    .line 56
    .line 57
    const-string v0, "install_referrer"

    .line 58
    .line 59
    invoke-virtual {v9, v0}, Lcom/adjust/sdk/PackageBuilder;->buildClickPackage(Ljava/lang/String;)Lcom/adjust/sdk/ActivityPackage;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0
.end method

.method public static buildLicenseVerificationSdkClickPackage(Lcom/adjust/sdk/LicenseData;Lcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/GlobalParameters;Lcom/adjust/sdk/i1;Lcom/adjust/sdk/ActivityHandler$InternalState;)Lcom/adjust/sdk/ActivityPackage;
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v6

    .line 5
    new-instance v8, Lcom/adjust/sdk/PackageBuilder;

    .line 6
    .line 7
    move-object v0, v8

    .line 8
    move-object v1, p2

    .line 9
    move-object v2, p3

    .line 10
    move-object v3, p1

    .line 11
    move-object v4, p4

    .line 12
    move-object v5, p5

    .line 13
    invoke-direct/range {v0 .. v7}, Lcom/adjust/sdk/PackageBuilder;-><init>(Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/GlobalParameters;Lcom/adjust/sdk/i1;J)V

    .line 14
    .line 15
    .line 16
    iput-object p6, v8, Lcom/adjust/sdk/PackageBuilder;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    .line 17
    .line 18
    iput-object p0, v8, Lcom/adjust/sdk/PackageBuilder;->licenseData:Lcom/adjust/sdk/LicenseData;

    .line 19
    .line 20
    const-string p0, "google_lvl"

    .line 21
    .line 22
    invoke-virtual {v8, p0}, Lcom/adjust/sdk/PackageBuilder;->buildClickPackage(Ljava/lang/String;)Lcom/adjust/sdk/ActivityPackage;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static buildPreinstallSdkClickPackage(Ljava/lang/String;Ljava/lang/String;Lcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/GlobalParameters;Lcom/adjust/sdk/i1;)Lcom/adjust/sdk/ActivityPackage;
    .locals 9

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v7

    .line 14
    new-instance v0, Lcom/adjust/sdk/PackageBuilder;

    .line 15
    .line 16
    move-object v1, v0

    .line 17
    move-object v2, p3

    .line 18
    move-object v3, p4

    .line 19
    move-object v4, p2

    .line 20
    move-object v5, p5

    .line 21
    move-object v6, p6

    .line 22
    invoke-direct/range {v1 .. v8}, Lcom/adjust/sdk/PackageBuilder;-><init>(Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/GlobalParameters;Lcom/adjust/sdk/i1;J)V

    .line 23
    .line 24
    .line 25
    iput-object p0, v0, Lcom/adjust/sdk/PackageBuilder;->preinstallPayload:Ljava/lang/String;

    .line 26
    .line 27
    iput-object p1, v0, Lcom/adjust/sdk/PackageBuilder;->preinstallLocation:Ljava/lang/String;

    .line 28
    .line 29
    const-string p0, "preinstall"

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Lcom/adjust/sdk/PackageBuilder;->buildClickPackage(Ljava/lang/String;)Lcom/adjust/sdk/ActivityPackage;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 37
    return-object p0
.end method

.method public static buildReftagSdkClickPackage(Ljava/lang/String;JLcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/GlobalParameters;Lcom/adjust/sdk/i1;Lcom/adjust/sdk/ActivityHandler$InternalState;)Lcom/adjust/sdk/ActivityPackage;
    .locals 12

    .line 1
    move-object v1, p0

    .line 2
    const-string v2, "malformed"

    .line 3
    .line 4
    const/4 v3, 0x0

    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    .line 16
    .line 17
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_3

    .line 22
    :catch_0
    move-exception v0

    .line 23
    goto :goto_0

    .line 24
    :catch_1
    move-exception v0

    .line 25
    goto :goto_1

    .line 26
    :catch_2
    move-exception v0

    .line 27
    goto :goto_2

    .line 28
    :goto_0
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v5, "Referrer decoding failed. Message: (%s)"

    .line 41
    .line 42
    invoke-interface {v4, v5, v0}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_3

    .line 46
    :goto_1
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v5, "Referrer decoding failed due to IllegalArgumentException. Message: (%s)"

    .line 59
    .line 60
    invoke-interface {v4, v5, v0}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_3

    .line 64
    :goto_2
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string v5, "Referrer decoding failed due to UnsupportedEncodingException. Message: (%s)"

    .line 77
    .line 78
    invoke-interface {v4, v5, v0}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :goto_3
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    const-string v5, "Referrer to parse (%s)"

    .line 90
    .line 91
    invoke-interface {v0, v5, v4}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    new-instance v0, Landroid/net/UrlQuerySanitizer;

    .line 95
    .line 96
    invoke-direct {v0}, Landroid/net/UrlQuerySanitizer;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-static {}, Landroid/net/UrlQuerySanitizer;->getAllButNulLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v0, v4}, Landroid/net/UrlQuerySanitizer;->setUnregisteredParameterValueSanitizer(Landroid/net/UrlQuerySanitizer$ValueSanitizer;)V

    .line 104
    .line 105
    .line 106
    const/4 v4, 0x1

    .line 107
    invoke-virtual {v0, v4}, Landroid/net/UrlQuerySanitizer;->setAllowUnregisteredParamaters(Z)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v2}, Landroid/net/UrlQuerySanitizer;->parseQuery(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/net/UrlQuerySanitizer;->getParameterList()Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    move-object v6, p3

    .line 118
    move-object/from16 v7, p4

    .line 119
    .line 120
    move-object/from16 v8, p5

    .line 121
    .line 122
    move-object/from16 v9, p6

    .line 123
    .line 124
    move-object/from16 v10, p7

    .line 125
    .line 126
    move-object/from16 v11, p8

    .line 127
    .line 128
    invoke-static/range {v5 .. v11}, Lcom/adjust/sdk/PackageFactory;->queryStringClickPackageBuilder(Ljava/util/List;Lcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/GlobalParameters;Lcom/adjust/sdk/i1;Lcom/adjust/sdk/ActivityHandler$InternalState;)Lcom/adjust/sdk/PackageBuilder;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    if-nez v0, :cond_1

    .line 133
    .line 134
    return-object v3

    .line 135
    :cond_1
    iput-object v2, v0, Lcom/adjust/sdk/PackageBuilder;->referrer:Ljava/lang/String;

    .line 136
    .line 137
    move-wide v2, p1

    .line 138
    iput-wide v2, v0, Lcom/adjust/sdk/PackageBuilder;->clickTimeInMilliseconds:J

    .line 139
    .line 140
    iput-object v1, v0, Lcom/adjust/sdk/PackageBuilder;->rawReferrer:Ljava/lang/String;

    .line 141
    .line 142
    const-string v1, "reftag"

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Lcom/adjust/sdk/PackageBuilder;->buildClickPackage(Ljava/lang/String;)Lcom/adjust/sdk/ActivityPackage;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    return-object v0

    .line 149
    :cond_2
    :goto_4
    return-object v3
.end method

.method private static queryStringClickPackageBuilder(Ljava/util/List;Lcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/GlobalParameters;Lcom/adjust/sdk/i1;Lcom/adjust/sdk/ActivityHandler$InternalState;)Lcom/adjust/sdk/PackageBuilder;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/UrlQuerySanitizer$ParameterValuePair;",
            ">;",
            "Lcom/adjust/sdk/ActivityState;",
            "Lcom/adjust/sdk/AdjustConfig;",
            "Lcom/adjust/sdk/DeviceInfo;",
            "Lcom/adjust/sdk/GlobalParameters;",
            "Lcom/adjust/sdk/i1;",
            "Lcom/adjust/sdk/ActivityHandler$InternalState;",
            ")",
            "Lcom/adjust/sdk/PackageBuilder;"
        }
    .end annotation

    .line 1
    move-object v3, p1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v9, Lcom/adjust/sdk/AdjustAttribution;

    .line 12
    .line 13
    invoke-direct {v9}, Lcom/adjust/sdk/AdjustAttribution;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/net/UrlQuerySanitizer$ParameterValuePair;

    .line 31
    .line 32
    iget-object v2, v1, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->mParameter:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v1, v1, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->mValue:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v2, v1, v8, v9}, Lcom/adjust/sdk/PackageFactory;->readQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/adjust/sdk/AdjustAttribution;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v6

    .line 44
    const-string v0, "reftag"

    .line 45
    .line 46
    invoke-interface {v8, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    move-object v10, v0

    .line 51
    check-cast v10, Ljava/lang/String;

    .line 52
    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    iget-wide v0, v3, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    .line 56
    .line 57
    sub-long v0, v6, v0

    .line 58
    .line 59
    iput-wide v0, v3, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    .line 60
    .line 61
    :cond_2
    new-instance v11, Lcom/adjust/sdk/PackageBuilder;

    .line 62
    .line 63
    move-object v0, v11

    .line 64
    move-object v1, p2

    .line 65
    move-object v2, p3

    .line 66
    move-object v3, p1

    .line 67
    move-object/from16 v4, p4

    .line 68
    .line 69
    move-object/from16 v5, p5

    .line 70
    .line 71
    invoke-direct/range {v0 .. v7}, Lcom/adjust/sdk/PackageBuilder;-><init>(Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/GlobalParameters;Lcom/adjust/sdk/i1;J)V

    .line 72
    .line 73
    .line 74
    move-object/from16 v0, p6

    .line 75
    .line 76
    iput-object v0, v11, Lcom/adjust/sdk/PackageBuilder;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    .line 77
    .line 78
    iput-object v8, v11, Lcom/adjust/sdk/PackageBuilder;->extraParameters:Ljava/util/Map;

    .line 79
    .line 80
    iput-object v9, v11, Lcom/adjust/sdk/PackageBuilder;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    .line 81
    .line 82
    iput-object v10, v11, Lcom/adjust/sdk/PackageBuilder;->reftag:Ljava/lang/String;

    .line 83
    .line 84
    return-object v11
.end method

.method private static readQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/adjust/sdk/AdjustAttribution;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/adjust/sdk/AdjustAttribution;",
            ")Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_5

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const-string v1, "adjust_"

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    return v0

    .line 16
    :cond_1
    const/4 v1, 0x7

    .line 17
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    return v0

    .line 28
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v0

    .line 35
    :cond_3
    invoke-static {p3, p0, p1}, Lcom/adjust/sdk/PackageFactory;->tryToSetAttribution(Lcom/adjust/sdk/AdjustAttribution;Ljava/lang/String;Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    if-nez p3, :cond_4

    .line 40
    .line 41
    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :cond_4
    const/4 p0, 0x1

    .line 45
    return p0

    .line 46
    :cond_5
    :goto_0
    return v0
.end method

.method private static tryToSetAttribution(Lcom/adjust/sdk/AdjustAttribution;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string/jumbo v0, "tracker"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput-object p2, p0, Lcom/adjust/sdk/AdjustAttribution;->trackerName:Ljava/lang/String;

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    const-string v0, "campaign"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iput-object p2, p0, Lcom/adjust/sdk/AdjustAttribution;->campaign:Ljava/lang/String;

    .line 23
    .line 24
    return v1

    .line 25
    :cond_1
    const-string v0, "adgroup"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iput-object p2, p0, Lcom/adjust/sdk/AdjustAttribution;->adgroup:Ljava/lang/String;

    .line 34
    .line 35
    return v1

    .line 36
    :cond_2
    const-string v0, "creative"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    iput-object p2, p0, Lcom/adjust/sdk/AdjustAttribution;->creative:Ljava/lang/String;

    .line 45
    .line 46
    return v1

    .line 47
    :cond_3
    const/4 p0, 0x0

    .line 48
    return p0
.end method
