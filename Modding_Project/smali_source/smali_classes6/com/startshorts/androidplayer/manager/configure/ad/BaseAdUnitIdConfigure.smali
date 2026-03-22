.class public abstract Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;
.super Ljava/lang/Object;
.source "BaseAdUnitIdConfigure.kt"

# interfaces
.implements Lme/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lme/b<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Lca/e;",
        ">;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBaseAdUnitIdConfigure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseAdUnitIdConfigure.kt\ncom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,203:1\n13402#2,2:204\n*S KotlinDebug\n*F\n+ 1 BaseAdUnitIdConfigure.kt\ncom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure\n*L\n95#1:204,2\n*E\n"
    }
.end annotation


# static fields
.field public static final d:Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lca/e;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Z

.field private c:Lme/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;->d:Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Lme/a;

    .line 12
    .line 13
    invoke-direct {v0}, Lme/a;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;->c:Lme/a;

    .line 17
    .line 18
    return-void
.end method

.method public static final synthetic f(Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;)Lme/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;->c:Lme/a;

    .line 2
    .line 3
    return-object p0
.end method

.method private final i(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lca/e;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/4 v5, 0x0

    .line 29
    :goto_0
    if-ge v5, v4, :cond_2

    .line 30
    .line 31
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    const-string/jumbo v7, "type"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    const-string v8, "getString(...)"

    .line 43
    .line 44
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v7}, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;->k(Ljava/lang/String;)Lcom/hades/aar/admanager/core/AdFormat;

    .line 48
    .line 49
    .line 50
    move-result-object v11

    .line 51
    invoke-direct {v0, v11, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;->o(Lcom/hades/aar/admanager/core/AdFormat;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v13

    .line 55
    const-string v7, "id"

    .line 56
    .line 57
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v9, "priority"

    .line 65
    .line 66
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    invoke-direct {v0, v9}, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;->l(I)Lcom/hades/aar/admanager/core/AdPriority;

    .line 71
    .line 72
    .line 73
    move-result-object v12

    .line 74
    const-string v9, "name"

    .line 75
    .line 76
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v14

    .line 80
    const-string v9, "optString(...)"

    .line 81
    .line 82
    invoke-static {v14, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v9, "pam"

    .line 86
    .line 87
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v19

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;->g()Lcom/hades/aar/admanager/core/AdAggregatedSdk;

    .line 92
    .line 93
    .line 94
    move-result-object v18

    .line 95
    sget-object v9, Lcom/startshorts/androidplayer/manager/configure/ad/a;->a:Lcom/startshorts/androidplayer/manager/configure/ad/a;

    .line 96
    .line 97
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/manager/configure/ad/a;->h()Lcom/startshorts/androidplayer/manager/configure/ad/a$a;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->h()I

    .line 102
    .line 103
    .line 104
    move-result v17

    .line 105
    new-instance v15, Lca/e;

    .line 106
    .line 107
    const/16 v20, 0x20

    .line 108
    .line 109
    const/16 v21, 0x0

    .line 110
    .line 111
    const/16 v16, 0x0

    .line 112
    .line 113
    const/16 v22, 0x2

    .line 114
    .line 115
    move-object v9, v15

    .line 116
    move-object/from16 p2, v2

    .line 117
    .line 118
    move-object v2, v15

    .line 119
    move-object/from16 v15, v16

    .line 120
    .line 121
    move/from16 v16, v22

    .line 122
    .line 123
    invoke-direct/range {v9 .. v21}, Lca/e;-><init>(Ljava/lang/String;Lcom/hades/aar/admanager/core/AdFormat;Lcom/hades/aar/admanager/core/AdPriority;ILjava/lang/String;Lcom/hades/aar/admanager/core/AdSize;IILcom/hades/aar/admanager/core/AdAggregatedSdk;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    const-string v2, "dailyMaxShowCount"

    .line 130
    .line 131
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    if-eqz v9, :cond_1

    .line 136
    .line 137
    sget-object v9, Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;

    .line 138
    .line 139
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    invoke-virtual {v9, v7, v2}, Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;->l(Ljava/lang/String;I)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_1
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 155
    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;->p()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    const-string v7, "inflate -> error KEY_DAILY_MAX_SHOW_COUNT not exist"

    .line 161
    .line 162
    invoke-virtual {v2, v6, v7}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 166
    .line 167
    move-object/from16 v2, p2

    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :cond_2
    iget-object v2, v0, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;->a:Ljava/util/HashMap;

    .line 172
    .line 173
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    return-object v3
.end method

.method static synthetic j(Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure$init$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure$init$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure$init$1;->k:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure$init$1;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure$init$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure$init$1;-><init>(Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure$init$1;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure$init$1;->k:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p0, v0, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure$init$1;->h:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;

    .line 41
    .line 42
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    sget-object p2, Loe/e;->a:Loe/e;

    .line 58
    .line 59
    invoke-virtual {p2}, Loe/e;->e()Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-nez p2, :cond_3

    .line 64
    .line 65
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;->p()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const-string p2, "init failed -> should init country tier first"

    .line 72
    .line 73
    invoke-virtual {p1, p0, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const/4 p0, 0x0

    .line 77
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :cond_3
    sget-object v4, Lcom/startshorts/androidplayer/bean/ad/AdScene;->INTERSTITIAL:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 83
    .line 84
    sget-object v5, Lcom/startshorts/androidplayer/bean/ad/AdScene;->REWARD:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 85
    .line 86
    sget-object v6, Lcom/startshorts/androidplayer/bean/ad/AdScene;->APP_OPEN:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 87
    .line 88
    sget-object v7, Lcom/startshorts/androidplayer/bean/ad/AdScene;->NATIVE:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 89
    .line 90
    sget-object v8, Lcom/startshorts/androidplayer/bean/ad/AdScene;->BANNER:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 91
    .line 92
    sget-object v9, Lcom/startshorts/androidplayer/bean/ad/AdScene;->MEDIA_VIDEO:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 93
    .line 94
    filled-new-array/range {v4 .. v9}, [Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    iput-object p0, v0, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure$init$1;->h:Ljava/lang/Object;

    .line 99
    .line 100
    iput v3, v0, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure$init$1;->k:I

    .line 101
    .line 102
    invoke-virtual {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;->q(Ljava/lang/String;[Lcom/startshorts/androidplayer/bean/ad/AdScene;Lrs/c;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    if-ne p2, v1, :cond_4

    .line 107
    .line 108
    return-object v1

    .line 109
    :cond_4
    :goto_1
    move-object p1, p2

    .line 110
    check-cast p1, Ljava/lang/Boolean;

    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;->p()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v2, "init -> succeed="

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {v0, p0, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    return-object p2
.end method

.method private final k(Ljava/lang/String;)Lcom/hades/aar/admanager/core/AdFormat;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sparse-switch v0, :sswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_1

    .line 9
    :sswitch_0
    const-string v0, "mediaVideo"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object p1, Lcom/hades/aar/admanager/core/AdFormat;->MEDIA_VIDEO:Lcom/hades/aar/admanager/core/AdFormat;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :sswitch_1
    const-string v0, "interstitial"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    sget-object p1, Lcom/hades/aar/admanager/core/AdFormat;->INTERSTITIAL:Lcom/hades/aar/admanager/core/AdFormat;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :sswitch_2
    const-string v0, "appOpen"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    sget-object p1, Lcom/hades/aar/admanager/core/AdFormat;->APP_OPEN:Lcom/hades/aar/admanager/core/AdFormat;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :sswitch_3
    const-string v0, "reward"

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    sget-object p1, Lcom/hades/aar/admanager/core/AdFormat;->REWARDED_VIDEO:Lcom/hades/aar/admanager/core/AdFormat;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :sswitch_4
    const-string v0, "native"

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    sget-object p1, Lcom/hades/aar/admanager/core/AdFormat;->NATIVE:Lcom/hades/aar/admanager/core/AdFormat;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :sswitch_5
    const-string v0, "banner"

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    .line 72
    sget-object p1, Lcom/hades/aar/admanager/core/AdFormat;->BANNER:Lcom/hades/aar/admanager/core/AdFormat;

    .line 73
    .line 74
    :goto_0
    return-object p1

    .line 75
    :cond_0
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v2, "ad format("

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string p1, ") Not Existed."

    .line 91
    .line 92
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw v0

    .line 103
    :sswitch_data_0
    .sparse-switch
        -0x533a80d4 -> :sswitch_5
        -0x3ebdafe9 -> :sswitch_4
        -0x37b0b0d1 -> :sswitch_3
        -0x2f54e3f5 -> :sswitch_2
        0x240b672c -> :sswitch_1
        0x731c02f7 -> :sswitch_0
    .end sparse-switch
.end method

.method private final l(I)Lcom/hades/aar/admanager/core/AdPriority;
    .locals 2

    .line 1
    sget-object v0, Lcom/hades/aar/admanager/core/AdPriority;->PRIORITY_HIGH:Lcom/hades/aar/admanager/core/AdPriority;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/hades/aar/admanager/core/AdPriority;->getValue()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lcom/hades/aar/admanager/core/AdPriority;->PRIORITY_MID:Lcom/hades/aar/admanager/core/AdPriority;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/hades/aar/admanager/core/AdPriority;->getValue()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ne p1, v1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    sget-object v0, Lcom/hades/aar/admanager/core/AdPriority;->PRIORITY_LOW:Lcom/hades/aar/admanager/core/AdPriority;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/hades/aar/admanager/core/AdPriority;->getValue()I

    .line 22
    .line 23
    .line 24
    :goto_0
    return-object v0
.end method

.method static synthetic n(Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;Lrs/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;->c:Lme/a;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lme/a;->e(Lme/b;Lrs/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-ne p0, p1, :cond_0

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method private final o(Lcom/hades/aar/admanager/core/AdFormat;Ljava/lang/String;)I
    .locals 4

    .line 1
    sget-object v0, Lcom/hades/aar/admanager/core/AdFormat;->NATIVE:Lcom/hades/aar/admanager/core/AdFormat;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;->g()Lcom/hades/aar/admanager/core/AdAggregatedSdk;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget-object v0, Lcom/hades/aar/admanager/core/AdAggregatedSdk;->ADMOB:Lcom/hades/aar/admanager/core/AdAggregatedSdk;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    sget-object p1, Lcom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig;->Companion:Lcom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig$Companion;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig$Companion;->getValue()Lcom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    return v1

    .line 26
    :cond_2
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig;->getSwitch()Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-nez v2, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eq v2, v1, :cond_4

    .line 38
    .line 39
    :goto_0
    return v1

    .line 40
    :cond_4
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig;->getPreloadNum()Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_7

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-gtz v2, :cond_5

    .line 51
    .line 52
    return v1

    .line 53
    :cond_5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig;->getAdType()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p1, p2, v0}, Lcom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig$Companion;->isTypeAvailable(Ljava/lang/String;Ljava/util/List;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_6

    .line 62
    .line 63
    return v1

    .line 64
    :cond_6
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;->p()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v3, "resolveMaxSize -> adScene="

    .line 76
    .line 77
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string p2, ", maxSize aligned to preloadNum="

    .line 84
    .line 85
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p1, v0, p2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return v2

    .line 99
    :cond_7
    return v1
.end method

.method static synthetic r(Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;Ljava/lang/String;[Lcom/startshorts/androidplayer/bean/ad/AdScene;Lrs/c;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;",
            "Ljava/lang/String;",
            "[",
            "Lcom/startshorts/androidplayer/bean/ad/AdScene;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;->p()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string/jumbo p2, "update failed -> mAdJsonInUse.mWholeJson is blank"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p0, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_0
    :try_start_0
    sget-object p3, Loe/e;->a:Loe/e;

    .line 26
    .line 27
    invoke-virtual {p3}, Loe/e;->g()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    new-instance v1, Lorg/json/JSONObject;

    .line 32
    .line 33
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v2, "adGroup"

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1, p3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;->c:Lme/a;

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Lme/a;->b(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sget-object v2, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;->a:Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;->p()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    const/4 v8, 0x4

    .line 61
    const/4 v9, 0x0

    .line 62
    const-wide/16 v5, 0x0

    .line 63
    .line 64
    const/4 v7, 0x0

    .line 65
    invoke-static/range {v2 .. v9}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;->e(Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;Ljava/lang/String;Lorg/json/JSONArray;JZILjava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;->c:Lme/a;

    .line 72
    .line 73
    invoke-virtual {v1, p1, v0}, Lme/a;->c(Lorg/json/JSONObject;Z)V

    .line 74
    .line 75
    .line 76
    array-length v1, p2

    .line 77
    move v2, v0

    .line 78
    :goto_0
    if-ge v2, v1, :cond_2

    .line 79
    .line 80
    aget-object v3, p2, v2

    .line 81
    .line 82
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/ad/AdScene;->getValue()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-direct {p0, v4, p1}, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;->i(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    sget-object v5, Lid/a;->a:Lid/a;

    .line 91
    .line 92
    invoke-virtual {v5}, Lid/a;->c()Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_1

    .line 97
    .line 98
    sget-object v5, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;->p()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    new-instance v7, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string/jumbo v8, "update scene "

    .line 110
    .line 111
    .line 112
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const/16 v8, 0x3a

    .line 119
    .line 120
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/ad/AdScene;->getValue()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const/16 v3, 0x3d

    .line 131
    .line 132
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v3, ",activeTime="

    .line 139
    .line 140
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    sget-object v3, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;->a:Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;

    .line 144
    .line 145
    invoke-virtual {v3, p1}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;->b(Lorg/json/JSONObject;)J

    .line 146
    .line 147
    .line 148
    move-result-wide v3

    .line 149
    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v3, ",map="

    .line 153
    .line 154
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;->a:Ljava/util/HashMap;

    .line 158
    .line 159
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const/16 v3, 0x2e

    .line 163
    .line 164
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {v5, v6, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :catch_0
    move-exception p1

    .line 176
    goto :goto_2

    .line 177
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_2
    const/4 v0, 0x1

    .line 181
    goto :goto_3

    .line 182
    :goto_2
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 183
    .line 184
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;->p()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    new-instance p3, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    const-string/jumbo v1, "update failed "

    .line 194
    .line 195
    .line 196
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p2, p0, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    :goto_3
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;->j(Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public abstract g()Lcom/hades/aar/admanager/core/AdAggregatedSdk;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final h(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Ljava/util/List;
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/ad/AdScene;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/ad/AdScene;",
            ")",
            "Ljava/util/List<",
            "Lca/e;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;->t()Ljava/util/HashMap;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/AdScene;->getValue()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    new-instance p1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    :cond_0
    check-cast p1, Ljava/util/List;

    .line 26
    .line 27
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;->g(Ljava/util/List;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public m(Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;->n(Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public abstract p()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public q(Ljava/lang/String;[Lcom/startshorts/androidplayer/bean/ad/AdScene;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Lcom/startshorts/androidplayer/bean/ad/AdScene;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lcom/startshorts/androidplayer/bean/ad/AdScene;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;->r(Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;Ljava/lang/String;[Lcom/startshorts/androidplayer/bean/ad/AdScene;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public s(Lcom/startshorts/androidplayer/bean/ad/AdScene;)V
    .locals 9
    .param p1    # Lcom/startshorts/androidplayer/bean/ad/AdScene;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adScene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;->p()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v3, "updateByActiveTime -> "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object v3, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 34
    .line 35
    new-instance v6, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure$updateByActiveTime$1;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-direct {v6, p0, p1, v0}, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure$updateByActiveTime$1;-><init>(Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;Lcom/startshorts/androidplayer/bean/ad/AdScene;Lrs/c;)V

    .line 39
    .line 40
    .line 41
    const/4 v7, 0x2

    .line 42
    const/4 v8, 0x0

    .line 43
    const-string v4, "AdUnitIdJsonConfigure updateByActiveTime"

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    invoke-static/range {v3 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public t()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lca/e;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;->a:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic value()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;->t()Ljava/util/HashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
