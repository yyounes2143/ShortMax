.class public final Lse/a;
.super Ljava/lang/Object;
.source "UrlJsonConfigure.kt"

# interfaces
.implements Lme/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lme/b<",
        "Lcom/startshorts/androidplayer/bean/configure/UrlController;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lse/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Z

.field private static final c:Lcom/startshorts/androidplayer/bean/configure/UrlController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lse/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lse/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lse/a;->a:Lse/a;

    .line 7
    .line 8
    new-instance v0, Lcom/startshorts/androidplayer/bean/configure/UrlController;

    .line 9
    .line 10
    const-string v1, "https://api.shorttv.app"

    .line 11
    .line 12
    filled-new-array {v1}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "https://h5.shorttv.live/share01.html"

    .line 21
    .line 22
    const-string v3, "https://h5.shorttv.live/share02.html"

    .line 23
    .line 24
    invoke-direct {v0, v2, v3, v1}, Lcom/startshorts/androidplayer/bean/configure/UrlController;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lse/a;->c:Lcom/startshorts/androidplayer/bean/configure/UrlController;

    .line 28
    .line 29
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

.method private final f(Ljava/lang/String;)Z
    .locals 10

    .line 1
    invoke-static {p1}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "UrlJsonConfigure"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 11
    .line 12
    const-string/jumbo v0, "update failed -> json is blank"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return v2

    .line 19
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object p1, Lse/a;->c:Lcom/startshorts/androidplayer/bean/configure/UrlController;

    .line 25
    .line 26
    const-string/jumbo v3, "shareUrl"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {p1, v3}, Lcom/startshorts/androidplayer/bean/configure/UrlController;->setShareUrl(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v3, "alternateDomainGroup"

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    new-instance v3, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    move v5, v2

    .line 54
    :goto_0
    if-ge v5, v4, :cond_3

    .line 55
    .line 56
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    if-eqz v6, :cond_2

    .line 61
    .line 62
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-nez v7, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const-string v7, "http"

    .line 70
    .line 71
    const/4 v8, 0x2

    .line 72
    const/4 v9, 0x0

    .line 73
    invoke-static {v6, v7, v2, v8, v9}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-eqz v7, :cond_2

    .line 78
    .line 79
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catch_0
    move-exception p1

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_4

    .line 93
    .line 94
    invoke-virtual {p1, v3}, Lcom/startshorts/androidplayer/bean/configure/UrlController;->setAlternateDomainGroup(Ljava/util/List;)V

    .line 95
    .line 96
    .line 97
    sget-object p1, Lcom/startshorts/androidplayer/manager/api/base/p;->a:Lcom/startshorts/androidplayer/manager/api/base/p$a;

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/api/base/p$a;->c()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    filled-new-array {v0}, [Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/api/base/p$a;->j(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    .line 117
    :cond_4
    const/4 v2, 0x1

    .line 118
    goto :goto_3

    .line 119
    :goto_2
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 120
    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string/jumbo v4, "update failed "

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :goto_3
    return v2
.end method


# virtual methods
.method public a(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lse/a;->f(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public b(Lrs/c;)Ljava/lang/Object;
    .locals 2
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
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;->a:Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;

    .line 2
    .line 3
    const-string/jumbo v1, "url_product_android"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, p0, p1}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;->h(Ljava/lang/String;Lme/b;Lrs/c;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p1
.end method

.method public c(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lse/a;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    sget-boolean v0, Lse/a;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public g()Lcom/startshorts/androidplayer/bean/configure/UrlController;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lse/a;->c:Lcom/startshorts/androidplayer/bean/configure/UrlController;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic value()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse/a;->g()Lcom/startshorts/androidplayer/bean/configure/UrlController;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
