.class public Lcom/applovin/impl/g2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/f2;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/k;

.field private final b:Lcom/applovin/impl/sdk/o;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/g2;->a:Lcom/applovin/impl/sdk/k;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/applovin/impl/g2;->b:Lcom/applovin/impl/sdk/o;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Map;)Ljava/io/InputStream;
    .locals 5

    .line 1
    new-instance v0, Ljava/net/URL;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/applovin/impl/g2;->a:Lcom/applovin/impl/sdk/k;

    .line 13
    .line 14
    sget-object v2, Lcom/applovin/impl/v4;->R2:Lcom/applovin/impl/v4;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/applovin/impl/g2;->a:Lcom/applovin/impl/sdk/k;

    .line 30
    .line 31
    sget-object v2, Lcom/applovin/impl/v4;->S2:Lcom/applovin/impl/v4;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 51
    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    iget-object v2, p0, Lcom/applovin/impl/g2;->a:Lcom/applovin/impl/sdk/k;

    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    const-string v4, "loadResource"

    .line 75
    .line 76
    invoke-virtual {v2, v4, p1, v1, v3}, Lcom/applovin/impl/q1;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v1}, Lcom/applovin/impl/r0;->a(I)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_0

    .line 84
    .line 85
    const/4 p1, 0x0

    .line 86
    return-object p1

    .line 87
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    const-string v2, "HttpUrlConnectionLoader"

    .line 92
    .line 93
    if-eqz v1, :cond_1

    .line 94
    .line 95
    iget-object v1, p0, Lcom/applovin/impl/g2;->b:Lcom/applovin/impl/sdk/o;

    .line 96
    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v4, "Opened stream to resource "

    .line 103
    .line 104
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_1
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    const-string/jumbo v1, "url"

    .line 122
    .line 123
    .line 124
    invoke-static {v1, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 129
    .line 130
    .line 131
    const-string p2, "source"

    .line 132
    .line 133
    invoke-static {p2, v2, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 134
    .line 135
    .line 136
    iget-object p2, p0, Lcom/applovin/impl/g2;->a:Lcom/applovin/impl/sdk/k;

    .line 137
    .line 138
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->g()Lcom/applovin/impl/f;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    sget-object v1, Lcom/applovin/impl/c2;->C:Lcom/applovin/impl/c2;

    .line 143
    .line 144
    invoke-virtual {p2, v1, p1}, Lcom/applovin/impl/d2;->d(Lcom/applovin/impl/c2;Ljava/util/Map;)V

    .line 145
    .line 146
    .line 147
    return-object v0
.end method
