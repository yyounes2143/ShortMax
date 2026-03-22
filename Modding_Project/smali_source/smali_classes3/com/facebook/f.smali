.class public final Lcom/facebook/f;
.super Ljava/lang/Object;
.source "AccessTokenManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/f$a;,
        Lcom/facebook/f$b;,
        Lcom/facebook/f$c;,
        Lcom/facebook/f$d;,
        Lcom/facebook/f$e;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final f:Lcom/facebook/f$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static g:Lcom/facebook/f;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private final a:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lcom/facebook/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Lcom/facebook/AccessToken;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/f$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/f;->f:Lcom/facebook/f$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Lcom/facebook/a;)V
    .locals 2
    .param p1    # Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "localBroadcastManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "accessTokenCache"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/facebook/f;->a:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/facebook/f;->b:Lcom/facebook/a;

    .line 17
    .line 18
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/facebook/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    new-instance p1, Ljava/util/Date;

    .line 27
    .line 28
    const-wide/16 v0, 0x0

    .line 29
    .line 30
    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/facebook/f;->e:Ljava/util/Date;

    .line 34
    .line 35
    return-void
.end method

.method public static synthetic a(Lcom/facebook/f$d;Lcom/facebook/AccessToken;Lcom/facebook/AccessToken$a;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/facebook/f;Lcom/facebook/a0;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Lcom/facebook/f;->p(Lcom/facebook/f$d;Lcom/facebook/AccessToken;Lcom/facebook/AccessToken$a;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/facebook/f;Lcom/facebook/a0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/facebook/f$d;Lcom/facebook/b0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/facebook/f;->o(Lcom/facebook/f$d;Lcom/facebook/b0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/facebook/f;Lcom/facebook/AccessToken$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/facebook/f;->l(Lcom/facebook/f;Lcom/facebook/AccessToken$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/facebook/b0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/f;->n(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/facebook/b0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic e()Lcom/facebook/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/f;->g:Lcom/facebook/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic f(Lcom/facebook/f;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/facebook/f;->g:Lcom/facebook/f;

    .line 2
    .line 3
    return-void
.end method

.method private static final l(Lcom/facebook/f;Lcom/facebook/AccessToken$a;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/facebook/f;->m(Lcom/facebook/AccessToken$a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final m(Lcom/facebook/AccessToken$a;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/facebook/f;->i()Lcom/facebook/AccessToken;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    if-nez v2, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/facebook/FacebookException;

    .line 10
    .line 11
    const-string v1, "No current access token to refresh"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v0}, Lcom/facebook/AccessToken$a;->a(Lcom/facebook/FacebookException;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/facebook/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    new-instance v0, Lcom/facebook/FacebookException;

    .line 33
    .line 34
    const-string v1, "Refresh already in progress"

    .line 35
    .line 36
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, v0}, Lcom/facebook/AccessToken$a;->a(Lcom/facebook/FacebookException;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    return-void

    .line 43
    :cond_3
    new-instance v0, Ljava/util/Date;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/facebook/f;->e:Ljava/util/Date;

    .line 49
    .line 50
    new-instance v5, Ljava/util/HashSet;

    .line 51
    .line 52
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v6, Ljava/util/HashSet;

    .line 56
    .line 57
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 58
    .line 59
    .line 60
    new-instance v7, Ljava/util/HashSet;

    .line 61
    .line 62
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 63
    .line 64
    .line 65
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    .line 67
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 68
    .line 69
    .line 70
    new-instance v1, Lcom/facebook/f$d;

    .line 71
    .line 72
    invoke-direct {v1}, Lcom/facebook/f$d;-><init>()V

    .line 73
    .line 74
    .line 75
    new-instance v9, Lcom/facebook/a0;

    .line 76
    .line 77
    sget-object v0, Lcom/facebook/f;->f:Lcom/facebook/f$a;

    .line 78
    .line 79
    new-instance v3, Lcom/facebook/c;

    .line 80
    .line 81
    invoke-direct {v3, v4, v5, v6, v7}, Lcom/facebook/c;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v2, v3}, Lcom/facebook/f$a;->b(Lcom/facebook/f$a;Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    new-instance v8, Lcom/facebook/d;

    .line 89
    .line 90
    invoke-direct {v8, v1}, Lcom/facebook/d;-><init>(Lcom/facebook/f$d;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v2, v8}, Lcom/facebook/f$a;->a(Lcom/facebook/f$a;Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    filled-new-array {v3, v0}, [Lcom/facebook/GraphRequest;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-direct {v9, v0}, Lcom/facebook/a0;-><init>([Lcom/facebook/GraphRequest;)V

    .line 102
    .line 103
    .line 104
    new-instance v10, Lcom/facebook/e;

    .line 105
    .line 106
    move-object v0, v10

    .line 107
    move-object v3, p1

    .line 108
    move-object v8, p0

    .line 109
    invoke-direct/range {v0 .. v8}, Lcom/facebook/e;-><init>(Lcom/facebook/f$d;Lcom/facebook/AccessToken;Lcom/facebook/AccessToken$a;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/facebook/f;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v9, v10}, Lcom/facebook/a0;->d(Lcom/facebook/a0$a;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v9}, Lcom/facebook/a0;->h()Lcom/facebook/z;

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method private static final n(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/facebook/b0;)V
    .locals 6

    .line 1
    const-string v0, "$permissionsCallSucceeded"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$permissions"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "$declinedPermissions"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "$expiredPermissions"

    .line 17
    .line 18
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "response"

    .line 22
    .line 23
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p4}, Lcom/facebook/b0;->d()Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    move-result-object p4

    .line 30
    if-nez p4, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    const-string v0, "data"

    .line 34
    .line 35
    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 36
    .line 37
    .line 38
    move-result-object p4

    .line 39
    if-nez p4, :cond_1

    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    const/4 v0, 0x1

    .line 43
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    const/4 v0, 0x0

    .line 51
    :goto_0
    if-ge v0, p0, :cond_a

    .line 52
    .line 53
    invoke-virtual {p4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-nez v1, :cond_2

    .line 58
    .line 59
    goto/16 :goto_2

    .line 60
    .line 61
    :cond_2
    const-string v2, "permission"

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const-string v3, "status"

    .line 68
    .line 69
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v2}, Lcom/facebook/internal/u0;->d0(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-nez v4, :cond_9

    .line 78
    .line 79
    invoke-static {v1}, Lcom/facebook/internal/u0;->d0(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-nez v4, :cond_9

    .line 84
    .line 85
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 89
    .line 90
    const-string v5, "US"

    .line 91
    .line 92
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const-string v4, "this as java.lang.String).toLowerCase(locale)"

    .line 100
    .line 101
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    const v4, -0x4e0958db

    .line 112
    .line 113
    .line 114
    if-eq v3, v4, :cond_6

    .line 115
    .line 116
    const v4, 0x10b4f6bb

    .line 117
    .line 118
    .line 119
    if-eq v3, v4, :cond_5

    .line 120
    .line 121
    const v4, 0x21ddfc2e

    .line 122
    .line 123
    .line 124
    if-eq v3, v4, :cond_3

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    const-string v3, "declined"

    .line 128
    .line 129
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-nez v3, :cond_4

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_5
    const-string v3, "granted"

    .line 141
    .line 142
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-eqz v3, :cond_7

    .line 147
    .line 148
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_6
    const-string v3, "expired"

    .line 153
    .line 154
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-nez v3, :cond_8

    .line 159
    .line 160
    :cond_7
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    const-string v3, "Unexpected status: "

    .line 166
    .line 167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    const-string v2, "AccessTokenManager"

    .line 178
    .line 179
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_8
    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    :cond_9
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_a
    return-void
.end method

.method private static final o(Lcom/facebook/f$d;Lcom/facebook/b0;)V
    .locals 2

    .line 1
    const-string v0, "$refreshResult"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "response"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/facebook/b0;->d()Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const-string v0, "access_token"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Lcom/facebook/f$d;->f(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "expires_at"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p0, v0}, Lcom/facebook/f$d;->h(I)V

    .line 34
    .line 35
    .line 36
    const-string v0, "expires_in"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {p0, v0}, Lcom/facebook/f$d;->i(I)V

    .line 43
    .line 44
    .line 45
    const-string v0, "data_access_expiration_time"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Lcom/facebook/f$d;->g(Ljava/lang/Long;)V

    .line 56
    .line 57
    .line 58
    const-string v0, "graph_domain"

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p0, p1}, Lcom/facebook/f$d;->j(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method private static final p(Lcom/facebook/f$d;Lcom/facebook/AccessToken;Lcom/facebook/AccessToken$a;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/facebook/f;Lcom/facebook/a0;)V
    .locals 29

    .line 1
    move-object/from16 v1, p2

    .line 2
    .line 3
    move-object/from16 v2, p7

    .line 4
    .line 5
    const-string v0, "$refreshResult"

    .line 6
    .line 7
    move-object/from16 v3, p0

    .line 8
    .line 9
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "$permissionsCallSucceeded"

    .line 13
    .line 14
    move-object/from16 v4, p3

    .line 15
    .line 16
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "$permissions"

    .line 20
    .line 21
    move-object/from16 v5, p4

    .line 22
    .line 23
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "$declinedPermissions"

    .line 27
    .line 28
    move-object/from16 v6, p5

    .line 29
    .line 30
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "$expiredPermissions"

    .line 34
    .line 35
    move-object/from16 v7, p6

    .line 36
    .line 37
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "this$0"

    .line 41
    .line 42
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v0, "it"

    .line 46
    .line 47
    move-object/from16 v8, p8

    .line 48
    .line 49
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/f$d;->a()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/f$d;->c()I

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/f$d;->b()Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/f$d;->e()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    const/4 v11, 0x0

    .line 69
    :try_start_0
    sget-object v13, Lcom/facebook/f;->f:Lcom/facebook/f$a;

    .line 70
    .line 71
    invoke-virtual {v13}, Lcom/facebook/f$a;->e()Lcom/facebook/f;

    .line 72
    .line 73
    .line 74
    move-result-object v14

    .line 75
    invoke-virtual {v14}, Lcom/facebook/f;->i()Lcom/facebook/AccessToken;

    .line 76
    .line 77
    .line 78
    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    if-eqz v14, :cond_d

    .line 80
    .line 81
    :try_start_1
    invoke-virtual {v13}, Lcom/facebook/f$a;->e()Lcom/facebook/f;

    .line 82
    .line 83
    .line 84
    move-result-object v14

    .line 85
    invoke-virtual {v14}, Lcom/facebook/f;->i()Lcom/facebook/AccessToken;

    .line 86
    .line 87
    .line 88
    move-result-object v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    if-eqz v14, :cond_0

    .line 90
    .line 91
    :try_start_2
    invoke-virtual {v14}, Lcom/facebook/AccessToken;->n()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    goto :goto_1

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    move v3, v11

    .line 98
    :goto_0
    const/4 v12, 0x0

    .line 99
    goto/16 :goto_a

    .line 100
    .line 101
    :cond_0
    const/4 v14, 0x0

    .line 102
    :goto_1
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/AccessToken;->n()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v15

    .line 106
    if-eq v14, v15, :cond_1

    .line 107
    .line 108
    goto/16 :goto_9

    .line 109
    .line 110
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 111
    .line 112
    .line 113
    move-result v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 114
    if-nez v14, :cond_3

    .line 115
    .line 116
    if-nez v0, :cond_3

    .line 117
    .line 118
    if-nez v8, :cond_3

    .line 119
    .line 120
    if-eqz v1, :cond_2

    .line 121
    .line 122
    :try_start_4
    new-instance v0, Lcom/facebook/FacebookException;

    .line 123
    .line 124
    const-string v3, "Failed to refresh access token"

    .line 125
    .line 126
    invoke-direct {v0, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-interface {v1, v0}, Lcom/facebook/AccessToken$a;->a(Lcom/facebook/FacebookException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 130
    .line 131
    .line 132
    :cond_2
    iget-object v0, v2, Lcom/facebook/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 133
    .line 134
    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_3
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/AccessToken;->g()Ljava/util/Date;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/f$d;->c()I

    .line 143
    .line 144
    .line 145
    move-result v14

    .line 146
    const-wide/16 v15, 0x3e8

    .line 147
    .line 148
    if-eqz v14, :cond_5

    .line 149
    .line 150
    new-instance v8, Ljava/util/Date;

    .line 151
    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/f$d;->c()I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    int-to-long v11, v3

    .line 157
    mul-long/2addr v11, v15

    .line 158
    invoke-direct {v8, v11, v12}, Ljava/util/Date;-><init>(J)V

    .line 159
    .line 160
    .line 161
    :cond_4
    :goto_2
    move-object/from16 v25, v8

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :catchall_1
    move-exception v0

    .line 165
    const/4 v3, 0x0

    .line 166
    goto :goto_0

    .line 167
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/f$d;->d()I

    .line 168
    .line 169
    .line 170
    move-result v11

    .line 171
    if-eqz v11, :cond_4

    .line 172
    .line 173
    new-instance v8, Ljava/util/Date;

    .line 174
    .line 175
    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    .line 179
    .line 180
    .line 181
    move-result-wide v11

    .line 182
    new-instance v8, Ljava/util/Date;

    .line 183
    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/f$d;->d()I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    int-to-long v3, v3

    .line 189
    mul-long/2addr v3, v15

    .line 190
    add-long/2addr v3, v11

    .line 191
    invoke-direct {v8, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :goto_3
    new-instance v3, Lcom/facebook/AccessToken;

    .line 196
    .line 197
    if-nez v0, :cond_6

    .line 198
    .line 199
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/AccessToken;->m()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    :cond_6
    move-object/from16 v18, v0

    .line 204
    .line 205
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/AccessToken;->c()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v19

    .line 209
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/AccessToken;->n()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v20

    .line 213
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_7

    .line 218
    .line 219
    move-object v0, v5

    .line 220
    goto :goto_4

    .line 221
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/AccessToken;->k()Ljava/util/Set;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    :goto_4
    move-object/from16 v21, v0

    .line 226
    .line 227
    check-cast v21, Ljava/util/Collection;

    .line 228
    .line 229
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-eqz v0, :cond_8

    .line 234
    .line 235
    move-object v0, v6

    .line 236
    goto :goto_5

    .line 237
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/AccessToken;->e()Ljava/util/Set;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    :goto_5
    move-object/from16 v22, v0

    .line 242
    .line 243
    check-cast v22, Ljava/util/Collection;

    .line 244
    .line 245
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-eqz v0, :cond_9

    .line 250
    .line 251
    goto :goto_6

    .line 252
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/AccessToken;->f()Ljava/util/Set;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    move-object v7, v0

    .line 257
    :goto_6
    move-object/from16 v23, v7

    .line 258
    .line 259
    check-cast v23, Ljava/util/Collection;

    .line 260
    .line 261
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/AccessToken;->l()Lcom/facebook/AccessTokenSource;

    .line 262
    .line 263
    .line 264
    move-result-object v24

    .line 265
    new-instance v26, Ljava/util/Date;

    .line 266
    .line 267
    invoke-direct/range {v26 .. v26}, Ljava/util/Date;-><init>()V

    .line 268
    .line 269
    .line 270
    if-eqz v9, :cond_a

    .line 271
    .line 272
    new-instance v0, Ljava/util/Date;

    .line 273
    .line 274
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 275
    .line 276
    .line 277
    move-result-wide v4

    .line 278
    mul-long/2addr v4, v15

    .line 279
    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 280
    .line 281
    .line 282
    :goto_7
    move-object/from16 v27, v0

    .line 283
    .line 284
    goto :goto_8

    .line 285
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/AccessToken;->d()Ljava/util/Date;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    goto :goto_7

    .line 290
    :goto_8
    if-nez v10, :cond_b

    .line 291
    .line 292
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/AccessToken;->h()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v10

    .line 296
    :cond_b
    move-object/from16 v28, v10

    .line 297
    .line 298
    move-object/from16 v17, v3

    .line 299
    .line 300
    invoke-direct/range {v17 .. v28}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 301
    .line 302
    .line 303
    :try_start_6
    invoke-virtual {v13}, Lcom/facebook/f$a;->e()Lcom/facebook/f;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-virtual {v0, v3}, Lcom/facebook/f;->r(Lcom/facebook/AccessToken;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 308
    .line 309
    .line 310
    iget-object v0, v2, Lcom/facebook/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 311
    .line 312
    const/4 v2, 0x0

    .line 313
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 314
    .line 315
    .line 316
    if-eqz v1, :cond_c

    .line 317
    .line 318
    invoke-interface {v1, v3}, Lcom/facebook/AccessToken$a;->b(Lcom/facebook/AccessToken;)V

    .line 319
    .line 320
    .line 321
    :cond_c
    return-void

    .line 322
    :catchall_2
    move-exception v0

    .line 323
    move-object v12, v3

    .line 324
    const/4 v3, 0x0

    .line 325
    goto :goto_a

    .line 326
    :cond_d
    :goto_9
    if-eqz v1, :cond_e

    .line 327
    .line 328
    :try_start_7
    new-instance v0, Lcom/facebook/FacebookException;

    .line 329
    .line 330
    const-string v3, "No current access token to refresh"

    .line 331
    .line 332
    invoke-direct {v0, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-interface {v1, v0}, Lcom/facebook/AccessToken$a;->a(Lcom/facebook/FacebookException;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 336
    .line 337
    .line 338
    :cond_e
    iget-object v0, v2, Lcom/facebook/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 339
    .line 340
    const/4 v3, 0x0

    .line 341
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 342
    .line 343
    .line 344
    return-void

    .line 345
    :goto_a
    iget-object v2, v2, Lcom/facebook/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 346
    .line 347
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 348
    .line 349
    .line 350
    if-eqz v1, :cond_f

    .line 351
    .line 352
    if-eqz v12, :cond_f

    .line 353
    .line 354
    invoke-interface {v1, v12}, Lcom/facebook/AccessToken$a;->b(Lcom/facebook/AccessToken;)V

    .line 355
    .line 356
    .line 357
    :cond_f
    throw v0
.end method

.method private final q(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-class v2, Lcom/facebook/CurrentAccessTokenExpirationBroadcastReceiver;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    const-string v1, "com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN"

    .line 18
    .line 19
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    const-string p1, "com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN"

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/facebook/f;->a:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private final s(Lcom/facebook/AccessToken;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/f;->c:Lcom/facebook/AccessToken;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/facebook/f;->c:Lcom/facebook/AccessToken;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/facebook/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/util/Date;

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/facebook/f;->e:Ljava/util/Date;

    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p2, p0, Lcom/facebook/f;->b:Lcom/facebook/a;

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Lcom/facebook/a;->g(Lcom/facebook/AccessToken;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p2, p0, Lcom/facebook/f;->b:Lcom/facebook/a;

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/facebook/a;->a()V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-static {p2}, Lcom/facebook/internal/u0;->i(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    invoke-static {v0, p1}, Lcom/facebook/internal/u0;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-nez p2, :cond_2

    .line 47
    .line 48
    invoke-direct {p0, v0, p1}, Lcom/facebook/f;->q(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lcom/facebook/f;->t()V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method private final t()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/facebook/AccessToken;->l:Lcom/facebook/AccessToken$c;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/facebook/AccessToken$c;->e()Lcom/facebook/AccessToken;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "alarm"

    .line 12
    .line 13
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroid/app/AlarmManager;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/facebook/AccessToken$c;->g()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->g()Ljava/util/Date;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    :goto_0
    if-eqz v1, :cond_2

    .line 34
    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    new-instance v1, Landroid/content/Intent;

    .line 39
    .line 40
    const-class v4, Lcom/facebook/CurrentAccessTokenExpirationBroadcastReceiver;

    .line 41
    .line 42
    invoke-direct {v1, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .line 44
    .line 45
    const-string v4, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    .line 46
    .line 47
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    const/high16 v5, 0x4000000

    .line 52
    .line 53
    invoke-static {v0, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :try_start_0
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->g()Ljava/util/Date;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 62
    .line 63
    .line 64
    move-result-wide v1

    .line 65
    const/4 v4, 0x1

    .line 66
    invoke-virtual {v3, v4, v1, v2, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method private final u()Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/facebook/f;->i()Lcom/facebook/AccessToken;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    new-instance v2, Ljava/util/Date;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->l()Lcom/facebook/AccessTokenSource;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v4}, Lcom/facebook/AccessTokenSource;->canExtendToken()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    iget-object v4, p0, Lcom/facebook/f;->e:Ljava/util/Date;

    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    sub-long v4, v2, v4

    .line 35
    .line 36
    const-wide/32 v6, 0x36ee80

    .line 37
    .line 38
    .line 39
    cmp-long v4, v4, v6

    .line 40
    .line 41
    if-lez v4, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->j()Ljava/util/Date;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    sub-long/2addr v2, v4

    .line 52
    const-wide/32 v4, 0x5265c00

    .line 53
    .line 54
    .line 55
    cmp-long v0, v2, v4

    .line 56
    .line 57
    if-lez v0, :cond_1

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    :cond_1
    return v1
.end method


# virtual methods
.method public final g()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/facebook/f;->i()Lcom/facebook/AccessToken;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/facebook/f;->i()Lcom/facebook/AccessToken;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/facebook/f;->q(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final h()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/facebook/f;->u()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lcom/facebook/f;->k(Lcom/facebook/AccessToken$a;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final i()Lcom/facebook/AccessToken;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/f;->c:Lcom/facebook/AccessToken;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/f;->b:Lcom/facebook/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/a;->f()Lcom/facebook/AccessToken;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v0, v1}, Lcom/facebook/f;->s(Lcom/facebook/AccessToken;Z)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    return v1
.end method

.method public final k(Lcom/facebook/AccessToken$a;)V
    .locals 2
    .param p1    # Lcom/facebook/AccessToken$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/facebook/f;->m(Lcom/facebook/AccessToken$a;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 20
    .line 21
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/facebook/b;

    .line 29
    .line 30
    invoke-direct {v1, p0, p1}, Lcom/facebook/b;-><init>(Lcom/facebook/f;Lcom/facebook/AccessToken$a;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method public final r(Lcom/facebook/AccessToken;)V
    .locals 1
    .param p1    # Lcom/facebook/AccessToken;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/facebook/f;->s(Lcom/facebook/AccessToken;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
