.class public final Lcom/inmobi/media/p8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic u:I


# instance fields
.field public final a:Lorg/json/JSONObject;

.field public final b:B

.field public final c:Z

.field public final d:Lorg/json/JSONObject;

.field public final e:Lcom/inmobi/media/h8;

.field public final f:Lorg/json/JSONArray;

.field public g:Lcom/inmobi/media/p8;

.field public final h:Ljava/util/HashMap;

.field public final i:Ljava/util/HashMap;

.field public final j:Ljava/util/HashMap;

.field public final k:Ljava/util/HashMap;

.field public l:Lcom/inmobi/media/Ue;

.field public final m:Lcom/inmobi/commons/core/configs/AdConfig;

.field public final n:Lcom/inmobi/media/z5;

.field public final o:I

.field public final p:Lcom/inmobi/media/o8;

.field public q:Z

.field public r:Lcom/inmobi/media/F9;

.field public final s:Z

.field public final t:Ljava/util/Map;


# direct methods
.method public constructor <init>(ILorg/json/JSONObject;Lcom/inmobi/commons/core/configs/AdConfig;Ljava/util/HashMap;Lcom/inmobi/media/Ue;Lcom/inmobi/media/z5;)V
    .locals 10

    const-string v0, "pubContent"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfig"

    move-object v6, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    .line 1
    invoke-direct/range {v1 .. v9}, Lcom/inmobi/media/p8;-><init>(ILorg/json/JSONObject;Lcom/inmobi/media/p8;ZLcom/inmobi/commons/core/configs/AdConfig;Ljava/util/Map;Lcom/inmobi/media/Ue;Lcom/inmobi/media/z5;)V

    return-void
.end method

.method public constructor <init>(ILorg/json/JSONObject;Lcom/inmobi/media/p8;ZLcom/inmobi/commons/core/configs/AdConfig;Lcom/inmobi/media/z5;)V
    .locals 10

    const-string v0, "pubContent"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfig"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p3

    .line 2
    iget-object v7, v0, Lcom/inmobi/media/p8;->t:Ljava/util/Map;

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move-object v4, p3

    move v5, p4

    move-object/from16 v9, p6

    .line 3
    invoke-direct/range {v1 .. v9}, Lcom/inmobi/media/p8;-><init>(ILorg/json/JSONObject;Lcom/inmobi/media/p8;ZLcom/inmobi/commons/core/configs/AdConfig;Ljava/util/Map;Lcom/inmobi/media/Ue;Lcom/inmobi/media/z5;)V

    return-void
.end method

.method public constructor <init>(ILorg/json/JSONObject;Lcom/inmobi/media/p8;ZLcom/inmobi/commons/core/configs/AdConfig;Ljava/util/Map;Lcom/inmobi/media/Ue;Lcom/inmobi/media/z5;)V
    .locals 4

    .line 4
    const-string v0, "TAG"

    const-string v1, "orientation"

    const-string v2, "p8"

    const-string v3, "rewards"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/inmobi/media/p8;->o:I

    .line 6
    iput-object p3, p0, Lcom/inmobi/media/p8;->g:Lcom/inmobi/media/p8;

    .line 7
    iput-object p5, p0, Lcom/inmobi/media/p8;->m:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 8
    iput-object p2, p0, Lcom/inmobi/media/p8;->a:Lorg/json/JSONObject;

    const/4 p1, 0x0

    .line 9
    iput-byte p1, p0, Lcom/inmobi/media/p8;->b:B

    .line 10
    iput-boolean p1, p0, Lcom/inmobi/media/p8;->c:Z

    .line 11
    iput-object p7, p0, Lcom/inmobi/media/p8;->l:Lcom/inmobi/media/Ue;

    .line 12
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/inmobi/media/p8;->j:Ljava/util/HashMap;

    .line 13
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/inmobi/media/p8;->k:Ljava/util/HashMap;

    .line 14
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    iput-object p5, p0, Lcom/inmobi/media/p8;->i:Ljava/util/HashMap;

    .line 15
    new-instance p5, Lcom/inmobi/media/o8;

    invoke-direct {p5}, Lcom/inmobi/media/o8;-><init>()V

    iput-object p5, p0, Lcom/inmobi/media/p8;->p:Lcom/inmobi/media/o8;

    .line 16
    iput-boolean p4, p0, Lcom/inmobi/media/p8;->s:Z

    .line 17
    iput-object p6, p0, Lcom/inmobi/media/p8;->t:Ljava/util/Map;

    .line 18
    iput-object p8, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    .line 19
    :try_start_0
    const-string p4, "styleRefs"

    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    iput-object p4, p0, Lcom/inmobi/media/p8;->d:Lorg/json/JSONObject;

    .line 20
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    move p4, p1

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "getString(...)"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4}, Lcom/inmobi/media/p8;->h(Ljava/lang/String;)B

    move-result p4

    .line 22
    :goto_0
    iput-byte p4, p0, Lcom/inmobi/media/p8;->b:B

    .line 23
    const-string p4, "shouldAutoOpenLandingPage"

    const/4 p5, 0x1

    invoke-virtual {p2, p4, p5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p4

    iput-boolean p4, p0, Lcom/inmobi/media/p8;->q:Z

    .line 24
    const-string p4, "disableBackButton"

    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p4

    iput-boolean p4, p0, Lcom/inmobi/media/p8;->c:Z

    .line 25
    const-string p4, "rootContainer"

    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    .line 26
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    const-string p5, "CONTAINER"

    .line 28
    const-string p6, "/rootContainer"

    .line 29
    invoke-virtual {p0, p4, p5, p6}, Lcom/inmobi/media/p8;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/media/d8;

    move-result-object p4

    .line 30
    instance-of p5, p4, Lcom/inmobi/media/h8;

    const/4 p6, 0x0

    if-eqz p5, :cond_1

    check-cast p4, Lcom/inmobi/media/h8;

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_8

    :cond_1
    move-object p4, p6

    .line 31
    :goto_1
    iput-object p4, p0, Lcom/inmobi/media/p8;->e:Lcom/inmobi/media/h8;

    .line 32
    invoke-virtual {p0}, Lcom/inmobi/media/p8;->h()V

    .line 33
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 34
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/inmobi/media/p8;->h:Ljava/util/HashMap;

    .line 35
    :cond_2
    sget-object p4, Lcom/inmobi/media/h;->Companion:Lcom/inmobi/media/f;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p4, "pubContent"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 37
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 38
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p5

    if-eqz p5, :cond_4

    .line 39
    invoke-virtual {p5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p7

    .line 40
    :goto_2
    invoke-interface {p7}, Ljava/util/Iterator;->hasNext()Z

    move-result p8

    if-eqz p8, :cond_4

    .line 41
    invoke-interface {p7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Ljava/lang/String;

    .line 42
    invoke-virtual {p5, p8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-static {p8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p4, p8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    move-object p4, p6

    :cond_4
    if-eqz p4, :cond_5

    .line 44
    iget-object p5, p0, Lcom/inmobi/media/p8;->h:Ljava/util/HashMap;

    if-eqz p5, :cond_5

    invoke-virtual {p5, p4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 45
    :cond_5
    invoke-virtual {p0}, Lcom/inmobi/media/p8;->a()V

    .line 46
    invoke-virtual {p0}, Lcom/inmobi/media/p8;->b()V

    .line 47
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_6
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_10

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 48
    iget-object p5, p0, Lcom/inmobi/media/p8;->j:Ljava/util/HashMap;

    if-eqz p5, :cond_6

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p7

    invoke-virtual {p5, p7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/inmobi/media/d8;

    if-nez p5, :cond_7

    goto :goto_3

    .line 49
    :cond_7
    iget-byte p7, p5, Lcom/inmobi/media/d8;->m:B

    const/4 p8, 0x4

    if-ne p8, p7, :cond_6

    .line 50
    iget p7, p5, Lcom/inmobi/media/d8;->n:I

    const/4 p8, -0x1

    if-ne p7, p8, :cond_8

    .line 51
    iget p7, p5, Lcom/inmobi/media/d8;->o:I

    if-eq p7, p8, :cond_6

    .line 52
    :cond_8
    iget-object p7, p0, Lcom/inmobi/media/p8;->j:Ljava/util/HashMap;

    if-eqz p7, :cond_6

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p7, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/inmobi/media/d8;

    if-nez p4, :cond_9

    goto :goto_3

    .line 53
    :cond_9
    const-string p7, "VIDEO"

    .line 54
    iget-object p8, p4, Lcom/inmobi/media/d8;->c:Ljava/lang/String;

    .line 55
    invoke-static {p7, p8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_6

    .line 56
    instance-of p7, p4, Lcom/inmobi/media/c9;

    if-eqz p7, :cond_a

    move-object p7, p4

    check-cast p7, Lcom/inmobi/media/c9;

    goto :goto_4

    :cond_a
    move-object p7, p6

    :goto_4
    if-eqz p7, :cond_6

    invoke-virtual {p7}, Lcom/inmobi/media/c9;->d()Lcom/inmobi/media/Ve;

    move-result-object p7

    if-nez p7, :cond_b

    goto :goto_3

    .line 57
    :cond_b
    instance-of p8, p7, Lcom/inmobi/media/Ue;

    if-eqz p8, :cond_c

    check-cast p7, Lcom/inmobi/media/Ue;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :cond_c
    move-object p7, p6

    :goto_5
    if-nez p7, :cond_d

    goto :goto_3

    .line 58
    :cond_d
    :try_start_1
    invoke-virtual {p7}, Lcom/inmobi/media/Ue;->a()I

    move-result p7
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 59
    :catch_1
    :try_start_2
    iget-object p7, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz p7, :cond_e

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p8, "ArrayIndexOutOfBoundsException in getting media duration"

    check-cast p7, Lcom/inmobi/media/A5;

    invoke-virtual {p7, v2, p8}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    move p7, p1

    :goto_6
    if-nez p7, :cond_f

    .line 60
    iput p1, p5, Lcom/inmobi/media/d8;->n:I

    goto :goto_7

    .line 61
    :cond_f
    iget p8, p5, Lcom/inmobi/media/d8;->n:I

    .line 62
    invoke-static {p8, p7}, Lcom/inmobi/media/p8;->a(II)I

    move-result p8

    .line 63
    iput p8, p5, Lcom/inmobi/media/d8;->n:I

    .line 64
    iget p8, p5, Lcom/inmobi/media/d8;->o:I

    .line 65
    invoke-static {p8, p7}, Lcom/inmobi/media/p8;->a(II)I

    move-result p7

    .line 66
    iput p7, p5, Lcom/inmobi/media/d8;->o:I

    .line 67
    :goto_7
    check-cast p4, Lcom/inmobi/media/c9;

    .line 68
    const-string p7, "asset"

    invoke-static {p5, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object p4, p4, Lcom/inmobi/media/c9;->y:Ljava/util/ArrayList;

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 70
    :cond_10
    const-string p1, "pages"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_11

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    :cond_11
    iput-object p1, p0, Lcom/inmobi/media/p8;->f:Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_9

    .line 71
    :goto_8
    iget-object p2, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz p2, :cond_12

    .line 72
    const-string p3, "Exception while getting pagesArray - "

    invoke-static {v2, v0, p3}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/inmobi/media/E0;->a(Lorg/json/JSONException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 73
    check-cast p2, Lcom/inmobi/media/A5;

    invoke-virtual {p2, v2, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_9
    return-void
.end method

.method public static a(Ljava/lang/String;)B
    .locals 7

    .line 437
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "US"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-gt v3, v0, :cond_5

    if-nez v4, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    .line 439
    :goto_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    .line 440
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    if-gtz v5, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    if-nez v4, :cond_3

    if-nez v5, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 441
    :cond_5
    :goto_3
    invoke-static {v0, v1, p0, v3}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 442
    const-string v0, "NONE"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    .line 443
    :cond_6
    const-string v0, "EXIT"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    move v1, v2

    :goto_5
    return v1
.end method

.method public static a(I)I
    .locals 1

    int-to-float p0, p0

    .line 1
    invoke-static {}, Lcom/inmobi/media/U3;->b()F

    move-result v0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static a(II)I
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_4

    if-eqz p0, :cond_4

    const/16 v0, 0x19

    if-eq p0, v0, :cond_3

    const/16 v0, 0x32

    if-eq p0, v0, :cond_2

    const/16 v0, 0x4b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    .line 78
    div-int/lit8 p0, p1, 0x4

    goto :goto_0

    :cond_0
    move p0, p1

    goto :goto_0

    :cond_1
    mul-int/lit8 p1, p1, 0x3

    .line 79
    div-int/lit8 p0, p1, 0x4

    goto :goto_0

    .line 80
    :cond_2
    div-int/lit8 p0, p1, 0x2

    goto :goto_0

    .line 81
    :cond_3
    div-int/lit8 p0, p1, 0x4

    :cond_4
    :goto_0
    return p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 121
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "US"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-gt v3, v0, :cond_5

    if-nez v4, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    .line 123
    :goto_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    .line 124
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    if-gtz v5, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    if-nez v4, :cond_3

    if-nez v5, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 125
    :cond_5
    :goto_3
    invoke-static {v0, v1, p0, v3}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 126
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "EXTERNAL"

    sparse-switch v0, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v0, "EMBEDDED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    :sswitch_1
    const-string v0, "DEEPLINK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    :sswitch_2
    const-string v0, "INAPP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    :sswitch_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    :sswitch_4
    const-string v0, "DOWNLOAD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    :goto_4
    move-object p0, v1

    :cond_7
    :goto_5
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c3f4778 -> :sswitch_4
        -0x3de0ac35 -> :sswitch_3
        0x42926bc -> :sswitch_2
        0x542746e6 -> :sswitch_1
        0x5d7d0a8a -> :sswitch_0
    .end sparse-switch
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 11
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "US"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-gt v3, v0, :cond_5

    if-nez v4, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    .line 13
    :goto_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    .line 14
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    if-gtz v5, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    if-nez v4, :cond_3

    if-nez v5, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 15
    :cond_5
    :goto_3
    invoke-static {v0, v1, p0, v3}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "CONTAINER"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string v0, "webview"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_4

    .line 17
    :cond_6
    const-string v1, "WEBVIEW"

    goto/16 :goto_4

    .line 18
    :sswitch_1
    const-string v0, "video"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_4

    .line 19
    :cond_7
    const-string v1, "VIDEO"

    goto/16 :goto_4

    .line 20
    :sswitch_2
    const-string v0, "timer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_4

    .line 21
    :cond_8
    const-string v1, "TIMER"

    goto :goto_4

    .line 22
    :sswitch_3
    const-string v0, "image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_4

    .line 23
    :cond_9
    const-string v1, "IMAGE"

    goto :goto_4

    .line 24
    :sswitch_4
    const-string v0, "text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_4

    .line 25
    :cond_a
    const-string v1, "TEXT"

    goto :goto_4

    .line 26
    :sswitch_5
    const-string v0, "icon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_4

    .line 27
    :cond_b
    const-string v1, "ICON"

    goto :goto_4

    .line 28
    :sswitch_6
    const-string v0, "gif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_4

    .line 29
    :cond_c
    const-string v1, "GIF"

    goto :goto_4

    .line 30
    :sswitch_7
    const-string v0, "cta"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_4

    .line 31
    :cond_d
    const-string v1, "CTA"

    goto :goto_4

    .line 32
    :sswitch_8
    const-string v0, "container"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_4

    .line 33
    :sswitch_9
    const-string v0, "rating"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_4

    .line 34
    :cond_e
    const-string v1, "RATING"

    :goto_4
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x37ea4e63 -> :sswitch_9
        -0x187eb37f -> :sswitch_8
        0x18210 -> :sswitch_7
        0x18fc4 -> :sswitch_6
        0x313c79 -> :sswitch_5
        0x36452d -> :sswitch_4
        0x5faa95b -> :sswitch_3
        0x6940745 -> :sswitch_2
        0x6b0147b -> :sswitch_1
        0x48fb3bf9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 15
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "US"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-gt v3, v0, :cond_5

    if-nez v4, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    .line 17
    :goto_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    .line 18
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    if-gtz v5, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    if-nez v4, :cond_3

    if-nez v5, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 19
    :cond_5
    :goto_3
    invoke-static {v0, v1, p0, v3}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 20
    const-string v0, "straight"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    .line 21
    :cond_6
    const-string v1, "curved"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    move-object v0, v1

    :cond_7
    :goto_4
    return-object v0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 13
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "US"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-gt v3, v0, :cond_5

    if-nez v4, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    .line 15
    :goto_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    .line 16
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    if-gtz v5, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    if-nez v4, :cond_3

    if-nez v5, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 17
    :cond_5
    :goto_3
    invoke-static {v0, v1, p0, v3}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 18
    const-string v0, "none"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    .line 19
    :cond_6
    const-string v1, "line"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    move-object v0, v1

    :cond_7
    :goto_4
    return-object v0
.end method

.method public static f(Ljava/lang/String;)B
    .locals 7

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-gt v3, v0, :cond_5

    if-nez v4, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    .line 20
    :goto_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    .line 21
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    if-gtz v5, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    if-nez v4, :cond_3

    if-nez v5, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 22
    :cond_5
    :goto_3
    invoke-static {v0, v1, p0, v3}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 23
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "US"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v2, -0x36f20d66

    if-eq v0, v2, :cond_9

    const v2, -0x10fa53b6

    if-eq v0, v2, :cond_8

    const v2, 0x67010d77

    if-eq v0, v2, :cond_6

    goto :goto_4

    :cond_6
    const-string v0, "absolute"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_4

    :cond_7
    const/4 v1, 0x3

    goto :goto_4

    :cond_8
    const-string v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    const-string v0, "percentage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_4

    :cond_a
    const/4 v1, 0x4

    :goto_4
    return v1
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 28
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "US"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    const/16 v8, 0x20

    if-gt v6, v3, :cond_5

    if-nez v7, :cond_0

    move v9, v6

    goto :goto_1

    :cond_0
    move v9, v3

    .line 30
    :goto_1
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 31
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v9

    if-gtz v9, :cond_1

    move v9, v4

    goto :goto_2

    :cond_1
    move v9, v5

    :goto_2
    if-nez v7, :cond_3

    if-nez v9, :cond_2

    move v7, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    if-nez v9, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 32
    :cond_5
    :goto_3
    invoke-static {v3, v4, v0, v6}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v6, "TRACKER_EVENT_TYPE_FALLBACK_URL"

    sparse-switch v3, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v3, "CLIENT_FILL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    .line 34
    :cond_6
    const-string v6, "client_fill"

    goto/16 :goto_a

    .line 35
    :sswitch_1
    const-string v3, "VIDEO_VIEWABILITY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    .line 36
    :cond_7
    const-string v6, "VideoImpression"

    goto/16 :goto_a

    .line 37
    :sswitch_2
    const-string v3, "OMID_VIEWABILITY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    move-object v6, v3

    goto/16 :goto_a

    .line 38
    :sswitch_3
    const-string v3, "CLICK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4

    .line 39
    :cond_9
    const-string v6, "click"

    goto/16 :goto_a

    .line 40
    :sswitch_4
    const-string v3, "VIEW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_4

    .line 41
    :cond_a
    const-string v6, "page_view"

    goto/16 :goto_a

    .line 42
    :sswitch_5
    const-string v3, "LOAD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_4

    .line 43
    :cond_b
    const-string v6, "load"

    goto/16 :goto_a

    .line 44
    :sswitch_6
    const-string v3, "FALLBACK_URL_CLICK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_4

    .line 45
    :sswitch_7
    const-string v3, "RENDER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 46
    :goto_4
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    move v1, v5

    move v2, v1

    :goto_5
    if-gt v1, v0, :cond_11

    if-nez v2, :cond_c

    move v3, v1

    goto :goto_6

    :cond_c
    move v3, v0

    .line 48
    :goto_6
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 49
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v3

    if-gtz v3, :cond_d

    move v3, v4

    goto :goto_7

    :cond_d
    move v3, v5

    :goto_7
    if-nez v2, :cond_f

    if-nez v3, :cond_e

    move v2, v4

    goto :goto_5

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_f
    if-nez v3, :cond_10

    goto :goto_8

    :cond_10
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 50
    :cond_11
    :goto_8
    invoke-static {v0, v4, p0, v1}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6d77cd8f

    if-eq v0, v1, :cond_17

    const v1, -0x4181d3d0

    if-eq v0, v1, :cond_15

    const v1, 0x4f63005e

    if-eq v0, v1, :cond_13

    const v1, 0x503c30aa

    if-eq v0, v1, :cond_12

    goto :goto_9

    :cond_12
    const-string v0, "DOWNLOADER_INITIALIZED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto :goto_9

    .line 52
    :cond_13
    const-string v0, "DOWNLOADER_ERROR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto :goto_9

    .line 53
    :cond_14
    const-string v6, "TRACKER_EVENT_TYPE_DOWNLOADER_ERROR"

    goto :goto_a

    .line 54
    :cond_15
    const-string v0, "DOWNLOADER_DOWNLOADING"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_9

    .line 55
    :cond_16
    const-string v6, "TRACKER_EVENT_TYPE_DOWNLOADER_DOWNLOADING"

    goto :goto_a

    .line 56
    :cond_17
    const-string v0, "DOWNLOADER_DOWNLOADED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    .line 57
    :goto_9
    const-string v6, "unknown"

    goto :goto_a

    .line 58
    :cond_18
    const-string v6, "TRACKER_EVENT_TYPE_DOWNLOADER_DOWNLOADED"

    goto :goto_a

    .line 59
    :cond_19
    const-string v6, "Impression"

    :cond_1a
    :goto_a
    return-object v6

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7021ca6a -> :sswitch_7
        -0x31341ea5 -> :sswitch_6
        0x23bce6 -> :sswitch_5
        0x2832a5 -> :sswitch_4
        0x3d3cd68 -> :sswitch_3
        0x15f5beff -> :sswitch_2
        0x750e84e1 -> :sswitch_1
        0x77b5e577 -> :sswitch_0
    .end sparse-switch
.end method

.method public static h(Ljava/lang/String;)B
    .locals 7

    .line 53
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "US"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-gt v3, v0, :cond_5

    if-nez v4, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    .line 55
    :goto_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    .line 56
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    if-gtz v5, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    if-nez v4, :cond_3

    if-nez v5, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 57
    :cond_5
    :goto_3
    invoke-static {v0, v1, p0, v3}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v3, -0x60ed74c9

    if-eq v0, v3, :cond_9

    const v3, 0x2b77bb9b

    if-eq v0, v3, :cond_8

    const v1, 0x5545f2bb

    if-eq v0, v1, :cond_6

    goto :goto_4

    :cond_6
    const-string v0, "landscape"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_4

    :cond_7
    const/4 v1, 0x2

    goto :goto_5

    :cond_8
    const-string v0, "portrait"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_4

    :cond_9
    const-string v0, "unspecified"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_4
    move v1, v2

    :cond_a
    :goto_5
    return v1
.end method

.method public static i(Ljava/lang/String;)B
    .locals 7

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-gt v3, v0, :cond_5

    if-nez v4, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    .line 12
    :goto_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    .line 13
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    if-gtz v5, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    if-nez v4, :cond_3

    if-nez v5, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 14
    :cond_5
    :goto_3
    invoke-static {v0, v1, p0, v3}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 15
    const-string v0, "paged"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    .line 16
    :cond_6
    const-string v0, "free"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    move v1, v2

    :goto_5
    return v1
.end method

.method public static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 23
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "US"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-gt v3, v0, :cond_5

    if-nez v4, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    .line 25
    :goto_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    .line 26
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    if-gtz v5, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    if-nez v4, :cond_3

    if-nez v5, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 27
    :cond_5
    :goto_3
    invoke-static {v0, v1, p0, v3}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "none"

    sparse-switch v0, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_4

    .line 29
    :sswitch_1
    const-string v0, "bold"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_4

    :cond_6
    move-object v1, v0

    goto :goto_4

    .line 30
    :sswitch_2
    const-string v0, "strike"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_4

    .line 31
    :sswitch_3
    const-string v0, "underline"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_4

    .line 32
    :sswitch_4
    const-string v0, "italic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    :goto_4
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4642c5d0 -> :sswitch_4
        -0x3d363934 -> :sswitch_3
        -0x352aa04e -> :sswitch_2
        0x2e3a85 -> :sswitch_1
        0x33af38 -> :sswitch_0
    .end sparse-switch
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 8
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "US"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-gt v3, v0, :cond_5

    if-nez v4, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    .line 10
    :goto_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    .line 11
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    if-gtz v5, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    if-nez v4, :cond_3

    if-nez v5, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 12
    :cond_5
    :goto_3
    invoke-static {v0, v1, p0, v3}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x553d2421

    if-eq v0, v1, :cond_a

    const v1, -0x96c9d9e

    if-eq v0, v1, :cond_8

    const v1, 0x42376308

    if-eq v0, v1, :cond_6

    goto :goto_4

    :cond_6
    const-string v0, "URL_WEBVIEW_PING"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_4

    .line 14
    :cond_7
    const-string p0, "webview_ping"

    goto :goto_5

    .line 15
    :cond_8
    const-string v0, "URL_PING"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_4

    .line 16
    :cond_9
    const-string p0, "url_ping"

    goto :goto_5

    .line 17
    :cond_a
    const-string v0, "HTML_SCRIPT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    .line 18
    :goto_4
    const-string p0, "unknown"

    goto :goto_5

    .line 19
    :cond_b
    const-string p0, "html_script"

    :goto_5
    return-object p0
.end method

.method public static l(Ljava/lang/String;)B
    .locals 7

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-gt v3, v0, :cond_5

    if-nez v4, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    .line 12
    :goto_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    .line 13
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    if-gtz v5, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    if-nez v4, :cond_3

    if-nez v5, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 14
    :cond_5
    :goto_3
    invoke-static {v0, v1, p0, v3}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 15
    const-string v0, "absolute"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    .line 16
    :cond_6
    const-string v0, "reference"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    move v1, v2

    :goto_5
    return v1
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Z)I
    .locals 9

    const/4 v0, -0x1

    .line 424
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/inmobi/media/p8;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 425
    const-string p2, "delay"

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    const-string p2, "hideAfterDelay"

    .line 426
    :goto_0
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    .line 427
    :cond_1
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 428
    invoke-virtual {p0, p1}, Lcom/inmobi/media/p8;->e(Lorg/json/JSONObject;)B

    move-result v1

    const/4 v2, 0x3

    if-ne v2, v1, :cond_2

    goto :goto_1

    .line 429
    :cond_2
    invoke-virtual {p0, p1}, Lcom/inmobi/media/p8;->e(Lorg/json/JSONObject;)B

    move-result p1

    const/4 v1, 0x4

    if-ne v1, p1, :cond_6

    if-nez p2, :cond_3

    :goto_1
    move v0, p2

    goto :goto_4

    :cond_3
    const/4 p1, 0x1

    if-gt p1, p2, :cond_6

    const/16 p1, 0x65

    if-ge p2, p1, :cond_6

    const/16 p1, 0x19

    const/16 v2, 0x32

    const/16 v3, 0x4b

    const/16 v4, 0x64

    .line 430
    filled-new-array {p1, v2, v3, v4}, [I

    move-result-object p1

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v4, 0x0

    move v5, v0

    :goto_2
    if-ge v4, v1, :cond_5

    .line 431
    aget v6, p1, v4

    sub-int v6, p2, v6

    mul-int/2addr v6, v6

    int-to-double v6, v6

    cmpg-double v8, v6, v2

    if-gez v8, :cond_4

    move v5, v4

    move-wide v2, v6

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 432
    :cond_5
    aget v0, p1, v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 433
    :goto_3
    iget-object p2, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz p2, :cond_6

    .line 434
    const-string v1, "TAG"

    const-string v2, "Exception while getting assetDisplayOnDelay - "

    const-string v3, "p8"

    invoke-static {v3, v1, v2}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 435
    invoke-static {p1, v1}, Lcom/inmobi/media/E0;->a(Lorg/json/JSONException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 436
    check-cast p2, Lcom/inmobi/media/A5;

    invoke-virtual {p2, v3, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_4
    return v0
.end method

.method public final a(Lorg/json/JSONObject;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 2

    const-string v0, "finalGeometry"

    .line 418
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/inmobi/media/p8;->i(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 419
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 420
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 421
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x2

    .line 422
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/inmobi/media/p8;->a(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    const/4 v1, 0x3

    .line 423
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    invoke-static {p1}, Lcom/inmobi/media/p8;->a(I)I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    :catch_0
    :goto_0
    return-object p2
.end method

.method public final a(Lorg/json/JSONObject;)Lcom/inmobi/media/P8;
    .locals 2

    .line 484
    const-string v0, "startOffset"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/media/p8;->q(Lorg/json/JSONObject;)Lcom/inmobi/media/O8;

    move-result-object v0

    .line 485
    const-string v1, "timerDuration"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/inmobi/media/p8;->q(Lorg/json/JSONObject;)Lcom/inmobi/media/O8;

    move-result-object p1

    .line 486
    new-instance v1, Lcom/inmobi/media/P8;

    invoke-direct {v1, v0, p1}, Lcom/inmobi/media/P8;-><init>(Lcom/inmobi/media/O8;Lcom/inmobi/media/O8;)V

    return-object v1
.end method

.method public final a(ILjava/lang/String;Lorg/json/JSONObject;)Lcom/inmobi/media/U8;
    .locals 16

    move-object/from16 v1, p2

    move-object/from16 v0, p3

    .line 345
    const-string v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "getString(...)"

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 346
    const-string v2, ""

    goto :goto_4

    .line 347
    :cond_0
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    move v7, v5

    move v8, v7

    :goto_0
    if-gt v7, v3, :cond_6

    if-nez v8, :cond_1

    move v9, v7

    goto :goto_1

    :cond_1
    move v9, v3

    .line 349
    :goto_1
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    .line 350
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v9

    if-gtz v9, :cond_2

    move v9, v6

    goto :goto_2

    :cond_2
    move v9, v5

    :goto_2
    if-nez v8, :cond_4

    if-nez v9, :cond_3

    move v8, v6

    goto :goto_0

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    if-nez v9, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 351
    :cond_6
    :goto_3
    invoke-static {v3, v6, v2, v7}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 352
    :goto_4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 353
    const-string v6, "VideoImpression"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1c

    .line 354
    const-string v7, "events"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 355
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_7

    goto :goto_5

    :cond_7
    const-string v9, "http"

    const/4 v10, 0x2

    invoke-static {v2, v9, v5, v10, v8}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-static {v2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 356
    :cond_8
    invoke-static {v2, v9, v5, v10, v8}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    :cond_9
    :goto_5
    if-nez v7, :cond_a

    return-object v8

    .line 357
    :cond_a
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v7, :cond_1b

    .line 358
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    :goto_6
    if-ge v5, v9, :cond_1b

    .line 359
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 360
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const-string v12, "start"

    const-string v13, "creativeView"

    const-string v14, "Impression"

    const-string v15, "unknown"

    if-eqz v11, :cond_b

    goto/16 :goto_7

    :cond_b
    if-eqz v10, :cond_18

    .line 361
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto/16 :goto_7

    :sswitch_0
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    goto/16 :goto_7

    :cond_c
    move-object v15, v14

    goto/16 :goto_7

    .line 362
    :sswitch_1
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    goto/16 :goto_7

    :cond_d
    move-object v15, v13

    goto/16 :goto_7

    .line 363
    :sswitch_2
    const-string v11, "closeEndCard"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    goto/16 :goto_7

    :cond_e
    move-object v15, v11

    goto/16 :goto_7

    .line 364
    :sswitch_3
    const-string v11, "page_view"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    goto/16 :goto_7

    .line 365
    :sswitch_4
    const-string v11, "firstQuartile"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    goto/16 :goto_7

    .line 366
    :sswitch_5
    const-string v11, "OMID_VIEWABILITY"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    goto/16 :goto_7

    .line 367
    :sswitch_6
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    goto/16 :goto_7

    :cond_f
    move-object v15, v6

    goto/16 :goto_7

    .line 368
    :sswitch_7
    const-string v11, "exitFullscreen"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    goto/16 :goto_7

    .line 369
    :sswitch_8
    const-string v11, "fullscreen"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    goto/16 :goto_7

    .line 370
    :sswitch_9
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    goto/16 :goto_7

    :cond_10
    move-object v15, v12

    goto/16 :goto_7

    .line 371
    :sswitch_a
    const-string v11, "pause"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    goto/16 :goto_7

    .line 372
    :sswitch_b
    const-string v11, "error"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    goto/16 :goto_7

    .line 373
    :sswitch_c
    const-string v11, "click"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    goto/16 :goto_7

    .line 374
    :sswitch_d
    const-string v11, "mute"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    goto :goto_7

    .line 375
    :sswitch_e
    const-string v11, "load"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    goto :goto_7

    .line 376
    :cond_11
    const-string v15, "load"

    goto :goto_7

    .line 377
    :sswitch_f
    const-string v11, "client_fill"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    goto :goto_7

    .line 378
    :cond_12
    const-string v15, "client_fill"

    goto :goto_7

    .line 379
    :sswitch_10
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_7

    .line 380
    :sswitch_11
    const-string v11, "complete"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    goto :goto_7

    .line 381
    :cond_13
    const-string v15, "complete"

    goto :goto_7

    .line 382
    :sswitch_12
    const-string v11, "unmute"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_14

    goto :goto_7

    .line 383
    :cond_14
    const-string v15, "unmute"

    goto :goto_7

    .line 384
    :sswitch_13
    const-string v11, "resume"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_15

    goto :goto_7

    .line 385
    :cond_15
    const-string v15, "resume"

    goto :goto_7

    .line 386
    :sswitch_14
    const-string v11, "thirdQuartile"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_16

    goto :goto_7

    .line 387
    :cond_16
    const-string v15, "thirdQuartile"

    goto :goto_7

    .line 388
    :sswitch_15
    const-string v11, "midpoint"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_17

    goto :goto_7

    .line 389
    :cond_17
    const-string v15, "midpoint"

    .line 390
    :cond_18
    :goto_7
    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_19

    .line 391
    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_19

    .line 392
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 393
    :cond_19
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    .line 394
    :cond_1b
    const-string v5, "referencedEvents"

    invoke-virtual {v3, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 395
    :cond_1c
    invoke-static {v2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1d

    return-object v8

    .line 396
    :cond_1d
    :goto_8
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 397
    :try_start_0
    const-string v6, "params"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1e

    .line 398
    const-string v6, "params"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 399
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 400
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 401
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 402
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_a

    :cond_1e
    move-object/from16 v4, p0

    goto :goto_b

    .line 403
    :goto_a
    iget-object v6, v4, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v6, :cond_1f

    const-string v7, "p8"

    const-string v8, "TAG"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/inmobi/media/A5;

    const-string v7, "p8"

    const-string v8, "Failed to parser tracker.params"

    invoke-virtual {v6, v7, v8, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 404
    :cond_1f
    :goto_b
    new-instance v0, Lcom/inmobi/media/U8;

    move/from16 v6, p1

    invoke-direct {v0, v2, v6, v1, v5}, Lcom/inmobi/media/U8;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V

    .line 405
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/inmobi/media/U8;->e:Ljava/util/HashMap;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x61aea3b8 -> :sswitch_15
        -0x4fbdabf6 -> :sswitch_14
        -0x37b237d3 -> :sswitch_13
        -0x321793ce -> :sswitch_12
        -0x23bacec7 -> :sswitch_11
        -0x10fa53b6 -> :sswitch_10
        -0xa609e89 -> :sswitch_f
        0x32c4e6 -> :sswitch_e
        0x335219 -> :sswitch_d
        0x5a5c588 -> :sswitch_c
        0x5c4d208 -> :sswitch_b
        0x65825f6 -> :sswitch_a
        0x68ac462 -> :sswitch_9
        0x68f7bbb -> :sswitch_8
        0x6cac379 -> :sswitch_7
        0x151e1cc4 -> :sswitch_6
        0x15f5beff -> :sswitch_5
        0x21644853 -> :sswitch_4
        0x34afd255 -> :sswitch_3
        0x4fff2573 -> :sswitch_2
        0x69fcaef4 -> :sswitch_1
        0x7e026e29 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/inmobi/media/d8;)Lcom/inmobi/media/Ve;
    .locals 3

    .line 406
    invoke-virtual {p0, p1}, Lcom/inmobi/media/p8;->k(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VIDEO"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 407
    :try_start_0
    const-string v0, "assetValue"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 408
    :cond_0
    instance-of p1, p3, Lcom/inmobi/media/c9;

    if-eqz p1, :cond_1

    .line 409
    check-cast p3, Lcom/inmobi/media/c9;

    .line 410
    iget-object p1, p3, Lcom/inmobi/media/d8;->e:Ljava/lang/Object;

    .line 411
    instance-of p2, p1, Lcom/inmobi/media/Ve;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/inmobi/media/Ve;

    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 412
    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/p8;->m:Lcom/inmobi/commons/core/configs/AdConfig;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/AdConfig;->getVastVideo()Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 413
    new-instance p3, Lcom/inmobi/media/Pe;

    iget-object v0, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    invoke-direct {p3, p1, v0}, Lcom/inmobi/media/Pe;-><init>(Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;Lcom/inmobi/media/z5;)V

    invoke-virtual {p3, p2}, Lcom/inmobi/media/Pe;->a(Ljava/lang/String;)Lcom/inmobi/media/Ue;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-object v1

    .line 414
    :goto_1
    iget-object p2, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz p2, :cond_3

    .line 415
    const-string p3, "TAG"

    const-string v0, "Exception while getting videoDescriptor - "

    const-string v2, "p8"

    invoke-static {v2, p3, v0}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 416
    invoke-static {p1, p3}, Lcom/inmobi/media/E0;->a(Lorg/json/JSONException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 417
    check-cast p2, Lcom/inmobi/media/A5;

    invoke-virtual {p2, v2, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v1
.end method

.method public final a(Lcom/inmobi/media/p8;Lcom/inmobi/media/d8;)Lcom/inmobi/media/d8;
    .locals 4

    .line 2
    iget-object v0, p2, Lcom/inmobi/media/d8;->e:Ljava/lang/Object;

    .line 3
    instance-of v1, v0, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_7

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    new-instance v1, Lkotlin/text/Regex;

    const-string v3, "\\|"

    invoke-direct {v1, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lkotlin/text/Regex;->q(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v0

    .line 6
    new-array v1, v3, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, [Ljava/lang/String;

    .line 8
    aget-object v1, v0, v3

    invoke-virtual {p1, v1}, Lcom/inmobi/media/p8;->m(Ljava/lang/String;)Lcom/inmobi/media/d8;

    move-result-object v1

    if-nez v1, :cond_3

    .line 9
    iget-object p1, p1, Lcom/inmobi/media/p8;->g:Lcom/inmobi/media/p8;

    if-nez p1, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/media/p8;->a(Lcom/inmobi/media/p8;Lcom/inmobi/media/d8;)Lcom/inmobi/media/d8;

    move-result-object v2

    :goto_1
    return-object v2

    .line 11
    :cond_3
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v2

    .line 12
    :cond_4
    array-length p1, v0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_5

    .line 13
    iput-byte p2, v1, Lcom/inmobi/media/d8;->l:B

    return-object v1

    .line 14
    :cond_5
    aget-object p1, v0, p2

    invoke-static {p1}, Lcom/inmobi/media/m8;->a(Ljava/lang/String;)B

    move-result p1

    .line 15
    iput-byte p1, v1, Lcom/inmobi/media/d8;->l:B

    .line 16
    iget-object p1, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_6

    .line 17
    const-string p2, "TAG"

    const-string v0, "Referenced asset ( "

    const-string v2, "p8"

    invoke-static {v2, p2, v0}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 18
    iget-object v0, v1, Lcom/inmobi/media/d8;->b:Ljava/lang/String;

    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " )"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v2, p2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-object v1

    :cond_7
    :goto_2
    return-object v2
.end method

.method public final a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/media/d8;
    .locals 57

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    move-object/from16 v13, p3

    .line 82
    const-string v8, "transitionEffect"

    const-string v9, "NO_ACTION"

    const-string v10, "action"

    const-string v11, "assetOnFinish"

    const-string v12, "timerDuration"

    const-string v6, "startOffset"

    const-string v1, "videoViewabilityConfig"

    const-string v2, "completeAfter"

    const-string v3, "VIDEO"

    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/p8;->f(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/p8;->g(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v17, v9

    .line 84
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/p8;->i(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v9

    .line 85
    invoke-virtual {v7, v14, v9}, Lcom/inmobi/media/p8;->a(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    move-object/from16 v18, v8

    const-string v8, "TAG"

    move-object/from16 v19, v10

    const-string v10, "p8"

    const/16 v27, 0x0

    if-nez v0, :cond_2

    .line 86
    iget-object v0, v7, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    .line 87
    const-string v1, "Invalid asset style for asset: "

    invoke-static {v10, v8, v1, v5}, Lcom/inmobi/media/I6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v10, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 89
    :cond_0
    iget-object v0, v7, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_1

    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Asset style JSON: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v10, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_1
    return-object v27

    :cond_2
    move-object/from16 v20, v4

    .line 90
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/p8;->h(Lorg/json/JSONObject;)Landroid/graphics/Point;

    move-result-object v4

    move-object/from16 v21, v5

    .line 91
    invoke-virtual {v7, v15, v4}, Lcom/inmobi/media/p8;->b(Lorg/json/JSONObject;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v5

    move-object/from16 v22, v6

    .line 92
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/p8;->b(Lorg/json/JSONObject;)Landroid/graphics/Point;

    move-result-object v6

    move-object/from16 v23, v11

    .line 93
    invoke-virtual {v7, v15, v6}, Lcom/inmobi/media/p8;->a(Lorg/json/JSONObject;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v11

    .line 94
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/p8;->j(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v24, v12

    .line 95
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/p8;->e(Lorg/json/JSONObject;)B

    move-result v12

    move/from16 v28, v12

    const/4 v12, 0x1

    .line 96
    invoke-virtual {v7, v15, v12}, Lcom/inmobi/media/p8;->a(Lorg/json/JSONObject;Z)I

    move-result v13

    const/4 v12, 0x0

    move/from16 v26, v13

    .line 97
    invoke-virtual {v7, v15, v12}, Lcom/inmobi/media/p8;->a(Lorg/json/JSONObject;Z)I

    move-result v13

    .line 98
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/p8;->d(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v12

    .line 99
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/p8;->n(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/media/p8;->l(Ljava/lang/String;)B

    move-result v0

    move-object/from16 v29, v12

    .line 100
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/p8;->m(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v12

    .line 101
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v30

    if-eqz v30, :cond_7

    move/from16 v30, v13

    const/4 v13, 0x0

    .line 102
    :try_start_0
    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 103
    :try_start_1
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v13, :cond_3

    return-object v27

    :cond_3
    const/4 v13, 0x1

    if-ne v0, v13, :cond_5

    .line 104
    :try_start_2
    invoke-virtual {v7, v12}, Lcom/inmobi/media/p8;->m(Ljava/lang/String;)Lcom/inmobi/media/d8;

    move-result-object v16
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v16, :cond_4

    .line 105
    :try_start_3
    iget-object v0, v7, Lcom/inmobi/media/p8;->g:Lcom/inmobi/media/p8;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v12}, Lcom/inmobi/media/p8;->m(Ljava/lang/String;)Lcom/inmobi/media/d8;

    move-result-object v16
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_4
    move-object/from16 v0, v16

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_5
    move-object/from16 v0, v27

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_0
    move-object/from16 v16, v27

    goto :goto_1

    :catch_2
    move-exception v0

    const/4 v13, 0x1

    goto :goto_0

    :catch_3
    move-exception v0

    const/4 v13, 0x1

    move-object/from16 v12, v27

    move-object/from16 v16, v12

    .line 106
    :goto_1
    iget-object v13, v7, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    move-object/from16 v31, v12

    if-eqz v13, :cond_6

    .line 107
    const-string v12, "Exception while buildingAsset - "

    invoke-static {v10, v8, v12}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/inmobi/media/E0;->a(Lorg/json/JSONException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 108
    check-cast v13, Lcom/inmobi/media/A5;

    invoke-virtual {v13, v10, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_6
    move-object/from16 v0, v16

    move-object/from16 v12, v31

    goto :goto_2

    :cond_7
    move/from16 v30, v13

    move-object/from16 v0, v27

    move-object v12, v0

    .line 109
    :goto_2
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v13
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    move-object/from16 v16, v1

    const-string v1, "optString(...)"

    move-object/from16 v31, v1

    const-string v1, "fallbackUrl"

    move-object/from16 v32, v1

    const-string v1, "getJSONObject(...)"

    const-string v33, "EXTERNAL"

    move-object/from16 v34, v1

    const-string v1, "IMAGE"

    move-object/from16 v35, v1

    const-string v1, "supportLockScreen"

    move-object/from16 v36, v1

    const-string v1, "openMode"

    move-object/from16 v37, v1

    const-string v1, "assetOnclick"

    sparse-switch v13, :sswitch_data_0

    :goto_3
    move-object/from16 v51, v8

    move-object v2, v10

    move-object v3, v14

    move/from16 v38, v26

    :goto_4
    move/from16 v1, v28

    move/from16 v49, v30

    :goto_5
    move-object v14, v7

    goto/16 :goto_38

    :sswitch_0
    :try_start_5
    const-string v0, "WEBVIEW"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    if-nez v12, :cond_9

    return-object v27

    .line 110
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/p8;->p(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/inmobi/media/E9;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    const-string v1, "URL"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_7

    if-eqz v1, :cond_a

    :try_start_6
    invoke-static {v12}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    if-nez v1, :cond_a

    return-object v27

    :catch_4
    move-exception v0

    move-object v4, v7

    move-object v3, v8

    move-object v11, v10

    move/from16 v38, v26

    :goto_6
    move/from16 v53, v28

    move/from16 v49, v30

    goto/16 :goto_49

    :cond_a
    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v6

    move-object/from16 v13, v20

    move-object v4, v5

    const/4 v6, 0x1

    move-object v5, v11

    move v11, v6

    move-object v6, v9

    .line 113
    :try_start_7
    invoke-virtual/range {v1 .. v6}, Lcom/inmobi/media/p8;->a(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/media/e8;

    move-result-object v19

    .line 114
    new-instance v1, Lcom/inmobi/media/F9;

    .line 115
    const-string v2, "isScrollable"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v16, v1

    move-object/from16 v17, v13

    move-object/from16 v18, v21

    move-object/from16 v20, v12

    move/from16 v21, v2

    .line 116
    invoke-direct/range {v16 .. v21}, Lcom/inmobi/media/F9;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/e8;Ljava/lang/String;Z)V

    .line 117
    invoke-virtual {v1, v0}, Lcom/inmobi/media/F9;->e(Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6

    move-object/from16 v2, p3

    move/from16 v3, v26

    .line 118
    :try_start_8
    invoke-virtual {v1, v2}, Lcom/inmobi/media/d8;->c(Ljava/lang/String;)V

    .line 119
    const-string v0, "preload"

    const/4 v2, 0x0

    invoke-virtual {v15, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 120
    invoke-virtual {v1}, Lcom/inmobi/media/F9;->b()V

    .line 121
    iput-object v1, v7, Lcom/inmobi/media/p8;->r:Lcom/inmobi/media/F9;

    goto :goto_9

    :catch_5
    move-exception v0

    :goto_7
    move/from16 v38, v3

    :goto_8
    move-object v4, v7

    move-object v3, v8

    move-object v11, v10

    move-object/from16 v20, v13

    goto :goto_6

    :cond_b
    :goto_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_5

    move-object/from16 v27, v1

    move/from16 v38, v3

    :goto_a
    move-object v4, v7

    move-object/from16 v20, v13

    move/from16 v53, v28

    move/from16 v49, v30

    goto/16 :goto_3b

    :catch_6
    move-exception v0

    move/from16 v3, v26

    goto :goto_7

    :catch_7
    move-exception v0

    move-object/from16 v13, v20

    move/from16 v3, v26

    const/4 v11, 0x1

    move/from16 v38, v3

    move-object v4, v7

    move-object v3, v8

    move-object v11, v10

    goto :goto_6

    :sswitch_1
    move-object/from16 v13, v20

    move/from16 v38, v26

    const/4 v1, 0x1

    .line 122
    :try_start_9
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_d

    if-nez v17, :cond_c

    move-object/from16 v51, v8

    move-object v2, v10

    move-object/from16 v20, v13

    move-object v3, v14

    goto/16 :goto_4

    .line 123
    :cond_c
    :try_start_a
    iget-object v1, v7, Lcom/inmobi/media/p8;->i:Ljava/util/HashMap;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_c

    if-eqz v1, :cond_d

    :try_start_b
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_b

    :catch_8
    move-exception v0

    goto :goto_8

    :cond_d
    move-object/from16 v1, v27

    :goto_b
    if-eqz v1, :cond_e

    .line 124
    iget-object v1, v7, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_e

    .line 125
    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "One video asset already present! I will add this to the data model (for now) but ideally consider skipping this asset"

    .line 126
    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v10, v3}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_8

    .line 127
    :cond_e
    :try_start_c
    invoke-virtual {v7, v9}, Lcom/inmobi/media/p8;->a(Lorg/json/JSONObject;)Lcom/inmobi/media/P8;

    move-result-object v48

    .line 128
    new-instance v18, Lcom/inmobi/media/b9;

    .line 129
    iget v1, v4, Landroid/graphics/Point;->x:I

    iget v3, v4, Landroid/graphics/Point;->y:I

    .line 130
    iget v4, v6, Landroid/graphics/Point;->x:I

    iget v6, v6, Landroid/graphics/Point;->y:I

    .line 131
    iget v9, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_c

    move-object/from16 v35, v8

    .line 132
    :try_start_d
    iget v8, v11, Landroid/graphics/Point;->x:I

    iget v11, v11, Landroid/graphics/Point;->y:I

    move-object/from16 v39, v18

    move/from16 v40, v1

    move/from16 v41, v3

    move/from16 v42, v4

    move/from16 v43, v6

    move/from16 v44, v9

    move/from16 v45, v5

    move/from16 v46, v8

    move/from16 v47, v11

    .line 133
    invoke-direct/range {v39 .. v48}, Lcom/inmobi/media/b9;-><init>(IIIIIIIILcom/inmobi/media/P8;)V

    .line 134
    iget-object v1, v7, Lcom/inmobi/media/p8;->l:Lcom/inmobi/media/Ue;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_a

    if-eqz v1, :cond_f

    :goto_c
    move-object/from16 v19, v1

    goto :goto_11

    :cond_f
    if-nez v12, :cond_10

    .line 135
    :try_start_e
    const-string v12, ""
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_9

    goto :goto_10

    :catch_9
    move-exception v0

    :goto_d
    move-object v4, v7

    move-object v11, v10

    move-object/from16 v20, v13

    :goto_e
    move/from16 v53, v28

    move/from16 v49, v30

    :goto_f
    move-object/from16 v3, v35

    goto/16 :goto_49

    :cond_10
    :goto_10
    :try_start_f
    invoke-virtual {v7, v15, v12, v0}, Lcom/inmobi/media/p8;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/inmobi/media/d8;)Lcom/inmobi/media/Ve;

    move-result-object v1

    goto :goto_c

    .line 136
    :goto_11
    iget v1, v7, Lcom/inmobi/media/p8;->o:I
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_a

    const-string v5, "pauseAfter"

    const-string v6, "autoPlay"

    const-string v8, "showMute"

    const-string v9, "soundOn"

    const-string v11, "showProgress"

    const-string v12, "loop"

    const v3, 0x7fffffff

    if-nez v1, :cond_16

    if-eqz v0, :cond_15

    .line 137
    :try_start_10
    invoke-virtual {v0}, Lcom/inmobi/media/d8;->a()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "didRequestFullScreen"

    .line 138
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    check-cast v1, Ljava/lang/Boolean;

    goto :goto_12

    :cond_11
    move-object/from16 v1, v27

    .line 139
    :goto_12
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-boolean v1, v7, Lcom/inmobi/media/p8;->s:Z

    if-eqz v1, :cond_13

    :cond_12
    const/4 v1, 0x0

    goto :goto_13

    :cond_13
    move v1, v3

    move v12, v1

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/16 v20, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x1

    goto/16 :goto_17

    .line 140
    :goto_13
    invoke-virtual {v15, v12, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v1, 0x1

    .line 141
    invoke-virtual {v15, v11, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 142
    invoke-virtual {v15, v9, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 143
    invoke-virtual {v15, v8, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 144
    invoke-virtual {v15, v6, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 145
    instance-of v1, v0, Lcom/inmobi/media/c9;

    if-eqz v1, :cond_14

    .line 146
    move-object v1, v0

    check-cast v1, Lcom/inmobi/media/c9;

    invoke-virtual {v1}, Lcom/inmobi/media/c9;->b()I

    move-result v1

    :goto_14
    const-wide/16 v11, 0x0

    goto :goto_15

    :cond_14
    move v1, v3

    goto :goto_14

    .line 147
    :goto_15
    invoke-virtual {v15, v5, v11, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v11

    move v5, v9

    move-wide/from16 v55, v11

    move v12, v3

    move v11, v4

    move-wide/from16 v3, v55

    goto :goto_16

    :cond_15
    const/4 v1, 0x1

    .line 148
    invoke-virtual {v15, v12, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v12, 0x0

    .line 149
    invoke-virtual {v15, v11, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 150
    invoke-virtual {v15, v9, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 151
    invoke-virtual {v15, v8, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 152
    invoke-virtual {v15, v6, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 153
    invoke-virtual {v15, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    move v12, v4

    const-wide/16 v3, 0x0

    .line 154
    invoke-virtual {v15, v5, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_9

    move-wide v3, v2

    move v5, v9

    move v2, v12

    const v12, 0x7fffffff

    goto :goto_16

    :cond_16
    const/4 v3, 0x0

    .line 155
    :try_start_11
    invoke-virtual {v15, v12, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_a

    const/4 v4, 0x1

    .line 156
    :try_start_12
    invoke-virtual {v15, v11, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 157
    invoke-virtual {v15, v9, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 158
    invoke-virtual {v15, v8, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 159
    invoke-virtual {v15, v6, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const v12, 0x7fffffff

    .line 160
    invoke-virtual {v15, v2, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_b

    const-wide/16 v3, 0x0

    .line 161
    :try_start_13
    invoke-virtual {v15, v5, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    move v5, v9

    move/from16 v55, v2

    move v2, v1

    move/from16 v1, v55

    :goto_16
    double-to-int v3, v3

    move/from16 v22, v2

    move/from16 v20, v5

    move/from16 v24, v6

    move/from16 v23, v11

    .line 162
    :goto_17
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v4, v16

    .line 163
    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_a

    if-nez v5, :cond_17

    .line 164
    :try_start_14
    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 165
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 166
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 167
    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 168
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 169
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_9

    goto :goto_18

    .line 170
    :cond_17
    :try_start_15
    new-instance v4, Lcom/inmobi/media/c9;

    .line 171
    iget-object v5, v7, Lcom/inmobi/media/p8;->m:Lcom/inmobi/commons/core/configs/AdConfig;
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_a

    if-eqz v5, :cond_18

    :try_start_16
    invoke-virtual {v5}, Lcom/inmobi/commons/core/configs/AdConfig;->getRendering()Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    move-result-object v5

    if-eqz v5, :cond_18

    invoke-virtual {v5}, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->getEnablePubMuteControl()Z

    move-result v5
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_9

    move/from16 v26, v5

    goto :goto_19

    :cond_18
    const/16 v26, 0x0

    :goto_19
    move-object v15, v4

    move-object/from16 v16, v13

    move-object/from16 v17, v21

    move/from16 v21, v8

    .line 172
    :try_start_17
    invoke-direct/range {v15 .. v26}, Lcom/inmobi/media/c9;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/b9;Lcom/inmobi/media/Ve;ZZZZZLjava/util/ArrayList;Z)V

    .line 173
    invoke-virtual {v4, v2}, Lcom/inmobi/media/c9;->a(Ljava/util/HashMap;)V

    if-gtz v1, :cond_19

    goto :goto_1a

    :cond_19
    move v12, v1

    .line 174
    :goto_1a
    invoke-virtual {v4, v12}, Lcom/inmobi/media/c9;->c(I)V
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_a

    move-object/from16 v1, p3

    const/4 v8, 0x1

    .line 175
    :try_start_18
    invoke-virtual {v4, v1}, Lcom/inmobi/media/d8;->c(Ljava/lang/String;)V

    .line 176
    iput-object v0, v4, Lcom/inmobi/media/d8;->w:Lcom/inmobi/media/d8;

    if-nez v0, :cond_1a

    goto :goto_1b

    .line 177
    :cond_1a
    iput-object v4, v0, Lcom/inmobi/media/d8;->w:Lcom/inmobi/media/d8;

    :goto_1b
    if-eqz v3, :cond_1b

    .line 178
    invoke-virtual {v4, v3}, Lcom/inmobi/media/c9;->d(I)V

    .line 179
    :cond_1b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    move-object v0, v4

    move-object v4, v7

    move-object/from16 v20, v13

    move/from16 v53, v28

    move/from16 v49, v30

    goto/16 :goto_4a

    :catch_a
    move-exception v0

    :goto_1c
    const/4 v8, 0x1

    goto/16 :goto_d

    :catch_b
    move-exception v0

    move v8, v4

    goto/16 :goto_d

    :catch_c
    move-exception v0

    move-object/from16 v35, v8

    goto :goto_1c

    :catch_d
    move-exception v0

    move-object/from16 v35, v8

    move v8, v1

    goto/16 :goto_d

    :sswitch_2
    move-object/from16 v1, p3

    move-object/from16 v35, v8

    move-object/from16 v13, v20

    move/from16 v38, v26

    const/4 v8, 0x1

    .line 180
    const-string v0, "TIMER"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    :goto_1d
    move-object v2, v10

    move-object/from16 v20, v13

    move-object v3, v14

    move/from16 v1, v28

    move/from16 v49, v30

    move-object/from16 v51, v35

    goto/16 :goto_5

    :cond_1c
    move-object v12, v1

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v6

    move-object v4, v5

    move-object v5, v11

    move-object/from16 v11, v22

    move-object v6, v9

    .line 181
    invoke-virtual/range {v1 .. v6}, Lcom/inmobi/media/p8;->a(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/media/e8;

    move-result-object v0

    .line 182
    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 183
    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 184
    invoke-virtual {v7, v1}, Lcom/inmobi/media/p8;->q(Lorg/json/JSONObject;)Lcom/inmobi/media/O8;

    move-result-object v1

    move-object/from16 v2, v24

    goto :goto_1e

    :cond_1d
    move-object/from16 v2, v24

    move-object/from16 v1, v27

    .line 185
    :goto_1e
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 186
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 187
    invoke-virtual {v7, v2}, Lcom/inmobi/media/p8;->q(Lorg/json/JSONObject;)Lcom/inmobi/media/O8;

    move-result-object v2

    goto :goto_1f

    :cond_1e
    move-object/from16 v2, v27

    .line 188
    :goto_1f
    const-string v3, "displayTimer"

    invoke-virtual {v15, v3, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 189
    new-instance v4, Lcom/inmobi/media/P8;

    invoke-direct {v4, v1, v2}, Lcom/inmobi/media/P8;-><init>(Lcom/inmobi/media/O8;Lcom/inmobi/media/O8;)V

    .line 190
    new-instance v1, Lcom/inmobi/media/Q8;

    move-object/from16 v2, v21

    invoke-direct {v1, v13, v2, v0, v4}, Lcom/inmobi/media/Q8;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/e8;Lcom/inmobi/media/P8;)V

    .line 191
    invoke-virtual {v1, v3}, Lcom/inmobi/media/Q8;->a(Z)V

    move-object/from16 v2, v23

    .line 192
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 193
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/json/JSONObject;

    move-object/from16 v2, v19

    .line 194
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 195
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/inmobi/media/p8;->a(Ljava/lang/String;)B

    move-result v0

    invoke-virtual {v1, v0}, Lcom/inmobi/media/d8;->a(B)V

    .line 197
    :cond_1f
    invoke-virtual {v1, v12}, Lcom/inmobi/media/d8;->c(Ljava/lang/String;)V

    .line 198
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_20
    move-object/from16 v27, v1

    goto/16 :goto_a

    :sswitch_3
    move-object/from16 v12, p3

    move-object/from16 v13, v20

    move-object/from16 v2, v21

    move/from16 v38, v26

    move-object/from16 v0, v35

    move-object/from16 v35, v8

    const/4 v8, 0x1

    .line 199
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    goto/16 :goto_1d

    :cond_20
    move-object v8, v0

    move-object v7, v1

    move-object/from16 v16, v2

    :goto_21
    move-object/from16 v19, v10

    move-object/from16 v0, v31

    move-object/from16 v3, v32

    move-object/from16 v2, v34

    move-object/from16 v10, v37

    goto/16 :goto_22

    :sswitch_4
    move-object/from16 v15, p3

    move-object/from16 v35, v8

    move-object/from16 v13, v20

    move-object/from16 v2, v21

    move/from16 v38, v26

    const/4 v8, 0x1

    const-string v0, "TEXT"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_1d

    :cond_21
    move-object/from16 v1, p0

    move-object v3, v2

    move-object v2, v4

    move-object v4, v3

    move-object v3, v6

    move-object v6, v4

    move-object v4, v5

    move-object v5, v11

    move-object v11, v6

    move-object v6, v9

    .line 200
    invoke-virtual/range {v1 .. v6}, Lcom/inmobi/media/p8;->c(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/media/M8;

    move-result-object v0

    .line 201
    new-instance v1, Lcom/inmobi/media/N8;

    invoke-direct {v1, v13, v11, v0, v12}, Lcom/inmobi/media/N8;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/M8;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v1, v15}, Lcom/inmobi/media/d8;->c(Ljava/lang/String;)V

    .line 203
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_20

    :sswitch_5
    move-object/from16 v12, p3

    move-object/from16 v35, v8

    move-object/from16 v13, v20

    move-object/from16 v3, v21

    move/from16 v38, v26

    const/4 v8, 0x1

    .line 204
    const-string v0, "ICON"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_1d

    :cond_22
    move-object/from16 v1, p0

    move-object v2, v4

    move-object v4, v3

    move-object v3, v6

    move-object v6, v4

    move-object v4, v5

    move-object v5, v11

    move-object v11, v6

    move-object v6, v9

    .line 205
    invoke-virtual/range {v1 .. v6}, Lcom/inmobi/media/p8;->a(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/media/e8;

    move-result-object v0

    .line 206
    new-instance v1, Lcom/inmobi/media/t8;

    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/p8;->l(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v13, v11, v0, v2}, Lcom/inmobi/media/t8;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/e8;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v1, v12}, Lcom/inmobi/media/d8;->c(Ljava/lang/String;)V

    .line 208
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_9

    goto/16 :goto_20

    :sswitch_6
    move-object/from16 v12, p3

    move-object/from16 v13, v20

    move-object/from16 v16, v21

    move/from16 v38, v26

    move-object/from16 v0, v35

    move-object/from16 v35, v8

    const/4 v8, 0x1

    .line 209
    :try_start_19
    const-string v2, "GIF"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_19} :catch_16

    if-nez v2, :cond_23

    goto/16 :goto_1d

    :cond_23
    move-object v8, v0

    move-object v7, v1

    goto/16 :goto_21

    :goto_22
    move-object/from16 v1, p0

    move-object v12, v2

    move-object v2, v4

    move-object v4, v3

    const/16 v18, 0x0

    move-object v3, v6

    move-object v6, v4

    move-object v4, v5

    move-object v5, v11

    move-object v11, v6

    move-object v6, v9

    .line 210
    :try_start_1a
    invoke-virtual/range {v1 .. v6}, Lcom/inmobi/media/p8;->a(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/media/e8;

    move-result-object v1

    .line 211
    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_15

    if-nez v2, :cond_25

    .line 212
    :try_start_1b
    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 213
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 214
    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 215
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/inmobi/media/p8;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    goto :goto_23

    :catch_e
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v20, v13

    move-object/from16 v11, v19

    goto/16 :goto_e

    .line 217
    :cond_24
    :goto_23
    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_1b} :catch_e

    move-object/from16 v17, v33

    goto :goto_24

    :cond_25
    move-object/from16 v2, v27

    :goto_24
    if-eqz v25, :cond_26

    .line 219
    :try_start_1c
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_26
    move-object/from16 v6, p3

    move-object/from16 v20, v13

    move-object v5, v14

    move-object v3, v15

    move/from16 v15, v28

    move/from16 v49, v30

    const/4 v4, 0x1

    goto/16 :goto_28

    .line 220
    :cond_27
    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 221
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/p8;->l(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v12

    .line 222
    new-instance v0, Lcom/inmobi/media/u8;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_1c} :catch_10

    move-object/from16 v3, v35

    const/4 v4, 0x1

    move-object v8, v0

    move-object v9, v13

    move-object/from16 v5, v19

    move-object/from16 v10, v16

    move-object v11, v1

    move/from16 v6, v18

    move/from16 v1, v28

    move-object/from16 v6, p3

    move-object/from16 v20, v13

    move/from16 v49, v30

    move-object/from16 v13, v25

    move-object v5, v14

    move-object/from16 v14, v17

    move-object/from16 v35, v3

    move-object v3, v15

    move-object/from16 v15, p1

    :try_start_1d
    invoke-direct/range {v8 .. v15}, Lcom/inmobi/media/u8;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/e8;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_1d} :catch_f

    goto :goto_27

    :catch_f
    move-exception v0

    :goto_25
    move-object/from16 v4, p0

    move/from16 v53, v1

    :goto_26
    move-object/from16 v11, v19

    goto/16 :goto_f

    :catch_10
    move-exception v0

    move-object/from16 v20, v13

    move-object v5, v14

    move/from16 v1, v28

    move/from16 v49, v30

    const/4 v4, 0x1

    goto :goto_25

    :cond_28
    move-object/from16 v6, p3

    move-object/from16 v20, v13

    move-object v5, v14

    move-object v3, v15

    move/from16 v15, v28

    move/from16 v49, v30

    const/4 v4, 0x1

    .line 223
    :try_start_1e
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/p8;->l(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v12

    .line 224
    new-instance v0, Lcom/inmobi/media/s8;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_1e} :catch_11

    move-object v8, v0

    move-object/from16 v9, v20

    move-object/from16 v10, v16

    move-object v11, v1

    move-object/from16 v13, v25

    move-object/from16 v14, v17

    move v1, v15

    move-object/from16 v15, p1

    :try_start_1f
    invoke-direct/range {v8 .. v15}, Lcom/inmobi/media/s8;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/e8;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_1f} :catch_f

    :goto_27
    move v15, v1

    goto :goto_2a

    :catch_11
    move-exception v0

    move v1, v15

    goto :goto_25

    .line 225
    :goto_28
    :try_start_20
    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_20} :catch_14

    if-eqz v0, :cond_29

    .line 226
    :try_start_21
    new-instance v0, Lcom/inmobi/media/u8;

    .line 227
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/p8;->l(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v12

    move-object v8, v0

    move-object/from16 v9, v20

    move-object/from16 v10, v16

    move-object v11, v1

    move-object/from16 v13, v17

    move-object/from16 v14, p1

    .line 228
    invoke-direct/range {v8 .. v14}, Lcom/inmobi/media/u8;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/e8;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_21} :catch_12

    goto :goto_2a

    :catch_12
    move-exception v0

    move-object/from16 v4, p0

    :goto_29
    move/from16 v53, v15

    goto :goto_26

    .line 229
    :cond_29
    :try_start_22
    new-instance v0, Lcom/inmobi/media/s8;

    .line 230
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/p8;->l(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v12

    move-object v8, v0

    move-object/from16 v9, v20

    move-object/from16 v10, v16

    move-object v11, v1

    move-object/from16 v13, v17

    move-object/from16 v14, p1

    .line 231
    invoke-direct/range {v8 .. v14}, Lcom/inmobi/media/s8;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/e8;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 232
    :goto_2a
    invoke-virtual {v0, v6}, Lcom/inmobi/media/d8;->c(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_22} :catch_14

    if-eqz v1, :cond_2a

    move-object/from16 v7, v36

    const/4 v6, 0x0

    .line 234
    :try_start_23
    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_23} :catch_12

    goto :goto_2b

    :cond_2a
    const/4 v6, 0x0

    move v12, v6

    .line 235
    :goto_2b
    :try_start_24
    iput-boolean v12, v0, Lcom/inmobi/media/d8;->i:Z
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_24} :catch_14

    move-object/from16 v8, p0

    .line 236
    :try_start_25
    invoke-virtual {v8, v0, v3}, Lcom/inmobi/media/p8;->b(Lcom/inmobi/media/d8;Lorg/json/JSONObject;)V

    if-eqz v2, :cond_2b

    .line 237
    invoke-virtual {v0, v2}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;)V

    goto :goto_2d

    :catch_13
    move-exception v0

    :goto_2c
    move-object v4, v8

    goto :goto_29

    :cond_2b
    :goto_2d
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_25} :catch_13

    move-object v4, v8

    move/from16 v53, v15

    goto/16 :goto_4a

    :catch_14
    move-exception v0

    move-object/from16 v8, p0

    goto :goto_2c

    :catch_15
    move-exception v0

    move-object/from16 v8, p0

    move-object/from16 v20, v13

    move-object v5, v14

    move/from16 v15, v28

    move/from16 v49, v30

    const/4 v4, 0x1

    goto :goto_2c

    :catch_16
    move-exception v0

    move v4, v8

    move-object/from16 v19, v10

    move-object/from16 v20, v13

    move-object v5, v14

    move/from16 v15, v28

    move/from16 v49, v30

    move-object v8, v7

    goto :goto_2c

    :sswitch_7
    move-object v7, v1

    move-object v13, v5

    move-object/from16 v19, v6

    move-object/from16 v35, v8

    move-object v5, v14

    move-object v3, v15

    move-object/from16 v16, v21

    move/from16 v38, v26

    move/from16 v15, v28

    move/from16 v49, v30

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    const/4 v8, 0x1

    move-object/from16 v6, p3

    move-object v14, v10

    move-object/from16 v31, v12

    move-object/from16 v12, v34

    move-object/from16 v10, v37

    .line 238
    :try_start_26
    const-string v2, "CTA"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    move-object v3, v5

    move-object v2, v14

    move v1, v15

    move-object/from16 v51, v35

    move-object/from16 v14, p0

    goto/16 :goto_38

    .line 239
    :cond_2c
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_26} :catch_1e

    if-eqz v2, :cond_2d

    return-object v27

    :cond_2d
    move-object v2, v1

    move-object/from16 v1, p0

    move-object/from16 v50, v2

    move-object v2, v4

    move-object/from16 v4, v35

    move-object/from16 v3, v19

    move-object/from16 v8, p1

    move-object/from16 v51, v4

    move-object v4, v13

    move-object v5, v11

    move-object v11, v6

    move-object v6, v9

    .line 240
    :try_start_27
    invoke-virtual/range {v1 .. v6}, Lcom/inmobi/media/p8;->b(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/media/k8;

    move-result-object v1

    .line 241
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_27} :catch_1d

    if-eqz v2, :cond_2e

    .line 242
    :try_start_28
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_28} :catch_17

    const/4 v6, 0x1

    if-ne v2, v6, :cond_2f

    move-object/from16 v2, v33

    goto :goto_2f

    :catch_17
    move-exception v0

    const/4 v6, 0x1

    move-object/from16 v4, p0

    move-object v11, v14

    move/from16 v53, v15

    :goto_2e
    move-object/from16 v3, v51

    goto/16 :goto_49

    :cond_2e
    const/4 v6, 0x1

    .line 243
    :cond_2f
    :try_start_29
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 244
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/inmobi/media/p8;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 246
    :goto_2f
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v5, v50

    .line 247
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_29} :catch_1c

    if-eqz v25, :cond_30

    .line 248
    :try_start_2a
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_30
    move-object/from16 v4, p2

    move-object v5, v14

    move v9, v15

    goto :goto_31

    .line 249
    :cond_31
    new-instance v0, Lcom/inmobi/media/l8;
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_2a} :catch_19

    move-object/from16 v4, p2

    move-object v13, v0

    move-object v5, v14

    move-object/from16 v14, v20

    move v9, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v1

    move-object/from16 v17, v31

    move-object/from16 v18, v25

    move-object/from16 v19, v2

    :try_start_2b
    invoke-direct/range {v13 .. v19}, Lcom/inmobi/media/l8;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/k8;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_2b} :catch_18

    goto :goto_32

    :catch_18
    move-exception v0

    :goto_30
    move-object/from16 v4, p0

    move-object v11, v5

    move/from16 v53, v9

    goto :goto_2e

    :catch_19
    move-exception v0

    move-object/from16 v4, p2

    move-object v5, v14

    move v9, v15

    goto :goto_30

    .line 250
    :goto_31
    :try_start_2c
    new-instance v0, Lcom/inmobi/media/l8;

    move-object v13, v0

    move-object/from16 v14, v20

    move-object/from16 v15, v16

    move-object/from16 v16, v1

    move-object/from16 v17, v31

    move-object/from16 v18, v2

    invoke-direct/range {v13 .. v18}, Lcom/inmobi/media/l8;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/k8;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :goto_32
    invoke-virtual {v0, v11}, Lcom/inmobi/media/d8;->c(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_2c} :catch_1b

    if-eqz v1, :cond_32

    move-object/from16 v2, v36

    const/4 v15, 0x0

    .line 253
    :try_start_2d
    invoke-virtual {v1, v2, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_2d} :catch_18

    goto :goto_33

    :cond_32
    const/4 v15, 0x0

    move v12, v15

    .line 254
    :goto_33
    :try_start_2e
    iput-boolean v12, v0, Lcom/inmobi/media/d8;->i:Z
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_2e} :catch_1b

    move-object/from16 v14, p0

    .line 255
    :try_start_2f
    invoke-virtual {v14, v0, v8}, Lcom/inmobi/media/p8;->b(Lcom/inmobi/media/d8;Lorg/json/JSONObject;)V

    .line 256
    invoke-virtual {v0, v3}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;)V

    .line 257
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    move-object/from16 v27, v0

    :goto_34
    move/from16 v53, v9

    goto/16 :goto_3a

    :catch_1a
    move-exception v0

    :goto_35
    move-object v11, v5

    move/from16 v53, v9

    :goto_36
    move-object v4, v14

    goto/16 :goto_2e

    :catch_1b
    move-exception v0

    :goto_37
    move-object/from16 v14, p0

    goto :goto_35

    :catch_1c
    move-exception v0

    move-object/from16 v4, p2

    move-object v5, v14

    move v9, v15

    goto :goto_37

    :catch_1d
    move-exception v0

    move-object/from16 v4, p2

    move-object v5, v14

    move v9, v15

    const/4 v6, 0x1

    goto :goto_37

    :catch_1e
    move-exception v0

    move-object v4, v5

    move v6, v8

    move-object v5, v14

    move v9, v15

    move-object/from16 v51, v35

    goto :goto_37

    :sswitch_8
    move-object/from16 v51, v8

    move-object v5, v10

    move-object v4, v14

    move/from16 v38, v26

    move/from16 v9, v28

    move/from16 v49, v30

    const/4 v6, 0x1

    move-object v14, v7

    .line 258
    const-string v0, "RATING"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    move-object v3, v4

    move-object v2, v5

    move v1, v9

    goto :goto_38

    .line 259
    :cond_33
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_2f} :catch_1a

    goto :goto_34

    :sswitch_9
    move-object v13, v5

    move-object/from16 v19, v6

    move-object/from16 v51, v8

    move-object v2, v10

    move-object v3, v14

    move-object v8, v15

    move-object/from16 v16, v21

    move/from16 v38, v26

    move/from16 v49, v30

    move-object/from16 v0, v31

    move-object/from16 v5, v32

    move-object/from16 v12, v34

    move-object/from16 v52, v36

    move-object/from16 v10, v37

    const/4 v15, 0x0

    move-object v14, v7

    move-object v7, v1

    move/from16 v1, v28

    .line 260
    :try_start_30
    const-string v6, "CONTAINER"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_30} :catch_26

    if-nez v6, :cond_36

    .line 261
    :goto_38
    :try_start_31
    iget-object v0, v14, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_31} :catch_20

    if-eqz v0, :cond_34

    move-object/from16 v6, v51

    :try_start_32
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "Unknown assetType ( null ) received in adResponse"

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, v4}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_32} :catch_1f

    move/from16 v53, v1

    goto :goto_3a

    :catch_1f
    move-exception v0

    :goto_39
    move/from16 v53, v1

    move-object v11, v2

    move-object v3, v6

    move-object v4, v14

    goto/16 :goto_49

    :cond_34
    move/from16 v53, v1

    :goto_3a
    move-object v4, v14

    :cond_35
    :goto_3b
    move-object/from16 v0, v27

    goto/16 :goto_4a

    :catch_20
    move-exception v0

    move-object/from16 v6, v51

    goto :goto_39

    :cond_36
    move/from16 v53, v1

    move-object/from16 v6, v51

    move-object/from16 v1, p0

    move-object/from16 v54, v2

    move-object v2, v4

    move-object/from16 v3, v19

    move-object v4, v13

    move-object v13, v5

    move-object v5, v11

    move-object v11, v6

    const/16 v19, 0x1

    move-object v6, v9

    .line 262
    :try_start_33
    invoke-virtual/range {v1 .. v6}, Lcom/inmobi/media/p8;->a(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/media/e8;

    move-result-object v1

    .line 263
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 264
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 265
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 266
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 267
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/inmobi/media/p8;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    goto :goto_3d

    :catch_21
    move-exception v0

    move-object v3, v11

    move-object v4, v14

    :goto_3c
    move-object/from16 v11, v54

    goto/16 :goto_49

    .line 269
    :cond_37
    :goto_3d
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, v18

    move-object/from16 v17, v33

    goto :goto_3e

    :cond_38
    move-object/from16 v3, v18

    move-object/from16 v2, v27

    .line 271
    :goto_3e
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 272
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/inmobi/media/p8;->i(Ljava/lang/String;)B

    move-result v0
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_33 .. :try_end_33} :catch_21

    goto :goto_3f

    :cond_39
    move v0, v15

    :goto_3f
    if-eqz v25, :cond_3a

    .line 274
    :try_start_34
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3b

    :cond_3a
    move-object v5, v8

    move-object v3, v11

    move-object v4, v14

    move v6, v15

    goto :goto_42

    .line 275
    :cond_3b
    new-instance v3, Lcom/inmobi/media/h8;
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_34} :catch_23

    move-object v5, v8

    move-object v4, v14

    move/from16 v6, v19

    move-object v8, v3

    move-object/from16 v9, v20

    move-object/from16 v10, v16

    move-object v14, v11

    move-object v11, v1

    move-object/from16 v12, v25

    move-object/from16 v13, v17

    move-object v1, v14

    move-object/from16 v14, p1

    move v6, v15

    move v15, v0

    :try_start_35
    invoke-direct/range {v8 .. v15}, Lcom/inmobi/media/h8;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/e8;Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;B)V
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_35} :catch_22

    move-object v15, v3

    move-object v3, v1

    :goto_40
    move-object/from16 v1, p3

    goto :goto_43

    :catch_22
    move-exception v0

    :goto_41
    move-object v3, v1

    goto :goto_3c

    :catch_23
    move-exception v0

    move-object v1, v11

    move-object v4, v14

    goto :goto_41

    .line 276
    :goto_42
    :try_start_36
    new-instance v15, Lcom/inmobi/media/h8;

    move-object v8, v15

    move-object/from16 v9, v20

    move-object/from16 v10, v16

    move-object v11, v1

    move-object/from16 v12, v17

    move-object/from16 v13, p1

    move v14, v0

    invoke-direct/range {v8 .. v14}, Lcom/inmobi/media/h8;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/e8;Ljava/lang/String;Lorg/json/JSONObject;B)V

    goto :goto_40

    .line 277
    :goto_43
    invoke-virtual {v15, v1}, Lcom/inmobi/media/d8;->c(Ljava/lang/String;)V

    move-object/from16 v0, v52

    .line 278
    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 279
    iput-boolean v8, v15, Lcom/inmobi/media/d8;->i:Z

    if-eqz v2, :cond_3c

    .line 280
    invoke-virtual {v15, v2}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;)V

    goto :goto_44

    :catch_24
    move-exception v0

    goto/16 :goto_3c

    .line 281
    :cond_3c
    :goto_44
    invoke-virtual {v4, v15, v5}, Lcom/inmobi/media/p8;->b(Lcom/inmobi/media/d8;Lorg/json/JSONObject;)V

    .line 282
    const-string v2, "assetValue"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v12, v6

    .line 283
    :goto_45
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v12, v8, :cond_40

    .line 284
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".assetValue["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 285
    invoke-virtual {v2, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 286
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 287
    invoke-virtual {v4, v9}, Lcom/inmobi/media/p8;->k(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/inmobi/media/p8;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 288
    invoke-virtual {v4, v9, v10, v8}, Lcom/inmobi/media/p8;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/media/d8;

    move-result-object v10

    if-nez v10, :cond_3e

    .line 289
    iget-object v8, v4, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_36} :catch_24

    if-eqz v8, :cond_3d

    move-object/from16 v11, v54

    :try_start_37
    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot build asset from JSON: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v9, 0x20

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    check-cast v8, Lcom/inmobi/media/A5;

    invoke-virtual {v8, v11, v9}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_46
    const/4 v8, 0x1

    goto :goto_48

    :catch_25
    move-exception v0

    goto :goto_49

    :cond_3d
    move-object/from16 v11, v54

    goto :goto_46

    :cond_3e
    move-object/from16 v11, v54

    .line 290
    invoke-virtual {v10, v8}, Lcom/inmobi/media/d8;->c(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v10, v15}, Lcom/inmobi/media/d8;->a(Lcom/inmobi/media/h8;)V

    .line 292
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_3f

    .line 293
    invoke-virtual {v8, v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    goto :goto_47

    :cond_3f
    move v8, v6

    .line 294
    :goto_47
    iput-boolean v8, v15, Lcom/inmobi/media/d8;->i:Z

    .line 295
    invoke-virtual {v15, v10}, Lcom/inmobi/media/h8;->a(Lcom/inmobi/media/d8;)V

    goto :goto_46

    :goto_48
    add-int/2addr v12, v8

    move-object/from16 v54, v11

    goto :goto_45

    :cond_40
    move-object/from16 v11, v54

    .line 296
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_37} :catch_25

    move-object/from16 v27, v15

    goto/16 :goto_3b

    :catch_26
    move-exception v0

    move/from16 v53, v1

    move-object v11, v2

    goto/16 :goto_36

    .line 297
    :goto_49
    iget-object v1, v4, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_35

    .line 298
    const-string v2, "Exception while building assetTypes - "

    invoke-static {v11, v3, v2}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/inmobi/media/E0;->a(Lorg/json/JSONException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 299
    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v11, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :goto_4a
    if-eqz v0, :cond_44

    move/from16 v1, v53

    .line 300
    invoke-virtual {v0, v1}, Lcom/inmobi/media/d8;->b(B)V

    move/from16 v1, v38

    .line 301
    invoke-virtual {v0, v1}, Lcom/inmobi/media/d8;->b(I)V

    move/from16 v1, v49

    .line 302
    invoke-virtual {v0, v1}, Lcom/inmobi/media/d8;->a(I)V

    .line 303
    invoke-static/range {v29 .. v29}, Lcom/inmobi/media/d8;->d(Ljava/lang/String;)V

    .line 304
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_41

    .line 305
    iget-object v1, v4, Lcom/inmobi/media/p8;->k:Ljava/util/HashMap;

    if-eqz v1, :cond_41

    move-object/from16 v2, v20

    move-object/from16 v3, v29

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_4b

    :cond_41
    move-object/from16 v2, v20

    .line 306
    :goto_4b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_42

    iget-object v1, v4, Lcom/inmobi/media/p8;->j:Ljava/util/HashMap;

    if-eqz v1, :cond_42

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 307
    iget-object v1, v4, Lcom/inmobi/media/p8;->j:Ljava/util/HashMap;

    if-eqz v1, :cond_42

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 308
    :cond_42
    iget-object v1, v4, Lcom/inmobi/media/p8;->i:Ljava/util/HashMap;

    move-object/from16 v2, p2

    if-eqz v1, :cond_43

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_43

    .line 309
    iget-object v1, v4, Lcom/inmobi/media/p8;->i:Ljava/util/HashMap;

    if-eqz v1, :cond_44

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_44

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 310
    :cond_43
    iget-object v1, v4, Lcom/inmobi/media/p8;->i:Ljava/util/HashMap;

    if-eqz v1, :cond_44

    filled-new-array {v0}, [Lcom/inmobi/media/d8;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_44
    :goto_4c
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7266a39f -> :sswitch_9
        -0x70575a63 -> :sswitch_8
        0x105f0 -> :sswitch_7
        0x113a4 -> :sswitch_6
        0x223479 -> :sswitch_5
        0x273d2d -> :sswitch_4
        0x428b13b -> :sswitch_3
        0x4c20f25 -> :sswitch_2
        0x4de1c5b -> :sswitch_1
        0x73c6c7d9 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/media/e8;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 444
    const-string v6, "border"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "none"

    const/16 v9, 0x20

    const-string v10, "#ff000000"

    const-string v11, "straight"

    const-string v12, "getString(...)"

    const/4 v14, 0x1

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    move-object/from16 v26, v8

    move-object/from16 v28, v10

    move-object/from16 v27, v11

    goto/16 :goto_6

    .line 445
    :cond_1
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 446
    const-string v7, "style"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 447
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/inmobi/media/p8;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 448
    const-string v7, "corner"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    goto :goto_1

    .line 449
    :cond_2
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    invoke-static {v7}, Lcom/inmobi/media/p8;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 451
    :goto_1
    const-string v7, "color"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    goto :goto_0

    .line 452
    :cond_3
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v14

    const/4 v10, 0x0

    const/4 v15, 0x0

    :goto_2
    if-gt v10, v7, :cond_9

    if-nez v15, :cond_4

    move v13, v10

    goto :goto_3

    :cond_4
    move v13, v7

    .line 454
    :goto_3
    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 455
    invoke-static {v13, v9}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v13

    if-gtz v13, :cond_5

    move v13, v14

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    :goto_4
    if-nez v15, :cond_7

    if-nez v13, :cond_6

    move v15, v14

    goto :goto_2

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_7
    if-nez v13, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 456
    :cond_9
    :goto_5
    invoke-static {v7, v14, v6, v10}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 457
    :goto_6
    const-string v6, "backgroundColor"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 458
    const-string v6, "#00000000"

    :goto_7
    move-object/from16 v29, v6

    goto :goto_c

    .line 459
    :cond_a
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 460
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v14

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_8
    if-gt v8, v7, :cond_10

    if-nez v10, :cond_b

    move v11, v8

    goto :goto_9

    :cond_b
    move v11, v7

    .line 461
    :goto_9
    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 462
    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v11

    if-gtz v11, :cond_c

    move v11, v14

    goto :goto_a

    :cond_c
    const/4 v11, 0x0

    :goto_a
    if-nez v10, :cond_e

    if-nez v11, :cond_d

    move v10, v14

    goto :goto_8

    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_e
    if-nez v11, :cond_f

    goto :goto_b

    :cond_f
    add-int/lit8 v7, v7, -0x1

    goto :goto_8

    .line 463
    :cond_10
    :goto_b
    invoke-static {v7, v14, v6, v8}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 464
    :goto_c
    const-string v6, "contentMode"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "fill"

    if-eqz v7, :cond_12

    :cond_11
    move-object/from16 v25, v8

    goto/16 :goto_12

    .line 465
    :cond_12
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 466
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 467
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v14

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_d
    if-gt v10, v7, :cond_18

    if-nez v11, :cond_13

    move v12, v10

    goto :goto_e

    :cond_13
    move v12, v7

    .line 468
    :goto_e
    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 469
    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v12

    if-gtz v12, :cond_14

    move v12, v14

    goto :goto_f

    :cond_14
    const/4 v12, 0x0

    :goto_f
    if-nez v11, :cond_16

    if-nez v12, :cond_15

    move v11, v14

    goto :goto_d

    :cond_15
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_16
    if-nez v12, :cond_17

    goto :goto_10

    :cond_17
    add-int/lit8 v7, v7, -0x1

    goto :goto_d

    .line 470
    :cond_18
    :goto_10
    invoke-static {v7, v14, v6, v10}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 471
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v9, -0x60ed74c9

    const-string v10, "unspecified"

    if-eq v7, v9, :cond_1d

    const v9, -0x512e7f67

    if-eq v7, v9, :cond_1c

    const v9, 0x2ff583

    if-eq v7, v9, :cond_1b

    const v8, 0x2b5e91fb

    if-eq v7, v8, :cond_19

    goto :goto_11

    :cond_19
    const-string v7, "aspectFill"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    goto :goto_11

    :cond_1a
    move-object/from16 v25, v7

    goto :goto_12

    .line 472
    :cond_1b
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    goto :goto_11

    .line 473
    :cond_1c
    const-string v7, "aspectFit"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    goto :goto_11

    .line 474
    :cond_1d
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    :goto_11
    move-object/from16 v25, v10

    .line 475
    :goto_12
    const-string v6, "startOffset"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/inmobi/media/p8;->q(Lorg/json/JSONObject;)Lcom/inmobi/media/O8;

    move-result-object v6

    .line 476
    const-string v7, "timerDuration"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/inmobi/media/p8;->q(Lorg/json/JSONObject;)Lcom/inmobi/media/O8;

    move-result-object v5

    .line 477
    new-instance v7, Lcom/inmobi/media/P8;

    invoke-direct {v7, v6, v5}, Lcom/inmobi/media/P8;-><init>(Lcom/inmobi/media/O8;Lcom/inmobi/media/O8;)V

    .line 478
    new-instance v5, Lcom/inmobi/media/e8;

    .line 479
    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 480
    iget v8, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 481
    iget v9, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 482
    iget v10, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v1

    move/from16 v19, v8

    move/from16 v20, v2

    move/from16 v21, v9

    move/from16 v22, v3

    move/from16 v23, v10

    move/from16 v24, v4

    move-object/from16 v30, v7

    .line 483
    invoke-direct/range {v16 .. v30}, Lcom/inmobi/media/e8;-><init>(IIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/P8;)V

    return-object v5
.end method

.method public final a()V
    .locals 11

    .line 20
    const-string v0, "IMAGE"

    invoke-virtual {p0, v0}, Lcom/inmobi/media/p8;->n(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/d8;

    .line 22
    iget-object v2, v1, Lcom/inmobi/media/d8;->e:Ljava/lang/Object;

    .line 23
    instance-of v3, v2, Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v2, v4

    .line 24
    :goto_1
    invoke-static {v2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {p0, p0, v1}, Lcom/inmobi/media/p8;->a(Lcom/inmobi/media/p8;Lcom/inmobi/media/d8;)Lcom/inmobi/media/d8;

    move-result-object v2

    const-string v3, "TAG"

    const-string v5, "p8"

    if-nez v2, :cond_3

    .line 26
    iget-object v2, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v2, :cond_0

    .line 27
    const-string v4, "Could not find referenced asset for asset ("

    invoke-static {v5, v3, v4}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 28
    iget-object v1, v1, Lcom/inmobi/media/d8;->b:Ljava/lang/String;

    .line 29
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 30
    check-cast v2, Lcom/inmobi/media/A5;

    invoke-virtual {v2, v5, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_3
    iget-object v6, v2, Lcom/inmobi/media/d8;->c:Ljava/lang/String;

    iget-object v7, v1, Lcom/inmobi/media/d8;->c:Ljava/lang/String;

    .line 32
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 33
    iget-object v2, v2, Lcom/inmobi/media/d8;->e:Ljava/lang/Object;

    .line 34
    iput-object v2, v1, Lcom/inmobi/media/d8;->e:Ljava/lang/Object;

    goto :goto_0

    .line 35
    :cond_4
    iget-object v6, v2, Lcom/inmobi/media/d8;->c:Ljava/lang/String;

    .line 36
    const-string v7, "VIDEO"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v8, 0x1

    if-eqz v6, :cond_5

    .line 37
    iget-byte v6, v2, Lcom/inmobi/media/d8;->l:B

    if-ne v6, v8, :cond_5

    .line 38
    iget-object v1, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_0

    .line 39
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    check-cast v1, Lcom/inmobi/media/A5;

    const-string v2, "Image asset cannot reference a linear creative in a video element!"

    invoke-virtual {v1, v5, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_5
    iget-object v6, v2, Lcom/inmobi/media/d8;->c:Ljava/lang/String;

    .line 42
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 43
    iget-byte v6, v2, Lcom/inmobi/media/d8;->l:B

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 44
    instance-of v6, v2, Lcom/inmobi/media/c9;

    if-eqz v6, :cond_6

    check-cast v2, Lcom/inmobi/media/c9;

    goto :goto_2

    :cond_6
    move-object v2, v4

    :goto_2
    if-nez v2, :cond_7

    goto/16 :goto_0

    .line 45
    :cond_7
    invoke-virtual {v2}, Lcom/inmobi/media/c9;->d()Lcom/inmobi/media/Ve;

    move-result-object v6

    .line 46
    invoke-static {v2, v1}, Lcom/inmobi/media/Je;->a(Lcom/inmobi/media/c9;Lcom/inmobi/media/d8;)Lcom/inmobi/media/Le;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 47
    invoke-virtual {v7, v8}, Lcom/inmobi/media/Le;->a(I)Ljava/util/ArrayList;

    move-result-object v8

    goto :goto_3

    :cond_8
    move-object v8, v4

    :goto_3
    if-eqz v8, :cond_a

    .line 48
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/inmobi/media/Ke;

    .line 49
    iget-object v10, v9, Lcom/inmobi/media/Ke;->b:Ljava/lang/String;

    .line 50
    invoke-static {v10}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_4

    :cond_a
    move-object v9, v4

    :goto_4
    const-string v8, "error"

    if-eqz v7, :cond_f

    if-nez v9, :cond_b

    goto :goto_6

    :cond_b
    if-eqz v6, :cond_c

    .line 51
    check-cast v6, Lcom/inmobi/media/Ue;

    .line 52
    const-string v4, "companionAd"

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object v7, v6, Lcom/inmobi/media/Ue;->j:Lcom/inmobi/media/Le;

    .line 54
    :cond_c
    iget-object v4, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v4, :cond_d

    .line 55
    const-string v6, "Setting image asset value: "

    invoke-static {v5, v3, v6}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 56
    iget-object v6, v9, Lcom/inmobi/media/Ke;->b:Ljava/lang/String;

    .line 57
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v4, Lcom/inmobi/media/A5;

    invoke-virtual {v4, v5, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_d
    iget-object v3, v9, Lcom/inmobi/media/Ke;->b:Ljava/lang/String;

    .line 59
    iput-object v3, v1, Lcom/inmobi/media/d8;->e:Ljava/lang/Object;

    .line 60
    const-string v3, "creativeView"

    invoke-virtual {v7, v3}, Lcom/inmobi/media/Le;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 61
    const-string v4, "trackers"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v5, v1, Lcom/inmobi/media/d8;->s:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 63
    iget-object v2, v2, Lcom/inmobi/media/d8;->s:Ljava/util/ArrayList;

    .line 64
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "eventType"

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inmobi/media/U8;

    .line 66
    iget-object v4, v3, Lcom/inmobi/media/U8;->b:Ljava/lang/String;

    .line 67
    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 68
    iget-object v4, v1, Lcom/inmobi/media/d8;->s:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_f
    :goto_6
    if-eqz v6, :cond_10

    .line 69
    check-cast v6, Lcom/inmobi/media/Ue;

    .line 70
    iget-object v1, v6, Lcom/inmobi/media/Ue;->i:Ljava/util/ArrayList;

    if-eqz v1, :cond_10

    .line 71
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_7

    :cond_10
    const/4 v1, -0x1

    :goto_7
    if-lez v1, :cond_0

    const/16 v1, 0x8

    .line 72
    iput v1, v2, Lcom/inmobi/media/d8;->v:I

    .line 73
    const-string v1, "[ERRORCODE]"

    const-string v6, "601"

    invoke-static {v1, v6}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    filled-new-array {v1}, [Lkotlin/Pair;

    move-result-object v1

    .line 74
    invoke-static {v1}, Lkotlin/collections/p0;->k([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    .line 75
    iget-object v6, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    .line 76
    invoke-virtual {v2, v8, v1, v4, v6}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/L7;Lcom/inmobi/media/z5;)V

    .line 77
    iget-object v1, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_0

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/A5;

    const-string v2, "Unable to find the best-fit companion ad! Returning ..."

    invoke-virtual {v1, v5, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    return-void
.end method

.method public final a(Lcom/inmobi/media/d8;Lorg/json/JSONObject;)V
    .locals 7

    .line 311
    const-string v0, "itemUrl"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "getString(...)"

    const-string v4, ""

    if-eqz v1, :cond_1

    .line 312
    iget-object v0, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    const-string v1, "TAG"

    const-string v5, "p8"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "Missing itemUrl on publisher onClick"

    invoke-virtual {v0, v5, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move-object v0, v4

    goto :goto_0

    .line 313
    :cond_1
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move v1, v2

    .line 314
    :goto_0
    const-string v5, "action"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 315
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v2, v1

    .line 316
    :goto_1
    invoke-virtual {p1, v0}, Lcom/inmobi/media/d8;->b(Ljava/lang/String;)V

    .line 317
    const-string v0, "fallbackUrl"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "optString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;)V

    .line 318
    const-string v0, "<set-?>"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    iput-object v4, p1, Lcom/inmobi/media/d8;->h:Ljava/lang/String;

    .line 320
    iput-boolean v2, p1, Lcom/inmobi/media/d8;->f:Z

    .line 321
    const-string v0, "appBundleId"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 322
    iput-object p2, p1, Lcom/inmobi/media/d8;->u:Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 7

    .line 323
    const-string v0, "text"

    const-string v1, "TAG"

    const-string v2, "p8"

    const-string v3, "geometry"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    goto/16 :goto_2

    .line 324
    :cond_0
    :try_start_0
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 325
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x2

    .line 326
    :try_start_1
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    const/4 v6, 0x3

    .line 327
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    if-lez v4, :cond_5

    if-lez v3, :cond_5

    .line 328
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string p2, "WEBVIEW"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto/16 :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :sswitch_1
    const-string p2, "VIDEO"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_2

    :sswitch_2
    const-string p2, "TIMER"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_2

    :sswitch_3
    const-string p2, "IMAGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_2

    :sswitch_4
    const-string v3, "TEXT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_2

    :sswitch_5
    const-string p2, "ICON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_2

    :sswitch_6
    const-string p2, "GIF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_2

    :sswitch_7
    const-string v3, "CTA"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_2

    .line 329
    :cond_1
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v5

    .line 330
    :cond_2
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 331
    :try_start_3
    const-string p2, "size"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    double-to-int p1, p1

    if-lez p1, :cond_6

    goto :goto_0

    :catch_1
    move-exception p1

    .line 332
    :try_start_4
    iget-object p2, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz p2, :cond_3

    .line 333
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    const-string v0, "Failure in validating text asset! Text size should be an integer"

    .line 335
    check-cast p2, Lcom/inmobi/media/A5;

    invoke-virtual {p2, v2, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_3
    sget-object p2, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    new-instance p2, Lcom/inmobi/media/f2;

    invoke-direct {p2, p1}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 337
    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    sget-object p1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {p1, p2}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    return v5

    .line 339
    :sswitch_8
    const-string p2, "CONTAINER"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    :goto_0
    const/4 v5, 0x1

    goto :goto_2

    :catch_2
    move-exception p1

    .line 340
    iget-object p2, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz p2, :cond_5

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Exception while getting geometry - "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/inmobi/media/A5;

    invoke-virtual {p2, v2, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_5
    return v5

    .line 341
    :goto_1
    iget-object p2, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz p2, :cond_6

    .line 342
    const-string v0, "Exception while getting assetStyle - "

    invoke-static {v2, v1, v0}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 343
    invoke-static {p1, v0}, Lcom/inmobi/media/E0;->a(Lorg/json/JSONException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 344
    check-cast p2, Lcom/inmobi/media/A5;

    invoke-virtual {p2, v2, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return v5

    :sswitch_data_0
    .sparse-switch
        -0x7266a39f -> :sswitch_8
        0x105f0 -> :sswitch_7
        0x113a4 -> :sswitch_6
        0x223479 -> :sswitch_5
        0x273d2d -> :sswitch_4
        0x428b13b -> :sswitch_3
        0x4c20f25 -> :sswitch_2
        0x4de1c5b -> :sswitch_1
        0x73c6c7d9 -> :sswitch_0
    .end sparse-switch
.end method

.method public final b(Lorg/json/JSONObject;)Landroid/graphics/Point;
    .locals 5

    .line 111
    const-string v0, "geometry"

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 112
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/inmobi/media/p8;->i(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 113
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 114
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x2

    .line 115
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/inmobi/media/p8;->a(I)I

    move-result v0

    iput v0, v1, Landroid/graphics/Point;->x:I

    const/4 v0, 0x3

    .line 116
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    invoke-static {p1}, Lcom/inmobi/media/p8;->a(I)I

    move-result p1

    iput p1, v1, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 117
    iget-object v0, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_1

    .line 118
    const-string v2, "TAG"

    const-string v3, "Exception while getting assetDimensions - "

    const-string v4, "p8"

    invoke-static {v4, v2, v3}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 119
    invoke-static {p1, v2}, Lcom/inmobi/media/E0;->a(Lorg/json/JSONException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 120
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v4, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final b(Lorg/json/JSONObject;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 2

    const-string v0, "finalGeometry"

    .line 105
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/inmobi/media/p8;->i(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 106
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 108
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x0

    .line 109
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/inmobi/media/p8;->a(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    const/4 v1, 0x1

    .line 110
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    invoke-static {p1}, Lcom/inmobi/media/p8;->a(I)I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    :catch_0
    :goto_0
    return-object p2
.end method

.method public final b(I)Lcom/inmobi/media/h8;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/p8;->e:Lcom/inmobi/media/h8;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 v2, 0x0

    move v3, v2

    .line 2
    :goto_0
    iget v4, v0, Lcom/inmobi/media/h8;->B:I

    if-ge v3, v4, :cond_6

    .line 3
    :try_start_0
    iget-object v4, v0, Lcom/inmobi/media/h8;->A:Ljava/util/ArrayList;

    add-int/lit8 v5, v3, 0x1

    .line 4
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inmobi/media/d8;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    iget-object v4, v3, Lcom/inmobi/media/d8;->b:Ljava/lang/String;

    .line 7
    const-string v6, "card_scrollable"

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 8
    instance-of v0, v3, Lcom/inmobi/media/h8;

    if-eqz v0, :cond_0

    check-cast v3, Lcom/inmobi/media/h8;

    goto :goto_1

    :cond_0
    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_1

    .line 9
    iget v2, v3, Lcom/inmobi/media/h8;->B:I

    :cond_1
    if-lt p1, v2, :cond_2

    goto :goto_3

    :cond_2
    if-eqz v3, :cond_3

    if-ltz p1, :cond_3

    .line 10
    iget v0, v3, Lcom/inmobi/media/h8;->B:I

    if-ge p1, v0, :cond_3

    .line 11
    iget-object v0, v3, Lcom/inmobi/media/h8;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/inmobi/media/d8;

    goto :goto_2

    :cond_3
    move-object p1, v1

    .line 12
    :goto_2
    instance-of v0, p1, Lcom/inmobi/media/h8;

    if-eqz v0, :cond_4

    move-object v1, p1

    check-cast v1, Lcom/inmobi/media/h8;

    :cond_4
    :goto_3
    return-object v1

    :cond_5
    move v3, v5

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    return-object v1
.end method

.method public final b(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/media/k8;
    .locals 37

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 127
    const-string v6, "border"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    const-string v9, "straight"

    const-string v10, "color"

    const-string v11, "#ff000000"

    const-string v12, "none"

    const-string v13, "style"

    const-string v14, "getString(...)"

    const/4 v15, 0x1

    if-eqz v7, :cond_1

    :cond_0
    move-object/from16 v30, v9

    move-object/from16 v31, v11

    move-object/from16 v29, v12

    goto/16 :goto_7

    .line 128
    :cond_1
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 129
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 130
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/inmobi/media/p8;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 131
    const-string v8, "corner"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-static {v8}, Lcom/inmobi/media/p8;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 134
    :goto_0
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object/from16 v18, v7

    move-object/from16 v19, v9

    move-object v6, v11

    goto :goto_6

    .line 135
    :cond_3
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v15

    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_1
    move-object/from16 v18, v7

    if-gt v15, v8, :cond_9

    if-nez v17, :cond_4

    move v7, v15

    goto :goto_2

    :cond_4
    move v7, v8

    .line 137
    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move-object/from16 v19, v9

    const/16 v9, 0x20

    .line 138
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v7

    if-gtz v7, :cond_5

    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    :goto_3
    if-nez v17, :cond_7

    if-nez v7, :cond_6

    move-object/from16 v7, v18

    move-object/from16 v9, v19

    const/16 v17, 0x1

    goto :goto_1

    :cond_6
    const/4 v9, 0x1

    add-int/2addr v15, v9

    :goto_4
    move-object/from16 v7, v18

    move-object/from16 v9, v19

    goto :goto_1

    :cond_7
    const/4 v9, 0x1

    if-nez v7, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    :cond_9
    move-object/from16 v19, v9

    const/4 v9, 0x1

    .line 139
    :goto_5
    invoke-static {v8, v9, v6, v15}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    :goto_6
    move-object/from16 v31, v6

    move-object/from16 v29, v18

    move-object/from16 v30, v19

    .line 140
    :goto_7
    const-string v6, "backgroundColor"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 141
    const-string v6, "#00000000"

    move-object/from16 v32, v6

    move-object/from16 v17, v11

    goto :goto_d

    .line 142
    :cond_a
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_8
    if-gt v9, v7, :cond_10

    if-nez v8, :cond_b

    move v15, v9

    goto :goto_9

    :cond_b
    move v15, v7

    .line 144
    :goto_9
    invoke-virtual {v6, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move-object/from16 v17, v11

    const/16 v11, 0x20

    .line 145
    invoke-static {v15, v11}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v15

    if-gtz v15, :cond_c

    const/4 v11, 0x1

    goto :goto_a

    :cond_c
    const/4 v11, 0x0

    :goto_a
    if-nez v8, :cond_e

    if-nez v11, :cond_d

    move-object/from16 v11, v17

    const/4 v8, 0x1

    goto :goto_8

    :cond_d
    const/4 v15, 0x1

    add-int/2addr v9, v15

    :goto_b
    move-object/from16 v11, v17

    goto :goto_8

    :cond_e
    const/4 v15, 0x1

    if-nez v11, :cond_f

    goto :goto_c

    :cond_f
    add-int/lit8 v7, v7, -0x1

    goto :goto_b

    :cond_10
    move-object/from16 v17, v11

    const/4 v15, 0x1

    .line 146
    :goto_c
    invoke-static {v7, v15, v6, v9}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v32, v6

    .line 147
    :goto_d
    const-string v6, "text"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 148
    :try_start_0
    const-string v7, "size"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    double-to-int v7, v7

    .line 149
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    move-object/from16 v34, v17

    move/from16 v17, v7

    goto :goto_13

    .line 150
    :cond_11
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_e
    if-gt v11, v9, :cond_17

    if-nez v10, :cond_12

    move v15, v11

    goto :goto_f

    :cond_12
    move v15, v9

    .line 152
    :goto_f
    invoke-virtual {v8, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v17, v7

    const/16 v7, 0x20

    .line 153
    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v15

    if-gtz v15, :cond_13

    const/4 v15, 0x1

    goto :goto_10

    :cond_13
    const/4 v15, 0x0

    :goto_10
    if-nez v10, :cond_15

    if-nez v15, :cond_14

    move/from16 v7, v17

    const/4 v10, 0x1

    goto :goto_e

    :cond_14
    const/4 v15, 0x1

    add-int/2addr v11, v15

    :goto_11
    move/from16 v7, v17

    goto :goto_e

    :cond_15
    const/4 v7, 0x1

    if-nez v15, :cond_16

    goto :goto_12

    :cond_16
    add-int/lit8 v9, v9, -0x1

    goto :goto_11

    :cond_17
    move/from16 v17, v7

    const/4 v7, 0x1

    .line 154
    :goto_12
    invoke-static {v9, v7, v8, v11}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v34, v11

    .line 155
    :goto_13
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 156
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 157
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 158
    :cond_18
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 159
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-nez v8, :cond_19

    .line 160
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_19
    const/4 v15, 0x0

    :goto_14
    if-ge v15, v8, :cond_1a

    .line 161
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 162
    invoke-virtual {v9, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-static {v9}, Lcom/inmobi/media/p8;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 164
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    add-int/2addr v15, v9

    goto :goto_14

    .line 165
    :cond_1a
    :goto_15
    const-string v6, "startOffset"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/inmobi/media/p8;->q(Lorg/json/JSONObject;)Lcom/inmobi/media/O8;

    move-result-object v6

    .line 166
    const-string v8, "timerDuration"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/inmobi/media/p8;->q(Lorg/json/JSONObject;)Lcom/inmobi/media/O8;

    move-result-object v5

    .line 167
    new-instance v8, Lcom/inmobi/media/P8;

    move-object/from16 v36, v8

    invoke-direct {v8, v6, v5}, Lcom/inmobi/media/P8;-><init>(Lcom/inmobi/media/O8;Lcom/inmobi/media/O8;)V

    .line 168
    new-instance v5, Lcom/inmobi/media/k8;

    move-object/from16 v20, v5

    .line 169
    iget v6, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v6

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    iget v0, v2, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v24, v0

    .line 170
    iget v0, v3, Landroid/graphics/Point;->x:I

    move/from16 v25, v0

    iget v0, v3, Landroid/graphics/Point;->y:I

    move/from16 v26, v0

    iget v0, v4, Landroid/graphics/Point;->x:I

    move/from16 v27, v0

    iget v0, v4, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    move/from16 v33, v17

    move-object/from16 v35, v7

    .line 171
    invoke-direct/range {v20 .. v36}, Lcom/inmobi/media/k8;-><init>(IIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;Lcom/inmobi/media/P8;)V

    return-object v5

    :catch_0
    move-exception v0

    .line 172
    iget-object v2, v1, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v2, :cond_1b

    const-string v3, "TAG"

    const-string v4, "p8"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/A5;

    const-string v3, "Failure in building text asset! Text size should be an integer"

    invoke-virtual {v2, v4, v3}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_1b
    new-instance v2, Lorg/json/JSONException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 174
    sget-object v3, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    new-instance v3, Lcom/inmobi/media/f2;

    invoke-direct {v3, v0}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 175
    const-string v0, "event"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v0, v3}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 177
    throw v2
.end method

.method public final b()V
    .locals 15

    .line 14
    const-string v0, "WEBVIEW"

    invoke-virtual {p0, v0}, Lcom/inmobi/media/p8;->n(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/d8;

    .line 16
    instance-of v2, v1, Lcom/inmobi/media/F9;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/inmobi/media/F9;

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    if-nez v2, :cond_2

    goto :goto_0

    .line 17
    :cond_2
    const-string v4, "URL"

    .line 18
    iget-object v5, v2, Lcom/inmobi/media/F9;->y:Ljava/lang/String;

    .line 19
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "HTML"

    .line 20
    iget-object v5, v2, Lcom/inmobi/media/F9;->y:Ljava/lang/String;

    .line 21
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 22
    :cond_3
    invoke-virtual {p0, p0, v1}, Lcom/inmobi/media/p8;->a(Lcom/inmobi/media/p8;Lcom/inmobi/media/d8;)Lcom/inmobi/media/d8;

    move-result-object v4

    const-string v5, "TAG"

    const-string v6, "p8"

    if-nez v4, :cond_4

    .line 23
    iget-object v2, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v2, :cond_0

    .line 24
    const-string v3, "Could not find referenced asset for asset ("

    invoke-static {v6, v5, v3}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 25
    iget-object v1, v1, Lcom/inmobi/media/d8;->b:Ljava/lang/String;

    .line 26
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    check-cast v2, Lcom/inmobi/media/A5;

    invoke-virtual {v2, v6, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_4
    iget-object v7, v4, Lcom/inmobi/media/d8;->c:Ljava/lang/String;

    iget-object v8, v1, Lcom/inmobi/media/d8;->c:Ljava/lang/String;

    .line 29
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 30
    iget-object v2, v4, Lcom/inmobi/media/d8;->e:Ljava/lang/Object;

    .line 31
    iput-object v2, v1, Lcom/inmobi/media/d8;->e:Ljava/lang/Object;

    goto :goto_0

    .line 32
    :cond_5
    iget-object v7, v4, Lcom/inmobi/media/d8;->c:Ljava/lang/String;

    .line 33
    const-string v8, "VIDEO"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 34
    iget-byte v7, v4, Lcom/inmobi/media/d8;->l:B

    const/4 v8, 0x2

    if-ne v8, v7, :cond_13

    .line 35
    instance-of v7, v4, Lcom/inmobi/media/c9;

    if-eqz v7, :cond_6

    check-cast v4, Lcom/inmobi/media/c9;

    goto :goto_2

    :cond_6
    move-object v4, v3

    :goto_2
    if-nez v4, :cond_7

    goto :goto_0

    .line 36
    :cond_7
    invoke-virtual {v4}, Lcom/inmobi/media/c9;->d()Lcom/inmobi/media/Ve;

    move-result-object v7

    .line 37
    invoke-static {v4, v1}, Lcom/inmobi/media/Je;->a(Lcom/inmobi/media/c9;Lcom/inmobi/media/d8;)Lcom/inmobi/media/Le;

    move-result-object v9

    const-string v10, "REF_IFRAME"

    const-string v11, "REF_HTML"

    if-eqz v9, :cond_b

    .line 38
    iget-object v12, v2, Lcom/inmobi/media/F9;->y:Ljava/lang/String;

    .line 39
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x3

    const/4 v14, 0x0

    if-eqz v12, :cond_9

    .line 40
    invoke-virtual {v9, v8}, Lcom/inmobi/media/Le;->a(I)Ljava/util/ArrayList;

    move-result-object v8

    .line 41
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_8

    .line 42
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/inmobi/media/Ke;

    .line 43
    iget-object v8, v8, Lcom/inmobi/media/Ke;->b:Ljava/lang/String;

    goto :goto_3

    .line 44
    :cond_8
    invoke-virtual {v9, v13}, Lcom/inmobi/media/Le;->a(I)Ljava/util/ArrayList;

    move-result-object v8

    .line 45
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_b

    .line 46
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/inmobi/media/Ke;

    .line 47
    iget-object v8, v8, Lcom/inmobi/media/Ke;->b:Ljava/lang/String;

    .line 48
    invoke-static {v8}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 49
    iput-object v10, v2, Lcom/inmobi/media/F9;->y:Ljava/lang/String;

    goto :goto_3

    .line 50
    :cond_9
    iget-object v12, v2, Lcom/inmobi/media/F9;->y:Ljava/lang/String;

    .line 51
    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 52
    invoke-virtual {v9, v13}, Lcom/inmobi/media/Le;->a(I)Ljava/util/ArrayList;

    move-result-object v12

    .line 53
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_a

    .line 54
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/inmobi/media/Ke;

    .line 55
    iget-object v8, v8, Lcom/inmobi/media/Ke;->b:Ljava/lang/String;

    .line 56
    invoke-static {v8}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    goto :goto_3

    .line 57
    :cond_a
    invoke-virtual {v9, v8}, Lcom/inmobi/media/Le;->a(I)Ljava/util/ArrayList;

    move-result-object v8

    .line 58
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_b

    .line 59
    iput-object v11, v2, Lcom/inmobi/media/F9;->y:Ljava/lang/String;

    .line 60
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/inmobi/media/Ke;

    .line 61
    iget-object v8, v8, Lcom/inmobi/media/Ke;->b:Ljava/lang/String;

    goto :goto_3

    :cond_b
    move-object v8, v3

    .line 62
    :goto_3
    iget-object v12, v2, Lcom/inmobi/media/F9;->y:Ljava/lang/String;

    .line 63
    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    .line 64
    iget-object v12, v2, Lcom/inmobi/media/F9;->y:Ljava/lang/String;

    .line 65
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v10, :cond_c

    .line 66
    invoke-static {v8}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    :cond_c
    if-eqz v9, :cond_10

    if-eqz v11, :cond_d

    if-nez v8, :cond_d

    goto :goto_4

    :cond_d
    if-eqz v7, :cond_e

    .line 67
    check-cast v7, Lcom/inmobi/media/Ue;

    .line 68
    const-string v2, "companionAd"

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iput-object v9, v7, Lcom/inmobi/media/Ue;->j:Lcom/inmobi/media/Le;

    .line 70
    :cond_e
    iget-object v2, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v2, :cond_f

    .line 71
    const-string v3, "Setting asset value: "

    invoke-static {v6, v5, v3, v8}, Lcom/inmobi/media/I6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    check-cast v2, Lcom/inmobi/media/A5;

    invoke-virtual {v2, v6, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_f
    iput-object v8, v1, Lcom/inmobi/media/d8;->e:Ljava/lang/Object;

    .line 74
    const-string v2, "creativeView"

    invoke-virtual {v9, v2}, Lcom/inmobi/media/Le;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 75
    const-string v3, "trackers"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v1, v1, Lcom/inmobi/media/d8;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_10
    :goto_4
    if-eqz v7, :cond_11

    .line 77
    check-cast v7, Lcom/inmobi/media/Ue;

    .line 78
    iget-object v1, v7, Lcom/inmobi/media/Ue;->i:Ljava/util/ArrayList;

    if-eqz v1, :cond_11

    .line 79
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_5

    :cond_11
    const/4 v1, -0x1

    :goto_5
    if-lez v1, :cond_12

    const/16 v1, 0x8

    .line 80
    iput v1, v4, Lcom/inmobi/media/d8;->v:I

    .line 81
    const-string v1, "[ERRORCODE]"

    const-string v7, "601"

    invoke-static {v1, v7}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    filled-new-array {v1}, [Lkotlin/Pair;

    move-result-object v1

    .line 82
    invoke-static {v1}, Lkotlin/collections/p0;->k([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    .line 83
    iget-object v7, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    .line 84
    const-string v8, "error"

    invoke-virtual {v4, v8, v1, v3, v7}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/L7;Lcom/inmobi/media/z5;)V

    .line 85
    iget-object v1, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_12

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/A5;

    const-string v3, "Unable to find the best-fit companion ad! Returning ..."

    invoke-virtual {v1, v6, v3}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_12
    const-string v1, "UNKNOWN"

    .line 87
    iput-object v1, v2, Lcom/inmobi/media/F9;->y:Ljava/lang/String;

    goto/16 :goto_0

    .line 88
    :cond_13
    iget-object v1, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_0

    .line 89
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    check-cast v1, Lcom/inmobi/media/A5;

    const-string v2, "Unknown creative type reference for webView asset! Returning ..."

    invoke-virtual {v1, v6, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    return-void
.end method

.method public final b(Lcom/inmobi/media/d8;Lorg/json/JSONObject;)V
    .locals 9

    .line 91
    const-string v0, "assetOnclick"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 92
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "getString(...)"

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    .line 93
    const-string v6, "itemUrl"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 95
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move v3, v5

    goto :goto_0

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_1

    const-string v6, "TAG"

    const-string v7, "p8"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Missing itemUrl on asset "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v7, v6}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v1, v2

    .line 97
    :goto_0
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "action"

    if-eqz v6, :cond_2

    .line 98
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v5, :cond_2

    goto :goto_1

    .line 99
    :cond_2
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 100
    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move v3, v5

    goto :goto_1

    :cond_3
    move-object v1, v2

    .line 101
    :goto_1
    invoke-virtual {p1, v1}, Lcom/inmobi/media/d8;->b(Ljava/lang/String;)V

    .line 102
    const-string p2, "<set-?>"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iput-object v2, p1, Lcom/inmobi/media/d8;->h:Ljava/lang/String;

    .line 104
    iput-boolean v3, p1, Lcom/inmobi/media/d8;->f:Z

    return-void
.end method

.method public final c(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/media/M8;
    .locals 38

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 35
    const-string v6, "border"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "straight"

    const-string v10, "color"

    const-string v11, "#ff000000"

    const-string v12, "none"

    const-string v13, "style"

    const-string v14, "getString(...)"

    const/4 v15, 0x1

    if-eqz v7, :cond_1

    :cond_0
    move-object/from16 v30, v8

    move-object/from16 v31, v11

    move-object/from16 v29, v12

    goto/16 :goto_7

    .line 36
    :cond_1
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 37
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 38
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/inmobi/media/p8;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 39
    const-string v9, "corner"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {v8}, Lcom/inmobi/media/p8;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 42
    :goto_0
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object v6, v11

    goto :goto_6

    .line 43
    :cond_3
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v15

    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_1
    move-object/from16 v18, v7

    if-gt v15, v9, :cond_9

    if-nez v17, :cond_4

    move v7, v15

    goto :goto_2

    :cond_4
    move v7, v9

    .line 45
    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move-object/from16 v19, v8

    const/16 v8, 0x20

    .line 46
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v7

    if-gtz v7, :cond_5

    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    :goto_3
    if-nez v17, :cond_7

    if-nez v7, :cond_6

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    const/16 v17, 0x1

    goto :goto_1

    :cond_6
    const/4 v8, 0x1

    add-int/2addr v15, v8

    :goto_4
    move-object/from16 v7, v18

    move-object/from16 v8, v19

    goto :goto_1

    :cond_7
    const/4 v8, 0x1

    if-nez v7, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    :cond_9
    move-object/from16 v19, v8

    const/4 v8, 0x1

    .line 47
    :goto_5
    invoke-static {v9, v8, v6, v15}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    :goto_6
    move-object/from16 v31, v6

    move-object/from16 v29, v18

    move-object/from16 v30, v19

    .line 48
    :goto_7
    const-string v6, "backgroundColor"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 49
    const-string v6, "#00000000"

    move-object/from16 v32, v6

    move-object/from16 v17, v11

    goto :goto_d

    .line 50
    :cond_a
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_8
    if-gt v9, v7, :cond_10

    if-nez v8, :cond_b

    move v15, v9

    goto :goto_9

    :cond_b
    move v15, v7

    .line 52
    :goto_9
    invoke-virtual {v6, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move-object/from16 v17, v11

    const/16 v11, 0x20

    .line 53
    invoke-static {v15, v11}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v15

    if-gtz v15, :cond_c

    const/4 v11, 0x1

    goto :goto_a

    :cond_c
    const/4 v11, 0x0

    :goto_a
    if-nez v8, :cond_e

    if-nez v11, :cond_d

    move-object/from16 v11, v17

    const/4 v8, 0x1

    goto :goto_8

    :cond_d
    const/4 v15, 0x1

    add-int/2addr v9, v15

    :goto_b
    move-object/from16 v11, v17

    goto :goto_8

    :cond_e
    const/4 v15, 0x1

    if-nez v11, :cond_f

    goto :goto_c

    :cond_f
    add-int/lit8 v7, v7, -0x1

    goto :goto_b

    :cond_10
    move-object/from16 v17, v11

    const/4 v15, 0x1

    .line 54
    :goto_c
    invoke-static {v7, v15, v6, v9}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v32, v6

    .line 55
    :goto_d
    const-string v6, "text"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 56
    :try_start_0
    const-string v7, "size"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    double-to-int v7, v7

    .line 57
    const-string v8, "length"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    goto :goto_e

    .line 58
    :cond_11
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 59
    :goto_e
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    move-object/from16 v35, v17

    move/from16 v17, v7

    goto :goto_14

    .line 60
    :cond_12
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_f
    if-gt v11, v9, :cond_18

    if-nez v10, :cond_13

    move v15, v11

    goto :goto_10

    :cond_13
    move v15, v9

    .line 62
    :goto_10
    invoke-virtual {v8, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v17, v7

    const/16 v7, 0x20

    .line 63
    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v15

    if-gtz v15, :cond_14

    const/4 v7, 0x1

    goto :goto_11

    :cond_14
    const/4 v7, 0x0

    :goto_11
    if-nez v10, :cond_16

    if-nez v7, :cond_15

    move/from16 v7, v17

    const/4 v10, 0x1

    goto :goto_f

    :cond_15
    const/4 v15, 0x1

    add-int/2addr v11, v15

    :goto_12
    move/from16 v7, v17

    goto :goto_f

    :cond_16
    const/4 v15, 0x1

    if-nez v7, :cond_17

    goto :goto_13

    :cond_17
    add-int/lit8 v9, v9, -0x1

    goto :goto_12

    :cond_18
    move/from16 v17, v7

    const/4 v15, 0x1

    .line 64
    :goto_13
    invoke-static {v9, v15, v8, v11}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v35, v11

    .line 65
    :goto_14
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 67
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    :goto_15
    const/4 v10, 0x1

    goto :goto_17

    .line 68
    :cond_1a
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 69
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-nez v8, :cond_1b

    .line 70
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_1b
    const/4 v9, 0x0

    :goto_16
    if-ge v9, v8, :cond_19

    .line 71
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 72
    invoke-virtual {v10, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-static {v10}, Lcom/inmobi/media/p8;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 74
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x1

    add-int/2addr v9, v10

    goto :goto_16

    .line 75
    :goto_17
    const-string v8, "align"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1c

    goto/16 :goto_1c

    .line 76
    :cond_1c
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v10

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_18
    if-gt v10, v8, :cond_22

    if-nez v9, :cond_1d

    move v11, v10

    goto :goto_19

    :cond_1d
    move v11, v8

    .line 78
    :goto_19
    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x20

    .line 79
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v11

    if-gtz v11, :cond_1e

    const/4 v11, 0x1

    goto :goto_1a

    :cond_1e
    const/4 v11, 0x0

    :goto_1a
    if-nez v9, :cond_20

    if-nez v11, :cond_1f

    const/4 v9, 0x1

    goto :goto_18

    :cond_1f
    const/4 v13, 0x1

    add-int/2addr v10, v13

    goto :goto_18

    :cond_20
    const/4 v13, 0x1

    if-nez v11, :cond_21

    goto :goto_1b

    :cond_21
    add-int/lit8 v8, v8, -0x1

    goto :goto_18

    :cond_22
    const/4 v13, 0x1

    .line 80
    :goto_1b
    invoke-static {v8, v13, v6, v10}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 81
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x514d3225

    if-eq v8, v9, :cond_26

    const v9, 0x32a007

    if-eq v8, v9, :cond_25

    const v9, 0x677c21c

    if-eq v8, v9, :cond_23

    goto :goto_1c

    :cond_23
    const-string v8, "right"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_24

    goto :goto_1c

    :cond_24
    move/from16 v34, v13

    goto :goto_1d

    :cond_25
    const-string v8, "left"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_26
    const-string v8, "centre"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    :goto_1c
    const/16 v34, 0x0

    goto :goto_1d

    :cond_27
    const/4 v15, 0x2

    move/from16 v34, v15

    .line 82
    :goto_1d
    const-string v6, "startOffset"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/inmobi/media/p8;->q(Lorg/json/JSONObject;)Lcom/inmobi/media/O8;

    move-result-object v6

    .line 83
    const-string v8, "timerDuration"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/inmobi/media/p8;->q(Lorg/json/JSONObject;)Lcom/inmobi/media/O8;

    move-result-object v5

    .line 84
    new-instance v8, Lcom/inmobi/media/P8;

    move-object/from16 v37, v8

    invoke-direct {v8, v6, v5}, Lcom/inmobi/media/P8;-><init>(Lcom/inmobi/media/O8;Lcom/inmobi/media/O8;)V

    .line 85
    new-instance v5, Lcom/inmobi/media/M8;

    move-object/from16 v20, v5

    .line 86
    iget v6, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v6

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    .line 87
    iget v0, v2, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v24, v0

    iget v0, v3, Landroid/graphics/Point;->x:I

    move/from16 v25, v0

    iget v0, v3, Landroid/graphics/Point;->y:I

    move/from16 v26, v0

    .line 88
    iget v0, v4, Landroid/graphics/Point;->x:I

    move/from16 v27, v0

    iget v0, v4, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    move/from16 v33, v17

    move-object/from16 v36, v7

    .line 89
    invoke-direct/range {v20 .. v37}, Lcom/inmobi/media/M8;-><init>(IIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IBLjava/lang/String;Ljava/util/List;Lcom/inmobi/media/P8;)V

    return-object v5

    :catch_0
    move-exception v0

    .line 90
    iget-object v2, v1, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v2, :cond_28

    const-string v3, "TAG"

    const-string v4, "p8"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/A5;

    const-string v3, "Failure in building text asset! Text size should be an integer"

    invoke-virtual {v2, v4, v3}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_28
    new-instance v2, Lorg/json/JSONException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 92
    sget-object v3, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    new-instance v3, Lcom/inmobi/media/f2;

    invoke-direct {v3, v0}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 93
    const-string v0, "event"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v0, v3}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 95
    throw v2
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/inmobi/media/p8;->i:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final c(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "display"

    .line 2
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 5
    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 6
    :goto_1
    iget-object v0, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_1

    .line 7
    const-string v1, "TAG"

    const-string v2, "Exception while getting assetDisplayOnProperties - "

    const-string v3, "p8"

    invoke-static {v3, v1, v2}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8
    invoke-static {p1, v1}, Lcom/inmobi/media/E0;->a(Lorg/json/JSONException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 9
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v3, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :goto_2
    return-object p1
.end method

.method public final d()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/p8;->e:Lcom/inmobi/media/h8;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/media/d8;

    .line 3
    iget-object v3, v2, Lcom/inmobi/media/d8;->b:Ljava/lang/String;

    .line 4
    const-string v4, "card_scrollable"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    instance-of v0, v2, Lcom/inmobi/media/h8;

    if-eqz v0, :cond_1

    check-cast v2, Lcom/inmobi/media/h8;

    .line 6
    iget v1, v2, Lcom/inmobi/media/h8;->B:I

    :cond_1
    return v1
.end method

.method public final d(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const-string v1, "reference"

    .line 7
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/inmobi/media/p8;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11
    iget-object v1, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_1

    .line 12
    const-string v2, "TAG"

    const-string v3, "Exception while getting assetDisplayOnReference - "

    const-string v4, "p8"

    invoke-static {v4, v2, v3}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 13
    invoke-static {p1, v2}, Lcom/inmobi/media/E0;->a(Lorg/json/JSONException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 14
    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v4, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object v0
.end method

.method public final e(Lorg/json/JSONObject;)B
    .locals 4

    const-string v0, "type"

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/inmobi/media/p8;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {p1}, Lcom/inmobi/media/p8;->f(Ljava/lang/String;)B

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    iget-object v0, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_1

    .line 10
    const-string v1, "TAG"

    const-string v2, "Exception while getting assetDisplay - "

    const-string v3, "p8"

    invoke-static {v3, v1, v2}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11
    invoke-static {p1, v1}, Lcom/inmobi/media/E0;->a(Lorg/json/JSONException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 12
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v3, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x2

    :goto_1
    return p1
.end method

.method public final e()Lorg/json/JSONObject;
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/p8;->f:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_0

    .line 3
    const-string v2, "TAG"

    const-string v3, "Exception while getting Pages - "

    const-string v4, "p8"

    invoke-static {v4, v2, v3}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/inmobi/media/E0;->a(Lorg/json/JSONException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 4
    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v4, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final f(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5

    .line 12
    :try_start_0
    const-string v0, "assetId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    iget-object v1, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_0

    .line 15
    const-string v2, "TAG"

    const-string v3, "Exception while getting assetId - "

    const-string v4, "p8"

    invoke-static {v4, v2, v3}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 16
    invoke-static {v0, v2}, Lcom/inmobi/media/E0;->a(Lorg/json/JSONException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 17
    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v4, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final f()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/p8;->e:Lcom/inmobi/media/h8;

    const-string v1, "TAG"

    const-string v2, "p8"

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_5

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "Invalid Data Model: No Root Container"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/media/h8;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    move-object v3, v0

    check-cast v3, Lcom/inmobi/media/g8;

    invoke-virtual {v3}, Lcom/inmobi/media/g8;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/inmobi/media/g8;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inmobi/media/d8;

    .line 4
    iget-object v4, v3, Lcom/inmobi/media/d8;->b:Ljava/lang/String;

    .line 5
    const-string v5, "card_scrollable"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    instance-of v0, v3, Lcom/inmobi/media/h8;

    if-eqz v0, :cond_2

    check-cast v3, Lcom/inmobi/media/h8;

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_4

    .line 7
    iget-object v0, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_3

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "No Card Scrollable in the data model"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/media/p8;->g()Z

    move-result v0

    goto :goto_2

    .line 9
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/media/p8;->d()I

    move-result v0

    if-gtz v0, :cond_6

    .line 10
    iget-object v0, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_5

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "Invalid Data Model: No Cards in Card Scrollable"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    .line 11
    :cond_6
    invoke-virtual {p0}, Lcom/inmobi/media/p8;->g()Z

    move-result v0

    :goto_2
    return v0
.end method

.method public final g(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 21
    :try_start_0
    const-string v0, "assetName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 23
    iget-object v0, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    .line 24
    const-string v1, "TAG"

    const-string v2, "Exception while getting assetName - "

    const-string v3, "p8"

    invoke-static {v3, v1, v2}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 25
    invoke-static {p1, v1}, Lcom/inmobi/media/E0;->a(Lorg/json/JSONException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 26
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v3, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public final g()Z
    .locals 8

    .line 1
    const-string v0, "VIDEO"

    invoke-virtual {p0, v0}, Lcom/inmobi/media/p8;->n(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/media/d8;

    .line 4
    iget-object v3, v2, Lcom/inmobi/media/d8;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "TAG"

    const-string v5, "p8"

    if-nez v3, :cond_2

    .line 6
    iget-object v3, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v3, :cond_2

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/media/A5;

    const-string v6, "Video asset has invalid ID! CTA link resolution may not work"

    invoke-virtual {v3, v5, v6}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_2
    instance-of v3, v2, Lcom/inmobi/media/c9;

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    check-cast v2, Lcom/inmobi/media/c9;

    goto :goto_0

    :cond_3
    move-object v2, v6

    :goto_0
    if-eqz v2, :cond_4

    .line 8
    invoke-virtual {v2}, Lcom/inmobi/media/c9;->d()Lcom/inmobi/media/Ve;

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object v3, v6

    :goto_1
    const/4 v7, 0x0

    if-nez v3, :cond_6

    .line 9
    iget-object v0, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "No Vast XML. Discarding DataModel"

    invoke-virtual {v0, v5, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return v7

    .line 10
    :cond_6
    invoke-virtual {v2}, Lcom/inmobi/media/c9;->d()Lcom/inmobi/media/Ve;

    move-result-object v3

    if-eqz v3, :cond_7

    check-cast v3, Lcom/inmobi/media/Ue;

    .line 11
    iget-object v3, v3, Lcom/inmobi/media/Ue;->e:Ljava/util/ArrayList;

    goto :goto_2

    :cond_7
    move-object v3, v6

    :goto_2
    if-eqz v3, :cond_c

    .line 12
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_4

    .line 13
    :cond_8
    invoke-virtual {v2}, Lcom/inmobi/media/c9;->d()Lcom/inmobi/media/Ve;

    move-result-object v3

    if-eqz v3, :cond_9

    check-cast v3, Lcom/inmobi/media/Ue;

    invoke-virtual {v3}, Lcom/inmobi/media/Ue;->b()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_9
    move-object v3, v6

    :goto_3
    if-eqz v3, :cond_a

    .line 14
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 15
    :cond_a
    iget-object v0, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_b

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "Invalid Media URL.Discarding the model"

    invoke-virtual {v0, v5, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_b
    const-string v0, "[ERRORCODE]"

    const-string v1, "403"

    invoke-static {v0, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    filled-new-array {v0}, [Lkotlin/Pair;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lkotlin/collections/p0;->k([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    .line 19
    const-string v3, "error"

    invoke-virtual {v2, v3, v0, v6, v1}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/L7;Lcom/inmobi/media/z5;)V

    return v7

    .line 20
    :cond_c
    :goto_4
    iget-object v0, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_d

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "No Media files. Discarding DataModel"

    invoke-virtual {v0, v5, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return v7

    :cond_e
    :goto_5
    return v1
.end method

.method public final h(Lorg/json/JSONObject;)Landroid/graphics/Point;
    .locals 5

    .line 43
    const-string v0, "geometry"

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 44
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/inmobi/media/p8;->i(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 45
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 46
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/inmobi/media/p8;->a(I)I

    move-result v0

    iput v0, v1, Landroid/graphics/Point;->x:I

    const/4 v0, 0x1

    .line 48
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    invoke-static {p1}, Lcom/inmobi/media/p8;->a(I)I

    move-result p1

    iput p1, v1, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 49
    iget-object v0, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_1

    .line 50
    const-string v2, "TAG"

    const-string v3, "Exception while getting assetPosition - "

    const-string v4, "p8"

    invoke-static {v4, v2, v3}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 51
    invoke-static {p1, v2}, Lcom/inmobi/media/E0;->a(Lorg/json/JSONException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 52
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v4, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final h()V
    .locals 12

    const-string v0, "openMode"

    const-string v1, "TAG"

    const-string v2, "passThroughJson"

    const-string v3, "p8"

    .line 1
    :try_start_0
    iget-object v4, p0, Lcom/inmobi/media/p8;->a:Lorg/json/JSONObject;

    if-nez v4, :cond_1

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/p8;->p:Lcom/inmobi/media/o8;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/inmobi/media/d8;

    const/4 v8, 0x0

    const/16 v9, 0x1f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/inmobi/media/d8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/e8;I)V

    .line 3
    iput-object v2, v0, Lcom/inmobi/media/o8;->c:Lcom/inmobi/media/d8;

    :goto_0
    return-void

    .line 4
    :cond_1
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 5
    iget-object v5, p0, Lcom/inmobi/media/p8;->p:Lcom/inmobi/media/o8;

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 6
    iput-object v2, v5, Lcom/inmobi/media/o8;->a:Lorg/json/JSONObject;

    .line 7
    :cond_3
    :goto_1
    const-string v2, "adContent"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 8
    iget-object v5, p0, Lcom/inmobi/media/p8;->p:Lcom/inmobi/media/o8;

    if-eqz v5, :cond_4

    .line 9
    iget-object v5, v5, Lcom/inmobi/media/o8;->b:Lcom/inmobi/media/n8;

    .line 10
    const-string v6, "title"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 11
    iput-object v6, v5, Lcom/inmobi/media/n8;->a:Ljava/lang/String;

    .line 12
    const-string v6, "description"

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 13
    iput-object v6, v5, Lcom/inmobi/media/n8;->b:Ljava/lang/String;

    .line 14
    const-string v6, "ctaText"

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 15
    iput-object v6, v5, Lcom/inmobi/media/n8;->d:Ljava/lang/String;

    .line 16
    const-string v6, "iconUrl"

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 17
    iput-object v6, v5, Lcom/inmobi/media/n8;->c:Ljava/lang/String;

    .line 18
    const-string v6, "rating"

    const-wide/16 v8, 0x0

    invoke-virtual {v2, v6, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    long-to-float v6, v8

    .line 19
    iput v6, v5, Lcom/inmobi/media/n8;->e:F

    .line 20
    const-string v6, "landingPageUrl"

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 21
    iput-object v6, v5, Lcom/inmobi/media/n8;->f:Ljava/lang/String;

    .line 22
    const-string v6, "isApp"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 23
    iput-boolean v2, v5, Lcom/inmobi/media/n8;->g:Z

    .line 24
    :cond_4
    new-instance v2, Lcom/inmobi/media/d8;

    const/4 v10, 0x0

    const/16 v11, 0x1f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/inmobi/media/d8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/e8;I)V

    .line 25
    const-string v5, "onClick"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v5, :cond_7

    .line 26
    :try_start_1
    invoke-virtual {p0, v2, v5}, Lcom/inmobi/media/p8;->a(Lcom/inmobi/media/d8;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 27
    :catch_0
    :try_start_2
    iget-object v6, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v6, :cond_5

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "JSONException in parsing click params for publisher CTA"

    check-cast v6, Lcom/inmobi/media/A5;

    invoke-virtual {v6, v3, v7}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_5
    :goto_2
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 29
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/inmobi/media/p8;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    const-string v6, "<set-?>"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object v0, v2, Lcom/inmobi/media/d8;->g:Ljava/lang/String;

    .line 33
    const-string v0, "fallbackUrl"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "optString(...)"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v2, v0}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;)V

    .line 35
    :cond_6
    const-string v0, "supportLockScreen"

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 36
    iput-boolean v0, v2, Lcom/inmobi/media/d8;->i:Z

    .line 37
    :cond_7
    invoke-virtual {p0, v4}, Lcom/inmobi/media/p8;->j(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 38
    const-string v4, "trackers"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v4, v2, Lcom/inmobi/media/d8;->s:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 40
    :cond_8
    iget-object v0, p0, Lcom/inmobi/media/p8;->p:Lcom/inmobi/media/o8;

    if-nez v0, :cond_9

    goto :goto_3

    .line 41
    :cond_9
    iput-object v2, v0, Lcom/inmobi/media/o8;->c:Lcom/inmobi/media/d8;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 42
    :catch_1
    iget-object v0, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_a

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "Exception in getting publisher values from JSON"

    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public final i(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "assetStyleRef"

    const-string v1, "assetStyle"

    .line 1
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_5

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :goto_1
    move-object v1, p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    .line 4
    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/inmobi/media/p8;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    :cond_2
    if-nez v3, :cond_3

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    move-object v1, v3

    goto :goto_3

    .line 6
    :goto_2
    iget-object v0, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_4

    .line 7
    const-string v1, "TAG"

    const-string v2, "Exception while getting assetStyle - "

    const-string v3, "p8"

    invoke-static {v3, v1, v2}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8
    invoke-static {p1, v1}, Lcom/inmobi/media/E0;->a(Lorg/json/JSONException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 9
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v3, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :cond_5
    :goto_3
    return-object v1
.end method

.method public final j(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 10

    .line 1
    const-string v0, "uiEvent"

    const-string v1, "trackerType"

    const-string v2, "trackers"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/inmobi/media/B2;->a(Lorg/json/JSONArray;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v3

    .line 5
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_8

    .line 6
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 7
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v7}, Lcom/inmobi/media/p8;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 10
    const-string v8, "url_ping"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    const-string v7, "eventId"

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 12
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 14
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v8}, Lcom/inmobi/media/p8;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 15
    const-string v9, "unknown"

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_1

    .line 16
    :cond_5
    const-string v9, "OMID_VIEWABILITY"

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 17
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v7, v8, v6}, Lcom/inmobi/media/p8;->a(ILjava/lang/String;Lorg/json/JSONObject;)Lcom/inmobi/media/U8;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 18
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 19
    :cond_6
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Lcom/inmobi/media/p8;->o(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 20
    :goto_2
    iget-object v0, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_8

    .line 21
    const-string v1, "TAG"

    const-string v2, "Exception while getting assetTrackers - "

    const-string v4, "p8"

    invoke-static {v4, v1, v2}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/inmobi/media/E0;->a(Lorg/json/JSONException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 22
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v4, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-object v3
.end method

.method public final k(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    const-string v0, "assetType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    iget-object v0, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    .line 4
    const-string v1, "TAG"

    const-string v2, "Exception while getting assetType - "

    const-string v3, "p8"

    invoke-static {v3, v1, v2}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    invoke-static {p1, v1}, Lcom/inmobi/media/E0;->a(Lorg/json/JSONException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 6
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v3, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public final l(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5

    const-string v0, "getString(...)"

    const-string v1, "assetValue"

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/inmobi/media/p8;->k(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ICON"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/inmobi/media/p8;->k(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "IMAGE"

    invoke-static {v2, v3, v4}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/inmobi/media/p8;->k(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GIF"

    invoke-static {v2, v3, v4}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 4
    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 6
    :goto_1
    iget-object v0, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_1

    .line 7
    const-string v1, "TAG"

    const-string v2, "Exception while getting assetUrl - "

    const-string v3, "p8"

    invoke-static {v3, v1, v2}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8
    invoke-static {p1, v1}, Lcom/inmobi/media/E0;->a(Lorg/json/JSONException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 9
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v3, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public final m(Ljava/lang/String;)Lcom/inmobi/media/d8;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/inmobi/media/p8;->j:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/d8;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/inmobi/media/p8;->g:Lcom/inmobi/media/p8;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/inmobi/media/p8;->j:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/inmobi/media/d8;

    :cond_3
    :goto_1
    return-object v0
.end method

.method public final m(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 4

    .line 3
    :try_start_0
    const-string v0, "assetValue"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const-string v0, "getJSONArray(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    iget-object v0, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    .line 5
    const-string v1, "TAG"

    const-string v2, "Exception while getting assetValue - "

    const-string v3, "p8"

    invoke-static {v3, v1, v2}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    invoke-static {p1, v1}, Lcom/inmobi/media/E0;->a(Lorg/json/JSONException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 7
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v3, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    return-object p1
.end method

.method public final n(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 2
    :try_start_0
    const-string v0, "valueType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    iget-object v0, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    .line 5
    const-string v1, "TAG"

    const-string v2, "Exception while getting assetValueType - "

    const-string v3, "p8"

    invoke-static {v3, v1, v2}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    invoke-static {p1, v1}, Lcom/inmobi/media/E0;->a(Lorg/json/JSONException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 7
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v3, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public final n(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const-string v0, "assetType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/p8;->i:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final o(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 10

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    const-string v1, "macros"

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p1

    .line 59
    goto :goto_2

    .line 60
    :cond_0
    const-string v1, "adVerifications"

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    const/4 v4, 0x0

    .line 71
    move v5, v4

    .line 72
    :goto_1
    if-ge v5, v1, :cond_2

    .line 73
    .line 74
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-nez v7, :cond_1

    .line 83
    .line 84
    const-string v7, "vendor"

    .line 85
    .line 86
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    const-string v8, "verificationParams"

    .line 91
    .line 92
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    new-instance v9, Lcom/inmobi/media/ha;

    .line 101
    .line 102
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-direct {v9, v7, v8, v6, v3}, Lcom/inmobi/media/ha;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_3

    .line 122
    .line 123
    new-instance p1, Lcom/inmobi/media/U8;

    .line 124
    .line 125
    const-string v0, ""

    .line 126
    .line 127
    const-string v1, "OMID_VIEWABILITY"

    .line 128
    .line 129
    invoke-direct {p1, v0, v4, v1, v3}, Lcom/inmobi/media/U8;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :goto_2
    iget-object v0, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    .line 137
    .line 138
    if-eqz v0, :cond_3

    .line 139
    .line 140
    const-string v1, "TAG"

    .line 141
    .line 142
    const-string v3, "Failed to parse OMID tracker : "

    .line 143
    .line 144
    const-string v4, "p8"

    .line 145
    .line 146
    invoke-static {v4, v1, v3}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-static {p1, v1}, Lcom/inmobi/media/rf;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    check-cast v0, Lcom/inmobi/media/A5;

    .line 155
    .line 156
    invoke-virtual {v0, v4, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :cond_3
    :goto_3
    return-object v2
.end method

.method public final p(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    const-string v0, "dataType"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p1

    .line 12
    iget-object v0, p0, Lcom/inmobi/media/p8;->n:Lcom/inmobi/media/z5;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v1, "TAG"

    .line 17
    .line 18
    const-string v2, "Exception while getting webViewAssetValue - "

    .line 19
    .line 20
    const-string v3, "p8"

    .line 21
    .line 22
    invoke-static {v3, v1, v2}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {p1, v1}, Lcom/inmobi/media/E0;->a(Lorg/json/JSONException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast v0, Lcom/inmobi/media/A5;

    .line 31
    .line 32
    invoke-virtual {v0, v3, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    const-string p1, ""

    .line 36
    .line 37
    :goto_0
    return-object p1
.end method

.method public final q(Lorg/json/JSONObject;)Lcom/inmobi/media/O8;
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    const-string v0, "absolute"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    const-string v0, "percentage"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    const-string v0, "reference"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    new-instance p1, Lcom/inmobi/media/O8;

    .line 24
    .line 25
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    move-object v1, p1

    .line 29
    move-object v7, p0

    .line 30
    invoke-direct/range {v1 .. v7}, Lcom/inmobi/media/O8;-><init>(JJLjava/lang/String;Lcom/inmobi/media/p8;)V

    .line 31
    .line 32
    .line 33
    return-object p1
.end method
