.class public final Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;
.super Ljava/lang/Object;
.source "AppConfigureUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;->a:Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;

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

.method public static final synthetic a(Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;Ljava/lang/String;Lme/b;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;->i(Ljava/lang/String;Lme/b;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final c()J
    .locals 5

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->x0()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-virtual {v0}, Lud/b;->M0()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    sub-long v0, v1, v3

    .line 23
    .line 24
    :goto_0
    return-wide v0
.end method

.method public static synthetic e(Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;Ljava/lang/String;Lorg/json/JSONArray;JZILjava/lang/Object;)Lorg/json/JSONObject;
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x4

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;->c()J

    .line 6
    .line 7
    .line 8
    move-result-wide p3

    .line 9
    :cond_0
    move-wide v3, p3

    .line 10
    and-int/lit8 p3, p6, 0x8

    .line 11
    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    const/4 p5, 0x1

    .line 15
    :cond_1
    move v5, p5

    .line 16
    move-object v0, p0

    .line 17
    move-object v1, p1

    .line 18
    move-object v2, p2

    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;->d(Ljava/lang/String;Lorg/json/JSONArray;JZ)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method private final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->a:Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method private final i(Ljava/lang/String;Lme/b;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lme/b<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p5, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initConfigure$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p5

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initConfigure$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initConfigure$1;->m:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initConfigure$1;->m:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initConfigure$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p5}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initConfigure$1;-><init>(Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p5, v0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initConfigure$1;->k:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initConfigure$1;->m:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initConfigure$1;->j:Ljava/lang/Object;

    .line 39
    .line 40
    move-object p4, p1

    .line 41
    check-cast p4, Ljava/lang/String;

    .line 42
    .line 43
    iget-object p1, v0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initConfigure$1;->i:Ljava/lang/Object;

    .line 44
    .line 45
    move-object p2, p1

    .line 46
    check-cast p2, Lme/b;

    .line 47
    .line 48
    iget-object p1, v0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initConfigure$1;->h:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p1, Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {p5}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_2
    invoke-static {p5}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iput-object p1, v0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initConfigure$1;->h:Ljava/lang/Object;

    .line 68
    .line 69
    iput-object p2, v0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initConfigure$1;->i:Ljava/lang/Object;

    .line 70
    .line 71
    iput-object p4, v0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initConfigure$1;->j:Ljava/lang/Object;

    .line 72
    .line 73
    iput v3, v0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initConfigure$1;->m:I

    .line 74
    .line 75
    invoke-interface {p2, p3, v0}, Lme/b;->a(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p5

    .line 79
    if-ne p5, v1, :cond_3

    .line 80
    .line 81
    return-object v1

    .line 82
    :cond_3
    :goto_1
    check-cast p5, Ljava/lang/Boolean;

    .line 83
    .line 84
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 85
    .line 86
    .line 87
    move-result p3

    .line 88
    sget-object p5, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 89
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v1, "initConfigure from="

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const/16 v1, 0x2c

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string p1, " : "

    .line 112
    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    if-eqz p3, :cond_4

    .line 117
    .line 118
    const-string/jumbo p1, "succeed"

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_4
    const-string p1, "failed"

    .line 123
    .line 124
    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    const-string v0, "AppConfigureUtil"

    .line 132
    .line 133
    invoke-virtual {p5, v0, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    if-eqz p3, :cond_6

    .line 137
    .line 138
    const-string p1, "local"

    .line 139
    .line 140
    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-nez p1, :cond_5

    .line 145
    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string p3, "initConfigure succeed. adConfigure.value="

    .line 152
    .line 153
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-interface {p2}, Lme/b;->value()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p3

    .line 160
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p5, v0, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :cond_5
    invoke-interface {p2, v3}, Lme/b;->c(Z)V

    .line 171
    .line 172
    .line 173
    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 174
    .line 175
    return-object p1
.end method


# virtual methods
.method public final b(Lorg/json/JSONObject;)J
    .locals 2
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "maxActiveTime"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public final d(Ljava/lang/String;Lorg/json/JSONArray;JZ)Lorg/json/JSONObject;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "AppConfigureUtil"

    .line 2
    .line 3
    const-string/jumbo v1, "tag"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v1, "array"

    .line 10
    .line 11
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-ge v2, v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v3}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;->b(Lorg/json/JSONObject;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    cmp-long v4, p3, v4

    .line 33
    .line 34
    if-gtz v4, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p2

    .line 41
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 42
    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p1, ".getJsonObjectByActiveTime exception -> "

    .line 52
    .line 53
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v1, v0, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    const/4 v3, 0x0

    .line 71
    :goto_1
    if-eqz p5, :cond_2

    .line 72
    .line 73
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 74
    .line 75
    new-instance p2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string p5, "getJsonObjectByActiveTime userActiveTime="

    .line 81
    .line 82
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p3, ",result="

    .line 89
    .line 90
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-virtual {p1, v0, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    return-object v3
.end method

.method public final g(Landroid/content/Context;Ljava/lang/String;Lme/b;Lrs/c;)Ljava/lang/Object;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lme/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lme/b<",
            "*>;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p4, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initByLocalConfigure$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initByLocalConfigure$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initByLocalConfigure$1;->k:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initByLocalConfigure$1;->k:I

    .line 18
    .line 19
    :goto_0
    move-object v6, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initByLocalConfigure$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p4}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initByLocalConfigure$1;-><init>(Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;Lrs/c;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p4, v6, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initByLocalConfigure$1;->i:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v6, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initByLocalConfigure$1;->k:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    iget-object p1, v6, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initByLocalConfigure$1;->h:Ljava/lang/Object;

    .line 41
    .line 42
    move-object p2, p1

    .line 43
    check-cast p2, Ljava/lang/String;

    .line 44
    .line 45
    :try_start_0
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto/16 :goto_3

    .line 49
    .line 50
    :catch_0
    move-exception p1

    .line 51
    goto :goto_2

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_2
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :try_start_1
    invoke-interface {p3}, Lme/b;->e()Z

    .line 64
    .line 65
    .line 66
    move-result p4

    .line 67
    if-nez p4, :cond_3

    .line 68
    .line 69
    sget-object p4, Lcom/startshorts/androidplayer/utils/FileUtil;->a:Lcom/startshorts/androidplayer/utils/FileUtil;

    .line 70
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v3, "ad/"

    .line 77
    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v3, ".json"

    .line 85
    .line 86
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {p4, p1, v1}, Lcom/startshorts/androidplayer/utils/FileUtil;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    const-string v5, "local"

    .line 98
    .line 99
    iput-object p2, v6, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initByLocalConfigure$1;->h:Ljava/lang/Object;

    .line 100
    .line 101
    iput v2, v6, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initByLocalConfigure$1;->k:I

    .line 102
    .line 103
    move-object v1, p0

    .line 104
    move-object v2, p2

    .line 105
    move-object v3, p3

    .line 106
    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;->i(Ljava/lang/String;Lme/b;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    if-ne p1, v0, :cond_3

    .line 111
    .line 112
    return-object v0

    .line 113
    :goto_2
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 114
    .line 115
    new-instance v2, Landroid/os/Bundle;

    .line 116
    .line 117
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 118
    .line 119
    .line 120
    new-instance p3, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string p4, "key:"

    .line 126
    .line 127
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const/16 p4, 0x3b

    .line 134
    .line 135
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p4

    .line 142
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p3

    .line 149
    const-string p4, "err_msg"

    .line 150
    .line 151
    invoke-virtual {v2, p4, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    sget-object p3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 155
    .line 156
    const/4 v5, 0x4

    .line 157
    const/4 v6, 0x0

    .line 158
    const-string v1, "app_config_local_error"

    .line 159
    .line 160
    const-wide/16 v3, 0x0

    .line 161
    .line 162
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    sget-object p3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 166
    .line 167
    new-instance p4, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    const-string v0, "initByLocalConfigure "

    .line 173
    .line 174
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string p2, " error:"

    .line 181
    .line 182
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    const-string p2, "AppConfigureUtil"

    .line 193
    .line 194
    invoke-virtual {p3, p2, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    :cond_3
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 198
    .line 199
    return-object p1
.end method

.method public final h(Ljava/lang/String;Lme/b;Lrs/c;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lme/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lme/b<",
            "*>;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p3, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initByRemoteConfigure$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initByRemoteConfigure$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initByRemoteConfigure$1;->k:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initByRemoteConfigure$1;->k:I

    .line 18
    .line 19
    :goto_0
    move-object v6, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initByRemoteConfigure$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p3}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initByRemoteConfigure$1;-><init>(Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;Lrs/c;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p3, v6, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initByRemoteConfigure$1;->i:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v6, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initByRemoteConfigure$1;->k:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    iget-object p1, v6, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initByRemoteConfigure$1;->h:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Ljava/lang/String;

    .line 43
    .line 44
    :try_start_0
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto/16 :goto_3

    .line 48
    .line 49
    :catch_0
    move-exception p2

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_2
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :try_start_1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    const-string v5, "remote"

    .line 67
    .line 68
    iput-object p1, v6, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initByRemoteConfigure$1;->h:Ljava/lang/Object;

    .line 69
    .line 70
    iput v2, v6, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil$initByRemoteConfigure$1;->k:I

    .line 71
    .line 72
    move-object v1, p0

    .line 73
    move-object v2, p1

    .line 74
    move-object v3, p2

    .line 75
    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;->i(Ljava/lang/String;Lme/b;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    if-ne p1, v0, :cond_3

    .line 80
    .line 81
    return-object v0

    .line 82
    :goto_2
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 83
    .line 84
    new-instance v2, Landroid/os/Bundle;

    .line 85
    .line 86
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 87
    .line 88
    .line 89
    new-instance p3, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v1, "key:"

    .line 95
    .line 96
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const/16 v1, 0x3b

    .line 103
    .line 104
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    const-string v1, "err_msg"

    .line 119
    .line 120
    invoke-virtual {v2, v1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    sget-object p3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 124
    .line 125
    const/4 v5, 0x4

    .line 126
    const/4 v6, 0x0

    .line 127
    const-string v1, "app_config_remote_error"

    .line 128
    .line 129
    const-wide/16 v3, 0x0

    .line 130
    .line 131
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    sget-object p3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 135
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v1, "initByRemoteConfigure "

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string p1, " error:"

    .line 150
    .line 151
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    const-string p2, "AppConfigureUtil"

    .line 162
    .line 163
    invoke-virtual {p3, p2, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :cond_3
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 167
    .line 168
    return-object p1
.end method
