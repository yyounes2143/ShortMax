.class public Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk;
.super Lcom/bytedance/sdk/component/cFZ/ZYk/tB;
.source "SourceFile"


# static fields
.field public static final ZYk:Lcom/bytedance/sdk/component/ZYk/oJ/oJ;

.field public static final oJ:Lcom/bytedance/sdk/component/ZYk/oJ/oJ;


# instance fields
.field private BTZ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dLZ:Z

.field private kkU:Lcom/bytedance/sdk/component/ZYk/oJ/oJ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/component/ZYk/oJ/oJ$oJ;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/component/ZYk/oJ/oJ$oJ;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ZYk/oJ/oJ$oJ;->oJ()Lcom/bytedance/sdk/component/ZYk/oJ/oJ$oJ;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ZYk/oJ/oJ$oJ;->ZYk()Lcom/bytedance/sdk/component/ZYk/oJ/oJ;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk;->oJ:Lcom/bytedance/sdk/component/ZYk/oJ/oJ;

    .line 15
    .line 16
    new-instance v0, Lcom/bytedance/sdk/component/ZYk/oJ/oJ$oJ;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/bytedance/sdk/component/ZYk/oJ/oJ$oJ;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ZYk/oJ/oJ$oJ;->ZYk()Lcom/bytedance/sdk/component/ZYk/oJ/oJ;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk;->ZYk:Lcom/bytedance/sdk/component/ZYk/oJ/oJ;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;-><init>(Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk;->oJ:Lcom/bytedance/sdk/component/ZYk/oJ/oJ;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk;->kkU:Lcom/bytedance/sdk/component/ZYk/oJ/oJ;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk;->dLZ:Z

    .line 10
    .line 11
    new-instance p1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk;->BTZ:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public oJ()Lcom/bytedance/sdk/component/cFZ/ZYk;
    .locals 14

    .line 35
    const-string v0, "UTF-8"

    :try_start_0
    new-instance v1, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;-><init>()V

    .line 36
    iget-boolean v2, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk;->dLZ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ""

    if-eqz v2, :cond_0

    .line 37
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->so:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->ZYk(Ljava/lang/String;)Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;

    goto/16 :goto_2

    .line 38
    :cond_0
    new-instance v2, Lcom/bytedance/sdk/component/ZYk/oJ/cFZ$oJ;

    invoke-direct {v2}, Lcom/bytedance/sdk/component/ZYk/oJ/cFZ$oJ;-><init>()V

    .line 39
    iget-object v4, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->so:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 40
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/component/ZYk/oJ/cFZ$oJ;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/ZYk/oJ/cFZ$oJ;

    .line 41
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/component/ZYk/oJ/cFZ$oJ;->ZYk(Ljava/lang/String;)Lcom/bytedance/sdk/component/ZYk/oJ/cFZ$oJ;

    .line 42
    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v5

    .line 43
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 44
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    .line 45
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 46
    :cond_1
    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/component/ZYk/oJ/cFZ$oJ;->tB(Ljava/lang/String;)Lcom/bytedance/sdk/component/ZYk/oJ/cFZ$oJ;

    .line 47
    :cond_2
    invoke-virtual {v4}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 48
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 49
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 50
    iget-object v7, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk;->BTZ:Ljava/util/Map;

    invoke-virtual {v4, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 51
    :cond_3
    iget-object v4, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk;->BTZ:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 52
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 53
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 54
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 55
    invoke-static {v6, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_5

    move-object v5, v3

    :cond_5
    invoke-static {v5, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lcom/bytedance/sdk/component/ZYk/oJ/cFZ$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/ZYk/oJ/cFZ$oJ;

    goto :goto_1

    .line 56
    :cond_6
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ZYk/oJ/cFZ$oJ;->ZYk()Lcom/bytedance/sdk/component/ZYk/oJ/cFZ;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->oJ(Lcom/bytedance/sdk/component/ZYk/oJ/cFZ;)Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;

    .line 57
    :goto_2
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->oJ(Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;)V

    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk;->kkU:Lcom/bytedance/sdk/component/ZYk/oJ/oJ;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->oJ(Lcom/bytedance/sdk/component/ZYk/oJ/oJ;)Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;

    .line 59
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->tB()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->oJ(Ljava/lang/Object;)Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;

    .line 60
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->oJ()Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->ZYk()Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->tB:Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;->oJ(Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;)Lcom/bytedance/sdk/component/ZYk/oJ/ZYk;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ZYk/oJ/ZYk;->ZYk()Lcom/bytedance/sdk/component/ZYk/oJ/WcQ;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 63
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 64
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ZYk/oJ/WcQ;->cFZ()Lcom/bytedance/sdk/component/ZYk/oJ/ba;

    move-result-object v1

    if-eqz v1, :cond_7

    const/4 v2, 0x0

    .line 65
    :goto_3
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ZYk/oJ/ba;->oJ()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 66
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/ZYk/oJ/ba;->oJ(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/ZYk/oJ/ba;->ZYk(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 67
    :cond_7
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ZYk/oJ/WcQ;->ba()Lcom/bytedance/sdk/component/ZYk/oJ/awB;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_4
    move-object v9, v3

    goto :goto_5

    .line 68
    :cond_8
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ZYk/oJ/awB;->ZYk()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 69
    :goto_5
    new-instance v1, Lcom/bytedance/sdk/component/cFZ/ZYk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ZYk/oJ/WcQ;->ex()Z

    move-result v5

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ZYk/oJ/WcQ;->tB()I

    move-result v6

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ZYk/oJ/WcQ;->Pfn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ZYk/oJ/WcQ;->ZYk()J

    move-result-wide v10

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ZYk/oJ/WcQ;->oJ()J

    move-result-wide v12

    move-object v4, v1

    invoke-direct/range {v4 .. v13}, Lcom/bytedance/sdk/component/cFZ/ZYk;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    :catchall_0
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public oJ(Lcom/bytedance/sdk/component/cFZ/oJ/oJ;)V
    .locals 8

    .line 2
    const-string v0, "UTF-8"

    :try_start_0
    new-instance v1, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;-><init>()V

    .line 3
    iget-boolean v2, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk;->dLZ:Z

    if-eqz v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->so:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->ZYk(Ljava/lang/String;)Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 5
    :cond_0
    new-instance v2, Lcom/bytedance/sdk/component/ZYk/oJ/cFZ$oJ;

    invoke-direct {v2}, Lcom/bytedance/sdk/component/ZYk/oJ/cFZ$oJ;-><init>()V

    .line 6
    iget-object v3, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->so:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/component/ZYk/oJ/cFZ$oJ;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/ZYk/oJ/cFZ$oJ;

    .line 8
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/component/ZYk/oJ/cFZ$oJ;->ZYk(Ljava/lang/String;)Lcom/bytedance/sdk/component/ZYk/oJ/cFZ$oJ;

    .line 9
    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 11
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    .line 12
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 13
    :cond_1
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/component/ZYk/oJ/cFZ$oJ;->tB(Ljava/lang/String;)Lcom/bytedance/sdk/component/ZYk/oJ/cFZ$oJ;

    .line 14
    :cond_2
    invoke-virtual {v3}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 15
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 16
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 17
    iget-object v6, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk;->BTZ:Ljava/util/Map;

    invoke-virtual {v3, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_3
    iget-object v3, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk;->BTZ:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 20
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 21
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 22
    invoke-static {v5, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v4, :cond_5

    const-string v4, ""

    :cond_5
    invoke-static {v4, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lcom/bytedance/sdk/component/ZYk/oJ/cFZ$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/ZYk/oJ/cFZ$oJ;

    goto :goto_1

    .line 23
    :cond_6
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ZYk/oJ/cFZ$oJ;->ZYk()Lcom/bytedance/sdk/component/ZYk/oJ/cFZ;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->oJ(Lcom/bytedance/sdk/component/ZYk/oJ/cFZ;)Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;

    .line 24
    :goto_2
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->oJ(Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;)V

    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk;->kkU:Lcom/bytedance/sdk/component/ZYk/oJ/oJ;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->oJ(Lcom/bytedance/sdk/component/ZYk/oJ/oJ;)Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;

    .line 26
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->tB()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->oJ(Ljava/lang/Object;)Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->Pfn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->Pfn:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;

    .line 29
    :cond_7
    iget v0, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ba:I

    if-lez v0, :cond_8

    .line 30
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->oJ(I)Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;

    .line 31
    :cond_8
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->oJ()Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->ZYk()Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->tB:Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;->oJ(Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;)Lcom/bytedance/sdk/component/ZYk/oJ/ZYk;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk$1;-><init>(Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk;Lcom/bytedance/sdk/component/cFZ/oJ/oJ;)V

    .line 33
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/ZYk/oJ/ZYk;->oJ(Lcom/bytedance/sdk/component/ZYk/oJ/tB;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_3
    if-eqz p1, :cond_9

    .line 34
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v1}, Lcom/bytedance/sdk/component/cFZ/oJ/oJ;->oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/tB;Ljava/io/IOException;)V

    :cond_9
    return-void
.end method

.method public oJ(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk;->dLZ:Z

    return-void
.end method
