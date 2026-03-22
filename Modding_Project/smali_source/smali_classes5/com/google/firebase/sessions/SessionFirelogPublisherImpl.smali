.class public final Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;
.super Ljava/lang/Object;
.source "SessionFirelogPublisher.kt"

# interfaces
.implements Lj9/d0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSessionFirelogPublisher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SessionFirelogPublisher.kt\ncom/google/firebase/sessions/SessionFirelogPublisherImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,129:1\n2632#2,3:130\n*S KotlinDebug\n*F\n+ 1 SessionFirelogPublisher.kt\ncom/google/firebase/sessions/SessionFirelogPublisherImpl\n*L\n99#1:130,3\n*E\n"
    }
.end annotation


# static fields
.field public static final f:Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final g:D


# instance fields
.field private final a:Lcom/google/firebase/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lx8/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lcom/google/firebase/sessions/settings/SessionsSettings;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lj9/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Lkotlin/coroutines/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->f:Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$a;

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    sput-wide v0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->g:D

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/f;Lx8/e;Lcom/google/firebase/sessions/settings/SessionsSettings;Lj9/g;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1
    .param p1    # Lcom/google/firebase/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lx8/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/sessions/settings/SessionsSettings;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lj9/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/coroutines/CoroutineContext;
        .annotation runtime Lo7/a;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "firebaseApp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "firebaseInstallations"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "sessionSettings"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "eventGDTLogger"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "backgroundDispatcher"

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
    iput-object p1, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->a:Lcom/google/firebase/f;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->b:Lx8/e;

    .line 32
    .line 33
    iput-object p3, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->c:Lcom/google/firebase/sessions/settings/SessionsSettings;

    .line 34
    .line 35
    iput-object p4, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->d:Lj9/g;

    .line 36
    .line 37
    iput-object p5, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->e:Lkotlin/coroutines/CoroutineContext;

    .line 38
    .line 39
    return-void
.end method

.method public static final synthetic b(Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;Lj9/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->g(Lj9/b0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c(Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;)Lcom/google/firebase/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->a:Lcom/google/firebase/f;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;)Lx8/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->b:Lx8/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;)Lcom/google/firebase/sessions/settings/SessionsSettings;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->c:Lcom/google/firebase/sessions/settings/SessionsSettings;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->i(Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final g(Lj9/b0;)V
    .locals 2

    .line 1
    const-string v0, "FirebaseSessions"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->d:Lj9/g;

    .line 4
    .line 5
    invoke-interface {v1, p1}, Lj9/g;->a(Lj9/b0;)V

    .line 6
    .line 7
    .line 8
    const-string p1, "Successfully logged Session Start event."

    .line 9
    .line 10
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    const-string v1, "Error logging Session Start event to DataTransport: "

    .line 16
    .line 17
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method private final h()Z
    .locals 4

    .line 1
    sget-wide v0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->g:D

    .line 2
    .line 3
    iget-object v2, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->c:Lcom/google/firebase/sessions/settings/SessionsSettings;

    .line 4
    .line 5
    invoke-virtual {v2}, Lcom/google/firebase/sessions/settings/SessionsSettings;->a()D

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    cmpg-double v0, v0, v2

    .line 10
    .line 11
    if-gtz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method private final i(Lrs/c;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$shouldLogSession$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$shouldLogSession$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$shouldLogSession$1;->k:I

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
    iput v1, v0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$shouldLogSession$1;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$shouldLogSession$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$shouldLogSession$1;-><init>(Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$shouldLogSession$1;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$shouldLogSession$1;->k:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x0

    .line 35
    const-string v5, "FirebaseSessions"

    .line 36
    .line 37
    const/4 v6, 0x1

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    if-eq v2, v6, :cond_2

    .line 41
    .line 42
    if-ne v2, v3, :cond_1

    .line 43
    .line 44
    iget-object v0, v0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$shouldLogSession$1;->h:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;

    .line 47
    .line 48
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_2
    iget-object v2, v0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$shouldLogSession$1;->h:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v2, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;

    .line 63
    .line 64
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    sget-object p1, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;->a:Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;

    .line 72
    .line 73
    iput-object p0, v0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$shouldLogSession$1;->h:Ljava/lang/Object;

    .line 74
    .line 75
    iput v6, v0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$shouldLogSession$1;->k:I

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;->c(Lrs/c;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-ne p1, v1, :cond_4

    .line 82
    .line 83
    return-object v1

    .line 84
    :cond_4
    move-object v2, p0

    .line 85
    :goto_1
    check-cast p1, Ljava/util/Map;

    .line 86
    .line 87
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Ljava/lang/Iterable;

    .line 92
    .line 93
    instance-of v7, p1, Ljava/util/Collection;

    .line 94
    .line 95
    if-eqz v7, :cond_5

    .line 96
    .line 97
    move-object v7, p1

    .line 98
    check-cast v7, Ljava/util/Collection;

    .line 99
    .line 100
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-eqz v7, :cond_5

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    if-eqz v7, :cond_a

    .line 116
    .line 117
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    check-cast v7, Lcom/google/firebase/sessions/api/SessionSubscriber;

    .line 122
    .line 123
    invoke-interface {v7}, Lcom/google/firebase/sessions/api/SessionSubscriber;->a()Z

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    if-eqz v7, :cond_6

    .line 128
    .line 129
    iget-object p1, v2, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->c:Lcom/google/firebase/sessions/settings/SessionsSettings;

    .line 130
    .line 131
    iput-object v2, v0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$shouldLogSession$1;->h:Ljava/lang/Object;

    .line 132
    .line 133
    iput v3, v0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$shouldLogSession$1;->k:I

    .line 134
    .line 135
    invoke-virtual {p1, v0}, Lcom/google/firebase/sessions/settings/SessionsSettings;->f(Lrs/c;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    if-ne p1, v1, :cond_7

    .line 140
    .line 141
    return-object v1

    .line 142
    :cond_7
    move-object v0, v2

    .line 143
    :goto_2
    iget-object p1, v0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->c:Lcom/google/firebase/sessions/settings/SessionsSettings;

    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/google/firebase/sessions/settings/SessionsSettings;->c()Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-nez p1, :cond_8

    .line 150
    .line 151
    const-string p1, "Sessions SDK disabled through settings API. Events will not be sent."

    .line 152
    .line 153
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    return-object p1

    .line 161
    :cond_8
    invoke-direct {v0}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->h()Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-nez p1, :cond_9

    .line 166
    .line 167
    const-string p1, "Sessions SDK has dropped this session due to sampling."

    .line 168
    .line 169
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    return-object p1

    .line 177
    :cond_9
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    return-object p1

    .line 182
    :cond_a
    :goto_3
    const-string p1, "Sessions SDK disabled through data collection. Events will not be sent."

    .line 183
    .line 184
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    return-object p1
.end method


# virtual methods
.method public a(Lcom/google/firebase/sessions/j;)V
    .locals 7
    .param p1    # Lcom/google/firebase/sessions/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "sessionDetails"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->e:Lkotlin/coroutines/CoroutineContext;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v4, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$mayLogSession$1;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-direct {v4, p0, p1, v0}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$mayLogSession$1;-><init>(Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;Lcom/google/firebase/sessions/j;Lrs/c;)V

    .line 16
    .line 17
    .line 18
    const/4 v5, 0x3

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 23
    .line 24
    .line 25
    return-void
.end method
