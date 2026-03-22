.class public final Lio/ktor/client/plugins/DefaultRequest$Plugin;
.super Ljava/lang/Object;
.source "DefaultRequest.kt"

# interfaces
.implements Lqr/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/DefaultRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Plugin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqr/d<",
        "Lio/ktor/client/plugins/DefaultRequest$a;",
        "Lio/ktor/client/plugins/DefaultRequest;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDefaultRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultRequest.kt\nio/ktor/client/plugins/DefaultRequest$Plugin\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,212:1\n1855#2,2:213\n*S KotlinDebug\n*F\n+ 1 DefaultRequest.kt\nio/ktor/client/plugins/DefaultRequest$Plugin\n*L\n115#1:213,2\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/ktor/client/plugins/DefaultRequest$Plugin;-><init>()V

    return-void
.end method

.method public static final synthetic c(Lio/ktor/client/plugins/DefaultRequest$Plugin;Lio/ktor/http/Url;Lio/ktor/http/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/ktor/client/plugins/DefaultRequest$Plugin;->f(Lio/ktor/http/Url;Lio/ktor/http/h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final d(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-object p2

    .line 15
    :cond_1
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->r0(Ljava/util/List;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/CharSequence;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    return-object p2

    .line 28
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    add-int/2addr v0, v1

    .line 37
    add-int/lit8 v0, v0, -0x1

    .line 38
    .line 39
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->d(I)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    add-int/lit8 v1, v1, -0x1

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    :goto_0
    if-ge v2, v1, :cond_3

    .line 51
    .line 52
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    check-cast p2, Ljava/util/Collection;

    .line 63
    .line 64
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->a(Ljava/util/List;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    return-object p1
.end method

.method private final f(Lio/ktor/http/Url;Lio/ktor/http/h;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lio/ktor/http/h;->o()Lio/ktor/http/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lio/ktor/http/k;->c:Lio/ktor/http/k$a;

    .line 6
    .line 7
    invoke-virtual {v1}, Lio/ktor/http/k$a;->c()Lio/ktor/http/k;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lio/ktor/http/Url;->k()Lio/ktor/http/k;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p2, v0}, Lio/ktor/http/h;->y(Lio/ktor/http/k;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p2}, Lio/ktor/http/h;->j()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-lez v0, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    invoke-static {p1}, Lio/ktor/http/URLUtilsKt;->a(Lio/ktor/http/Url;)Lio/ktor/http/h;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p2}, Lio/ktor/http/h;->o()Lio/ktor/http/k;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Lio/ktor/http/h;->y(Lio/ktor/http/k;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Lio/ktor/http/h;->n()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {p2}, Lio/ktor/http/h;->n()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-virtual {p1, v0}, Lio/ktor/http/h;->x(I)V

    .line 57
    .line 58
    .line 59
    :cond_2
    sget-object v0, Lio/ktor/client/plugins/DefaultRequest;->b:Lio/ktor/client/plugins/DefaultRequest$Plugin;

    .line 60
    .line 61
    invoke-virtual {p1}, Lio/ktor/http/h;->g()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p2}, Lio/ktor/http/h;->g()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-direct {v0, v1, v2}, Lio/ktor/client/plugins/DefaultRequest$Plugin;->d(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p1, v0}, Lio/ktor/http/h;->u(Ljava/util/List;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Lio/ktor/http/h;->d()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-lez v0, :cond_3

    .line 85
    .line 86
    invoke-virtual {p2}, Lio/ktor/http/h;->d()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p1, v0}, Lio/ktor/http/h;->r(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_3
    const/4 v0, 0x1

    .line 94
    const/4 v1, 0x0

    .line 95
    const/4 v2, 0x0

    .line 96
    invoke-static {v2, v0, v1}, Lio/ktor/http/f;->b(IILjava/lang/Object;)Lwr/q;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p1}, Lio/ktor/http/h;->e()Lwr/q;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {v0, v1}, Lyr/s;->c(Lyr/q;Lyr/q;)Lyr/q;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2}, Lio/ktor/http/h;->e()Lwr/q;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {p1, v1}, Lio/ktor/http/h;->s(Lwr/q;)V

    .line 112
    .line 113
    .line 114
    invoke-interface {v0}, Lyr/q;->b()Ljava/util/Set;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Ljava/lang/Iterable;

    .line 119
    .line 120
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_5

    .line 129
    .line 130
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    check-cast v1, Ljava/util/Map$Entry;

    .line 135
    .line 136
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    check-cast v2, Ljava/lang/String;

    .line 141
    .line 142
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Ljava/util/List;

    .line 147
    .line 148
    invoke-virtual {p1}, Lio/ktor/http/h;->e()Lwr/q;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-interface {v3, v2}, Lyr/q;->contains(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-nez v3, :cond_4

    .line 157
    .line 158
    invoke-virtual {p1}, Lio/ktor/http/h;->e()Lwr/q;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    check-cast v1, Ljava/lang/Iterable;

    .line 163
    .line 164
    invoke-interface {v3, v2, v1}, Lyr/q;->d(Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_5
    invoke-static {p2, p1}, Lio/ktor/http/URLUtilsKt;->g(Lio/ktor/http/h;Lio/ktor/http/h;)Lio/ktor/http/h;

    .line 169
    .line 170
    .line 171
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/DefaultRequest$Plugin;->g(Lkotlin/jvm/functions/Function1;)Lio/ktor/client/plugins/DefaultRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Lio/ktor/client/HttpClient;)V
    .locals 0

    .line 1
    check-cast p1, Lio/ktor/client/plugins/DefaultRequest;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/DefaultRequest$Plugin;->e(Lio/ktor/client/plugins/DefaultRequest;Lio/ktor/client/HttpClient;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Lio/ktor/client/plugins/DefaultRequest;Lio/ktor/client/HttpClient;)V
    .locals 3
    .param p1    # Lio/ktor/client/plugins/DefaultRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/client/HttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "plugin"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "scope"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lio/ktor/client/HttpClient;->p()Lsr/d;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    sget-object v0, Lsr/d;->h:Lsr/d$a;

    .line 16
    .line 17
    invoke-virtual {v0}, Lsr/d$a;->a()Lds/f;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lio/ktor/client/plugins/DefaultRequest$Plugin$install$1;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v1, p1, v2}, Lio/ktor/client/plugins/DefaultRequest$Plugin$install$1;-><init>(Lio/ktor/client/plugins/DefaultRequest;Lrs/c;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v0, v1}, Lds/b;->l(Lds/f;Lat/n;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public g(Lkotlin/jvm/functions/Function1;)Lio/ktor/client/plugins/DefaultRequest;
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/client/plugins/DefaultRequest$a;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/client/plugins/DefaultRequest;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/ktor/client/plugins/DefaultRequest;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p1, v1}, Lio/ktor/client/plugins/DefaultRequest;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public getKey()Lyr/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lyr/a<",
            "Lio/ktor/client/plugins/DefaultRequest;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lio/ktor/client/plugins/DefaultRequest;->b()Lyr/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
