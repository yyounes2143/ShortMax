.class public Lcom/ss/mediakit/vcnlib/CustomVerify;
.super Ljava/lang/Object;
.source "CustomVerify.java"


# static fields
.field public static final CUSTOM_VERFIY_STATUS_IS_EXCEPTION:I = -0x1869c

.field public static final CUSTOM_VERFIY_STATUS_IS_GET_METHOD_EXCEPTION:I = -0x1869b

.field private static getVerifyStatusMethod:Ljava/lang/reflect/Method; = null

.field private static hasInited:Z = false

.field private static verifyMethod:Ljava/lang/reflect/Method;

.field private static verifyResultClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const-string v0, "found verify class or method exception:"

    .line 2
    .line 3
    const-string v1, "getStatus"

    .line 4
    .line 5
    const-class v2, [[B

    .line 6
    .line 7
    const-string/jumbo v3, "verifyServerCertificates"

    .line 8
    .line 9
    .line 10
    const-class v4, Ljava/lang/String;

    .line 11
    .line 12
    const-string v5, "custom_verify"

    .line 13
    .line 14
    const/4 v6, 0x1

    .line 15
    const/4 v7, 0x0

    .line 16
    :try_start_0
    const-string v8, "com.ttnet.org.chromium.net.X509Util"

    .line 17
    .line 18
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v8

    .line 22
    filled-new-array {v2, v4, v4}, [Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v9

    .line 26
    invoke-virtual {v8, v3, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    sput-object v8, Lcom/ss/mediakit/vcnlib/CustomVerify;->verifyMethod:Ljava/lang/reflect/Method;

    .line 31
    .line 32
    const-string v8, "com.ttnet.org.chromium.net.AndroidCertVerifyResult"

    .line 33
    .line 34
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    sput-object v8, Lcom/ss/mediakit/vcnlib/CustomVerify;->verifyResultClass:Ljava/lang/Class;

    .line 39
    .line 40
    new-array v9, v7, [Ljava/lang/Class;

    .line 41
    .line 42
    invoke-virtual {v8, v1, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    sput-object v8, Lcom/ss/mediakit/vcnlib/CustomVerify;->getVerifyStatusMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    .line 48
    :try_start_1
    const-string v8, "find ttnet verify suc"

    .line 49
    .line 50
    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    .line 52
    .line 53
    move v9, v6

    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception v8

    .line 56
    move v9, v6

    .line 57
    goto :goto_0

    .line 58
    :catch_1
    move-exception v8

    .line 59
    move v9, v7

    .line 60
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    const-string v8, "find ttnet verify fail"

    .line 83
    .line 84
    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    :goto_1
    if-nez v9, :cond_0

    .line 88
    .line 89
    :try_start_2
    const-class v8, Lcom/ss/mediakit/vcnlib/X509Util;

    .line 90
    .line 91
    sget-boolean v9, Lcom/ss/mediakit/vcnlib/X509Util;->$assertionsDisabled:Z

    .line 92
    .line 93
    filled-new-array {v2, v4, v4}, [Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v8, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    sput-object v2, Lcom/ss/mediakit/vcnlib/CustomVerify;->verifyMethod:Ljava/lang/reflect/Method;

    .line 102
    .line 103
    const-class v2, Lcom/ss/mediakit/vcnlib/AndroidCertVerifyResult;

    .line 104
    .line 105
    sput-object v2, Lcom/ss/mediakit/vcnlib/CustomVerify;->verifyResultClass:Ljava/lang/Class;

    .line 106
    .line 107
    new-array v3, v7, [Ljava/lang/Class;

    .line 108
    .line 109
    invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    sput-object v1, Lcom/ss/mediakit/vcnlib/CustomVerify;->getVerifyStatusMethod:Ljava/lang/reflect/Method;

    .line 114
    .line 115
    const-string v1, "find default verify suc"

    .line 116
    .line 117
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :catch_2
    move-exception v1

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    const-string v0, "find default verify fail"

    .line 145
    .line 146
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    :cond_0
    :goto_2
    sput-boolean v6, Lcom/ss/mediakit/vcnlib/CustomVerify;->hasInited:Z

    .line 150
    .line 151
    sget-object v0, Lcom/ss/mediakit/vcnlib/CustomVerify;->verifyMethod:Ljava/lang/reflect/Method;

    .line 152
    .line 153
    if-eqz v0, :cond_1

    .line 154
    .line 155
    sget-object v0, Lcom/ss/mediakit/vcnlib/CustomVerify;->verifyResultClass:Ljava/lang/Class;

    .line 156
    .line 157
    if-eqz v0, :cond_1

    .line 158
    .line 159
    const-string v0, "get verify method or verify result class suc"

    .line 160
    .line 161
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    :cond_1
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

.method private static final native _init()V
.end method

.method public static doVerify([[BLjava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/ss/mediakit/vcnlib/CustomVerify;->verifyMethod:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    const-string v1, "custom_verify"

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcom/ss/mediakit/vcnlib/CustomVerify;->verifyResultClass:Ljava/lang/Class;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    sget-object v0, Lcom/ss/mediakit/vcnlib/CustomVerify;->getVerifyStatusMethod:Ljava/lang/reflect/Method;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "host: "

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, "  authType: "

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    sget-object v0, Lcom/ss/mediakit/vcnlib/CustomVerify;->verifyMethod:Ljava/lang/reflect/Method;

    .line 45
    .line 46
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const/4 p1, 0x0

    .line 51
    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const-string p1, "get status end"

    .line 56
    .line 57
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    sget-object p1, Lcom/ss/mediakit/vcnlib/CustomVerify;->getVerifyStatusMethod:Ljava/lang/reflect/Method;

    .line 61
    .line 62
    const/4 p2, 0x0

    .line 63
    new-array p2, p2, [Ljava/lang/Object;

    .line 64
    .line 65
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    check-cast p0, Ljava/lang/Integer;

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string/jumbo p2, "verify result status: "

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    return p0

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    .line 100
    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string/jumbo p2, "verify exception stacktrace:"

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    const p0, -0x1869c

    .line 127
    .line 128
    .line 129
    return p0

    .line 130
    :cond_1
    :goto_0
    const-string/jumbo p0, "verify method is null ecception"

    .line 131
    .line 132
    .line 133
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    const p0, -0x1869b

    .line 137
    .line 138
    .line 139
    return p0
.end method

.method public static init()V
    .locals 2

    .line 1
    const-string/jumbo v0, "start init native"

    .line 2
    .line 3
    .line 4
    const-string v1, "custom_verify"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/ss/mediakit/vcnlib/CustomVerify;->_init()V

    .line 10
    .line 11
    .line 12
    const-string v0, "end init native"

    .line 13
    .line 14
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void
.end method
