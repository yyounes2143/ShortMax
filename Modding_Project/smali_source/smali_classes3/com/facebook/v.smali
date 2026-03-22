.class public final Lcom/facebook/v;
.super Ljava/lang/Object;
.source "FacebookSdk.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/v$a;,
        Lcom/facebook/v$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFacebookSdk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FacebookSdk.kt\ncom/facebook/FacebookSdk\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1142:1\n1#2:1143\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/facebook/v;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/facebook/LoggingBehavior;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static d:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static volatile e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static volatile f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static volatile g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static volatile h:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static i:Ljava/util/concurrent/atomic/AtomicLong;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static volatile j:Z

.field private static k:Z

.field private static l:Lcom/facebook/internal/h0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/internal/h0<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Landroid/content/Context;

.field private static n:I

.field private static final o:Ljava/util/concurrent/locks/ReentrantLock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static p:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static q:Z

.field public static r:Z

.field public static s:Z

.field private static final t:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static volatile u:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static volatile v:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static w:Lcom/facebook/v$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/facebook/v;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/v;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/v;->a:Lcom/facebook/v;

    .line 7
    .line 8
    const-class v0, Lcom/facebook/v;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/facebook/v;->b:Ljava/lang/String;

    .line 15
    .line 16
    sget-object v0, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    .line 17
    .line 18
    filled-new-array {v0}, [Lcom/facebook/LoggingBehavior;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lkotlin/collections/y0;->g([Ljava/lang/Object;)Ljava/util/HashSet;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/facebook/v;->c:Ljava/util/HashSet;

    .line 27
    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 29
    .line 30
    const-wide/32 v1, 0x10000

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lcom/facebook/v;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 37
    .line 38
    const v0, 0xface

    .line 39
    .line 40
    .line 41
    sput v0, Lcom/facebook/v;->n:I

    .line 42
    .line 43
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lcom/facebook/v;->o:Ljava/util/concurrent/locks/ReentrantLock;

    .line 49
    .line 50
    invoke-static {}, Lcom/facebook/internal/o0;->a()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lcom/facebook/v;->p:Ljava/lang/String;

    .line 55
    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 60
    .line 61
    .line 62
    sput-object v0, Lcom/facebook/v;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    .line 64
    const-string v0, "instagram.com"

    .line 65
    .line 66
    sput-object v0, Lcom/facebook/v;->u:Ljava/lang/String;

    .line 67
    .line 68
    const-string v0, "facebook.com"

    .line 69
    .line 70
    sput-object v0, Lcom/facebook/v;->v:Ljava/lang/String;

    .line 71
    .line 72
    new-instance v0, Lcom/facebook/m;

    .line 73
    .line 74
    invoke-direct {v0}, Lcom/facebook/m;-><init>()V

    .line 75
    .line 76
    .line 77
    sput-object v0, Lcom/facebook/v;->w:Lcom/facebook/v$a;

    .line 78
    .line 79
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

.method public static final A(Landroid/content/Context;)Z
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/facebook/internal/v0;->l()V

    .line 7
    .line 8
    .line 9
    const-string v0, "com.facebook.sdk.appEventPreferences"

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v0, "limitEventUsage"

    .line 17
    .line 18
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public static final B()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/facebook/internal/v0;->l()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/facebook/v;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    return-wide v0
.end method

.method public static final C()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "18.1.3"

    .line 2
    .line 3
    return-object v0
.end method

.method private static final D(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/GraphRequest;->n:Lcom/facebook/GraphRequest$c;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/GraphRequest$c;->A(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final E()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/facebook/v;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final declared-synchronized F()Z
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    const-class v0, Lcom/facebook/v;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/facebook/v;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v1
.end method

.method public static final G()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/v;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static final H()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/facebook/v;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final I(Lcom/facebook/LoggingBehavior;)Z
    .locals 2
    .param p0    # Lcom/facebook/LoggingBehavior;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "behavior"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/facebook/v;->c:Ljava/util/HashSet;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-static {}, Lcom/facebook/v;->E()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    monitor-exit v0

    .line 27
    return p0

    .line 28
    :goto_1
    monitor-exit v0

    .line 29
    throw p0
.end method

.method public static final J(Landroid/content/Context;)V
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/16 v1, 0x80

    .line 13
    .line 14
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    const-string v0, "try {\n                co\u2026     return\n            }"

    .line 19
    .line 20
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    sget-object v0, Lcom/facebook/v;->e:Ljava/lang/String;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    if-nez v0, :cond_5

    .line 32
    .line 33
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 34
    .line 35
    const-string v2, "com.facebook.sdk.ApplicationId"

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    instance-of v2, v0, Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    check-cast v0, Ljava/lang/String;

    .line 46
    .line 47
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 48
    .line 49
    const-string v3, "ROOT"

    .line 50
    .line 51
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-string v3, "this as java.lang.String).toLowerCase(locale)"

    .line 59
    .line 60
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v3, "fb"

    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    const/4 v5, 0x2

    .line 67
    invoke-static {v2, v3, v1, v5, v4}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v2, "this as java.lang.String).substring(startIndex)"

    .line 78
    .line 79
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    sput-object v0, Lcom/facebook/v;->e:Ljava/lang/String;

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    sput-object v0, Lcom/facebook/v;->e:Ljava/lang/String;

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    instance-of v0, v0, Ljava/lang/Number;

    .line 89
    .line 90
    if-nez v0, :cond_4

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    new-instance p0, Lcom/facebook/FacebookException;

    .line 94
    .line 95
    const-string v0, "App Ids cannot be directly placed in the manifest.They must be prefixed by \'fb\' or be placed in the string resource file."

    .line 96
    .line 97
    invoke-direct {p0, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p0

    .line 101
    :cond_5
    :goto_0
    sget-object v0, Lcom/facebook/v;->f:Ljava/lang/String;

    .line 102
    .line 103
    if-nez v0, :cond_6

    .line 104
    .line 105
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 106
    .line 107
    const-string v2, "com.facebook.sdk.ApplicationName"

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    sput-object v0, Lcom/facebook/v;->f:Ljava/lang/String;

    .line 114
    .line 115
    :cond_6
    sget-object v0, Lcom/facebook/v;->g:Ljava/lang/String;

    .line 116
    .line 117
    if-nez v0, :cond_7

    .line 118
    .line 119
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 120
    .line 121
    const-string v2, "com.facebook.sdk.ClientToken"

    .line 122
    .line 123
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    sput-object v0, Lcom/facebook/v;->g:Ljava/lang/String;

    .line 128
    .line 129
    :cond_7
    sget v0, Lcom/facebook/v;->n:I

    .line 130
    .line 131
    const v2, 0xface

    .line 132
    .line 133
    .line 134
    if-ne v0, v2, :cond_8

    .line 135
    .line 136
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 137
    .line 138
    const-string v3, "com.facebook.sdk.CallbackOffset"

    .line 139
    .line 140
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    sput v0, Lcom/facebook/v;->n:I

    .line 145
    .line 146
    :cond_8
    sget-object v0, Lcom/facebook/v;->h:Ljava/lang/Boolean;

    .line 147
    .line 148
    if-nez v0, :cond_9

    .line 149
    .line 150
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 151
    .line 152
    const-string v0, "com.facebook.sdk.CodelessDebugLogEnabled"

    .line 153
    .line 154
    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 155
    .line 156
    .line 157
    move-result p0

    .line 158
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    sput-object p0, Lcom/facebook/v;->h:Ljava/lang/Boolean;

    .line 163
    .line 164
    :catch_0
    :cond_9
    return-void
.end method

.method private final K(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

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
    sget-object v0, Lcom/facebook/internal/b;->f:Lcom/facebook/internal/b$a;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/facebook/internal/b$a;->e(Landroid/content/Context;)Lcom/facebook/internal/b;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "com.facebook.sdk.attributionTracking"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v3, "ping"

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-wide/16 v3, 0x0

    .line 39
    .line 40
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 41
    .line 42
    .line 43
    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :try_start_1
    sget-object v7, Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;->MOBILE_INSTALL_EVENT:Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;

    .line 45
    .line 46
    sget-object v8, Lcom/facebook/appevents/AppEventsLogger;->b:Lcom/facebook/appevents/AppEventsLogger$a;

    .line 47
    .line 48
    invoke-virtual {v8, p1}, Lcom/facebook/appevents/AppEventsLogger$a;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    invoke-static {p1}, Lcom/facebook/v;->A(Landroid/content/Context;)Z

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    invoke-static {v7, v0, v8, v9, p1}, Lcom/facebook/appevents/internal/AppEventsLoggerUtility;->a(Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;Lcom/facebook/internal/b;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :try_start_2
    sget-object v0, Lcom/facebook/appevents/o;->c:Lcom/facebook/appevents/o$a;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/facebook/appevents/o$a;->l()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    const-string v7, "install_referrer"

    .line 69
    .line 70
    invoke-virtual {p1, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    goto :goto_3

    .line 76
    :catch_0
    move-exception p1

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    :goto_0
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 79
    .line 80
    const-string v0, "%s/activities"

    .line 81
    .line 82
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    const/4 v7, 0x1

    .line 87
    invoke-static {p2, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    const-string v0, "format(format, *args)"

    .line 96
    .line 97
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    sget-object v0, Lcom/facebook/v;->w:Lcom/facebook/v$a;

    .line 101
    .line 102
    const/4 v7, 0x0

    .line 103
    invoke-interface {v0, v7, p2, p1, v7}, Lcom/facebook/v$a;->a(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    cmp-long p2, v5, v3

    .line 108
    .line 109
    if-nez p2, :cond_2

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->k()Lcom/facebook/b0;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lcom/facebook/b0;->b()Lcom/facebook/FacebookRequestError;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-nez p1, :cond_2

    .line 120
    .line 121
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 126
    .line 127
    .line 128
    move-result-wide v0

    .line 129
    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 130
    .line 131
    .line 132
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 133
    .line 134
    .line 135
    sget-object p1, Lcom/facebook/internal/i0;->e:Lcom/facebook/internal/i0$a;

    .line 136
    .line 137
    sget-object p2, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    .line 138
    .line 139
    sget-object v0, Lcom/facebook/v;->b:Ljava/lang/String;

    .line 140
    .line 141
    const-string v1, "TAG"

    .line 142
    .line 143
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const-string v1, "MOBILE_APP_INSTALL has been logged"

    .line 147
    .line 148
    invoke-virtual {p1, p2, v0, v1}, Lcom/facebook/internal/i0$a;->b(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :catch_1
    move-exception p1

    .line 153
    new-instance p2, Lcom/facebook/FacebookException;

    .line 154
    .line 155
    const-string v0, "An error occurred while publishing install."

    .line 156
    .line 157
    invoke-direct {p2, v0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    .line 159
    .line 160
    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    :goto_1
    :try_start_3
    const-string p2, "Facebook-publish"

    .line 162
    .line 163
    invoke-static {p2, p1}, Lcom/facebook/internal/u0;->j0(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    .line 165
    .line 166
    :cond_2
    :goto_2
    return-void

    .line 167
    :goto_3
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    return-void
.end method

.method public static final L(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x3
    .end annotation

    .line 1
    const-class v0, Lcom/facebook/v;

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
    const-string v1, "context"

    .line 11
    .line 12
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "applicationId"

    .line 16
    .line 17
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-nez p0, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    const-string v1, "app_events_killswitch"

    .line 28
    .line 29
    invoke-static {}, Lcom/facebook/v;->m()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-static {v1, v2, v3}, Lcom/facebook/internal/o;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    invoke-static {}, Lcom/facebook/v;->u()Ljava/util/concurrent/Executor;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    new-instance v2, Lcom/facebook/u;

    .line 45
    .line 46
    invoke-direct {v2, p0, p1}, Lcom/facebook/u;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    :goto_0
    sget-object p0, Lcom/facebook/internal/FeatureManager$Feature;->OnDeviceEventProcessing:Lcom/facebook/internal/FeatureManager$Feature;

    .line 56
    .line 57
    invoke-static {p0}, Lcom/facebook/internal/FeatureManager;->g(Lcom/facebook/internal/FeatureManager$Feature;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_3

    .line 62
    .line 63
    invoke-static {}, Lcom/facebook/appevents/ondeviceprocessing/a;->d()Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-eqz p0, :cond_3

    .line 68
    .line 69
    const-string p0, "com.facebook.sdk.attributionTracking"

    .line 70
    .line 71
    invoke-static {p1, p0}, Lcom/facebook/appevents/ondeviceprocessing/a;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    .line 74
    :cond_3
    return-void

    .line 75
    :goto_1
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method private static final M(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "$applicationContext"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$applicationId"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/facebook/v;->a:Lcom/facebook/v;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lcom/facebook/v;->K(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static final declared-synchronized N(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    const-class v0, Lcom/facebook/v;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "applicationContext"

    .line 5
    .line 6
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p0, v1}, Lcom/facebook/v;->O(Landroid/content/Context;Lcom/facebook/v$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw p0
.end method

.method public static final declared-synchronized O(Landroid/content/Context;Lcom/facebook/v$b;)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/facebook/v$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    const-class v0, Lcom/facebook/v;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "applicationContext"

    .line 5
    .line 6
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lcom/facebook/v;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Lcom/facebook/v$b;->onInitialized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto/16 :goto_3

    .line 25
    .line 26
    :cond_0
    :goto_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :cond_1
    const/4 v2, 0x0

    .line 29
    :try_start_1
    invoke-static {p0, v2}, Lcom/facebook/internal/v0;->e(Landroid/content/Context;Z)V

    .line 30
    .line 31
    .line 32
    invoke-static {p0, v2}, Lcom/facebook/internal/v0;->f(Landroid/content/Context;Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v3, "applicationContext.applicationContext"

    .line 40
    .line 41
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sput-object v2, Lcom/facebook/v;->m:Landroid/content/Context;

    .line 45
    .line 46
    sget-object v2, Lcom/facebook/appevents/AppEventsLogger;->b:Lcom/facebook/appevents/AppEventsLogger$a;

    .line 47
    .line 48
    invoke-virtual {v2, p0}, Lcom/facebook/appevents/AppEventsLogger$a;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    sget-object p0, Lcom/facebook/v;->m:Landroid/content/Context;

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    if-nez p0, :cond_2

    .line 55
    .line 56
    const-string p0, "applicationContext"

    .line 57
    .line 58
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    move-object p0, v2

    .line 62
    :cond_2
    invoke-static {p0}, Lcom/facebook/v;->J(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    sget-object p0, Lcom/facebook/v;->e:Ljava/lang/String;

    .line 66
    .line 67
    if-eqz p0, :cond_b

    .line 68
    .line 69
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_b

    .line 74
    .line 75
    sget-object p0, Lcom/facebook/v;->g:Ljava/lang/String;

    .line 76
    .line 77
    if-eqz p0, :cond_a

    .line 78
    .line 79
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-eqz p0, :cond_a

    .line 84
    .line 85
    const/4 p0, 0x1

    .line 86
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lcom/facebook/v;->o()Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-eqz p0, :cond_3

    .line 94
    .line 95
    invoke-static {}, Lcom/facebook/v;->j()V

    .line 96
    .line 97
    .line 98
    :cond_3
    sget-object p0, Lcom/facebook/v;->m:Landroid/content/Context;

    .line 99
    .line 100
    if-nez p0, :cond_4

    .line 101
    .line 102
    const-string p0, "applicationContext"

    .line 103
    .line 104
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    move-object p0, v2

    .line 108
    :cond_4
    instance-of p0, p0, Landroid/app/Application;

    .line 109
    .line 110
    if-eqz p0, :cond_6

    .line 111
    .line 112
    invoke-static {}, Lcom/facebook/n0;->f()Z

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-eqz p0, :cond_6

    .line 117
    .line 118
    sget-object p0, Lcom/facebook/v;->m:Landroid/content/Context;

    .line 119
    .line 120
    if-nez p0, :cond_5

    .line 121
    .line 122
    const-string p0, "applicationContext"

    .line 123
    .line 124
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    move-object p0, v2

    .line 128
    :cond_5
    check-cast p0, Landroid/app/Application;

    .line 129
    .line 130
    sget-object v1, Lcom/facebook/v;->e:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {p0, v1}, La2/g;->z(Landroid/app/Application;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_6
    invoke-static {}, Lcom/facebook/appevents/iap/f;->i()V

    .line 137
    .line 138
    .line 139
    :goto_1
    sget-object p0, Lcom/facebook/appevents/internal/AppLinkManager;->b:Lcom/facebook/appevents/internal/AppLinkManager$a;

    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/facebook/appevents/internal/AppLinkManager$a;->a()Lcom/facebook/appevents/internal/AppLinkManager;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    if-eqz p0, :cond_8

    .line 146
    .line 147
    sget-object v1, Lcom/facebook/v;->m:Landroid/content/Context;

    .line 148
    .line 149
    if-nez v1, :cond_7

    .line 150
    .line 151
    const-string v1, "applicationContext"

    .line 152
    .line 153
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    move-object v1, v2

    .line 157
    :cond_7
    check-cast v1, Landroid/app/Application;

    .line 158
    .line 159
    invoke-virtual {p0, v1}, Lcom/facebook/appevents/internal/AppLinkManager;->i(Landroid/app/Application;)V

    .line 160
    .line 161
    .line 162
    :cond_8
    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->h()V

    .line 163
    .line 164
    .line 165
    invoke-static {}, Lcom/facebook/internal/l0;->z()V

    .line 166
    .line 167
    .line 168
    sget-object p0, Lcom/facebook/internal/BoltsMeasurementEventListener;->b:Lcom/facebook/internal/BoltsMeasurementEventListener$a;

    .line 169
    .line 170
    sget-object v1, Lcom/facebook/v;->m:Landroid/content/Context;

    .line 171
    .line 172
    if-nez v1, :cond_9

    .line 173
    .line 174
    const-string v1, "applicationContext"

    .line 175
    .line 176
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_9
    move-object v2, v1

    .line 181
    :goto_2
    invoke-virtual {p0, v2}, Lcom/facebook/internal/BoltsMeasurementEventListener$a;->a(Landroid/content/Context;)Lcom/facebook/internal/BoltsMeasurementEventListener;

    .line 182
    .line 183
    .line 184
    new-instance p0, Lcom/facebook/internal/h0;

    .line 185
    .line 186
    new-instance v1, Lcom/facebook/n;

    .line 187
    .line 188
    invoke-direct {v1}, Lcom/facebook/n;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-direct {p0, v1}, Lcom/facebook/internal/h0;-><init>(Ljava/util/concurrent/Callable;)V

    .line 192
    .line 193
    .line 194
    sput-object p0, Lcom/facebook/v;->l:Lcom/facebook/internal/h0;

    .line 195
    .line 196
    sget-object p0, Lcom/facebook/internal/FeatureManager$Feature;->Instrument:Lcom/facebook/internal/FeatureManager$Feature;

    .line 197
    .line 198
    new-instance v1, Lcom/facebook/o;

    .line 199
    .line 200
    invoke-direct {v1}, Lcom/facebook/o;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-static {p0, v1}, Lcom/facebook/internal/FeatureManager;->a(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$a;)V

    .line 204
    .line 205
    .line 206
    sget-object p0, Lcom/facebook/internal/FeatureManager$Feature;->AppEvents:Lcom/facebook/internal/FeatureManager$Feature;

    .line 207
    .line 208
    new-instance v1, Lcom/facebook/p;

    .line 209
    .line 210
    invoke-direct {v1}, Lcom/facebook/p;-><init>()V

    .line 211
    .line 212
    .line 213
    invoke-static {p0, v1}, Lcom/facebook/internal/FeatureManager;->a(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$a;)V

    .line 214
    .line 215
    .line 216
    sget-object p0, Lcom/facebook/internal/FeatureManager$Feature;->ChromeCustomTabsPrefetching:Lcom/facebook/internal/FeatureManager$Feature;

    .line 217
    .line 218
    new-instance v1, Lcom/facebook/q;

    .line 219
    .line 220
    invoke-direct {v1}, Lcom/facebook/q;-><init>()V

    .line 221
    .line 222
    .line 223
    invoke-static {p0, v1}, Lcom/facebook/internal/FeatureManager;->a(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$a;)V

    .line 224
    .line 225
    .line 226
    sget-object p0, Lcom/facebook/internal/FeatureManager$Feature;->IgnoreAppSwitchToLoggedOut:Lcom/facebook/internal/FeatureManager$Feature;

    .line 227
    .line 228
    new-instance v1, Lcom/facebook/r;

    .line 229
    .line 230
    invoke-direct {v1}, Lcom/facebook/r;-><init>()V

    .line 231
    .line 232
    .line 233
    invoke-static {p0, v1}, Lcom/facebook/internal/FeatureManager;->a(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$a;)V

    .line 234
    .line 235
    .line 236
    sget-object p0, Lcom/facebook/internal/FeatureManager$Feature;->BypassAppSwitch:Lcom/facebook/internal/FeatureManager$Feature;

    .line 237
    .line 238
    new-instance v1, Lcom/facebook/s;

    .line 239
    .line 240
    invoke-direct {v1}, Lcom/facebook/s;-><init>()V

    .line 241
    .line 242
    .line 243
    invoke-static {p0, v1}, Lcom/facebook/internal/FeatureManager;->a(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$a;)V

    .line 244
    .line 245
    .line 246
    new-instance p0, Ljava/util/concurrent/FutureTask;

    .line 247
    .line 248
    new-instance v1, Lcom/facebook/t;

    .line 249
    .line 250
    invoke-direct {v1, p1}, Lcom/facebook/t;-><init>(Lcom/facebook/v$b;)V

    .line 251
    .line 252
    .line 253
    invoke-direct {p0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 254
    .line 255
    .line 256
    invoke-static {}, Lcom/facebook/v;->u()Ljava/util/concurrent/Executor;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    .line 262
    .line 263
    monitor-exit v0

    .line 264
    return-void

    .line 265
    :cond_a
    :try_start_2
    new-instance p0, Lcom/facebook/FacebookException;

    .line 266
    .line 267
    const-string p1, "A valid Facebook app client token must be set in the AndroidManifest.xml or set by calling FacebookSdk.setClientToken before initializing the sdk."

    .line 268
    .line 269
    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    throw p0

    .line 273
    :cond_b
    new-instance p0, Lcom/facebook/FacebookException;

    .line 274
    .line 275
    const-string p1, "A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk."

    .line 276
    .line 277
    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    throw p0

    .line 281
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 282
    throw p0
.end method

.method private static final P()Ljava/io/File;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/v;->m:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "applicationContext"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method private static final Q(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Ll4/e;->d()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private static final R(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/facebook/appevents/f0;->a()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private static final S(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    sput-boolean p0, Lcom/facebook/v;->q:Z

    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private static final T(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    sput-boolean p0, Lcom/facebook/v;->r:Z

    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private static final U(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    sput-boolean p0, Lcom/facebook/v;->s:Z

    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private static final V(Lcom/facebook/v$b;)Ljava/lang/Void;
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/f;->f:Lcom/facebook/f$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/f$a;->e()Lcom/facebook/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/facebook/f;->j()Z

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/facebook/e0;->d:Lcom/facebook/e0$a;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/facebook/e0$a;->a()Lcom/facebook/e0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/facebook/e0;->d()Z

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/facebook/AccessToken;->l:Lcom/facebook/AccessToken$c;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/facebook/AccessToken$c;->g()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    sget-object v0, Lcom/facebook/Profile;->h:Lcom/facebook/Profile$b;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/facebook/Profile$b;->b()Lcom/facebook/Profile;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/facebook/Profile$b;->a()V

    .line 36
    .line 37
    .line 38
    :cond_0
    if-eqz p0, :cond_1

    .line 39
    .line 40
    invoke-interface {p0}, Lcom/facebook/v$b;->onInitialized()V

    .line 41
    .line 42
    .line 43
    :cond_1
    sget-object p0, Lcom/facebook/appevents/AppEventsLogger;->b:Lcom/facebook/appevents/AppEventsLogger$a;

    .line 44
    .line 45
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sget-object v1, Lcom/facebook/v;->e:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p0, v0, v1}, Lcom/facebook/appevents/AppEventsLogger$a;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/facebook/n0;->n()V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v1, "getApplicationContext().applicationContext"

    .line 66
    .line 67
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lcom/facebook/appevents/AppEventsLogger$a;->f(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0}, Lcom/facebook/appevents/AppEventsLogger;->a()V

    .line 75
    .line 76
    .line 77
    const/4 p0, 0x0

    .line 78
    return-object p0
.end method

.method public static final W(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/n0;->s(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/facebook/v;->j()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public static synthetic a(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/v;->S(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/v;->D(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/v;->T(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/facebook/v;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/facebook/v$b;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/v;->V(Lcom/facebook/v$b;)Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/v;->R(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/v;->Q(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/v;->U(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i()Ljava/io/File;
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/v;->P()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final j()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/facebook/v;->x:Z

    .line 3
    .line 4
    return-void
.end method

.method public static final k()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/n0;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static final l()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/internal/v0;->l()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/facebook/v;->m:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string v0, "applicationContext"

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :cond_0
    return-object v0
.end method

.method public static final m()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/internal/v0;->l()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/facebook/v;->e:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v0, Lcom/facebook/FacebookException;

    .line 10
    .line 11
    const-string v1, "A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk."

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method public static final n()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/internal/v0;->l()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/facebook/v;->f:Ljava/lang/String;

    .line 5
    .line 6
    return-object v0
.end method

.method public static final o()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/n0;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static final p()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/n0;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static final q()Ljava/io/File;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/internal/v0;->l()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/facebook/v;->l:Lcom/facebook/internal/h0;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string v0, "cacheDir"

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/internal/h0;->c()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/io/File;

    .line 19
    .line 20
    return-object v0
.end method

.method public static final r()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/internal/v0;->l()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/facebook/v;->n:I

    .line 5
    .line 6
    return v0
.end method

.method public static final s()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/internal/v0;->l()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/facebook/v;->g:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v0, Lcom/facebook/FacebookException;

    .line 10
    .line 11
    const-string v1, "A valid Facebook client token must be set in the AndroidManifest.xml or set by calling FacebookSdk.setClientToken before initializing the sdk. Visit https://developers.facebook.com/docs/android/getting-started#add-app_id for more information."

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method public static final t()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/n0;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static final u()Ljava/util/concurrent/Executor;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/v;->o:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v1, Lcom/facebook/v;->d:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    sput-object v1, Lcom/facebook/v;->d:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lcom/facebook/v;->d:Ljava/util/concurrent/Executor;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v1, "Required value was null."

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 36
    .line 37
    .line 38
    throw v1
.end method

.method public static final v()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/v;->v:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final w()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "fb.gg"

    .line 2
    .line 3
    return-object v0
.end method

.method public static final x()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/v;->b:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 4
    .line 5
    sget-object v1, Lcom/facebook/v;->p:Ljava/lang/String;

    .line 6
    .line 7
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "getGraphApiVersion: %s"

    .line 17
    .line 18
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "format(format, *args)"

    .line 23
    .line 24
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/facebook/internal/u0;->k0(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lcom/facebook/v;->p:Ljava/lang/String;

    .line 31
    .line 32
    return-object v0
.end method

.method public static final y()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/AccessToken;->l:Lcom/facebook/AccessToken$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/AccessToken$c;->e()Lcom/facebook/AccessToken;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->h()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-static {v0}, Lcom/facebook/internal/u0;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static final z()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/v;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
