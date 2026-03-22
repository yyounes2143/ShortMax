.class public final La2/m;
.super Ljava/lang/Object;
.source "SessionLogger.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:La2/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/lang/String;

.field private static final c:[J
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, La2/m;

    .line 2
    .line 3
    invoke-direct {v0}, La2/m;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, La2/m;->a:La2/m;

    .line 7
    .line 8
    const-class v0, La2/m;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, La2/m;->b:Ljava/lang/String;

    .line 15
    .line 16
    const/16 v0, 0x13

    .line 17
    .line 18
    new-array v0, v0, [J

    .line 19
    .line 20
    fill-array-data v0, :array_0

    .line 21
    .line 22
    .line 23
    sput-object v0, La2/m;->c:[J

    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :array_0
    .array-data 8
        0x493e0
        0xdbba0
        0x1b7740
        0x36ee80
        0x1499700
        0x2932e00
        0x5265c00
        0xa4cb800
        0xf731400
        0x240c8400
        0x48190800
        0x6c258c00
        0x90321000L
        0x134fd9000L
        0x1cf7c5800L
        0x269fb2000L
        0x30479e800L
        0x39ef8b000L
        0x757b12c00L
    .end array-data
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

.method public static final a(J)I
    .locals 6

    .line 1
    const-class v0, La2/m;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    move v1, v2

    .line 12
    :goto_0
    :try_start_0
    sget-object v3, La2/m;->c:[J

    .line 13
    .line 14
    array-length v4, v3

    .line 15
    if-ge v1, v4, :cond_1

    .line 16
    .line 17
    aget-wide v4, v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    cmp-long v3, v4, p0

    .line 20
    .line 21
    if-gez v3, :cond_1

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    return v1

    .line 29
    :goto_1
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return v2
.end method

.method public static final b(Ljava/lang/String;La2/n;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # La2/n;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-class v0, La2/m;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    const-string v1, "activityName"

    .line 11
    .line 12
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "context"

    .line 16
    .line 17
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, La2/n;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    const-string p1, "Unclassified"

    .line 32
    .line 33
    :cond_2
    new-instance p3, Landroid/os/Bundle;

    .line 34
    .line 35
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v1, "fb_mobile_launch_source"

    .line 39
    .line 40
    invoke-virtual {p3, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Lcom/facebook/appevents/h0;->b:Lcom/facebook/appevents/h0$a;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {p1, p0, p2, v1}, Lcom/facebook/appevents/h0$a;->b(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)Lcom/facebook/appevents/h0;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string p2, "fb_mobile_activate_app"

    .line 51
    .line 52
    invoke-virtual {p0, p2, p3}, Lcom/facebook/appevents/h0;->d(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/facebook/appevents/h0$a;->d()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    sget-object p2, Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    .line 60
    .line 61
    if-eq p1, p2, :cond_3

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/facebook/appevents/h0;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    :cond_3
    return-void

    .line 67
    :goto_1
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method private final c()V
    .locals 4

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/internal/i0;->e:Lcom/facebook/internal/i0$a;

    .line 9
    .line 10
    sget-object v1, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    .line 11
    .line 12
    sget-object v2, La2/m;->b:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const-string v3, "Clock skew detected"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/internal/i0$a;->b(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    invoke-static {v0, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static final d(Ljava/lang/String;La2/l;Ljava/lang/String;)V
    .locals 11
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # La2/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-class v0, La2/m;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    const-string v1, "activityName"

    .line 11
    .line 12
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {p1}, La2/l;->b()Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-wide/16 v2, 0x0

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    goto :goto_1

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :cond_2
    invoke-virtual {p1}, La2/l;->e()Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    move-wide v4, v2

    .line 46
    :goto_0
    sub-long v4, v2, v4

    .line 47
    .line 48
    :goto_1
    cmp-long v1, v4, v2

    .line 49
    .line 50
    if-gez v1, :cond_4

    .line 51
    .line 52
    sget-object v1, La2/m;->a:La2/m;

    .line 53
    .line 54
    invoke-direct {v1}, La2/m;->c()V

    .line 55
    .line 56
    .line 57
    move-wide v4, v2

    .line 58
    :cond_4
    invoke-virtual {p1}, La2/l;->f()J

    .line 59
    .line 60
    .line 61
    move-result-wide v6

    .line 62
    cmp-long v1, v6, v2

    .line 63
    .line 64
    if-gez v1, :cond_5

    .line 65
    .line 66
    sget-object v1, La2/m;->a:La2/m;

    .line 67
    .line 68
    invoke-direct {v1}, La2/m;->c()V

    .line 69
    .line 70
    .line 71
    move-wide v6, v2

    .line 72
    :cond_5
    new-instance v1, Landroid/os/Bundle;

    .line 73
    .line 74
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v8, "fb_mobile_app_interruptions"

    .line 78
    .line 79
    invoke-virtual {p1}, La2/l;->c()I

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    invoke-virtual {v1, v8, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    const-string v8, "fb_mobile_time_between_sessions"

    .line 87
    .line 88
    sget-object v9, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 89
    .line 90
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 91
    .line 92
    const-string v10, "session_quanta_%d"

    .line 93
    .line 94
    invoke-static {v4, v5}, La2/m;->a(J)I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    const/4 v5, 0x1

    .line 107
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-static {v9, v10, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    const-string v5, "format(locale, format, *args)"

    .line 116
    .line 117
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v8, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, La2/l;->g()La2/n;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    if-eqz v4, :cond_6

    .line 128
    .line 129
    invoke-virtual {v4}, La2/n;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    if-nez v4, :cond_7

    .line 134
    .line 135
    :cond_6
    const-string v4, "Unclassified"

    .line 136
    .line 137
    :cond_7
    const-string v5, "fb_mobile_launch_source"

    .line 138
    .line 139
    invoke-virtual {v1, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string v4, "_logTime"

    .line 143
    .line 144
    invoke-virtual {p1}, La2/l;->e()Ljava/lang/Long;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    if-eqz p1, :cond_8

    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 151
    .line 152
    .line 153
    move-result-wide v2

    .line 154
    :cond_8
    const/16 p1, 0x3e8

    .line 155
    .line 156
    int-to-long v8, p1

    .line 157
    div-long/2addr v2, v8

    .line 158
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 159
    .line 160
    .line 161
    sget-object p1, Lcom/facebook/appevents/h0;->b:Lcom/facebook/appevents/h0$a;

    .line 162
    .line 163
    const/4 v2, 0x0

    .line 164
    invoke-virtual {p1, p0, p2, v2}, Lcom/facebook/appevents/h0$a;->b(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)Lcom/facebook/appevents/h0;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    const-string p1, "fb_mobile_deactivate_app"

    .line 169
    .line 170
    long-to-double v2, v6

    .line 171
    const-wide/16 v4, 0x3e8

    .line 172
    .line 173
    long-to-double v4, v4

    .line 174
    div-double/2addr v2, v4

    .line 175
    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/facebook/appevents/h0;->c(Ljava/lang/String;DLandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :goto_2
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    return-void
.end method
