.class public final Lea/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAdmobPamMgr.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdmobPamMgr.kt\ncom/hades/aar/admanager/loader/admob/AdmobPamMgr\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,190:1\n1#2:191\n1019#3,2:192\n*S KotlinDebug\n*F\n+ 1 AdmobPamMgr.kt\ncom/hades/aar/admanager/loader/admob/AdmobPamMgr\n*L\n180#1:192,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lea/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/hades/aar/admanager/core/AdFormat;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static c:Lda/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lea/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lea/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lea/b;->a:Lea/b;

    .line 7
    .line 8
    new-instance v0, Ljava/util/EnumMap;

    .line 9
    .line 10
    const-class v1, Lcom/hades/aar/admanager/core/AdFormat;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lea/b;->b:Ljava/util/EnumMap;

    .line 16
    .line 17
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

.method private final a()Z
    .locals 3

    .line 1
    sget-object v0, Lca/k;->a:Lca/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lca/k;->a()Ld/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Ld/f;->b()Lda/f;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lda/f;->s()Lca/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v0, v1

    .line 22
    :goto_0
    instance-of v2, v0, Lea/a;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    move-object v1, v0

    .line 27
    check-cast v1, Lea/a;

    .line 28
    .line 29
    :cond_1
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {v1}, Lea/a;->n()Lkotlin/jvm/functions/Function0;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/lang/String;

    .line 42
    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    :cond_2
    const-string v0, ""

    .line 46
    .line 47
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_4

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    goto :goto_1

    .line 55
    :cond_4
    const/4 v0, 0x0

    .line 56
    :goto_1
    return v0
.end method

.method private final c(Lcom/hades/aar/admanager/core/AdFormat;)V
    .locals 3

    .line 1
    const-string v0, "LAST_AD_VALUE_"

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lea/b;->c:Lda/a;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Lca/j;->formatName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v1, v0}, Lda/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto :goto_2

    .line 32
    :cond_0
    :goto_0
    const-string v0, "0.0"

    .line 33
    .line 34
    :cond_1
    invoke-static {v0}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;)Ljava/lang/Double;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const-wide/16 v0, 0x0

    .line 46
    .line 47
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sget-object v1, Lea/b;->b:Ljava/util/EnumMap;

    .line 52
    .line 53
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :goto_2
    sget-object v0, Lga/a;->a:Lga/a;

    .line 58
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v2, "getLastValueByAdFormat error :"

    .line 62
    .line 63
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-string v1, "AdmobPamMgr"

    .line 78
    .line 79
    invoke-virtual {v0, v1, p1}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :goto_3
    return-void
.end method

.method private final e(DLorg/json/JSONArray;)Ljava/util/HashMap;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONArray;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    move-object v4, v2

    .line 13
    move v5, v3

    .line 14
    :goto_0
    const/4 v6, 0x1

    .line 15
    if-ge v5, v1, :cond_5

    .line 16
    .line 17
    move-object/from16 v7, p3

    .line 18
    .line 19
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    move-result-object v8

    .line 23
    if-nez v8, :cond_0

    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_0
    const-string v9, "range"

    .line 27
    .line 28
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 29
    .line 30
    .line 31
    move-result-object v10

    .line 32
    const-wide/16 v11, 0x0

    .line 33
    .line 34
    if-eqz v10, :cond_1

    .line 35
    .line 36
    invoke-virtual {v10, v3}, Lorg/json/JSONArray;->optDouble(I)D

    .line 37
    .line 38
    .line 39
    move-result-wide v13

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move-wide v13, v11

    .line 42
    :goto_1
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    if-eqz v9, :cond_2

    .line 47
    .line 48
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->optDouble(I)D

    .line 49
    .line 50
    .line 51
    move-result-wide v9

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    move-wide v9, v11

    .line 54
    :goto_2
    const-string v15, "max"

    .line 55
    .line 56
    invoke-virtual {v8, v15, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    move-result-object v15

    .line 60
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    const-string v15, ""

    .line 64
    .line 65
    const-string v3, "value"

    .line 66
    .line 67
    invoke-virtual {v8, v3, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v15

    .line 71
    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v3, "default"

    .line 75
    .line 76
    invoke-static {v15, v3, v6}, Lkotlin/text/StringsKt;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    move-object v2, v8

    .line 83
    :cond_3
    cmpl-double v3, p1, v11

    .line 84
    .line 85
    if-lez v3, :cond_4

    .line 86
    .line 87
    cmpg-double v3, v13, p1

    .line 88
    .line 89
    if-gtz v3, :cond_4

    .line 90
    .line 91
    cmpg-double v3, p1, v9

    .line 92
    .line 93
    if-gtz v3, :cond_4

    .line 94
    .line 95
    move-object v4, v8

    .line 96
    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 97
    .line 98
    const/4 v3, 0x0

    .line 99
    goto :goto_0

    .line 100
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-le v1, v6, :cond_6

    .line 105
    .line 106
    new-instance v1, Le/m;

    .line 107
    .line 108
    invoke-direct {v1}, Le/m;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->D(Ljava/util/List;Ljava/util/Comparator;)V

    .line 112
    .line 113
    .line 114
    :cond_6
    new-instance v1, Ljava/util/HashMap;

    .line 115
    .line 116
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 117
    .line 118
    .line 119
    new-instance v3, Lorg/json/JSONArray;

    .line 120
    .line 121
    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 122
    .line 123
    .line 124
    const/4 v0, 0x0

    .line 125
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    const-string v3, "OVER_RANGE_GROUP"

    .line 130
    .line 131
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    const-string v0, "TAG_RANGE_GROUP"

    .line 135
    .line 136
    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    const-string v0, "TAG_DEFAULT_KEY"

    .line 140
    .line 141
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    return-object v1
.end method

.method private final f()V
    .locals 3

    .line 1
    sget-boolean v0, Lea/b;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lea/b;->c:Lda/a;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Lga/a;->a:Lga/a;

    .line 11
    .line 12
    const-string v1, "AdmobPamMgr"

    .line 13
    .line 14
    const-string v2, "ValueRecorder is null, should init it first."

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    sget-object v0, Lcom/hades/aar/admanager/core/AdFormat;->NATIVE:Lcom/hades/aar/admanager/core/AdFormat;

    .line 21
    .line 22
    invoke-direct {p0, v0}, Lea/b;->c(Lcom/hades/aar/admanager/core/AdFormat;)V

    .line 23
    .line 24
    .line 25
    sget-object v0, Lcom/hades/aar/admanager/core/AdFormat;->BANNER:Lcom/hades/aar/admanager/core/AdFormat;

    .line 26
    .line 27
    invoke-direct {p0, v0}, Lea/b;->c(Lcom/hades/aar/admanager/core/AdFormat;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lcom/hades/aar/admanager/core/AdFormat;->INTERSTITIAL:Lcom/hades/aar/admanager/core/AdFormat;

    .line 31
    .line 32
    invoke-direct {p0, v0}, Lea/b;->c(Lcom/hades/aar/admanager/core/AdFormat;)V

    .line 33
    .line 34
    .line 35
    sget-object v0, Lcom/hades/aar/admanager/core/AdFormat;->REWARDED_VIDEO:Lcom/hades/aar/admanager/core/AdFormat;

    .line 36
    .line 37
    invoke-direct {p0, v0}, Lea/b;->c(Lcom/hades/aar/admanager/core/AdFormat;)V

    .line 38
    .line 39
    .line 40
    sget-object v0, Lcom/hades/aar/admanager/core/AdFormat;->APP_OPEN:Lcom/hades/aar/admanager/core/AdFormat;

    .line 41
    .line 42
    invoke-direct {p0, v0}, Lea/b;->c(Lcom/hades/aar/admanager/core/AdFormat;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    const/4 v0, 0x1

    .line 46
    sput-boolean v0, Lea/b;->d:Z

    .line 47
    .line 48
    return-void
.end method

.method private final h(Ljava/lang/String;Lcom/hades/aar/admanager/core/AdFormat;)Landroid/os/Bundle;
    .locals 10

    .line 1
    const-string v0, "AdmobPamMgr"

    .line 2
    .line 3
    const-string v1, "handleAdPamTargetGroup -> Match range : lastAdValue="

    .line 4
    .line 5
    invoke-interface {p2}, Lca/j;->formatName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    sget-object v3, Lea/b;->b:Ljava/util/EnumMap;

    .line 10
    .line 11
    invoke-virtual {v3, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Ljava/lang/Double;

    .line 16
    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    .line 26
    .line 27
    .line 28
    move-result-wide v5

    .line 29
    const/4 p2, 0x0

    .line 30
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    .line 31
    .line 32
    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 39
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v7, "formatObj.keys()"

    .line 44
    .line 45
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v2}, Lkotlin/sequences/j;->e(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v2}, Lkotlin/sequences/j;->x(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/lang/String;

    .line 57
    .line 58
    if-nez v2, :cond_1

    .line 59
    .line 60
    sget-object p1, Lga/a;->a:Lga/a;

    .line 61
    .line 62
    const-string v1, "No group key found in formatObj"

    .line 63
    .line 64
    invoke-virtual {p1, v0, v1}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-object p2

    .line 68
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    .line 69
    .line 70
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 71
    .line 72
    .line 73
    :try_start_1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-string v7, "formatObj.getJSONArray(groupKey)"

    .line 78
    .line 79
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, v5, v6, p1}, Lea/b;->e(DLorg/json/JSONArray;)Ljava/util/HashMap;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const-string v7, "TAG_RANGE_GROUP"

    .line 87
    .line 88
    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    check-cast v7, Lorg/json/JSONObject;

    .line 93
    .line 94
    const-string v8, "TAG_DEFAULT_KEY"

    .line 95
    .line 96
    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    check-cast v8, Lorg/json/JSONObject;

    .line 101
    .line 102
    const-string v9, "OVER_RANGE_GROUP"

    .line 103
    .line 104
    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Lorg/json/JSONObject;

    .line 109
    .line 110
    if-nez p1, :cond_2

    .line 111
    .line 112
    new-instance p1, Lorg/json/JSONObject;

    .line 113
    .line 114
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :catch_0
    move-exception p1

    .line 119
    goto :goto_2

    .line 120
    :cond_2
    :goto_0
    cmpg-double v3, v5, v3

    .line 121
    .line 122
    const-string v4, "value"

    .line 123
    .line 124
    if-nez v3, :cond_4

    .line 125
    .line 126
    if-eqz v8, :cond_3

    .line 127
    .line 128
    :try_start_2
    sget-object p1, Lga/a;->a:Lga/a;

    .line 129
    .line 130
    const-string v3, "handleAdPamTargetGroup -> Branch: Default Group"

    .line 131
    .line 132
    invoke-virtual {p1, v0, v3}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    goto :goto_1

    .line 140
    :cond_3
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    sget-object v3, Lga/a;->a:Lga/a;

    .line 145
    .line 146
    const-string v4, "handleAdPamTargetGroup -> Branch: Over Range Group (No Default),NO_CONFIG_DEFAULT_GROUP_VALUE"

    .line 147
    .line 148
    invoke-virtual {v3, v0, v4}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_4
    if-nez v7, :cond_5

    .line 153
    .line 154
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    sget-object v3, Lga/a;->a:Lga/a;

    .line 159
    .line 160
    const-string v4, "handleAdPamTargetGroup -> Branch: Over Range Group"

    .line 161
    .line 162
    invoke-virtual {v3, v0, v4}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_5
    sget-object p1, Lga/a;->a:Lga/a;

    .line 167
    .line 168
    const-string v3, "handleAdPamTargetGroup -> Branch: Tag User Groups"

    .line 169
    .line 170
    invoke-virtual {p1, v0, v3}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    :goto_1
    invoke-virtual {p2, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    sget-object p1, Lga/a;->a:Lga/a;

    .line 181
    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v1, ",GroupKey=("

    .line 191
    .line 192
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v1, "), GroupValue=("

    .line 199
    .line 200
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const/16 v1, 0x29

    .line 211
    .line 212
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {p1, v0, v1}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 220
    .line 221
    .line 222
    goto :goto_3

    .line 223
    :goto_2
    sget-object v1, Lga/a;->a:Lga/a;

    .line 224
    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    const-string v3, "handleAdPamTargetGroup -> Error : "

    .line 228
    .line 229
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    invoke-virtual {v1, v0, p1}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    :goto_3
    return-object p2

    .line 247
    :catch_1
    move-exception v1

    .line 248
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 249
    .line 250
    .line 251
    sget-object v1, Lga/a;->a:Lga/a;

    .line 252
    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    const-string v4, "handleAdPamTargetGroup -> Request format=("

    .line 256
    .line 257
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    const-string v2, ") is error, check your json data : "

    .line 264
    .line 265
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-virtual {v1, v0, p1}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    return-object p2
.end method


# virtual methods
.method public final b(Lcom/hades/aar/admanager/core/AdFormat;)Ljava/lang/Double;
    .locals 1
    .param p1    # Lcom/hades/aar/admanager/core/AdFormat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "adFormat"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lea/b;->b:Ljava/util/EnumMap;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    :cond_0
    check-cast p1, Ljava/lang/Double;

    .line 16
    .line 17
    return-object p1
.end method

.method public final d(Lcom/hades/aar/admanager/core/AdFormat;)Landroid/os/Bundle;
    .locals 3
    .param p1    # Lcom/hades/aar/admanager/core/AdFormat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "format"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lea/b;->a()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object p1, Lga/a;->a:Lga/a;

    .line 14
    .line 15
    const-string v0, "AdmobPamMgr"

    .line 16
    .line 17
    const-string v2, "Should fetch remote data first."

    .line 18
    .line 19
    invoke-virtual {p1, v0, v2}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    invoke-direct {p0}, Lea/b;->f()V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lca/k;->a:Lca/k;

    .line 27
    .line 28
    invoke-virtual {v0}, Lca/k;->a()Ld/f;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-interface {v0}, Ld/f;->b()Lda/f;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Lda/f;->s()Lca/a;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move-object v0, v1

    .line 46
    :goto_0
    instance-of v2, v0, Lea/a;

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    check-cast v0, Lea/a;

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move-object v0, v1

    .line 54
    :goto_1
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-virtual {v0}, Lea/a;->n()Lkotlin/jvm/functions/Function0;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Ljava/lang/String;

    .line 67
    .line 68
    if-nez v0, :cond_4

    .line 69
    .line 70
    :cond_3
    const-string v0, ""

    .line 71
    .line 72
    :cond_4
    invoke-direct {p0, v0, p1}, Lea/b;->h(Ljava/lang/String;Lcom/hades/aar/admanager/core/AdFormat;)Landroid/os/Bundle;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_5

    .line 77
    .line 78
    new-instance v0, Landroid/os/Bundle;

    .line 79
    .line 80
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v1, "admob_custom_keyvals"

    .line 84
    .line 85
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 86
    .line 87
    .line 88
    return-object v0

    .line 89
    :cond_5
    return-object v1
.end method

.method public final g(Lcom/hades/aar/admanager/core/AdFormat;D)V
    .locals 4
    .param p1    # Lcom/hades/aar/admanager/core/AdFormat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adFormat"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lea/b;->c:Lda/a;

    .line 7
    .line 8
    const-string v1, "AdmobPamMgr"

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object p1, Lga/a;->a:Lga/a;

    .line 13
    .line 14
    const-string p2, "handleAdRecordLastValue -> ValueRecorder is null, should init it first."

    .line 15
    .line 16
    invoke-virtual {p1, v1, p2}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    sget-object v0, Lca/k;->a:Lca/k;

    .line 21
    .line 22
    invoke-virtual {v0}, Lca/k;->a()Ld/f;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-interface {v0}, Ld/f;->b()Lda/f;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lda/f;->x()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    :goto_0
    const-wide/16 v2, 0x0

    .line 41
    .line 42
    cmpg-double v2, p2, v2

    .line 43
    .line 44
    if-gtz v2, :cond_2

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    sget-object p1, Lga/a;->a:Lga/a;

    .line 49
    .line 50
    const-string p2, "handleAdRecordLastValue ->  value should over 0 "

    .line 51
    .line 52
    invoke-virtual {p1, v1, p2}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sget-object v2, Lea/b;->b:Ljava/util/EnumMap;

    .line 61
    .line 62
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v2, "LAST_AD_VALUE_"

    .line 68
    .line 69
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {p1}, Lca/j;->formatName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    sget-object v0, Lea/b;->c:Lda/a;

    .line 84
    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-interface {v0, p1, v2}, Lda/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    sget-object v0, Lga/a;->a:Lga/a;

    .line 95
    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v3, "handleAdRecordLastValue -> Record last AdValue for pam :(key="

    .line 99
    .line 100
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string p1, ", value="

    .line 107
    .line 108
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const/16 p1, 0x29

    .line 115
    .line 116
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {v0, v1, p1}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public final i(Lda/a;)V
    .locals 0
    .param p1    # Lda/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lea/b;->c:Lda/a;

    .line 2
    .line 3
    return-void
.end method
