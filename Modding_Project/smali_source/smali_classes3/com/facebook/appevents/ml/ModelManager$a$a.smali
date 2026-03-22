.class public final Lcom/facebook/appevents/ml/ModelManager$a$a;
.super Ljava/lang/Object;
.source "ModelManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/ml/ModelManager$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
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
    invoke-direct {p0}, Lcom/facebook/appevents/ml/ModelManager$a$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/facebook/appevents/ml/ModelManager$a;Lcom/facebook/appevents/ml/a;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/facebook/appevents/ml/ModelManager$a$a;->h(Lcom/facebook/appevents/ml/ModelManager$a;Lcom/facebook/appevents/ml/a;Ljava/io/File;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Ljava/util/List;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/facebook/appevents/ml/ModelManager$a$a;->g(Ljava/util/List;Ljava/io/File;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final d(Ljava/lang/String;I)V
    .locals 9

    .line 1
    invoke-static {}, Lb2/h;->a()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    array-length v1, v0

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v2, 0x5f

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    array-length v1, v0

    .line 39
    const/4 v2, 0x0

    .line 40
    move v3, v2

    .line 41
    :goto_0
    if-ge v3, v1, :cond_3

    .line 42
    .line 43
    aget-object v4, v0, v3

    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    const-string v6, "name"

    .line 50
    .line 51
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 v6, 0x2

    .line 55
    const/4 v7, 0x0

    .line 56
    invoke-static {v5, p1, v2, v6, v7}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    if-eqz v8, :cond_2

    .line 61
    .line 62
    invoke-static {v5, p2, v2, v6, v7}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-nez v5, :cond_2

    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 69
    .line 70
    .line 71
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    :goto_1
    return-void
.end method

.method private final e(Ljava/lang/String;Ljava/lang/String;La2/k$a;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {}, Lb2/h;->a()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p2, La2/k;

    .line 20
    .line 21
    invoke-direct {p2, p1, v0, p3}, La2/k;-><init>(Ljava/lang/String;Ljava/io/File;La2/k$a;)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    new-array p1, p1, [Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    :goto_0
    invoke-interface {p3, v0}, La2/k$a;->a(Ljava/io/File;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private static final g(Ljava/util/List;Ljava/io/File;)V
    .locals 5

    .line 1
    const-string v0, "$slaves"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "file"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/facebook/appevents/ml/a;->m:Lcom/facebook/appevents/ml/a$a;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/facebook/appevents/ml/a$a;->a(Ljava/io/File;)Lcom/facebook/appevents/ml/a;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/facebook/appevents/ml/ModelManager$a;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/facebook/appevents/ml/ModelManager$a;->g()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const/16 v2, 0x5f

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/facebook/appevents/ml/ModelManager$a;->h()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, "_rule"

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    sget-object v2, Lcom/facebook/appevents/ml/ModelManager$a;->i:Lcom/facebook/appevents/ml/ModelManager$a$a;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/facebook/appevents/ml/ModelManager$a;->e()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    new-instance v4, Lb2/f;

    .line 75
    .line 76
    invoke-direct {v4, v0, p1}, Lb2/f;-><init>(Lcom/facebook/appevents/ml/ModelManager$a;Lcom/facebook/appevents/ml/a;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {v2, v3, v1, v4}, Lcom/facebook/appevents/ml/ModelManager$a$a;->e(Ljava/lang/String;Ljava/lang/String;La2/k$a;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method private static final h(Lcom/facebook/appevents/ml/ModelManager$a;Lcom/facebook/appevents/ml/a;Ljava/io/File;)V
    .locals 1

    .line 1
    const-string v0, "$slave"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "file"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/facebook/appevents/ml/ModelManager$a;->i(Lcom/facebook/appevents/ml/a;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p2}, Lcom/facebook/appevents/ml/ModelManager$a;->k(Ljava/io/File;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lcom/facebook/appevents/ml/ModelManager$a;->a(Lcom/facebook/appevents/ml/ModelManager$a;)Ljava/lang/Runnable;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public final c(Lorg/json/JSONObject;)Lcom/facebook/appevents/ml/ModelManager$a;
    .locals 8
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    const-string v1, "use_case"

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const-string v1, "asset_uri"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    const-string v1, "rules_uri"

    .line 18
    .line 19
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    const-string v1, "version_id"

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    sget-object v1, Lcom/facebook/appevents/ml/ModelManager;->a:Lcom/facebook/appevents/ml/ModelManager;

    .line 30
    .line 31
    const-string v2, "thresholds"

    .line 32
    .line 33
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {v1, p1}, Lcom/facebook/appevents/ml/ModelManager;->d(Lcom/facebook/appevents/ml/ModelManager;Lorg/json/JSONArray;)[F

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    new-instance p1, Lcom/facebook/appevents/ml/ModelManager$a;

    .line 42
    .line 43
    const-string v1, "useCase"

    .line 44
    .line 45
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v1, "assetUri"

    .line 49
    .line 50
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    move-object v2, p1

    .line 54
    invoke-direct/range {v2 .. v7}, Lcom/facebook/appevents/ml/ModelManager$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    move-object v0, p1

    .line 58
    :catch_0
    :goto_0
    return-object v0
.end method

.method public final f(Lcom/facebook/appevents/ml/ModelManager$a;Ljava/util/List;)V
    .locals 2
    .param p1    # Lcom/facebook/appevents/ml/ModelManager$a;
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
            "Lcom/facebook/appevents/ml/ModelManager$a;",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/ml/ModelManager$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "master"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "slaves"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/facebook/appevents/ml/ModelManager$a;->g()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/facebook/appevents/ml/ModelManager$a;->h()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-direct {p0, v0, v1}, Lcom/facebook/appevents/ml/ModelManager$a$a;->d(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/facebook/appevents/ml/ModelManager$a;->g()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/16 v1, 0x5f

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/facebook/appevents/ml/ModelManager$a;->h()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1}, Lcom/facebook/appevents/ml/ModelManager$a;->b()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance v1, Lb2/e;

    .line 55
    .line 56
    invoke-direct {v1, p2}, Lb2/e;-><init>(Ljava/util/List;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/appevents/ml/ModelManager$a$a;->e(Ljava/lang/String;Ljava/lang/String;La2/k$a;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
