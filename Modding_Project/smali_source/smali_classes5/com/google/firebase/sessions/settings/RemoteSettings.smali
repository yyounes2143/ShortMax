.class public final Lcom/google/firebase/sessions/settings/RemoteSettings;
.super Ljava/lang/Object;
.source "RemoteSettings.kt"

# interfaces
.implements Lm9/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/settings/RemoteSettings$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRemoteSettings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteSettings.kt\ncom/google/firebase/sessions/settings/RemoteSettings\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,159:1\n116#2,11:160\n*S KotlinDebug\n*F\n+ 1 RemoteSettings.kt\ncom/google/firebase/sessions/settings/RemoteSettings\n*L\n70#1:160,11\n*E\n"
    }
.end annotation


# static fields
.field private static final g:Lcom/google/firebase/sessions/settings/RemoteSettings$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final h:I

.field private static final i:Lkotlin/text/Regex;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lj9/m0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lx8/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lj9/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lm9/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Lm9/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Lqt/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/sessions/settings/RemoteSettings$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/settings/RemoteSettings$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/sessions/settings/RemoteSettings;->g:Lcom/google/firebase/sessions/settings/RemoteSettings$a;

    .line 8
    .line 9
    sget-object v0, Lkotlin/time/b;->b:Lkotlin/time/b$a;

    .line 10
    .line 11
    const/16 v0, 0x18

    .line 12
    .line 13
    sget-object v1, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/time/c;->s(ILkotlin/time/DurationUnit;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-static {v0, v1}, Lkotlin/time/b;->s(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    long-to-int v0, v0

    .line 24
    sput v0, Lcom/google/firebase/sessions/settings/RemoteSettings;->h:I

    .line 25
    .line 26
    new-instance v0, Lkotlin/text/Regex;

    .line 27
    .line 28
    const-string v1, "/"

    .line 29
    .line 30
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/google/firebase/sessions/settings/RemoteSettings;->i:Lkotlin/text/Regex;

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>(Lj9/m0;Lx8/e;Lj9/b;Lm9/a;Lm9/g;)V
    .locals 1
    .param p1    # Lj9/m0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lx8/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lj9/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lm9/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lm9/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "timeProvider"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "firebaseInstallationsApi"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "appInfo"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "configsFetcher"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "settingsCache"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->a:Lj9/m0;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->b:Lx8/e;

    .line 32
    .line 33
    iput-object p3, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->c:Lj9/b;

    .line 34
    .line 35
    iput-object p4, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->d:Lm9/a;

    .line 36
    .line 37
    iput-object p5, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->e:Lm9/g;

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    const/4 p2, 0x0

    .line 41
    const/4 p3, 0x0

    .line 42
    invoke-static {p3, p1, p2}, Lqt/d;->b(ZILjava/lang/Object;)Lqt/a;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->f:Lqt/a;

    .line 47
    .line 48
    return-void
.end method

.method public static final synthetic e()Lcom/google/firebase/sessions/settings/RemoteSettings$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/settings/RemoteSettings;->g:Lcom/google/firebase/sessions/settings/RemoteSettings$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic f()I
    .locals 1

    .line 1
    sget v0, Lcom/google/firebase/sessions/settings/RemoteSettings;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic g(Lcom/google/firebase/sessions/settings/RemoteSettings;)Lm9/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->e:Lm9/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lcom/google/firebase/sessions/settings/RemoteSettings;)Lj9/m0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->a:Lj9/m0;

    .line 2
    .line 3
    return-object p0
.end method

.method private final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/settings/RemoteSettings;->i:Lkotlin/text/Regex;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/Double;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->e:Lm9/g;

    .line 2
    .line 3
    invoke-interface {v0}, Lm9/g;->c()Ljava/lang/Double;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public b()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->e:Lm9/g;

    .line 2
    .line 3
    invoke-interface {v0}, Lm9/g;->e()Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public c(Lrs/c;)Ljava/lang/Object;
    .locals 13
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    instance-of v0, p1, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->l:I

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
    iput v1, v0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;-><init>(Lcom/google/firebase/sessions/settings/RemoteSettings;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->l:I

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    const-string v6, "FirebaseSessions"

    .line 37
    .line 38
    const/4 v7, 0x0

    .line 39
    if-eqz v2, :cond_4

    .line 40
    .line 41
    if-eq v2, v5, :cond_3

    .line 42
    .line 43
    if-eq v2, v4, :cond_2

    .line 44
    .line 45
    if-ne v2, v3, :cond_1

    .line 46
    .line 47
    iget-object v0, v0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->h:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lqt/a;

    .line 50
    .line 51
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    goto/16 :goto_3

    .line 55
    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto/16 :goto_4

    .line 58
    .line 59
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 62
    .line 63
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_2
    iget-object v2, v0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->i:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v2, Lqt/a;

    .line 70
    .line 71
    iget-object v4, v0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->h:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v4, Lcom/google/firebase/sessions/settings/RemoteSettings;

    .line 74
    .line 75
    :try_start_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    .line 77
    .line 78
    goto/16 :goto_2

    .line 79
    .line 80
    :catchall_1
    move-exception p1

    .line 81
    move-object v0, v2

    .line 82
    goto/16 :goto_4

    .line 83
    .line 84
    :cond_3
    iget-object v2, v0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->i:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v2, Lqt/a;

    .line 87
    .line 88
    iget-object v5, v0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->h:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v5, Lcom/google/firebase/sessions/settings/RemoteSettings;

    .line 91
    .line 92
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    move-object p1, v2

    .line 96
    goto :goto_1

    .line 97
    :cond_4
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->f:Lqt/a;

    .line 101
    .line 102
    invoke-interface {p1}, Lqt/a;->isLocked()Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_5

    .line 107
    .line 108
    iget-object p1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->e:Lm9/g;

    .line 109
    .line 110
    invoke-interface {p1}, Lm9/g;->d()Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-nez p1, :cond_5

    .line 115
    .line 116
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 117
    .line 118
    return-object p1

    .line 119
    :cond_5
    iget-object p1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->f:Lqt/a;

    .line 120
    .line 121
    iput-object p0, v0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->h:Ljava/lang/Object;

    .line 122
    .line 123
    iput-object p1, v0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->i:Ljava/lang/Object;

    .line 124
    .line 125
    iput v5, v0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->l:I

    .line 126
    .line 127
    invoke-interface {p1, v7, v0}, Lqt/a;->lock(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    if-ne v2, v1, :cond_6

    .line 132
    .line 133
    return-object v1

    .line 134
    :cond_6
    move-object v5, p0

    .line 135
    :goto_1
    :try_start_2
    iget-object v2, v5, Lcom/google/firebase/sessions/settings/RemoteSettings;->e:Lm9/g;

    .line 136
    .line 137
    invoke-interface {v2}, Lm9/g;->d()Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-nez v2, :cond_7

    .line 142
    .line 143
    const-string v0, "Remote settings cache not expired. Using cached values."

    .line 144
    .line 145
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 149
    .line 150
    invoke-interface {p1, v7}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    return-object v0

    .line 154
    :catchall_2
    move-exception v0

    .line 155
    move-object v12, v0

    .line 156
    move-object v0, p1

    .line 157
    move-object p1, v12

    .line 158
    goto/16 :goto_4

    .line 159
    .line 160
    :cond_7
    :try_start_3
    sget-object v2, Lcom/google/firebase/sessions/InstallationId;->c:Lcom/google/firebase/sessions/InstallationId$Companion;

    .line 161
    .line 162
    iget-object v8, v5, Lcom/google/firebase/sessions/settings/RemoteSettings;->b:Lx8/e;

    .line 163
    .line 164
    iput-object v5, v0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->h:Ljava/lang/Object;

    .line 165
    .line 166
    iput-object p1, v0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->i:Ljava/lang/Object;

    .line 167
    .line 168
    iput v4, v0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->l:I

    .line 169
    .line 170
    invoke-virtual {v2, v8, v0}, Lcom/google/firebase/sessions/InstallationId$Companion;->a(Lx8/e;Lrs/c;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 174
    if-ne v2, v1, :cond_8

    .line 175
    .line 176
    return-object v1

    .line 177
    :cond_8
    move-object v4, v5

    .line 178
    move-object v12, v2

    .line 179
    move-object v2, p1

    .line 180
    move-object p1, v12

    .line 181
    :goto_2
    :try_start_4
    check-cast p1, Lcom/google/firebase/sessions/InstallationId;

    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/google/firebase/sessions/InstallationId;->b()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    const-string v5, ""

    .line 188
    .line 189
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    if-eqz v5, :cond_9

    .line 194
    .line 195
    const-string p1, "Error getting Firebase Installation ID. Skipping this Session Event."

    .line 196
    .line 197
    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 201
    .line 202
    invoke-interface {v2, v7}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    return-object p1

    .line 206
    :cond_9
    :try_start_5
    const-string v5, "X-Crashlytics-Installation-ID"

    .line 207
    .line 208
    invoke-static {v5, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    const-string v5, "X-Crashlytics-Device-Model"

    .line 213
    .line 214
    new-instance v8, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 220
    .line 221
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v8

    .line 233
    invoke-direct {v4, v8}, Lcom/google/firebase/sessions/settings/RemoteSettings;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v8

    .line 237
    invoke-static {v5, v8}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    const-string v8, "X-Crashlytics-OS-Build-Version"

    .line 242
    .line 243
    sget-object v9, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 244
    .line 245
    const-string v10, "INCREMENTAL"

    .line 246
    .line 247
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-direct {v4, v9}, Lcom/google/firebase/sessions/settings/RemoteSettings;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v9

    .line 254
    invoke-static {v8, v9}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 255
    .line 256
    .line 257
    move-result-object v8

    .line 258
    const-string v9, "X-Crashlytics-OS-Display-Version"

    .line 259
    .line 260
    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 261
    .line 262
    const-string v11, "RELEASE"

    .line 263
    .line 264
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-direct {v4, v10}, Lcom/google/firebase/sessions/settings/RemoteSettings;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v10

    .line 271
    invoke-static {v9, v10}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 272
    .line 273
    .line 274
    move-result-object v9

    .line 275
    const-string v10, "X-Crashlytics-API-Client-Version"

    .line 276
    .line 277
    iget-object v11, v4, Lcom/google/firebase/sessions/settings/RemoteSettings;->c:Lj9/b;

    .line 278
    .line 279
    invoke-virtual {v11}, Lj9/b;->f()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v11

    .line 283
    invoke-static {v10, v11}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 284
    .line 285
    .line 286
    move-result-object v10

    .line 287
    filled-new-array {p1, v5, v8, v9, v10}, [Lkotlin/Pair;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-static {p1}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    const-string v5, "Fetching settings from server."

    .line 296
    .line 297
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .line 299
    .line 300
    iget-object v5, v4, Lcom/google/firebase/sessions/settings/RemoteSettings;->d:Lm9/a;

    .line 301
    .line 302
    new-instance v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;

    .line 303
    .line 304
    invoke-direct {v6, v4, v7}, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;-><init>(Lcom/google/firebase/sessions/settings/RemoteSettings;Lrs/c;)V

    .line 305
    .line 306
    .line 307
    new-instance v4, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$2;

    .line 308
    .line 309
    invoke-direct {v4, v7}, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$2;-><init>(Lrs/c;)V

    .line 310
    .line 311
    .line 312
    iput-object v2, v0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->h:Ljava/lang/Object;

    .line 313
    .line 314
    iput-object v7, v0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->i:Ljava/lang/Object;

    .line 315
    .line 316
    iput v3, v0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->l:I

    .line 317
    .line 318
    invoke-interface {v5, p1, v6, v4, v0}, Lm9/a;->a(Ljava/util/Map;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 322
    if-ne p1, v1, :cond_a

    .line 323
    .line 324
    return-object v1

    .line 325
    :cond_a
    move-object v0, v2

    .line 326
    :goto_3
    :try_start_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 327
    .line 328
    invoke-interface {v0, v7}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 332
    .line 333
    return-object p1

    .line 334
    :goto_4
    invoke-interface {v0, v7}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    throw p1
.end method

.method public d()Lkotlin/time/b;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->e:Lm9/g;

    .line 2
    .line 3
    invoke-interface {v0}, Lm9/g;->b()Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v1, Lkotlin/time/b;->b:Lkotlin/time/b$a;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/time/c;->s(ILkotlin/time/DurationUnit;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    invoke-static {v0, v1}, Lkotlin/time/b;->g(J)Lkotlin/time/b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    return-object v0
.end method
