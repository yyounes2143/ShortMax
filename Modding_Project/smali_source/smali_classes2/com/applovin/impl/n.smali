.class public Lcom/applovin/impl/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/applovin/mediation/MaxAdFormat;

.field private final d:Lcom/applovin/impl/o;

.field private final e:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/util/Map;Lcom/applovin/impl/sdk/k;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "name"

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/applovin/impl/n;->a:Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, "display_name"

    .line 15
    .line 16
    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/applovin/impl/n;->b:Ljava/lang/String;

    .line 21
    .line 22
    const-string v0, "format"

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/applovin/mediation/MaxAdFormat;->formatFromString(Ljava/lang/String;)Lcom/applovin/mediation/MaxAdFormat;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/applovin/impl/n;->c:Lcom/applovin/mediation/MaxAdFormat;

    .line 34
    .line 35
    new-instance v0, Lorg/json/JSONArray;

    .line 36
    .line 37
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string/jumbo v2, "waterfalls"

    .line 41
    .line 42
    .line 43
    invoke-static {p1, v2, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/applovin/impl/n;->e:Ljava/util/List;

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    move v2, v0

    .line 60
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-ge v2, v3, :cond_1

    .line 65
    .line 66
    invoke-static {p1, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    if-eqz v3, :cond_0

    .line 71
    .line 72
    new-instance v4, Lcom/applovin/impl/o;

    .line 73
    .line 74
    iget-object v5, p0, Lcom/applovin/impl/n;->c:Lcom/applovin/mediation/MaxAdFormat;

    .line 75
    .line 76
    invoke-direct {v4, v3, p2, v5, p3}, Lcom/applovin/impl/o;-><init>(Lorg/json/JSONObject;Ljava/util/Map;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/sdk/k;)V

    .line 77
    .line 78
    .line 79
    iget-object v3, p0, Lcom/applovin/impl/n;->e:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/n;->e:Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_2

    .line 94
    .line 95
    iget-object p1, p0, Lcom/applovin/impl/n;->e:Ljava/util/List;

    .line 96
    .line 97
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    move-object v1, p1

    .line 102
    check-cast v1, Lcom/applovin/impl/o;

    .line 103
    .line 104
    :cond_2
    iput-object v1, p0, Lcom/applovin/impl/n;->d:Lcom/applovin/impl/o;

    .line 105
    .line 106
    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/n;)I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/n;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/applovin/impl/n;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a()Lcom/applovin/mediation/MaxAdFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/n;->c:Lcom/applovin/mediation/MaxAdFormat;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/n;->c:Lcom/applovin/mediation/MaxAdFormat;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "Unknown"

    .line 11
    .line 12
    :goto_0
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/n;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/applovin/impl/n;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/applovin/impl/n;->a(Lcom/applovin/impl/n;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/n;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "\n---------- "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/applovin/impl/n;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " ----------"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, "\nIdentifier - "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/applovin/impl/n;->a:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, "\nFormat     - "

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/applovin/impl/n;->b()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0
.end method

.method public f()Lcom/applovin/impl/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/n;->d:Lcom/applovin/impl/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/n;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
