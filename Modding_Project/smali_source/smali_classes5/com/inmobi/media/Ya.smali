.class public final Lcom/inmobi/media/Ya;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/inmobi/media/Ya;

.field public static final synthetic b:[Lkotlin/reflect/KProperty;

.field public static c:Lcom/inmobi/media/Sa;

.field public static final d:Lcom/inmobi/media/x1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-string v1, "getCachedJson()Lorg/json/JSONObject;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lcom/inmobi/media/Ya;

    .line 7
    .line 8
    const-string v4, "cachedJson"

    .line 9
    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v3, v1, [Lkotlin/reflect/KProperty;

    .line 19
    .line 20
    aput-object v0, v3, v2

    .line 21
    .line 22
    sput-object v3, Lcom/inmobi/media/Ya;->b:[Lkotlin/reflect/KProperty;

    .line 23
    .line 24
    new-instance v0, Lcom/inmobi/media/Ya;

    .line 25
    .line 26
    invoke-direct {v0}, Lcom/inmobi/media/Ya;-><init>()V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/inmobi/media/Ya;->a:Lcom/inmobi/media/Ya;

    .line 30
    .line 31
    new-instance v0, Lorg/json/JSONObject;

    .line 32
    .line 33
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v2, Lcom/inmobi/media/x1;

    .line 37
    .line 38
    sget-object v3, Lcom/inmobi/media/Xa;->a:Lcom/inmobi/media/Xa;

    .line 39
    .line 40
    invoke-direct {v2, v0, v3, v1, v1}, Lcom/inmobi/media/x1;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ZZ)V

    .line 41
    .line 42
    .line 43
    sput-object v2, Lcom/inmobi/media/Ya;->d:Lcom/inmobi/media/x1;

    .line 44
    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4f08842f

    if-eq v0, v1, :cond_6

    const v1, -0x352a9fef    # -6991880.5f

    if-eq v0, v1, :cond_4

    const v1, 0x197ef

    if-eq v0, v1, :cond_2

    const v1, 0x2e3aea

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "bool"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 72
    :cond_1
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_a

    check-cast p0, Ljava/lang/Boolean;

    goto :goto_1

    .line 73
    :cond_2
    const-string v0, "int"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 74
    :cond_3
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_a

    check-cast p0, Ljava/lang/Integer;

    goto :goto_1

    .line 75
    :cond_4
    const-string v0, "string"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    .line 76
    :cond_5
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_a

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    .line 77
    :cond_6
    const-string v0, "double"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    .line 78
    :cond_7
    instance-of p1, p0, Ljava/lang/Double;

    if-eqz p1, :cond_8

    check-cast p0, Ljava/lang/Double;

    goto :goto_1

    .line 79
    :cond_8
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_9

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    int-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_1

    .line 80
    :cond_9
    instance-of p1, p0, Ljava/lang/Float;

    if-eqz p1, :cond_a

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_1

    :cond_a
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 81
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4f08842f

    const-string v2, "-1"

    if-eq v0, v1, :cond_4

    const v1, -0x352a9fef    # -6991880.5f

    if-eq v0, v1, :cond_3

    const v1, 0x197ef

    if-eq v0, v1, :cond_1

    const v1, 0x2e3aea

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "bool"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    .line 82
    :cond_1
    const-string v0, "int"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 83
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 84
    :cond_3
    const-string v0, "string"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    .line 85
    :cond_4
    const-string v0, "double"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    .line 86
    :cond_5
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method public static a(Ljava/util/LinkedHashMap;Lcom/inmobi/commons/core/configs/SignalsConfig$PublisherConfig;)Ljava/util/LinkedHashMap;
    .locals 13

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 43
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 44
    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 45
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/SignalsConfig$PublisherConfig;->getGeneralKeys()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 46
    invoke-virtual {p0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v5, v3}, Lcom/inmobi/media/Ya;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 47
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/SignalsConfig$PublisherConfig;->getAdSpecificKeys()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_ban"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_int"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 52
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_rew"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 53
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_nat"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 54
    invoke-virtual {p0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    invoke-static {v8, v2}, Lcom/inmobi/media/Ya;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_2

    :cond_2
    move-object v8, v9

    .line 55
    :goto_2
    invoke-virtual {p0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-static {v10, v2}, Lcom/inmobi/media/Ya;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_3

    :cond_3
    move-object v10, v9

    .line 56
    :goto_3
    invoke-virtual {p0, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-static {v11, v2}, Lcom/inmobi/media/Ya;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_4

    :cond_4
    move-object v11, v9

    .line 57
    :goto_4
    invoke-virtual {p0, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-static {v12, v2}, Lcom/inmobi/media/Ya;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    :cond_5
    if-nez v8, :cond_6

    if-nez v10, :cond_6

    if-nez v11, :cond_6

    if-nez v9, :cond_6

    goto/16 :goto_1

    :cond_6
    if-eqz v8, :cond_7

    .line 58
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz v10, :cond_8

    .line 59
    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    if-eqz v11, :cond_9

    .line 60
    invoke-interface {v1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    if-eqz v9, :cond_a

    .line 61
    invoke-interface {v1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_a
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    if-nez v8, :cond_b

    invoke-static {v2}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    :cond_b
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v4

    if-nez v10, :cond_c

    .line 63
    invoke-static {v2}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    :cond_c
    invoke-virtual {v4, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v4

    if-nez v11, :cond_d

    .line 64
    invoke-static {v2}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    :cond_d
    invoke-virtual {v4, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v4

    if-nez v9, :cond_e

    .line 65
    invoke-static {v2}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    :cond_e
    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v4, "put(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 67
    :cond_f
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 68
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Publisher Signal, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " Not supported"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 70
    const-string v2, "PubSignalsStore"

    invoke-static {v1, v2, p1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_10
    return-object v0
.end method

.method public static a(Ljava/util/LinkedHashMap;)Lorg/json/JSONObject;
    .locals 5

    .line 87
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 88
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 89
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 90
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 91
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 92
    :cond_1
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 93
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 94
    :cond_2
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    .line 95
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    .line 96
    :cond_3
    instance-of v3, v1, Ljava/lang/Double;

    if-eqz v3, :cond_4

    .line 97
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_0

    .line 98
    :cond_4
    instance-of v3, v1, Lorg/json/JSONArray;

    if-eqz v3, :cond_0

    .line 99
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;Lcom/inmobi/commons/core/configs/SignalsConfig$PublisherConfig;)Lorg/json/JSONObject;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/SignalsConfig$PublisherConfig;->getPayloadSize()I

    move-result p1

    if-le v0, p1, :cond_0

    .line 102
    const-string p0, "PubSignalsStore"

    const-string p1, "Publisher Signal payload size exceeded."

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object p0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    new-instance p0, Lcom/inmobi/media/f2;

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Publisher signals size exceeds the limit"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 104
    const-string p1, "event"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    sget-object p1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {p1, p0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public static final a(Landroid/content/Context;)V
    .locals 3

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    :try_start_0
    sget-object v0, Lcom/inmobi/media/Ya;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    sget-object v0, Lcom/inmobi/media/Ya;->c:Lcom/inmobi/media/Sa;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/inmobi/media/Sa;

    const-string v1, "pub_signals_store"

    invoke-direct {v0, p0, v1}, Lcom/inmobi/media/Sa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/inmobi/media/Ya;->c:Lcom/inmobi/media/Sa;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    sget-object p0, Lcom/inmobi/media/Ya;->c:Lcom/inmobi/media/Sa;

    if-nez p0, :cond_1

    const-string p0, "prefDao"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    const-string v0, "saved_signals"

    invoke-virtual {p0, v0}, Lcom/inmobi/media/Sa;->c(Ljava/lang/String;)Z

    .line 37
    sget-object p0, Lcom/inmobi/media/Ya;->d:Lcom/inmobi/media/x1;

    invoke-virtual {p0}, Lcom/inmobi/media/x1;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 38
    :goto_1
    const-string v0, "PubSignalsStore"

    const-string v1, "Publisher signals could not be reset."

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 40
    const-string v0, "event"

    invoke-static {p0, v0}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object p0

    .line 41
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v0, p0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    :goto_2
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)V
    .locals 1

    .line 100
    new-instance v0, Lub/l3;

    invoke-direct {v0, p0}, Lub/l3;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/inmobi/media/Uc;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lub/m3;

    invoke-direct {v1, v0}, Lub/m3;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/inmobi/media/Uc;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static final b(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "$this_saveSignalsToPersistentCache"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    sget-object v1, Lcom/inmobi/media/Ya;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    sget-object v1, Lcom/inmobi/media/Ya;->c:Lcom/inmobi/media/Sa;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/inmobi/media/Sa;

    const-string v2, "pub_signals_store"

    invoke-direct {v1, v0, v2}, Lcom/inmobi/media/Sa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/inmobi/media/Ya;->c:Lcom/inmobi/media/Sa;

    .line 7
    :cond_0
    sget-object v0, Lcom/inmobi/media/Ya;->c:Lcom/inmobi/media/Sa;

    if-nez v0, :cond_1

    const-string v0, "prefDao"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "toString(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "saved_signals"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/media/Sa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object p0, Lcom/inmobi/media/Ya;->d:Lcom/inmobi/media/x1;

    invoke-virtual {p0}, Lcom/inmobi/media/x1;->a()V

    .line 9
    const-string p0, "PubSignalsStore"

    const-string v0, "Publisher Signals saved successfully."

    const/4 v1, 0x2

    invoke-static {v1, p0, v0}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/LinkedHashMap;
    .locals 20

    .line 1
    sget-object v1, Lcom/inmobi/media/Ya;->d:Lcom/inmobi/media/x1;

    sget-object v2, Lcom/inmobi/media/Ya;->b:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v4, p0

    invoke-virtual {v1, v4, v2}, Lcom/inmobi/media/x1;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 2
    sget-object v2, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 3
    const-string v2, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig"

    const/4 v5, 0x0

    const-string v6, "signals"

    invoke-static {v6, v2, v5}, Lcom/inmobi/media/p5;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v2

    .line 4
    check-cast v2, Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 5
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/SignalsConfig;->getPublisherConfig()Lcom/inmobi/commons/core/configs/SignalsConfig$PublisherConfig;

    move-result-object v2

    .line 6
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/SignalsConfig$PublisherConfig;->getGeneralKeys()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "double"

    const-string v9, "optString(...)"

    const-string v10, "string"

    const-string v11, "bool"

    const v13, 0x197ef

    const v14, -0x352a9fef    # -6991880.5f

    const v15, -0x4f08842f

    const-string v3, "int"

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_0

    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v12

    if-eq v12, v15, :cond_7

    if-eq v12, v14, :cond_5

    if-eq v12, v13, :cond_3

    const v8, 0x2e3aea

    if-eq v12, v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 13
    :cond_5
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    .line 14
    :cond_6
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 15
    :cond_7
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_1

    .line 16
    :cond_8
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 17
    :cond_9
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/SignalsConfig$PublisherConfig;->getAdSpecificKeys()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 18
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 19
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v12

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v12, :cond_17

    .line 20
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0x5f

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v13, :cond_e

    const/4 v15, 0x1

    if-eq v13, v15, :cond_d

    const/4 v15, 0x2

    if-eq v13, v15, :cond_c

    const/4 v15, 0x3

    if-eq v13, v15, :cond_b

    move-object/from16 v17, v0

    const v0, 0x2e3aea

    :goto_4
    const/4 v14, 0x1

    goto/16 :goto_7

    .line 21
    :cond_b
    const-string v15, "nat"

    goto :goto_5

    .line 22
    :cond_c
    const-string v15, "rew"

    goto :goto_5

    :cond_d
    move-object v15, v3

    goto :goto_5

    .line 23
    :cond_e
    const-string v15, "ban"

    .line 24
    :goto_5
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 25
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v15

    move-object/from16 v17, v0

    const v0, -0x4f08842f

    if-eq v15, v0, :cond_15

    const v0, -0x352a9fef    # -6991880.5f

    if-eq v15, v0, :cond_13

    const v0, 0x197ef

    if-eq v15, v0, :cond_11

    const v0, 0x2e3aea

    if-eq v15, v0, :cond_f

    :goto_6
    goto :goto_4

    :cond_f
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    goto :goto_6

    .line 26
    :cond_10
    invoke-virtual {v7, v13}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-interface {v5, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_11
    const v0, 0x2e3aea

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_12

    goto :goto_6

    .line 28
    :cond_12
    invoke-virtual {v7, v13}, Lorg/json/JSONArray;->optInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v5, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_13
    const v0, 0x2e3aea

    .line 29
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_14

    goto :goto_6

    .line 30
    :cond_14
    invoke-virtual {v7, v13}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_15
    const v0, 0x2e3aea

    .line 31
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_16

    goto :goto_6

    .line 32
    :cond_16
    invoke-virtual {v7, v13}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-interface {v5, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :goto_7
    add-int/2addr v13, v14

    move-object/from16 v0, v17

    const v14, -0x352a9fef    # -6991880.5f

    const v15, -0x4f08842f

    goto/16 :goto_3

    :cond_17
    const v13, 0x197ef

    goto/16 :goto_2

    :cond_18
    return-object v5
.end method
