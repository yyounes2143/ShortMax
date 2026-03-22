.class public final Lcom/startshorts/androidplayer/manager/api/base/RetrofitFactory$b;
.super Lokhttp3/EventListener;
.source "RetrofitFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/api/base/RetrofitFactory;->c(Lcom/startshorts/androidplayer/bean/api/ApiConfig;Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic c:Lcom/startshorts/androidplayer/bean/api/ApiConfig;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/api/ApiConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/api/base/RetrofitFactory$b;->c:Lcom/startshorts/androidplayer/bean/api/ApiConfig;

    .line 2
    .line 3
    invoke-direct {p0}, Lokhttp3/EventListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public f(Lokhttp3/Call;)V
    .locals 14

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lokhttp3/EventListener;->f(Lokhttp3/Call;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/api/base/RetrofitFactory$b;->c:Lcom/startshorts/androidplayer/bean/api/ApiConfig;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->isAttributionService()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const-string v2, ""

    .line 23
    .line 24
    const-string v3, "Attribution "

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    move-object v1, v3

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v1, v2

    .line 31
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, "[CallStart] \u8c03\u7528}"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "HttpLoggingInterceptor"

    .line 44
    .line 45
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/base/RetrofitFactory;->a:Lcom/startshorts/androidplayer/manager/api/base/RetrofitFactory;

    .line 49
    .line 50
    invoke-static {}, Lcom/startshorts/androidplayer/manager/api/base/RetrofitFactory;->a()Lokhttp3/OkHttpClient;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    if-eqz v4, :cond_1

    .line 55
    .line 56
    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->p()Lokhttp3/Dispatcher;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const/4 v4, 0x0

    .line 62
    :goto_1
    sget-object v5, Lcom/startshorts/androidplayer/manager/api/base/p;->a:Lcom/startshorts/androidplayer/manager/api/base/p$a;

    .line 63
    .line 64
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/manager/api/base/p$a;->c()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    iget-object v7, p0, Lcom/startshorts/androidplayer/manager/api/base/RetrofitFactory$b;->c:Lcom/startshorts/androidplayer/bean/api/ApiConfig;

    .line 69
    .line 70
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->isAttributionService()Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    invoke-virtual {v0, v4, v6, v7}, Lcom/startshorts/androidplayer/manager/api/base/RetrofitFactory;->d(Lokhttp3/Dispatcher;Ljava/lang/String;Z)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    move-object v4, v0

    .line 79
    check-cast v4, Ljava/util/Collection;

    .line 80
    .line 81
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-nez v4, :cond_3

    .line 86
    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    iget-object v6, p0, Lcom/startshorts/androidplayer/manager/api/base/RetrofitFactory$b;->c:Lcom/startshorts/androidplayer/bean/api/ApiConfig;

    .line 93
    .line 94
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->isAttributionService()Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-eqz v6, :cond_2

    .line 99
    .line 100
    move-object v2, v3

    .line 101
    :cond_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v2, "[CallStart] \u5f53\u524d "

    .line 105
    .line 106
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/manager/api/base/p$a;->c()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v2, " \u7684\u6392\u961f\u8bf7\u6c42: "

    .line 117
    .line 118
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    move-object v5, v0

    .line 122
    check-cast v5, Ljava/lang/Iterable;

    .line 123
    .line 124
    const/16 v12, 0x3f

    .line 125
    .line 126
    const/4 v13, 0x0

    .line 127
    const/4 v6, 0x0

    .line 128
    const/4 v7, 0x0

    .line 129
    const/4 v8, 0x0

    .line 130
    const/4 v9, 0x0

    .line 131
    const/4 v10, 0x0

    .line 132
    const/4 v11, 0x0

    .line 133
    invoke-static/range {v5 .. v13}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :cond_3
    return-void
.end method
