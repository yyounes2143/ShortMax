.class final Lrm/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lsm/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field static final synthetic b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lsm/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lsm/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lrm/d;->a:Lsm/b;

    .line 7
    .line 8
    return-void
.end method

.method private static a(Ljava/lang/String;)Landroid/util/Pair;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "/"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Landroid/util/Pair;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aget-object v1, p0, v1

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aget-object p0, p0, v2

    .line 14
    .line 15
    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method private static b(Lio/bidmachine/iab/mraid/MraidWebView;)V
    .locals 1
    .param p0    # Lio/bidmachine/iab/mraid/MraidWebView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const-string v0, "nativeStorage.fireErrorEvent(\'internal error\');"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidWebView;->i(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method static c(Lio/bidmachine/iab/mraid/MraidWebView;Ljava/lang/String;)V
    .locals 5
    .param p0    # Lio/bidmachine/iab/mraid/MraidWebView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    filled-new-array {p1}, [Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lrm/d;->f(Lio/bidmachine/iab/mraid/MraidWebView;[Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    sget-object v0, Lrm/d;->a:Lsm/b;

    .line 13
    .line 14
    const-string v1, "UTF-8"

    .line 15
    .line 16
    invoke-static {p1, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lsm/b;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lrm/d;->a(Ljava/lang/String;)Landroid/util/Pair;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Ljava/lang/String;

    .line 31
    .line 32
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v2, Ljava/lang/String;

    .line 35
    .line 36
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {p0, v1}, Lrm/d;->f(Lio/bidmachine/iab/mraid/MraidWebView;[Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    sget-boolean v1, Lrm/d;->b:Z

    .line 48
    .line 49
    if-nez v1, :cond_3

    .line 50
    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v3, Ljava/lang/String;

    .line 73
    .line 74
    const/4 v4, 0x0

    .line 75
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 84
    .line 85
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-nez v0, :cond_4

    .line 90
    .line 91
    invoke-static {p0}, Lrm/d;->b(Lio/bidmachine/iab/mraid/MraidWebView;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    filled-new-array {v0}, [Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static {p0, v2}, Lrm/d;->f(Lio/bidmachine/iab/mraid/MraidWebView;[Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-nez v2, :cond_7

    .line 108
    .line 109
    if-nez v1, :cond_6

    .line 110
    .line 111
    if-eqz p1, :cond_5

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    .line 115
    .line 116
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 117
    .line 118
    .line 119
    throw p1

    .line 120
    :cond_6
    :goto_1
    const-string v1, "fireReadDefaultsSuccessEvent"

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const/4 v2, 0x2

    .line 127
    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {p0, v1, p1, v0}, Lrm/d;->e(Lio/bidmachine/iab/mraid/MraidWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .line 133
    .line 134
    goto :goto_3

    .line 135
    :goto_2
    invoke-static {p0}, Lrm/d;->b(Lio/bidmachine/iab/mraid/MraidWebView;)V

    .line 136
    .line 137
    .line 138
    const-string p0, "NativeStorage"

    .line 139
    .line 140
    invoke-static {p0, p1}, Lio/bidmachine/iab/mraid/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    .line 142
    .line 143
    :cond_7
    :goto_3
    return-void
.end method

.method static d(Lio/bidmachine/iab/mraid/MraidWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0    # Lio/bidmachine/iab/mraid/MraidWebView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    filled-new-array {p1, p2}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {p0, v1}, Lrm/d;->f(Lio/bidmachine/iab/mraid/MraidWebView;[Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    :try_start_0
    sget-object v1, Lrm/d;->a:Lsm/b;

    .line 15
    .line 16
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v1, p1}, Lsm/b;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p2, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const/4 v0, 0x2

    .line 29
    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-static {p1}, Lrm/d;->a(Ljava/lang/String;)Landroid/util/Pair;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Ljava/lang/String;

    .line 40
    .line 41
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Ljava/lang/String;

    .line 44
    .line 45
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {p0, v0}, Lrm/d;->f(Lio/bidmachine/iab/mraid/MraidWebView;[Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    sget-boolean v0, Lrm/d;->b:Z

    .line 57
    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    if-eqz p0, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    .line 64
    .line 65
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v1, Ljava/lang/String;

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p1, Ljava/lang/String;

    .line 95
    .line 96
    new-instance v1, Ljava/lang/String;

    .line 97
    .line 98
    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    .line 99
    .line 100
    .line 101
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :goto_1
    invoke-static {p0}, Lrm/d;->b(Lio/bidmachine/iab/mraid/MraidWebView;)V

    .line 110
    .line 111
    .line 112
    const-string p0, "NativeStorage"

    .line 113
    .line 114
    invoke-static {p0, p1}, Lio/bidmachine/iab/mraid/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    :goto_2
    return-void
.end method

.method private static e(Lio/bidmachine/iab/mraid/MraidWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lio/bidmachine/iab/mraid/MraidWebView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string p2, "nativeStorage.%s(\"%s\", \"%s\");"

    .line 8
    .line 9
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidWebView;->i(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private static varargs f(Lio/bidmachine/iab/mraid/MraidWebView;[Ljava/lang/String;)Z
    .locals 5
    .param p0    # Lio/bidmachine/iab/mraid/MraidWebView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebView;->j()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_3

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    array-length v2, p1

    .line 21
    move v3, v1

    .line 22
    :goto_0
    if-ge v3, v2, :cond_2

    .line 23
    .line 24
    aget-object v4, p1, v3

    .line 25
    .line 26
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    invoke-static {p0}, Lrm/d;->b(Lio/bidmachine/iab/mraid/MraidWebView;)V

    .line 33
    .line 34
    .line 35
    return v0

    .line 36
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    return v1

    .line 40
    :cond_3
    :goto_1
    invoke-static {p0}, Lrm/d;->b(Lio/bidmachine/iab/mraid/MraidWebView;)V

    .line 41
    .line 42
    .line 43
    return v0
.end method

.method static g(Lio/bidmachine/iab/mraid/MraidWebView;Ljava/lang/String;)V
    .locals 5
    .param p0    # Lio/bidmachine/iab/mraid/MraidWebView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    filled-new-array {p1}, [Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lrm/d;->f(Lio/bidmachine/iab/mraid/MraidWebView;[Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :try_start_0
    sget-object v1, Lrm/d;->a:Lsm/b;

    .line 14
    .line 15
    const-string v2, "UTF-8"

    .line 16
    .line 17
    invoke-static {p1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Lsm/b;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sget-boolean v2, Lrm/d;->b:Z

    .line 26
    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    move-object v1, v0

    .line 40
    goto/16 :goto_7

    .line 41
    .line 42
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v3, "/"

    .line 51
    .line 52
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_3

    .line 57
    .line 58
    new-instance v3, Ljava/io/File;

    .line 59
    .line 60
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    invoke-virtual {v2, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    :goto_1
    if-eqz v3, :cond_9

    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-nez v3, :cond_4

    .line 75
    .line 76
    goto :goto_6

    .line 77
    :cond_4
    invoke-virtual {v2, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 78
    .line 79
    .line 80
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 82
    .line 83
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 84
    .line 85
    .line 86
    const/16 v0, 0x2000

    .line 87
    .line 88
    :try_start_2
    new-array v0, v0, [B

    .line 89
    .line 90
    if-eqz v1, :cond_5

    .line 91
    .line 92
    :goto_2
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    const/4 v4, -0x1

    .line 97
    if-eq v4, v3, :cond_5

    .line 98
    .line 99
    const/4 v4, 0x0

    .line 100
    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :catchall_1
    move-exception p1

    .line 105
    goto :goto_5

    .line 106
    :cond_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    array-length v3, v0

    .line 111
    if-lez v3, :cond_8

    .line 112
    .line 113
    sget-boolean v3, Lrm/d;->b:Z

    .line 114
    .line 115
    if-nez v3, :cond_7

    .line 116
    .line 117
    if-eqz p1, :cond_6

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    .line 121
    .line 122
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 123
    .line 124
    .line 125
    throw p1

    .line 126
    :cond_7
    :goto_3
    const-string v3, "fireReadFileSuccessEvent"

    .line 127
    .line 128
    const/4 v4, 0x2

    .line 129
    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-static {p0, v3, p1, v0}, Lrm/d;->e(Lio/bidmachine/iab/mraid/MraidWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_8
    invoke-static {p0}, Lrm/d;->b(Lio/bidmachine/iab/mraid/MraidWebView;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 138
    .line 139
    .line 140
    :goto_4
    invoke-static {v1}, Lsm/q;->o(Ljava/io/Closeable;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v2}, Lsm/q;->o(Ljava/io/Closeable;)V

    .line 144
    .line 145
    .line 146
    goto :goto_8

    .line 147
    :goto_5
    move-object v0, v2

    .line 148
    goto :goto_7

    .line 149
    :catchall_2
    move-exception p1

    .line 150
    goto :goto_7

    .line 151
    :cond_9
    :goto_6
    :try_start_3
    invoke-static {p0}, Lrm/d;->b(Lio/bidmachine/iab/mraid/MraidWebView;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    .line 153
    .line 154
    invoke-static {v0}, Lsm/q;->o(Ljava/io/Closeable;)V

    .line 155
    .line 156
    .line 157
    invoke-static {v0}, Lsm/q;->o(Ljava/io/Closeable;)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :goto_7
    :try_start_4
    invoke-static {p0}, Lrm/d;->b(Lio/bidmachine/iab/mraid/MraidWebView;)V

    .line 162
    .line 163
    .line 164
    const-string p0, "NativeStorage"

    .line 165
    .line 166
    invoke-static {p0, p1}, Lio/bidmachine/iab/mraid/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 167
    .line 168
    .line 169
    invoke-static {v1}, Lsm/q;->o(Ljava/io/Closeable;)V

    .line 170
    .line 171
    .line 172
    invoke-static {v0}, Lsm/q;->o(Ljava/io/Closeable;)V

    .line 173
    .line 174
    .line 175
    :goto_8
    return-void

    .line 176
    :catchall_3
    move-exception p0

    .line 177
    invoke-static {v1}, Lsm/q;->o(Ljava/io/Closeable;)V

    .line 178
    .line 179
    .line 180
    invoke-static {v0}, Lsm/q;->o(Ljava/io/Closeable;)V

    .line 181
    .line 182
    .line 183
    throw p0
.end method

.method static h(Lio/bidmachine/iab/mraid/MraidWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0    # Lio/bidmachine/iab/mraid/MraidWebView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    filled-new-array {p1, p2}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {p0, v1}, Lrm/d;->f(Lio/bidmachine/iab/mraid/MraidWebView;[Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :try_start_0
    sget-object v2, Lrm/d;->a:Lsm/b;

    .line 16
    .line 17
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v2, p1}, Lsm/b;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p2, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const/4 v0, 0x2

    .line 30
    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    new-instance v0, Ljava/lang/String;

    .line 35
    .line 36
    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    .line 37
    .line 38
    .line 39
    filled-new-array {p1, v0}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {p0, v0}, Lrm/d;->f(Lio/bidmachine/iab/mraid/MraidWebView;[Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_4

    .line 48
    .line 49
    sget-boolean v0, Lrm/d;->b:Z

    .line 50
    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    if-eqz p0, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 57
    .line 58
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v2, "/"

    .line 73
    .line 74
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_3

    .line 79
    .line 80
    new-instance v0, Ljava/io/FileOutputStream;

    .line 81
    .line 82
    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    move-object v1, v0

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    const/4 v2, 0x0

    .line 88
    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    move-object v1, p1

    .line 93
    :goto_1
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    :cond_4
    invoke-static {v1}, Lsm/q;->r(Ljava/io/Flushable;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v1}, Lsm/q;->o(Ljava/io/Closeable;)V

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :goto_2
    :try_start_1
    invoke-static {p0}, Lrm/d;->b(Lio/bidmachine/iab/mraid/MraidWebView;)V

    .line 104
    .line 105
    .line 106
    const-string p0, "NativeStorage"

    .line 107
    .line 108
    invoke-static {p0, p1}, Lio/bidmachine/iab/mraid/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    .line 110
    .line 111
    invoke-static {v1}, Lsm/q;->r(Ljava/io/Flushable;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v1}, Lsm/q;->o(Ljava/io/Closeable;)V

    .line 115
    .line 116
    .line 117
    :goto_3
    return-void

    .line 118
    :catchall_1
    move-exception p0

    .line 119
    invoke-static {v1}, Lsm/q;->r(Ljava/io/Flushable;)V

    .line 120
    .line 121
    .line 122
    invoke-static {v1}, Lsm/q;->o(Ljava/io/Closeable;)V

    .line 123
    .line 124
    .line 125
    throw p0
.end method
