.class public final Lio/ktor/client/plugins/HttpCallValidator;
.super Ljava/lang/Object;
.source "HttpCallValidator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/plugins/HttpCallValidator$Companion;,
        Lio/ktor/client/plugins/HttpCallValidator$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHttpCallValidator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpCallValidator.kt\nio/ktor/client/plugins/HttpCallValidator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,191:1\n1855#2,2:192\n1855#2,2:194\n*S KotlinDebug\n*F\n+ 1 HttpCallValidator.kt\nio/ktor/client/plugins/HttpCallValidator\n*L\n51#1:192,2\n56#1:194,2\n*E\n"
    }
.end annotation


# static fields
.field public static final d:Lio/ktor/client/plugins/HttpCallValidator$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:Lyr/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyr/a<",
            "Lio/ktor/client/plugins/HttpCallValidator;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function2<",
            "Ltr/c;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lqr/c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/ktor/client/plugins/HttpCallValidator$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/ktor/client/plugins/HttpCallValidator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/ktor/client/plugins/HttpCallValidator;->d:Lio/ktor/client/plugins/HttpCallValidator$Companion;

    .line 8
    .line 9
    new-instance v0, Lyr/a;

    .line 10
    .line 11
    const-string v1, "HttpResponseValidator"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lyr/a;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lio/ktor/client/plugins/HttpCallValidator;->e:Lyr/a;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Z)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ltr/c;",
            "-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/List<",
            "+",
            "Lqr/c;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const-string v0, "responseValidators"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callExceptionHandlers"

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
    iput-object p1, p0, Lio/ktor/client/plugins/HttpCallValidator;->a:Ljava/util/List;

    .line 15
    .line 16
    iput-object p2, p0, Lio/ktor/client/plugins/HttpCallValidator;->b:Ljava/util/List;

    .line 17
    .line 18
    iput-boolean p3, p0, Lio/ktor/client/plugins/HttpCallValidator;->c:Z

    .line 19
    .line 20
    return-void
.end method

.method public static final synthetic a(Lio/ktor/client/plugins/HttpCallValidator;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/ktor/client/plugins/HttpCallValidator;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic b()Lyr/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/HttpCallValidator;->e:Lyr/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c(Lio/ktor/client/plugins/HttpCallValidator;Ljava/lang/Throwable;Lsr/b;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/client/plugins/HttpCallValidator;->e(Ljava/lang/Throwable;Lsr/b;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lio/ktor/client/plugins/HttpCallValidator;Ltr/c;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/ktor/client/plugins/HttpCallValidator;->f(Ltr/c;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final e(Ljava/lang/Throwable;Lsr/b;Lrs/c;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lsr/b;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p3, Lio/ktor/client/plugins/HttpCallValidator$processException$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lio/ktor/client/plugins/HttpCallValidator$processException$1;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/client/plugins/HttpCallValidator$processException$1;->m:I

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
    iput v1, v0, Lio/ktor/client/plugins/HttpCallValidator$processException$1;->m:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/ktor/client/plugins/HttpCallValidator$processException$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lio/ktor/client/plugins/HttpCallValidator$processException$1;-><init>(Lio/ktor/client/plugins/HttpCallValidator;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lio/ktor/client/plugins/HttpCallValidator$processException$1;->k:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/ktor/client/plugins/HttpCallValidator$processException$1;->m:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    :goto_1
    iget-object p1, v0, Lio/ktor/client/plugins/HttpCallValidator$processException$1;->j:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p1, Ljava/util/Iterator;

    .line 53
    .line 54
    iget-object p2, v0, Lio/ktor/client/plugins/HttpCallValidator$processException$1;->i:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p2, Lsr/b;

    .line 57
    .line 58
    iget-object v2, v0, Lio/ktor/client/plugins/HttpCallValidator$processException$1;->h:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v2, Ljava/lang/Throwable;

    .line 61
    .line 62
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lio/ktor/client/plugins/a;->d()Ldu/a;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v5, "Processing exception "

    .line 79
    .line 80
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v5, " for request "

    .line 87
    .line 88
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-interface {p2}, Lsr/b;->getUrl()Lio/ktor/http/Url;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-interface {p3, v2}, Ldu/a;->b(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object p3, p0, Lio/ktor/client/plugins/HttpCallValidator;->b:Ljava/util/List;

    .line 106
    .line 107
    check-cast p3, Ljava/lang/Iterable;

    .line 108
    .line 109
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    move-object v6, p2

    .line 114
    move-object p2, p1

    .line 115
    move-object p1, p3

    .line 116
    move-object p3, v6

    .line 117
    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_7

    .line 122
    .line 123
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    check-cast v2, Lqr/c;

    .line 128
    .line 129
    instance-of v5, v2, Lqr/b;

    .line 130
    .line 131
    if-eqz v5, :cond_6

    .line 132
    .line 133
    check-cast v2, Lqr/b;

    .line 134
    .line 135
    invoke-virtual {v2}, Lqr/b;->a()Lkotlin/jvm/functions/Function2;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    iput-object p2, v0, Lio/ktor/client/plugins/HttpCallValidator$processException$1;->h:Ljava/lang/Object;

    .line 140
    .line 141
    iput-object p3, v0, Lio/ktor/client/plugins/HttpCallValidator$processException$1;->i:Ljava/lang/Object;

    .line 142
    .line 143
    iput-object p1, v0, Lio/ktor/client/plugins/HttpCallValidator$processException$1;->j:Ljava/lang/Object;

    .line 144
    .line 145
    iput v4, v0, Lio/ktor/client/plugins/HttpCallValidator$processException$1;->m:I

    .line 146
    .line 147
    invoke-interface {v2, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    if-ne v2, v1, :cond_5

    .line 152
    .line 153
    return-object v1

    .line 154
    :cond_5
    move-object v2, p2

    .line 155
    move-object p2, p3

    .line 156
    :goto_3
    move-object p3, p2

    .line 157
    move-object p2, v2

    .line 158
    goto :goto_2

    .line 159
    :cond_6
    instance-of v5, v2, Lqr/g;

    .line 160
    .line 161
    if-eqz v5, :cond_4

    .line 162
    .line 163
    check-cast v2, Lqr/g;

    .line 164
    .line 165
    invoke-virtual {v2}, Lqr/g;->a()Lat/n;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    iput-object p2, v0, Lio/ktor/client/plugins/HttpCallValidator$processException$1;->h:Ljava/lang/Object;

    .line 170
    .line 171
    iput-object p3, v0, Lio/ktor/client/plugins/HttpCallValidator$processException$1;->i:Ljava/lang/Object;

    .line 172
    .line 173
    iput-object p1, v0, Lio/ktor/client/plugins/HttpCallValidator$processException$1;->j:Ljava/lang/Object;

    .line 174
    .line 175
    iput v3, v0, Lio/ktor/client/plugins/HttpCallValidator$processException$1;->m:I

    .line 176
    .line 177
    invoke-interface {v2, p2, p3, v0}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    if-ne v2, v1, :cond_5

    .line 182
    .line 183
    return-object v1

    .line 184
    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 185
    .line 186
    return-object p1
.end method

.method private final f(Ltr/c;Lrs/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/c;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lio/ktor/client/plugins/HttpCallValidator$validateResponse$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lio/ktor/client/plugins/HttpCallValidator$validateResponse$1;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/client/plugins/HttpCallValidator$validateResponse$1;->l:I

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
    iput v1, v0, Lio/ktor/client/plugins/HttpCallValidator$validateResponse$1;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/ktor/client/plugins/HttpCallValidator$validateResponse$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lio/ktor/client/plugins/HttpCallValidator$validateResponse$1;-><init>(Lio/ktor/client/plugins/HttpCallValidator;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lio/ktor/client/plugins/HttpCallValidator$validateResponse$1;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/ktor/client/plugins/HttpCallValidator$validateResponse$1;->l:I

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
    iget-object p1, v0, Lio/ktor/client/plugins/HttpCallValidator$validateResponse$1;->i:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Ljava/util/Iterator;

    .line 41
    .line 42
    iget-object v2, v0, Lio/ktor/client/plugins/HttpCallValidator$validateResponse$1;->h:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v2, Ltr/c;

    .line 45
    .line 46
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    move-object p2, v2

    .line 50
    goto :goto_1

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
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lio/ktor/client/plugins/a;->d()Ldu/a;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v4, "Validating response for request "

    .line 72
    .line 73
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ltr/c;->x()Lio/ktor/client/call/HttpClientCall;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v4}, Lio/ktor/client/call/HttpClientCall;->d()Lsr/b;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-interface {v4}, Lsr/b;->getUrl()Lio/ktor/http/Url;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-interface {p2, v2}, Ldu/a;->b(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object p2, p0, Lio/ktor/client/plugins/HttpCallValidator;->a:Ljava/util/List;

    .line 99
    .line 100
    check-cast p2, Ljava/lang/Iterable;

    .line 101
    .line 102
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    move-object v5, p2

    .line 107
    move-object p2, p1

    .line 108
    move-object p1, v5

    .line 109
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_4

    .line 114
    .line 115
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 120
    .line 121
    iput-object p2, v0, Lio/ktor/client/plugins/HttpCallValidator$validateResponse$1;->h:Ljava/lang/Object;

    .line 122
    .line 123
    iput-object p1, v0, Lio/ktor/client/plugins/HttpCallValidator$validateResponse$1;->i:Ljava/lang/Object;

    .line 124
    .line 125
    iput v3, v0, Lio/ktor/client/plugins/HttpCallValidator$validateResponse$1;->l:I

    .line 126
    .line 127
    invoke-interface {v2, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    if-ne v2, v1, :cond_3

    .line 132
    .line 133
    return-object v1

    .line 134
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 135
    .line 136
    return-object p1
.end method
