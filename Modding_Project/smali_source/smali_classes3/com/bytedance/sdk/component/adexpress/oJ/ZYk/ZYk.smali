.class public Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/ZYk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static oJ:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/ZYk;->oJ:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public static Pfn()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->ZYk()Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->Pfn()Z

    move-result v0

    return v0
.end method

.method private static Pfn(Ljava/lang/String;)Z
    .locals 2

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/ZYk;->Pfn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/ZYk;->ex()Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;->ba()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$oJ;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$oJ;->oJ()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static ZYk(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 8
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/ZYk;->ex()Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 9
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/ZYk;->Pfn()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;->oJ()Ljava/util/Map;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 12
    :cond_1
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;

    if-eqz p0, :cond_4

    .line 13
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;->ba()Ljava/util/List;

    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$oJ;

    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$oJ;->oJ()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$oJ;->oJ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$oJ;->oJ()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/Pfn;->oJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 17
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->so()Ljava/io/File;

    move-result-object v2

    invoke-direct {p1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Pfn;->oJ(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$oJ;->ZYk()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$oJ;->ZYk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, p1

    :cond_4
    :goto_0
    return-object v1
.end method

.method public static ZYk(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/cFZ;->oJ()Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/cFZ;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/cFZ;->ZYk(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static ZYk()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/so;->ex()V

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->so()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/cFZ;->tB(Ljava/io/File;)V

    return-void

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/cFZ;->tB(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public static ZYk(Lorg/json/JSONObject;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 20
    :cond_0
    const-string v1, "xTemplate"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private static ba(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/ZYk;->Pfn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/ZYk;->ex()Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;->ba()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$oJ;

    .line 6
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$oJ;->oJ()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$oJ;->oJ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$oJ;->oJ()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/Pfn;->oJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->so()Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/Pfn;->oJ(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$oJ;->ZYk()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$oJ;->ZYk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method private static ba()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/ZYk;->ex()Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;->ex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static cFZ(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/ZYk;->ex()Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;->Pfn()Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$ZYk;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$ZYk;->ZYk()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-gtz v2, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroid/util/Pair;

    .line 41
    .line 42
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 43
    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    check-cast v3, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    new-instance v1, Ljava/io/File;

    .line 55
    .line 56
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->so()Ljava/io/File;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v0, Ljava/lang/String;

    .line 63
    .line 64
    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_0
    return-object v1
.end method

.method public static ex()Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->ZYk()Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->ba()Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;

    move-result-object v0

    return-object v0
.end method

.method public static ex(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/ZYk;->ex()Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;->oJ()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;

    if-nez p0, :cond_2

    return-object v1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;->ex()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v1

    .line 8
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/ZYk;->ba()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static oJ(Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/ex/jFA$oJ;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;
    .locals 2

    .line 5
    new-instance p2, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;

    invoke-direct {p2}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;-><init>()V

    .line 6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-static {p3, p0}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/ZYk;->ZYk(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 8
    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;->oJ(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 9
    invoke-static {p0}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/ZYk;->cFZ(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 10
    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;->oJ(I)V

    :cond_2
    if-nez v0, :cond_3

    .line 11
    invoke-static {p0}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/ZYk;->ba(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    .line 12
    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;->oJ(I)V

    .line 13
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 14
    invoke-static {p0, p3}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/ZYk;->oJ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    const/4 p0, 0x4

    .line 15
    invoke-virtual {p2, p0}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;->oJ(I)V

    goto :goto_1

    .line 16
    :cond_4
    invoke-static {p0}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/ZYk;->Pfn(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    const/4 p0, 0x6

    .line 17
    invoke-virtual {p2, p0}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;->oJ(I)V

    .line 18
    :cond_5
    :goto_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;->ZYk()I

    if-eqz v0, :cond_6

    .line 19
    :try_start_0
    new-instance p0, Landroid/webkit/WebResourceResponse;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/ex/jFA$oJ;->oJ()Ljava/lang/String;

    move-result-object p1

    const-string p3, "utf-8"

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, p3, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 20
    invoke-virtual {p2, p0}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;->oJ(Landroid/webkit/WebResourceResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_6
    return-object p2
.end method

.method public static oJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/oJ/tB/ZYk;
    .locals 1

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/cFZ;->oJ()Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/cFZ;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/cFZ;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/oJ/tB/ZYk;

    move-result-object p0

    return-object p0
.end method

.method public static oJ()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->ZYk()Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;

    return-void
.end method

.method private static oJ(Lcom/bytedance/sdk/component/adexpress/oJ/tB/ZYk;)V
    .locals 2

    .line 4
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/ZYk$1;

    const-string v1, "updateTmplTime"

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/ZYk$1;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/oJ/tB/ZYk;)V

    const/16 p0, 0xa

    invoke-static {v0, p0}, Lcom/bytedance/sdk/component/adexpress/ex/ex;->oJ(Lcom/bytedance/sdk/component/so/so;I)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/component/adexpress/oJ/tB/ex;)V
    .locals 2

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/cFZ;->oJ()Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/cFZ;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/oJ/tB/ex;->ba:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/cFZ;->oJ(Lcom/bytedance/sdk/component/adexpress/oJ/tB/ex;Ljava/lang/String;)V

    return-void
.end method

.method private static oJ(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 21
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/ZYk;->Pfn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/ZYk;->ex()Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;->oJ()Ljava/util/Map;

    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;

    if-eqz p1, :cond_1

    .line 26
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;->ba()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$oJ;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$oJ;->oJ()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static oJ(Lorg/json/JSONObject;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 28
    :cond_0
    const-string v1, "template_Plugin"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static tB(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/oJ/tB/ZYk;
    .locals 2

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/cFZ;->oJ()Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/cFZ;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/cFZ;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/oJ/tB/ZYk;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/ZYk;->oJ(Ljava/lang/Long;)Lcom/bytedance/sdk/component/adexpress/oJ/tB/ZYk;

    .line 5
    invoke-static {p0}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/component/adexpress/oJ/tB/ZYk;)V

    :cond_1
    return-object p0
.end method

.method public static tB()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/ba;->tB()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
