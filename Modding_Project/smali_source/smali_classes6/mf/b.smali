.class public final Lmf/b;
.super Ljava/lang/Object;
.source "HttpDNSManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lmf/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lmf/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lmf/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lmf/b;->a:Lmf/b;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/startshorts/androidplayer/bean/configure/FeatureController;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lmf/b;->g(Lcom/startshorts/androidplayer/bean/configure/FeatureController;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final e(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "HttpDnsManager"

    .line 2
    .line 3
    :try_start_0
    sget-boolean v1, Lmf/b;->b:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 8
    .line 9
    const-string/jumbo v1, "turnOnInternal failed -> mIsHttpDNSOn is true"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catch_0
    move-exception p1

    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_0
    const/4 v1, 0x1

    .line 20
    sput-boolean v1, Lmf/b;->b:Z

    .line 21
    .line 22
    const/16 v1, 0x5a

    .line 23
    .line 24
    const/4 v2, 0x4

    .line 25
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntValue(II)V

    .line 26
    .line 27
    .line 28
    const/16 v1, 0x5b

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntValue(II)V

    .line 32
    .line 33
    .line 34
    sget-object v1, Lqe/a;->a:Lqe/a;

    .line 35
    .line 36
    invoke-virtual {v1}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getHttpDNSTimeOut()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/16 v3, 0x5c

    .line 45
    .line 46
    invoke-static {v3, v2}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntValue(II)V

    .line 47
    .line 48
    .line 49
    new-instance v2, Lmf/c;

    .line 50
    .line 51
    invoke-direct {v2}, Lmf/c;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-static {v2}, Lcom/ss/mediakit/net/AVMDLDNSParser;->setCustomHttpDNSParser(Lcom/ss/mediakit/net/AVMDLCustomHTTPDNSParser;)V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/DataLoaderHelper;->clearNetinfoCache()V

    .line 62
    .line 63
    .line 64
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 65
    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string/jumbo v4, "turnOnInternal -> scene("

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p1, "),httpDNSEnable("

    .line 81
    .line 82
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getHttpDNSPlayerEnable()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p1, "),httpDNSErrorCodes("

    .line 97
    .line 98
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getHttpDNSErrorCodes()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string p1, "),httpDNSTimeOut("

    .line 113
    .line 114
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getHttpDNSTimeOut()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string p1, ")httpDNSCountryCodes("

    .line 129
    .line 130
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getHttpDNSCountryCodes()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string p1, ")countryCode("

    .line 145
    .line 146
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->i0()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const/16 p1, 0x29

    .line 159
    .line 160
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {v2, v0, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :goto_0
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 172
    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    const-string/jumbo v3, "turnOnInternal exception -> "

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {v1, v0, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :goto_1
    return-void
.end method

.method private static final g(Lcom/startshorts/androidplayer/bean/configure/FeatureController;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string/jumbo v0, "value"

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getHttpDNSCountryCodes()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntValue(II)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x5a

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v0, v2}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntValue(II)V

    .line 10
    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntValue(II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lmf/b;->f()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lqe/a;->a:Lqe/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getHttpDNSPlayerEnable()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const-string v3, "HttpDnsManager"

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 17
    .line 18
    const-string/jumbo v0, "shouldRetryWithHttpDns -> false,httpDNSEnable is false"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v3, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return v2

    .line 25
    :cond_0
    const/16 v1, 0x29

    .line 26
    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    invoke-static {p1}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v0}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getHttpDNSErrorCodes()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Ljk/v;->r(Ljava/lang/String;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-nez v4, :cond_2

    .line 53
    .line 54
    sget-object v4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 55
    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string/jumbo v6, "shouldRetryWithHttpDns -> false,errorCode not in httpDNSErrorCodes, errorCode("

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p1, "),errorCodes("

    .line 71
    .line 72
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v4, v3, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return v2

    .line 89
    :cond_2
    const/4 p1, 0x1

    .line 90
    return p1

    .line 91
    :cond_3
    :goto_0
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 92
    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string/jumbo v5, "shouldRetryWithHttpDns -> false,errorCode isNullOrBlank, errorCode("

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {v0, v3, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return v2
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "errorCode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lmf/b;->c(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "errorCode="

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Lmf/b;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p1

    .line 35
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string/jumbo v2, "turnOn exception -> "

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string v1, "HttpDnsManager"

    .line 60
    .line 61
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    sget-object v0, Lqe/a;->a:Lqe/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getHttpDNSPlayerEnable()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Lmf/a;

    .line 14
    .line 15
    invoke-direct {v1}, Lmf/a;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lqe/a;->f(Lkotlin/jvm/functions/Function1;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const-string/jumbo v0, "switch"

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0}, Lmf/b;->e(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    sget-boolean v0, Lmf/b;->b:Z

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 36
    .line 37
    const-string v1, "HttpDnsManager"

    .line 38
    .line 39
    const-string/jumbo v2, "turnOff"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/16 v0, 0x5a

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntValue(II)V

    .line 49
    .line 50
    .line 51
    const/16 v0, 0x5b

    .line 52
    .line 53
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntValue(II)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->clearNetinfoCache()V

    .line 61
    .line 62
    .line 63
    sput-boolean v1, Lmf/b;->b:Z

    .line 64
    .line 65
    :cond_1
    :goto_0
    return-void
.end method
