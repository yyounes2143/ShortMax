.class public Lio/bidmachine/rendering/utils/NetworkRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/utils/NetworkRequest$Method;,
        Lio/bidmachine/rendering/utils/NetworkRequest$f;,
        Lio/bidmachine/rendering/utils/NetworkRequest$i;,
        Lio/bidmachine/rendering/utils/NetworkRequest$c;,
        Lio/bidmachine/rendering/utils/NetworkRequest$e;,
        Lio/bidmachine/rendering/utils/NetworkRequest$k;,
        Lio/bidmachine/rendering/utils/NetworkRequest$a;,
        Lio/bidmachine/rendering/utils/NetworkRequest$d;,
        Lio/bidmachine/rendering/utils/NetworkRequest$h;,
        Lio/bidmachine/rendering/utils/NetworkRequest$b;,
        Lio/bidmachine/rendering/utils/NetworkRequest$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final k:Lcr/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lio/bidmachine/rendering/utils/NetworkRequest$Method;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final f:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final g:Lio/bidmachine/rendering/utils/NetworkRequest$f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/rendering/utils/NetworkRequest$f<",
            "TResponseType;>;"
        }
    .end annotation
.end field

.field private final h:Lio/bidmachine/rendering/utils/NetworkRequest$e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/rendering/utils/NetworkRequest$e<",
            "TResponseType;>;"
        }
    .end annotation
.end field

.field private i:Lcr/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Ltq/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ldr/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ldr/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/rendering/utils/NetworkRequest;->k:Lcr/c;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/bidmachine/rendering/utils/NetworkRequest$Method;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Lio/bidmachine/rendering/utils/NetworkRequest$i;Lio/bidmachine/rendering/utils/NetworkRequest$c;Lio/bidmachine/rendering/utils/NetworkRequest$f;Lio/bidmachine/rendering/utils/NetworkRequest$e;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/rendering/utils/NetworkRequest$Method;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lio/bidmachine/rendering/utils/NetworkRequest$i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lio/bidmachine/rendering/utils/NetworkRequest$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lio/bidmachine/rendering/utils/NetworkRequest$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Lio/bidmachine/rendering/utils/NetworkRequest$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/bidmachine/rendering/utils/NetworkRequest$Method;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lio/bidmachine/rendering/utils/NetworkRequest$i;",
            "Lio/bidmachine/rendering/utils/NetworkRequest$c;",
            "Lio/bidmachine/rendering/utils/NetworkRequest$f<",
            "TResponseType;>;",
            "Lio/bidmachine/rendering/utils/NetworkRequest$e<",
            "TResponseType;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->b:Lio/bidmachine/rendering/utils/NetworkRequest$Method;

    .line 7
    .line 8
    iput-object p5, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->e:Ljava/lang/Integer;

    .line 9
    .line 10
    iput-object p6, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->f:Ljava/lang/Integer;

    .line 11
    .line 12
    iput-object p9, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->g:Lio/bidmachine/rendering/utils/NetworkRequest$f;

    .line 13
    .line 14
    iput-object p3, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->c:Ljava/util/Map;

    .line 15
    .line 16
    iput-object p4, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->d:Ljava/util/Map;

    .line 17
    .line 18
    iput-object p10, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->h:Lio/bidmachine/rendering/utils/NetworkRequest$e;

    .line 19
    .line 20
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

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
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/util/Map$Entry;

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/String;

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/net/URL;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->b:Lio/bidmachine/rendering/utils/NetworkRequest$Method;

    .line 21
    .line 22
    invoke-virtual {p1}, Lio/bidmachine/rendering/utils/NetworkRequest$Method;->getNetworkName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->c:Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Ljava/util/Map$Entry;

    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Ljava/lang/String;

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    move-object v3, v0

    .line 69
    move-object v0, p1

    .line 70
    move-object p1, v3

    .line 71
    goto :goto_2

    .line 72
    :cond_0
    iget-object p1, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->e:Ljava/lang/Integer;

    .line 73
    .line 74
    if-eqz p1, :cond_1

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-ltz p1, :cond_1

    .line 81
    .line 82
    iget-object p1, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->e:Ljava/lang/Integer;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 89
    .line 90
    .line 91
    :cond_1
    iget-object p1, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->f:Ljava/lang/Integer;

    .line 92
    .line 93
    if-eqz p1, :cond_2

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-ltz p1, :cond_2

    .line 100
    .line 101
    iget-object p1, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->f:Ljava/lang/Integer;

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 108
    .line 109
    .line 110
    :cond_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    packed-switch p1, :pswitch_data_0

    .line 115
    .line 116
    .line 117
    :pswitch_0
    goto :goto_1

    .line 118
    :pswitch_1
    const-string p1, "Location"

    .line 119
    .line 120
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-nez v1, :cond_3

    .line 129
    .line 130
    invoke-static {p1}, Lyq/r;->p(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_3

    .line 135
    .line 136
    invoke-static {v0}, Lbr/a;->a(Ljava/net/HttpURLConnection;)V

    .line 137
    .line 138
    .line 139
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/utils/NetworkRequest;->b(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    .line 140
    .line 141
    .line 142
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    return-object p1

    .line 144
    :cond_3
    :goto_1
    return-object v0

    .line 145
    :catchall_1
    move-exception v0

    .line 146
    :goto_2
    invoke-static {p1}, Lbr/a;->a(Ljava/net/HttpURLConnection;)V

    .line 147
    .line 148
    .line 149
    throw v0

    .line 150
    nop

    .line 151
    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->i:Lcr/c;

    .line 3
    .line 4
    iput-object v0, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->j:Ltq/b;

    .line 5
    .line 6
    return-void
.end method

.method static synthetic d(Lio/bidmachine/rendering/utils/NetworkRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/utils/NetworkRequest;->g()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private e(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResponseType;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->h:Lio/bidmachine/rendering/utils/NetworkRequest$e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lio/bidmachine/rendering/utils/NetworkRequest$e;->onSuccess(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private f(Lrq/t;)V
    .locals 1
    .param p1    # Lrq/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->h:Lio/bidmachine/rendering/utils/NetworkRequest$e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lio/bidmachine/rendering/utils/NetworkRequest$e;->a(Lrq/t;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private g()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->a:Ljava/lang/String;

    .line 3
    .line 4
    iget-object v2, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->d:Ljava/util/Map;

    .line 5
    .line 6
    invoke-direct {p0, v1, v2}, Lio/bidmachine/rendering/utils/NetworkRequest;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {p0, v1}, Lio/bidmachine/rendering/utils/NetworkRequest;->b(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    .line 11
    .line 12
    .line 13
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 14
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/16 v3, 0xc8

    .line 19
    .line 20
    if-ne v2, v3, :cond_1

    .line 21
    .line 22
    iget-object v2, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->g:Lio/bidmachine/rendering/utils/NetworkRequest$f;

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    invoke-direct {p0, v0}, Lio/bidmachine/rendering/utils/NetworkRequest;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lbr/a;->a(Ljava/net/HttpURLConnection;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :try_start_2
    invoke-interface {v2, v1}, Lio/bidmachine/rendering/utils/NetworkRequest$f;->a(Ljava/net/URLConnection;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-direct {p0, v0}, Lio/bidmachine/rendering/utils/NetworkRequest;->e(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_1
    move-exception v0

    .line 44
    :try_start_3
    invoke-static {v0}, Lrq/t;->a(Ljava/lang/Throwable;)Lrq/t;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {p0, v0}, Lio/bidmachine/rendering/utils/NetworkRequest;->f(Lrq/t;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/16 v3, 0xcc

    .line 53
    .line 54
    if-ne v2, v3, :cond_2

    .line 55
    .line 56
    invoke-direct {p0, v0}, Lio/bidmachine/rendering/utils/NetworkRequest;->e(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    new-instance v0, Lrq/t;

    .line 61
    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v4, "Server response code - "

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v2, " "

    .line 76
    .line 77
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-direct {v0, v2}, Lrq/t;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, v0}, Lio/bidmachine/rendering/utils/NetworkRequest;->f(Lrq/t;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    .line 96
    .line 97
    :goto_0
    invoke-static {v1}, Lbr/a;->a(Ljava/net/HttpURLConnection;)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :catchall_2
    move-exception v1

    .line 102
    move-object v5, v1

    .line 103
    move-object v1, v0

    .line 104
    move-object v0, v5

    .line 105
    :goto_1
    :try_start_4
    invoke-static {v0}, Lrq/t;->a(Ljava/lang/Throwable;)Lrq/t;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-direct {p0, v0}, Lio/bidmachine/rendering/utils/NetworkRequest;->f(Lrq/t;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 110
    .line 111
    .line 112
    invoke-static {v1}, Lbr/a;->a(Ljava/net/HttpURLConnection;)V

    .line 113
    .line 114
    .line 115
    :goto_2
    return-void

    .line 116
    :catchall_3
    move-exception v0

    .line 117
    invoke-static {v1}, Lbr/a;->a(Ljava/net/HttpURLConnection;)V

    .line 118
    .line 119
    .line 120
    throw v0
.end method


# virtual methods
.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->i:Lcr/c;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->j:Ltq/b;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcr/c;->cancel(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/rendering/utils/NetworkRequest;->c()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/rendering/utils/NetworkRequest;->k:Lcr/c;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/utils/NetworkRequest;->j(Lcr/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j(Lcr/c;)V
    .locals 2
    .param p1    # Lcr/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/utils/NetworkRequest;->h()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->i:Lcr/c;

    .line 5
    .line 6
    new-instance v0, Lio/bidmachine/rendering/utils/NetworkRequest$k;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, v1}, Lio/bidmachine/rendering/utils/NetworkRequest$k;-><init>(Lio/bidmachine/rendering/utils/NetworkRequest;Lio/bidmachine/rendering/utils/NetworkRequest$j;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->j:Ltq/b;

    .line 13
    .line 14
    :try_start_0
    invoke-interface {p1, v0}, Lcr/c;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    invoke-static {p1}, Lrq/t;->a(Ljava/lang/Throwable;)Lrq/t;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/utils/NetworkRequest;->f(Lrq/t;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method
