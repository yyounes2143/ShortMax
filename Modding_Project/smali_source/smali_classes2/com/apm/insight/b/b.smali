.class public final Lcom/apm/insight/b/b;
.super Ljava/lang/Object;
.source "ANRManager.java"


# static fields
.field private static volatile z:Z = true


# instance fields
.field private A:I

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/regex/Pattern;

.field private D:Ljava/io/File;

.field private a:Lcom/apm/insight/b/c;

.field private final b:Landroid/content/Context;

.field private volatile c:Z

.field private d:J

.field private e:Ljava/io/File;

.field private f:Z

.field private g:Lorg/json/JSONObject;

.field private h:Lorg/json/JSONObject;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lorg/json/JSONArray;

.field private n:Lorg/json/JSONObject;

.field private o:I

.field private p:J

.field private q:Lorg/json/JSONArray;

.field private r:Lorg/json/JSONArray;

.field private s:Lorg/json/JSONObject;

.field private t:Z

.field private final u:Ljava/lang/Object;

.field private volatile v:Z

.field private w:J

.field private x:J

.field private final y:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/apm/insight/b/b;->d:J

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput-object v2, p0, Lcom/apm/insight/b/b;->e:Ljava/io/File;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    iput-boolean v3, p0, Lcom/apm/insight/b/b;->f:Z

    .line 13
    .line 14
    const-string/jumbo v3, "unknown"

    .line 15
    .line 16
    .line 17
    iput-object v3, p0, Lcom/apm/insight/b/b;->i:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v3, p0, Lcom/apm/insight/b/b;->j:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v3, p0, Lcom/apm/insight/b/b;->k:Ljava/lang/String;

    .line 22
    .line 23
    const-string v3, "npth_inner_default"

    .line 24
    .line 25
    iput-object v3, p0, Lcom/apm/insight/b/b;->l:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    iput v3, p0, Lcom/apm/insight/b/b;->o:I

    .line 29
    .line 30
    iput-wide v0, p0, Lcom/apm/insight/b/b;->p:J

    .line 31
    .line 32
    new-instance v4, Ljava/lang/Object;

    .line 33
    .line 34
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v4, p0, Lcom/apm/insight/b/b;->u:Ljava/lang/Object;

    .line 38
    .line 39
    iput-wide v0, p0, Lcom/apm/insight/b/b;->w:J

    .line 40
    .line 41
    const-wide/16 v0, 0x0

    .line 42
    .line 43
    iput-wide v0, p0, Lcom/apm/insight/b/b;->x:J

    .line 44
    .line 45
    new-instance v0, Lcom/apm/insight/b/b$1;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/apm/insight/b/b$1;-><init>(Lcom/apm/insight/b/b;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/apm/insight/b/b;->y:Ljava/lang/Runnable;

    .line 51
    .line 52
    iput v3, p0, Lcom/apm/insight/b/b;->A:I

    .line 53
    .line 54
    iput-object v2, p0, Lcom/apm/insight/b/b;->B:Ljava/util/List;

    .line 55
    .line 56
    iput-object v2, p0, Lcom/apm/insight/b/b;->C:Ljava/util/regex/Pattern;

    .line 57
    .line 58
    iput-object v2, p0, Lcom/apm/insight/b/b;->D:Ljava/io/File;

    .line 59
    .line 60
    iput-object p1, p0, Lcom/apm/insight/b/b;->b:Landroid/content/Context;

    .line 61
    .line 62
    return-void
.end method

.method private static a(F)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    .line 203
    const-string p0, "0%"

    return-object p0

    :cond_0
    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_1

    .line 204
    const-string p0, "0% - 10%"

    return-object p0

    :cond_1
    const v0, 0x3e99999a    # 0.3f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_2

    .line 205
    const-string p0, "10% - 30%"

    return-object p0

    :cond_2
    const v0, 0x3f19999a    # 0.6f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_3

    .line 206
    const-string p0, "30% - 60%"

    return-object p0

    :cond_3
    const v0, 0x3f666666    # 0.9f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_4

    .line 207
    const-string p0, "60% - 90%"

    return-object p0

    .line 208
    :cond_4
    const-string p0, "90% - 100%"

    return-object p0
.end method

.method private static a(FF)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    div-float/2addr p0, p1

    .line 201
    invoke-static {p0}, Lcom/apm/insight/b/b;->a(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    cmpl-float p0, p0, v0

    if-lez p0, :cond_1

    .line 202
    const-string p0, "100%"

    return-object p0

    :cond_1
    const-string p0, "0%"

    return-object p0
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 3

    .line 95
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 96
    invoke-static {p2}, Lcom/apm/insight/a;->b(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-eq v2, p2, :cond_0

    .line 98
    iget p2, p0, Lcom/apm/insight/b/b;->o:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/apm/insight/b/b;->o:I

    .line 99
    :cond_0
    :try_start_0
    const-string p2, "thread_name"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string p1, "thread_stack"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 102
    const-string v2, "\n"

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 103
    new-array v4, v3, [F

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    .line 104
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 105
    aput v6, v4, v5

    const/4 v8, 0x1

    aput v6, v4, v8

    const/4 v9, 0x2

    aput v6, v4, v9

    .line 106
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 107
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 108
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 109
    array-length v14, v2

    const-string/jumbo v15, "unknown"

    move v3, v5

    move/from16 v18, v3

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    :goto_0
    const-string/jumbo v9, "total"

    if-ge v5, v14, :cond_2f

    aget-object v8, v2, v5

    .line 110
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2e

    move-object/from16 v20, v2

    .line 111
    const-string v2, ""

    move/from16 v21, v14

    if-eqz v3, :cond_2b

    const/4 v14, 0x1

    if-eq v3, v14, :cond_20

    const/4 v14, 0x2

    if-eq v3, v14, :cond_1f

    const/4 v14, 0x3

    if-eq v3, v14, :cond_0

    move/from16 v22, v3

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move v3, v14

    move-object/from16 v23, v15

    move-object/from16 v15, v16

    goto/16 :goto_1e

    .line 112
    :cond_0
    const-string v14, "\\s"

    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    move/from16 v22, v3

    .line 113
    array-length v3, v14

    move-object/from16 v23, v15

    const/4 v15, 0x2

    if-lt v3, v15, :cond_1e

    .line 114
    const-string v3, "CPU"

    const/4 v15, 0x0

    aget-object v1, v14, v15

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "usage"

    const/4 v3, 0x1

    aget-object v15, v14, v3

    .line 115
    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 116
    const-string v1, "ago"

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v18, 0x1

    .line 117
    :cond_1
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move/from16 v0, v22

    :goto_1
    const/4 v1, 0x4

    const/4 v3, 0x3

    goto/16 :goto_1f

    :cond_3
    :goto_2
    move-object/from16 v24, v12

    move-object/from16 v25, v13

    const/4 v0, 0x4

    goto :goto_1

    .line 119
    :cond_4
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 120
    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    .line 121
    :cond_5
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    aget-object v15, v14, v1

    const-string v1, "TOTAL:"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v8, v2

    move-object v0, v6

    goto/16 :goto_4

    .line 122
    :cond_6
    iget-object v1, v0, Lcom/apm/insight/b/b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v8, v2

    const/4 v1, 0x0

    .line 123
    :goto_3
    array-length v15, v14

    if-ge v1, v15, :cond_8

    .line 124
    aget-object v15, v14, v1

    iget-object v3, v0, Lcom/apm/insight/b/b;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v14, v1

    const/16 v15, 0x2f

    invoke-virtual {v8, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/16 v19, 0x1

    add-int/lit8 v15, v15, 0x1

    aget-object v24, v14, v1

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    add-int/lit8 v0, v24, -0x1

    invoke-virtual {v8, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5f

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_7
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    goto :goto_3

    :cond_8
    move-object v0, v11

    goto :goto_4

    .line 126
    :cond_9
    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "system_server:"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v8, v2

    move-object v0, v10

    goto :goto_4

    .line 127
    :cond_a
    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "kswapd"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v8, v2

    move-object v0, v13

    goto :goto_4

    .line 128
    :cond_b
    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "dex2oat"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v8, v2

    move-object v0, v12

    goto :goto_4

    :cond_c
    move-object v8, v2

    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_1e

    const/4 v1, 0x0

    .line 129
    :cond_d
    aget-object v3, v14, v1

    const-string v15, "%"

    invoke-virtual {v3, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    add-int/lit8 v1, v1, 0x1

    .line 130
    array-length v3, v14

    if-lt v1, v3, :cond_d

    .line 131
    :cond_e
    :try_start_0
    aget-object v3, v14, v1

    invoke-virtual {v3, v15, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v24, v12

    .line 132
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v6, :cond_f

    move-object/from16 v25, v13

    goto :goto_5

    :cond_f
    move-object/from16 v25, v13

    :try_start_2
    invoke-static {}, Lcom/apm/insight/l/d;->d()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v3, v13

    :goto_5
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_8

    :catchall_0
    :goto_6
    move-object/from16 v25, v13

    goto :goto_7

    :catchall_1
    move-object/from16 v24, v12

    goto :goto_6

    .line 133
    :catchall_2
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    add-int/lit8 v1, v1, 0x3

    const/4 v3, 0x0

    .line 134
    :goto_9
    array-length v12, v14

    if-ge v1, v12, :cond_1d

    .line 135
    const-string v12, "softirq"

    if-eqz v3, :cond_14

    const/4 v13, 0x1

    if-eq v3, v13, :cond_13

    const/4 v13, 0x2

    if-eq v3, v13, :cond_12

    const/4 v13, 0x3

    if-eq v3, v13, :cond_11

    const/4 v13, 0x4

    if-eq v3, v13, :cond_10

    const/4 v13, 0x5

    move/from16 v27, v3

    if-eq v3, v13, :cond_19

    goto/16 :goto_e

    :cond_10
    move/from16 v27, v3

    goto :goto_d

    :cond_11
    move/from16 v27, v3

    goto :goto_c

    :cond_12
    move/from16 v27, v3

    goto :goto_b

    :cond_13
    move/from16 v27, v3

    goto :goto_a

    .line 136
    :cond_14
    aget-object v13, v14, v1

    move/from16 v27, v3

    const-string/jumbo v3, "user"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_15

    move-object v12, v3

    const/4 v3, 0x1

    goto :goto_f

    .line 137
    :cond_15
    :goto_a
    aget-object v3, v14, v1

    const-string v13, "kernel"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    move-object v12, v13

    const/4 v3, 0x2

    goto :goto_f

    .line 138
    :cond_16
    :goto_b
    aget-object v3, v14, v1

    const-string v13, "iowait"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    move-object v12, v13

    const/4 v3, 0x3

    goto :goto_f

    .line 139
    :cond_17
    :goto_c
    aget-object v3, v14, v1

    const-string v13, "irq"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    move-object v12, v13

    const/4 v3, 0x4

    goto :goto_f

    .line 140
    :cond_18
    :goto_d
    aget-object v3, v14, v1

    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x5

    goto :goto_f

    .line 141
    :cond_19
    aget-object v3, v14, v1

    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v3, 0x6

    goto :goto_f

    :cond_1a
    :goto_e
    move/from16 v3, v27

    const/4 v12, 0x0

    :goto_f
    if-eqz v12, :cond_1c

    add-int/lit8 v13, v1, -0x1

    .line 142
    :try_start_3
    aget-object v13, v14, v13

    invoke-virtual {v13, v15, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object/from16 v26, v14

    .line 143
    :try_start_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-ne v0, v6, :cond_1b

    move-object/from16 v27, v15

    goto :goto_10

    :cond_1b
    move-object/from16 v27, v15

    :try_start_5
    invoke-static {}, Lcom/apm/insight/l/d;->d()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v13, v15

    :goto_10
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v0, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :goto_11
    const/4 v12, 0x6

    goto :goto_14

    :catchall_3
    :goto_12
    move-object/from16 v27, v15

    goto :goto_13

    :catchall_4
    move-object/from16 v26, v14

    goto :goto_12

    .line 144
    :catchall_5
    :goto_13
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_1c
    move-object/from16 v26, v14

    move-object/from16 v27, v15

    goto :goto_11

    :goto_14
    if-ge v3, v12, :cond_1d

    add-int/lit8 v1, v1, 0x3

    move-object/from16 v14, v26

    move-object/from16 v15, v27

    goto/16 :goto_9

    :cond_1d
    :goto_15
    move-object/from16 v15, v16

    const/4 v3, 0x3

    goto/16 :goto_1e

    :cond_1e
    move-object/from16 v24, v12

    move-object/from16 v25, v13

    goto :goto_15

    :cond_1f
    move/from16 v22, v3

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move-object/from16 v23, v15

    goto/16 :goto_1a

    :cond_20
    move/from16 v22, v3

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move-object/from16 v23, v15

    .line 145
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 146
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 147
    const-string v1, "shortmsg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v3, 0x3a

    if-eqz v1, :cond_21

    .line 148
    invoke-virtual {v8, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    const/4 v14, 0x0

    goto :goto_16

    .line 149
    :cond_21
    const-string v1, "reason:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 150
    invoke-virtual {v8, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    const/4 v14, 0x1

    .line 151
    :goto_16
    const-string v1, "input dispatch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 152
    const-string v0, "Input dispatching timed out"

    :goto_17
    move-object/from16 v17, v0

    goto :goto_19

    .line 153
    :cond_22
    const-string v1, "broadcast of intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 154
    const-string v0, "Broadcast of Intent"

    goto :goto_17

    .line 155
    :cond_23
    const-string v1, "executing service"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 156
    const-string v0, "null"

    move-object/from16 v15, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 157
    const-string v0, "service "

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v1

    goto :goto_19

    :cond_24
    move-object/from16 v17, v1

    :goto_18
    move-object/from16 v16, v15

    goto :goto_19

    :cond_25
    move-object/from16 v15, v16

    .line 158
    const-string v1, "service.startforeground"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 159
    const-string v0, "not call Service.startForeground"

    move-object/from16 v17, v0

    goto :goto_18

    :cond_26
    move-object/from16 v16, v15

    move-object/from16 v17, v23

    :goto_19
    if-eqz v14, :cond_27

    const/4 v0, 0x2

    goto/16 :goto_1

    .line 160
    :cond_27
    :goto_1a
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Load:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 161
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 162
    array-length v1, v0

    const/4 v3, 0x3

    if-ne v3, v1, :cond_28

    const/4 v1, 0x0

    .line 163
    :goto_1b
    array-length v2, v0

    if-ge v1, v2, :cond_28

    .line 164
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_28
    move v0, v3

    :goto_1c
    const/4 v1, 0x4

    goto :goto_1f

    :cond_29
    const/4 v3, 0x3

    :goto_1d
    move/from16 v0, v22

    goto :goto_1c

    :cond_2a
    move-object/from16 v15, v16

    const/4 v3, 0x3

    .line 165
    const-string v1, "appfreeze"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 166
    const-string v17, "AppFreeze"

    const/16 v0, 0xa

    move-object/from16 v16, v15

    goto :goto_1c

    :cond_2b
    move/from16 v22, v3

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move-object/from16 v23, v15

    move-object/from16 v15, v16

    const/4 v3, 0x3

    .line 167
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tag:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 168
    const-string v1, "tag:"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    const/4 v0, 0x1

    goto :goto_1c

    :cond_2c
    :goto_1e
    move-object/from16 v16, v15

    goto :goto_1d

    :goto_1f
    if-ge v0, v1, :cond_2d

    goto :goto_21

    :cond_2d
    :goto_20
    move-object/from16 v15, v16

    move-object/from16 v0, v17

    goto :goto_22

    :cond_2e
    move-object/from16 v20, v2

    move/from16 v22, v3

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move/from16 v21, v14

    move-object/from16 v23, v15

    move-object/from16 v15, v16

    const/4 v3, 0x3

    move/from16 v0, v22

    :goto_21
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p2

    move v3, v0

    move-object/from16 v2, v20

    move/from16 v14, v21

    move-object/from16 v15, v23

    move-object/from16 v12, v24

    move-object/from16 v13, v25

    const/4 v8, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_2f
    move-object/from16 v24, v12

    move-object/from16 v25, v13

    goto :goto_20

    .line 169
    :goto_22
    const-string v1, "anr_tag"

    move-object/from16 v2, p2

    invoke-virtual {v2, v1, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    const-string v1, "anr_has_ago"

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string v1, "anr_reason"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    const-string v0, "app"

    invoke-static {v11, v2, v0}, Lcom/apm/insight/b/b;->a(Ljava/util/HashMap;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 173
    invoke-static {v6, v2, v9}, Lcom/apm/insight/b/b;->a(Ljava/util/HashMap;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const-string v1, "not found"

    if-eqz v0, :cond_30

    .line 175
    const-string v0, "npth_anr_systemserver_total"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_23

    .line 176
    :cond_30
    invoke-static {v10}, Lcom/apm/insight/l/c$1;->a(Ljava/util/Map;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/apm/insight/b/b;->b(F)Ljava/lang/String;

    move-result-object v0

    const-string v3, "npth_anr_systemserver_total"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    :goto_23
    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 178
    const-string v0, "npth_anr_kswapd_total"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_24

    .line 179
    :cond_31
    invoke-static/range {v25 .. v25}, Lcom/apm/insight/l/c$1;->a(Ljava/util/Map;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/apm/insight/b/b;->b(F)Ljava/lang/String;

    move-result-object v0

    const-string v3, "npth_anr_kswapd_total"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    :goto_24
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 181
    const-string v0, "npth_anr_dex2oat_total"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    .line 182
    :cond_32
    invoke-static/range {v24 .. v24}, Lcom/apm/insight/l/c$1;->a(Ljava/util/Map;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/apm/insight/b/b;->b(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "npth_anr_dex2oat_total"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private static a(Ljava/util/HashMap;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 183
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "npth_anr_"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 184
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const-string v1, "_total"

    if-eqz v0, :cond_0

    .line 185
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "not found"

    invoke-virtual {p1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    .line 186
    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    move v4, v3

    move v5, v4

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 187
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 188
    const-string/jumbo v8, "user"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 189
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v0, v6

    goto :goto_0

    .line 190
    :cond_2
    const-string v8, "kernel"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 191
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v2, v6

    goto :goto_0

    .line 192
    :cond_3
    const-string v8, "iowait"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 193
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v3, v6

    goto :goto_0

    .line 194
    :cond_4
    const-string v8, "irq"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 195
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v4, v6

    goto :goto_0

    .line 196
    :cond_5
    const-string v8, "softirq"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 197
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_0

    :cond_6
    add-float/2addr v0, v2

    add-float/2addr v0, v3

    add-float/2addr v0, v4

    add-float/2addr v0, v5

    .line 198
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Lcom/apm/insight/b/b;->b(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_kernel_user_ratio"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v0}, Lcom/apm/insight/b/b;->a(FF)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_iowait_user_ratio"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v0}, Lcom/apm/insight/b/b;->a(FF)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private a(Lorg/json/JSONArray;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 9
    iput-object v3, v1, Lcom/apm/insight/b/b;->g:Lorg/json/JSONObject;

    .line 10
    iput-object v3, v1, Lcom/apm/insight/b/b;->n:Lorg/json/JSONObject;

    const/4 v4, 0x0

    .line 11
    iput v4, v1, Lcom/apm/insight/b/b;->o:I

    .line 12
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 13
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 14
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 15
    const-string/jumbo v7, "unknown"

    iput-object v7, v1, Lcom/apm/insight/b/b;->i:Ljava/lang/String;

    .line 16
    iput-object v7, v1, Lcom/apm/insight/b/b;->j:Ljava/lang/String;

    .line 17
    iput-object v7, v1, Lcom/apm/insight/b/b;->k:Ljava/lang/String;

    const/4 v7, 0x3

    .line 18
    new-array v7, v7, [I

    aput v4, v7, v4

    const/4 v8, 0x1

    aput v4, v7, v8

    const/4 v9, 0x2

    aput v4, v7, v9

    move-object v10, v0

    move-object v0, v3

    move v11, v4

    move v12, v11

    .line 19
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v11, v13, :cond_15

    .line 20
    invoke-virtual {v2, v11}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v13

    .line 21
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    const-string v15, "NPTH_CATCH"

    const/16 v3, 0x28

    const-string v9, "main"

    if-eqz v14, :cond_7

    .line 22
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-lez v13, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 23
    iget-object v13, v1, Lcom/apm/insight/b/b;->g:Lorg/json/JSONObject;

    if-nez v13, :cond_1

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 24
    invoke-direct {v1, v10}, Lcom/apm/insight/b/b;->c(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v13

    iput-object v13, v1, Lcom/apm/insight/b/b;->g:Lorg/json/JSONObject;

    goto :goto_1

    .line 25
    :cond_1
    invoke-direct {v1, v0, v10}, Lcom/apm/insight/b/b;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v5, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 26
    :goto_1
    :try_start_0
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    move-object v3, v0

    .line 28
    invoke-direct {v1, v3}, Lcom/apm/insight/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 29
    :try_start_1
    invoke-direct {v1, v10}, Lcom/apm/insight/b/b;->b(Lorg/json/JSONArray;)[I

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v9, v0

    .line 30
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    .line 31
    invoke-static {v9, v15}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :catchall_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    .line 32
    aget v9, v0, v4

    aget v13, v7, v4

    if-le v9, v13, :cond_3

    .line 33
    aput v9, v7, v4

    .line 34
    iput-object v3, v1, Lcom/apm/insight/b/b;->i:Ljava/lang/String;

    .line 35
    :cond_3
    aget v9, v0, v8

    aget v13, v7, v8

    if-le v9, v13, :cond_4

    .line 36
    aput v9, v7, v8

    .line 37
    iput-object v3, v1, Lcom/apm/insight/b/b;->j:Ljava/lang/String;

    :cond_4
    const/4 v9, 0x2

    .line 38
    aget v0, v0, v9

    aget v13, v7, v9

    if-le v0, v13, :cond_5

    .line 39
    aput v0, v7, v9

    .line 40
    iput-object v3, v1, Lcom/apm/insight/b/b;->k:Ljava/lang/String;

    .line 41
    :cond_5
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 42
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    move-object v10, v0

    :cond_6
    const/4 v0, 0x0

    :goto_3
    const/4 v14, 0x2

    goto/16 :goto_7

    :cond_7
    if-eqz v12, :cond_12

    if-eq v12, v8, :cond_8

    goto :goto_3

    .line 43
    :cond_8
    const-string v14, " prio="

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 44
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lez v14, :cond_d

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_d

    .line 45
    iget-object v14, v1, Lcom/apm/insight/b/b;->g:Lorg/json/JSONObject;

    if-nez v14, :cond_9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 46
    invoke-direct {v1, v10}, Lcom/apm/insight/b/b;->c(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v14

    iput-object v14, v1, Lcom/apm/insight/b/b;->g:Lorg/json/JSONObject;

    goto :goto_4

    .line 47
    :cond_9
    invoke-direct {v1, v0, v10}, Lcom/apm/insight/b/b;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v5, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 48
    :goto_4
    :try_start_2
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    :cond_a
    move-object v3, v0

    .line 50
    invoke-direct {v1, v3}, Lcom/apm/insight/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 51
    :try_start_3
    invoke-direct {v1, v10}, Lcom/apm/insight/b/b;->b(Lorg/json/JSONArray;)[I

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v14, v0

    .line 52
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    .line 53
    invoke-static {v14, v15}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :catchall_3
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_d

    .line 54
    aget v14, v0, v4

    aget v15, v7, v4

    if-le v14, v15, :cond_b

    .line 55
    aput v14, v7, v4

    .line 56
    iput-object v3, v1, Lcom/apm/insight/b/b;->i:Ljava/lang/String;

    .line 57
    :cond_b
    aget v14, v0, v8

    aget v15, v7, v8

    if-le v14, v15, :cond_c

    .line 58
    aput v14, v7, v8

    .line 59
    iput-object v3, v1, Lcom/apm/insight/b/b;->j:Ljava/lang/String;

    :cond_c
    const/4 v14, 0x2

    .line 60
    aget v0, v0, v14

    aget v15, v7, v14

    if-le v0, v15, :cond_d

    .line 61
    aput v0, v7, v14

    .line 62
    iput-object v3, v1, Lcom/apm/insight/b/b;->k:Ljava/lang/String;

    :cond_d
    const/16 v0, 0x22

    .line 63
    invoke-virtual {v13, v0, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    invoke-virtual {v13, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 65
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  ("

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x2

    invoke-virtual {v13, v0, v14}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " )"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_e
    const/4 v14, 0x2

    move-object v0, v3

    .line 66
    :goto_6
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_f

    .line 67
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 68
    :cond_f
    invoke-virtual {v10, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_7

    :cond_10
    const/4 v14, 0x2

    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 70
    invoke-virtual {v6, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_7

    .line 71
    :cond_11
    invoke-virtual {v10, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_7

    :cond_12
    const/4 v14, 0x2

    .line 72
    const-string v3, "DALVIK THREADS"

    invoke-virtual {v13, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, "suspend"

    invoke-virtual {v13, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, "\""

    .line 73
    invoke-virtual {v13, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_13
    move v12, v8

    .line 74
    :cond_14
    invoke-virtual {v6, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_7
    add-int/lit8 v11, v11, 0x1

    move v9, v14

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 75
    :cond_15
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_16

    .line 76
    iput-object v6, v1, Lcom/apm/insight/b/b;->m:Lorg/json/JSONArray;

    .line 77
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, v1, Lcom/apm/insight/b/b;->n:Lorg/json/JSONObject;

    .line 78
    const-string v2, "thread_all_count"

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 79
    iget-object v0, v1, Lcom/apm/insight/b/b;->n:Lorg/json/JSONObject;

    const-string v2, "thread_stacks"

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :catch_2
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_16
    return-void
.end method

.method private a(J)Z
    .locals 2

    .line 6
    iget-boolean v0, p0, Lcom/apm/insight/b/b;->v:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7
    iput-boolean v1, p0, Lcom/apm/insight/b/b;->v:Z

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/apm/insight/b/b;->b(J)V

    :cond_0
    return v1
.end method

.method static synthetic a(Lcom/apm/insight/b/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/apm/insight/b/b;->f:Z

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 6

    .line 81
    iget-object v0, p0, Lcom/apm/insight/b/b;->B:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 82
    invoke-static {}, Lcom/apm/insight/runtime/a;->b()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/apm/insight/b/b;->B:Ljava/util/List;

    .line 84
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/apm/insight/b/b;->l:Ljava/lang/String;

    move v3, v2

    .line 85
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 86
    :try_start_0
    iget-object v4, p0, Lcom/apm/insight/b/b;->B:Ljava/util/List;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/apm/insight/b/b;->B:Ljava/util/List;

    if-nez v0, :cond_1

    .line 88
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/apm/insight/b/b;->B:Ljava/util/List;

    .line 89
    const-string v3, "^main$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/apm/insight/b/b;->B:Ljava/util/List;

    const-string v3, "^default_npth_thread$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/apm/insight/b/b;->B:Ljava/util/List;

    const-string v3, "^RenderThread$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/apm/insight/b/b;->B:Ljava/util/List;

    const-string v3, "^Jit thread pool worker thread.*$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/apm/insight/b/b;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/regex/Pattern;

    .line 94
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_3
    return v1
.end method

.method private static b(F)Ljava/lang/String;
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    .line 65
    invoke-static {p0}, Lcom/apm/insight/b/b;->a(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(J)V
    .locals 10

    .line 6
    iget-wide v0, p0, Lcom/apm/insight/b/b;->x:J

    iget-wide v2, p0, Lcom/apm/insight/b/b;->w:J

    cmp-long v0, v0, v2

    const-string v1, "anr_trace"

    const-string v2, "\n"

    const-string v3, ".txt"

    const/16 v4, 0x5f

    const/16 v5, 0x3a

    const/4 v6, 0x0

    const-string v7, "NPTH_CATCH"

    if-eqz v0, :cond_2

    .line 7
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/apm/insight/b/b;->p:J

    .line 8
    invoke-static {}, Lcom/apm/insight/e;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-static {}, Lcom/apm/insight/b/f;->b()Lcom/apm/insight/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/b/g;->b()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/apm/insight/b/b;->r:Lorg/json/JSONArray;

    .line 10
    invoke-static {p1, p2}, Lcom/apm/insight/b/j;->a(J)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/apm/insight/b/b;->q:Lorg/json/JSONArray;

    .line 11
    invoke-static {}, Lcom/apm/insight/b/f;->b()Lcom/apm/insight/b/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/apm/insight/b/g;->a(J)Lcom/apm/insight/b/g$e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apm/insight/b/g$e;->a()Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/apm/insight/b/b;->h:Lorg/json/JSONObject;

    .line 12
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/apm/insight/b/b;->s:Lorg/json/JSONObject;

    .line 13
    iget-object p2, p0, Lcom/apm/insight/b/b;->b:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/apm/insight/l/a;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 14
    invoke-static {}, Lcom/apm/insight/b/b;->h()Z

    move-result p1

    iput-boolean p1, p0, Lcom/apm/insight/b/b;->t:Z

    .line 15
    invoke-static {}, Lcom/apm/insight/Npth;->hasCrash()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/apm/insight/b/b;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :catchall_0
    :try_start_1
    iget-wide p1, p0, Lcom/apm/insight/b/b;->p:J

    iput-wide p1, p0, Lcom/apm/insight/b/b;->d:J

    .line 17
    invoke-static {}, Lcom/apm/insight/l/j;->b()Ljava/lang/String;

    move-result-object p1

    .line 18
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v8, p0, Lcom/apm/insight/b/b;->b:Landroid/content/Context;

    .line 19
    invoke-static {v8}, Lcom/apm/insight/l/j;->f(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    invoke-direct {v0, v8, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "trace_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/apm/insight/l/a;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apm/insight/l/b;->a()Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v4, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v6}, Lcom/apm/insight/l/f;->a(Ljava/io/File;Ljava/lang/String;Z)V

    .line 23
    invoke-static {v1, p1}, Lcom/apm/insight/runtime/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apm/insight/nativecrash/NativeImpl;->i(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 25
    :try_start_2
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apm/insight/l/f;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/apm/insight/b/b;->m:Lorg/json/JSONArray;

    .line 26
    invoke-direct {p0, p1}, Lcom/apm/insight/b/b;->a(Lorg/json/JSONArray;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 27
    :try_start_3
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    .line 28
    invoke-static {p1, v7}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_2
    move-exception p1

    goto :goto_1

    .line 29
    :catch_0
    :goto_0
    iget-object p1, p0, Lcom/apm/insight/b/b;->g:Lorg/json/JSONObject;

    if-nez p1, :cond_1

    .line 30
    invoke-static {}, Lcom/apm/insight/b/d;->a()Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/apm/insight/b/b;->g:Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    .line 31
    :goto_1
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    .line 32
    invoke-static {p1, v7}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 33
    :cond_1
    :goto_2
    invoke-static {}, Lcom/apm/insight/a;->d()V

    goto/16 :goto_5

    .line 34
    :cond_2
    :try_start_4
    iget-wide p1, p0, Lcom/apm/insight/b/b;->p:J

    iput-wide p1, p0, Lcom/apm/insight/b/b;->d:J

    .line 35
    invoke-static {}, Lcom/apm/insight/l/j;->b()Ljava/lang/String;

    move-result-object p1

    .line 36
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v8, p0, Lcom/apm/insight/b/b;->b:Landroid/content/Context;

    .line 37
    invoke-static {v8}, Lcom/apm/insight/l/j;->f(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    invoke-direct {v0, v8, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "trace"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/apm/insight/l/a;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apm/insight/l/b;->a()Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v4, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v6}, Lcom/apm/insight/l/f;->a(Ljava/io/File;Ljava/lang/String;Z)V

    .line 41
    invoke-static {v1, p1}, Lcom/apm/insight/runtime/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apm/insight/nativecrash/NativeImpl;->i(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 43
    :try_start_5
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apm/insight/l/f;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/apm/insight/b/b;->m:Lorg/json/JSONArray;

    .line 44
    invoke-direct {p0, p1}, Lcom/apm/insight/b/b;->a(Lorg/json/JSONArray;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    .line 45
    :try_start_6
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    .line 46
    invoke-static {p1, v7}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_3

    :catchall_4
    move-exception p1

    goto :goto_4

    .line 47
    :catch_1
    :goto_3
    iget-object p1, p0, Lcom/apm/insight/b/b;->g:Lorg/json/JSONObject;

    if-nez p1, :cond_3

    .line 48
    invoke-static {}, Lcom/apm/insight/b/d;->a()Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/apm/insight/b/b;->g:Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_5

    .line 49
    :goto_4
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    .line 50
    invoke-static {p1, v7}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 51
    :cond_3
    :goto_5
    iget-wide p1, p0, Lcom/apm/insight/b/b;->w:J

    iput-wide p1, p0, Lcom/apm/insight/b/b;->x:J

    const-wide/16 v0, -0x1

    .line 52
    iput-wide v0, p0, Lcom/apm/insight/b/b;->w:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_4

    const-wide/16 p1, 0x1

    sub-long/2addr v0, p1

    .line 53
    iput-wide v0, p0, Lcom/apm/insight/b/b;->x:J

    :cond_4
    return-void
.end method

.method private static b(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 4

    .line 66
    invoke-static {}, Lcom/apm/insight/runtime/l;->a()Lcom/apm/insight/runtime/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/c;->e()Ljava/util/List;

    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apm/insight/ICrashCallback;

    .line 68
    :try_start_0
    instance-of v2, v1, Lcom/apm/insight/b;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 69
    check-cast v1, Lcom/apm/insight/b;

    sget-object v2, Lcom/apm/insight/CrashType;->ANR:Lcom/apm/insight/CrashType;

    invoke-virtual {v1, v2, p0, v3, p1}, Lcom/apm/insight/b;->a(Lcom/apm/insight/CrashType;Ljava/lang/String;Ljava/lang/Thread;Lorg/json/JSONArray;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 70
    :cond_0
    sget-object v2, Lcom/apm/insight/CrashType;->ANR:Lcom/apm/insight/CrashType;

    invoke-interface {v1, v2, p0, v3}, Lcom/apm/insight/ICrashCallback;->onCrash(Lcom/apm/insight/CrashType;Ljava/lang/String;Ljava/lang/Thread;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 71
    :goto_1
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    const-string v2, "NPTH_CATCH"

    .line 72
    invoke-static {v1, v2}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(Lorg/json/JSONArray;)[I
    .locals 3
    .param p1    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 54
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 55
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "utm="

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    :goto_1
    if-lez v2, :cond_2

    .line 57
    iget-object p1, p0, Lcom/apm/insight/b/b;->C:Ljava/util/regex/Pattern;

    if-nez p1, :cond_1

    .line 58
    const-string p1, "[^0-9]+"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/apm/insight/b/b;->C:Ljava/util/regex/Pattern;

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/apm/insight/b/b;->C:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 60
    array-length v0, p1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_3

    const/4 v0, 0x1

    .line 61
    :try_start_0
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 62
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int v2, v0, p1

    .line 63
    filled-new-array {v0, p1, v2}, [I

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 64
    :catchall_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Err stack line: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 4
    .param p1    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/apm/insight/a;->b(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 v3, 0x1

    if-eq v2, p1, :cond_0

    .line 6
    iget p1, p0, Lcom/apm/insight/b/b;->o:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/apm/insight/b/b;->o:I

    .line 7
    :cond_0
    :try_start_0
    const-string p1, "thread_number"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 9
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 10
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_1
    const-string v1, "mainStackFromTrace"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static h()Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/apm/insight/l/a;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v1, v0, 0x1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/apm/insight/runtime/a/b;->d()Lcom/apm/insight/runtime/a/b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/apm/insight/runtime/a/b;->e()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    const-wide/16 v4, 0x7d0

    .line 18
    .line 19
    cmp-long v0, v2, v4

    .line 20
    .line 21
    if-gtz v0, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    :cond_0
    return v1
.end method

.method private i()Ljava/io/File;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/apm/insight/b/b;->D:Ljava/io/File;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/io/File;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/apm/insight/b/b;->b:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "has_anr_signal_"

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/apm/insight/l/a;->b()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v4, ":"

    .line 25
    .line 26
    const-string v5, "_"

    .line 27
    .line 28
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/apm/insight/b/b;->D:Ljava/io/File;

    .line 43
    .line 44
    :cond_0
    iget-object v0, p0, Lcom/apm/insight/b/b;->D:Ljava/io/File;

    .line 45
    .line 46
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/apm/insight/b/b;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/apm/insight/b/c;

    invoke-direct {v0, p0}, Lcom/apm/insight/b/c;-><init>(Lcom/apm/insight/b/b;)V

    iput-object v0, p0, Lcom/apm/insight/b/b;->a:Lcom/apm/insight/b/c;

    .line 4
    invoke-static {}, Lcom/apm/insight/e;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/apm/insight/b/b;->d:J

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/apm/insight/b/b;->c:Z

    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apm/insight/b/b;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/apm/insight/b/b;->c:Z

    .line 3
    iget-object v0, p0, Lcom/apm/insight/b/b;->a:Lcom/apm/insight/b/c;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/apm/insight/b/c;->b()V

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/apm/insight/b/b;->a:Lcom/apm/insight/b/c;

    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/insight/b/b;->a:Lcom/apm/insight/b/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/apm/insight/b/c;->a()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apm/insight/b/b;->u:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/apm/insight/b/b;->y:Ljava/lang/Runnable;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw v1
.end method

.method public final e()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/apm/insight/nativecrash/NativeImpl;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-direct {p0}, Lcom/apm/insight/b/b;->i()Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v2, p0, Lcom/apm/insight/b/b;->A:I

    .line 13
    .line 14
    add-int/2addr v2, v1

    .line 15
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static {v0, v2, v3}, Lcom/apm/insight/l/f;->a(Ljava/io/File;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    .line 26
    .line 27
    .line 28
    const-string v2, "NPTH_CATCH"

    .line 29
    .line 30
    invoke-static {v0, v2}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    iput-wide v2, p0, Lcom/apm/insight/b/b;->w:J

    .line 38
    .line 39
    iput-boolean v1, p0, Lcom/apm/insight/b/b;->v:Z

    .line 40
    .line 41
    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/apm/insight/b/b;->i()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const-string v3, "\n"

    .line 11
    .line 12
    invoke-static {v2, v3}, Lcom/apm/insight/l/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iput v2, p0, Lcom/apm/insight/b/b;->A:I

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    if-lt v2, v3, :cond_0

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-static {v2}, Lcom/apm/insight/nativecrash/NativeImpl;->a(Z)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    invoke-static {v1}, Lcom/apm/insight/nativecrash/NativeImpl;->a(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    invoke-static {v0}, Lcom/apm/insight/l/f;->a(Ljava/io/File;)Z

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catch_0
    invoke-static {v1}, Lcom/apm/insight/nativecrash/NativeImpl;->a(Z)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method final g()Z
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static {}, Lcom/apm/insight/runtime/i;->a()Lcom/apm/insight/runtime/i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/apm/insight/runtime/i;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    invoke-direct {v1, v2, v3}, Lcom/apm/insight/b/b;->a(J)Z

    .line 16
    .line 17
    .line 18
    iget-object v4, v1, Lcom/apm/insight/b/b;->b:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v4}, Lcom/apm/insight/b/d;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    const-string v7, "normal"

    .line 29
    .line 30
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    const-string/jumbo v8, "unknown"

    .line 34
    .line 35
    .line 36
    const-string/jumbo v9, "unknown"

    .line 37
    .line 38
    .line 39
    const-string/jumbo v10, "unknown"

    .line 40
    .line 41
    .line 42
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v11

    .line 46
    const-wide/16 v12, 0x4e20

    .line 47
    .line 48
    const/4 v15, 0x0

    .line 49
    const/4 v14, 0x0

    .line 50
    if-nez v11, :cond_2

    .line 51
    .line 52
    iget-object v11, v1, Lcom/apm/insight/b/b;->u:Ljava/lang/Object;

    .line 53
    .line 54
    monitor-enter v11

    .line 55
    :try_start_0
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    iget-object v5, v1, Lcom/apm/insight/b/b;->g:Lorg/json/JSONObject;

    .line 57
    .line 58
    if-eqz v5, :cond_0

    .line 59
    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v5

    .line 64
    iget-wide v8, v1, Lcom/apm/insight/b/b;->d:J

    .line 65
    .line 66
    sub-long/2addr v5, v8

    .line 67
    cmp-long v5, v5, v12

    .line 68
    .line 69
    if-gtz v5, :cond_0

    .line 70
    .line 71
    const-string/jumbo v5, "trace_last"

    .line 72
    .line 73
    .line 74
    move-object v7, v5

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    iget-boolean v5, v1, Lcom/apm/insight/b/b;->v:Z

    .line 77
    .line 78
    if-eqz v5, :cond_1

    .line 79
    .line 80
    iput-boolean v15, v1, Lcom/apm/insight/b/b;->v:Z

    .line 81
    .line 82
    const-string/jumbo v7, "trace_after"

    .line 83
    .line 84
    .line 85
    :cond_1
    invoke-direct {v1, v2, v3}, Lcom/apm/insight/b/b;->b(J)V

    .line 86
    .line 87
    .line 88
    :goto_0
    iget-object v5, v1, Lcom/apm/insight/b/b;->g:Lorg/json/JSONObject;

    .line 89
    .line 90
    iget-object v8, v1, Lcom/apm/insight/b/b;->i:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v9, v1, Lcom/apm/insight/b/b;->j:Ljava/lang/String;

    .line 93
    .line 94
    iget-object v10, v1, Lcom/apm/insight/b/b;->k:Ljava/lang/String;

    .line 95
    .line 96
    iget-object v6, v1, Lcom/apm/insight/b/b;->m:Lorg/json/JSONArray;

    .line 97
    .line 98
    iget-object v11, v1, Lcom/apm/insight/b/b;->r:Lorg/json/JSONArray;

    .line 99
    .line 100
    iget-object v12, v1, Lcom/apm/insight/b/b;->q:Lorg/json/JSONArray;

    .line 101
    .line 102
    iget-object v13, v1, Lcom/apm/insight/b/b;->s:Lorg/json/JSONObject;

    .line 103
    .line 104
    iget-object v15, v1, Lcom/apm/insight/b/b;->h:Lorg/json/JSONObject;

    .line 105
    .line 106
    move-object/from16 v18, v5

    .line 107
    .line 108
    iget-boolean v5, v1, Lcom/apm/insight/b/b;->t:Z

    .line 109
    .line 110
    move/from16 v20, v5

    .line 111
    .line 112
    move-object/from16 v19, v6

    .line 113
    .line 114
    iget-wide v5, v1, Lcom/apm/insight/b/b;->p:J

    .line 115
    .line 116
    iput-object v14, v1, Lcom/apm/insight/b/b;->g:Lorg/json/JSONObject;

    .line 117
    .line 118
    iput-object v14, v1, Lcom/apm/insight/b/b;->m:Lorg/json/JSONArray;

    .line 119
    .line 120
    iput-object v14, v1, Lcom/apm/insight/b/b;->q:Lorg/json/JSONArray;

    .line 121
    .line 122
    iput-object v14, v1, Lcom/apm/insight/b/b;->h:Lorg/json/JSONObject;

    .line 123
    .line 124
    iput-object v14, v1, Lcom/apm/insight/b/b;->r:Lorg/json/JSONArray;

    .line 125
    .line 126
    const-string/jumbo v14, "unknown"

    .line 127
    .line 128
    .line 129
    iput-object v14, v1, Lcom/apm/insight/b/b;->i:Ljava/lang/String;

    .line 130
    .line 131
    const-string/jumbo v14, "unknown"

    .line 132
    .line 133
    .line 134
    iput-object v14, v1, Lcom/apm/insight/b/b;->j:Ljava/lang/String;

    .line 135
    .line 136
    const-string/jumbo v14, "unknown"

    .line 137
    .line 138
    .line 139
    iput-object v14, v1, Lcom/apm/insight/b/b;->k:Ljava/lang/String;

    .line 140
    .line 141
    const/4 v14, 0x0

    .line 142
    iput v14, v1, Lcom/apm/insight/b/b;->o:I

    .line 143
    .line 144
    move-object v14, v12

    .line 145
    move-object v12, v10

    .line 146
    move-object v10, v8

    .line 147
    move-object/from16 v8, v19

    .line 148
    .line 149
    move-object/from16 v19, v15

    .line 150
    .line 151
    move-object v15, v13

    .line 152
    move-object v13, v11

    .line 153
    move-object v11, v9

    .line 154
    move-object v9, v7

    .line 155
    move-wide v6, v5

    .line 156
    move-object/from16 v5, v18

    .line 157
    .line 158
    const/16 v18, 0x1

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :catchall_0
    move-exception v0

    .line 162
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    throw v0

    .line 164
    :cond_2
    move-object v11, v9

    .line 165
    move-object v12, v10

    .line 166
    const/4 v13, 0x0

    .line 167
    const/4 v14, 0x0

    .line 168
    const/4 v15, 0x0

    .line 169
    const/16 v18, 0x0

    .line 170
    .line 171
    const/16 v19, 0x0

    .line 172
    .line 173
    const/16 v20, 0x0

    .line 174
    .line 175
    move-object v9, v7

    .line 176
    move-object v10, v8

    .line 177
    const/4 v8, 0x0

    .line 178
    move-wide v6, v5

    .line 179
    const/4 v5, 0x0

    .line 180
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 181
    .line 182
    .line 183
    move-result v21

    .line 184
    if-eqz v21, :cond_6

    .line 185
    .line 186
    iget-object v0, v1, Lcom/apm/insight/b/b;->g:Lorg/json/JSONObject;

    .line 187
    .line 188
    if-eqz v0, :cond_3

    .line 189
    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 191
    .line 192
    .line 193
    move-result-wide v2

    .line 194
    iget-wide v4, v1, Lcom/apm/insight/b/b;->d:J

    .line 195
    .line 196
    sub-long/2addr v2, v4

    .line 197
    const-wide/16 v4, 0x4e20

    .line 198
    .line 199
    cmp-long v0, v2, v4

    .line 200
    .line 201
    if-lez v0, :cond_3

    .line 202
    .line 203
    const/4 v0, 0x0

    .line 204
    iput-object v0, v1, Lcom/apm/insight/b/b;->g:Lorg/json/JSONObject;

    .line 205
    .line 206
    iput-object v0, v1, Lcom/apm/insight/b/b;->m:Lorg/json/JSONArray;

    .line 207
    .line 208
    iput-object v0, v1, Lcom/apm/insight/b/b;->q:Lorg/json/JSONArray;

    .line 209
    .line 210
    iput-object v0, v1, Lcom/apm/insight/b/b;->h:Lorg/json/JSONObject;

    .line 211
    .line 212
    iput-object v0, v1, Lcom/apm/insight/b/b;->r:Lorg/json/JSONArray;

    .line 213
    .line 214
    const-string/jumbo v2, "unknown"

    .line 215
    .line 216
    .line 217
    iput-object v2, v1, Lcom/apm/insight/b/b;->i:Ljava/lang/String;

    .line 218
    .line 219
    const-string/jumbo v2, "unknown"

    .line 220
    .line 221
    .line 222
    iput-object v2, v1, Lcom/apm/insight/b/b;->j:Ljava/lang/String;

    .line 223
    .line 224
    const-string/jumbo v2, "unknown"

    .line 225
    .line 226
    .line 227
    iput-object v2, v1, Lcom/apm/insight/b/b;->k:Ljava/lang/String;

    .line 228
    .line 229
    const/4 v2, 0x0

    .line 230
    iput v2, v1, Lcom/apm/insight/b/b;->o:I

    .line 231
    .line 232
    iput-object v0, v1, Lcom/apm/insight/b/b;->e:Ljava/io/File;

    .line 233
    .line 234
    return v2

    .line 235
    :cond_3
    iget-object v0, v1, Lcom/apm/insight/b/b;->g:Lorg/json/JSONObject;

    .line 236
    .line 237
    if-eqz v0, :cond_5

    .line 238
    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 240
    .line 241
    .line 242
    move-result-wide v2

    .line 243
    iget-wide v4, v1, Lcom/apm/insight/b/b;->d:J

    .line 244
    .line 245
    sub-long/2addr v2, v4

    .line 246
    const-wide/16 v4, 0x7d0

    .line 247
    .line 248
    cmp-long v0, v2, v4

    .line 249
    .line 250
    if-lez v0, :cond_5

    .line 251
    .line 252
    invoke-static {}, Lcom/apm/insight/nativecrash/NativeImpl;->h()Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-eqz v0, :cond_4

    .line 257
    .line 258
    invoke-direct/range {p0 .. p0}, Lcom/apm/insight/b/b;->i()Ljava/io/File;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-static {v0}, Lcom/apm/insight/l/f;->a(Ljava/io/File;)Z

    .line 263
    .line 264
    .line 265
    :cond_4
    const/4 v0, 0x0

    .line 266
    return v0

    .line 267
    :cond_5
    const/4 v0, 0x0

    .line 268
    return v0

    .line 269
    :cond_6
    if-nez v5, :cond_8

    .line 270
    .line 271
    if-nez v14, :cond_7

    .line 272
    .line 273
    :try_start_2
    invoke-static {}, Lcom/apm/insight/b/f;->b()Lcom/apm/insight/b/g;

    .line 274
    .line 275
    .line 276
    move-result-object v16

    .line 277
    invoke-virtual/range {v16 .. v16}, Lcom/apm/insight/b/g;->b()Lorg/json/JSONArray;

    .line 278
    .line 279
    .line 280
    move-result-object v13

    .line 281
    invoke-static {v2, v3}, Lcom/apm/insight/b/j;->a(J)Lorg/json/JSONArray;

    .line 282
    .line 283
    .line 284
    move-result-object v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 285
    move-object/from16 v16, v5

    .line 286
    .line 287
    :try_start_3
    invoke-static {}, Lcom/apm/insight/b/f;->b()Lcom/apm/insight/b/g;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    invoke-virtual {v5, v2, v3}, Lcom/apm/insight/b/g;->a(J)Lcom/apm/insight/b/g$e;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    invoke-virtual {v2}, Lcom/apm/insight/b/g$e;->a()Lorg/json/JSONObject;

    .line 296
    .line 297
    .line 298
    move-result-object v19

    .line 299
    new-instance v2, Lorg/json/JSONObject;

    .line 300
    .line 301
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 302
    .line 303
    .line 304
    :try_start_4
    iget-object v3, v1, Lcom/apm/insight/b/b;->b:Landroid/content/Context;

    .line 305
    .line 306
    invoke-static {v3, v2}, Lcom/apm/insight/l/a;->a(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 307
    .line 308
    .line 309
    move-object v15, v2

    .line 310
    goto :goto_2

    .line 311
    :catchall_1
    move-object v15, v2

    .line 312
    goto :goto_4

    .line 313
    :catchall_2
    move-object/from16 v16, v5

    .line 314
    .line 315
    goto :goto_4

    .line 316
    :cond_7
    move-object/from16 v16, v5

    .line 317
    .line 318
    :goto_2
    :try_start_5
    invoke-static {}, Lcom/apm/insight/b/d;->a()Lorg/json/JSONObject;

    .line 319
    .line 320
    .line 321
    move-result-object v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 322
    :goto_3
    move-object/from16 v2, v19

    .line 323
    .line 324
    goto :goto_5

    .line 325
    :catchall_3
    :goto_4
    move-object/from16 v5, v16

    .line 326
    .line 327
    goto :goto_3

    .line 328
    :cond_8
    move-object/from16 v16, v5

    .line 329
    .line 330
    goto :goto_3

    .line 331
    :goto_5
    if-eqz v5, :cond_1a

    .line 332
    .line 333
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    .line 334
    .line 335
    .line 336
    move-result v3

    .line 337
    if-lez v3, :cond_1a

    .line 338
    .line 339
    :try_start_6
    const-string v3, "pid"

    .line 340
    .line 341
    move/from16 v16, v0

    .line 342
    .line 343
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    invoke-virtual {v5, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 348
    .line 349
    .line 350
    const-string v0, "package"

    .line 351
    .line 352
    iget-object v3, v1, Lcom/apm/insight/b/b;->b:Landroid/content/Context;

    .line 353
    .line 354
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    .line 360
    .line 361
    const-string v0, "is_remote_process"

    .line 362
    .line 363
    const/4 v3, 0x0

    .line 364
    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 365
    .line 366
    .line 367
    const-string v0, "is_new_stack"

    .line 368
    .line 369
    const/16 v3, 0xa

    .line 370
    .line 371
    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 372
    .line 373
    .line 374
    new-instance v0, Lcom/apm/insight/entity/a;

    .line 375
    .line 376
    new-instance v3, Lorg/json/JSONObject;

    .line 377
    .line 378
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 379
    .line 380
    .line 381
    invoke-direct {v0, v3}, Lcom/apm/insight/entity/a;-><init>(Lorg/json/JSONObject;)V

    .line 382
    .line 383
    .line 384
    const-string v3, "data"

    .line 385
    .line 386
    move-object/from16 v17, v12

    .line 387
    .line 388
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v12

    .line 392
    invoke-virtual {v0, v3, v12}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    const-string v3, "is_anr"

    .line 396
    .line 397
    move-object/from16 v19, v5

    .line 398
    .line 399
    const/4 v12, 0x1

    .line 400
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 401
    .line 402
    .line 403
    move-result-object v5

    .line 404
    invoke-virtual {v0, v3, v5}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 405
    .line 406
    .line 407
    const-string v3, "anrType"

    .line 408
    .line 409
    invoke-virtual {v0, v3, v9}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    invoke-static {}, Lcom/apm/insight/e;->x()Z

    .line 413
    .line 414
    .line 415
    move-result v3

    .line 416
    if-eqz v3, :cond_9

    .line 417
    .line 418
    const-string v3, "history_message"

    .line 419
    .line 420
    invoke-virtual {v0, v3, v13}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 421
    .line 422
    .line 423
    const-string v3, "current_message"

    .line 424
    .line 425
    invoke-virtual {v0, v3, v2}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 426
    .line 427
    .line 428
    const-string v2, "pending_messages"

    .line 429
    .line 430
    invoke-virtual {v0, v2, v14}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 431
    .line 432
    .line 433
    goto :goto_6

    .line 434
    :catchall_4
    move-exception v0

    .line 435
    goto/16 :goto_f

    .line 436
    .line 437
    :cond_9
    :goto_6
    const-string v2, "anr_time"

    .line 438
    .line 439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 440
    .line 441
    .line 442
    move-result-wide v12

    .line 443
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 444
    .line 445
    .line 446
    move-result-object v3

    .line 447
    invoke-virtual {v0, v2, v3}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 448
    .line 449
    .line 450
    const-string v2, "crash_time"

    .line 451
    .line 452
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 453
    .line 454
    .line 455
    move-result-object v3

    .line 456
    invoke-virtual {v0, v2, v3}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 457
    .line 458
    .line 459
    invoke-static {}, Lcom/apm/insight/c/a;->b()Z

    .line 460
    .line 461
    .line 462
    invoke-virtual {v0, v15}, Lcom/apm/insight/entity/a;->c(Lorg/json/JSONObject;)V

    .line 463
    .line 464
    .line 465
    const-string v2, "anr_info"

    .line 466
    .line 467
    invoke-virtual {v0, v2, v4}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 468
    .line 469
    .line 470
    if-eqz v8, :cond_a

    .line 471
    .line 472
    const-string v2, "dump_trace"

    .line 473
    .line 474
    invoke-virtual {v0, v2, v8}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 475
    .line 476
    .line 477
    :cond_a
    const-string v2, "all_thread_stacks"

    .line 478
    .line 479
    iget-object v3, v1, Lcom/apm/insight/b/b;->n:Lorg/json/JSONObject;

    .line 480
    .line 481
    if-eqz v3, :cond_b

    .line 482
    .line 483
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    .line 484
    .line 485
    .line 486
    move-result v3

    .line 487
    if-nez v3, :cond_c

    .line 488
    .line 489
    :cond_b
    const/4 v3, 0x0

    .line 490
    goto :goto_7

    .line 491
    :cond_c
    iget-object v3, v1, Lcom/apm/insight/b/b;->n:Lorg/json/JSONObject;

    .line 492
    .line 493
    goto :goto_8

    .line 494
    :goto_7
    invoke-static {v3}, Lcom/apm/insight/l/m;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 495
    .line 496
    .line 497
    move-result-object v3

    .line 498
    :goto_8
    invoke-virtual {v0, v2, v3}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 499
    .line 500
    .line 501
    invoke-static {}, Lcom/apm/insight/runtime/a/f;->a()Lcom/apm/insight/runtime/a/f;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    sget-object v3, Lcom/apm/insight/CrashType;->ANR:Lcom/apm/insight/CrashType;

    .line 506
    .line 507
    invoke-virtual {v2, v3, v0}, Lcom/apm/insight/runtime/a/f;->a(Lcom/apm/insight/CrashType;Lcom/apm/insight/entity/a;)Lcom/apm/insight/entity/a;

    .line 508
    .line 509
    .line 510
    move-result-object v2

    .line 511
    const-string v0, "is_background"

    .line 512
    .line 513
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 514
    .line 515
    .line 516
    move-result-object v5

    .line 517
    invoke-virtual {v2, v0, v5}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 518
    .line 519
    .line 520
    const-string v0, "logcat"

    .line 521
    .line 522
    invoke-static {}, Lcom/apm/insight/e;->f()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v5

    .line 526
    invoke-static {v5}, Lcom/apm/insight/runtime/h;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 527
    .line 528
    .line 529
    move-result-object v5

    .line 530
    invoke-virtual {v2, v0, v5}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 531
    .line 532
    .line 533
    const-string v0, "has_dump"

    .line 534
    .line 535
    const-string/jumbo v5, "true"

    .line 536
    .line 537
    .line 538
    invoke-virtual {v2, v0, v5}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 539
    .line 540
    .line 541
    const-string v0, "crash_uuid"

    .line 542
    .line 543
    const/4 v5, 0x0

    .line 544
    invoke-static {v6, v7, v3, v5, v5}, Lcom/apm/insight/e;->a(JLcom/apm/insight/CrashType;ZZ)Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v3

    .line 548
    invoke-virtual {v2, v0, v3}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v2}, Lcom/apm/insight/entity/a;->c()Lorg/json/JSONObject;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    const-string v3, "filters"

    .line 556
    .line 557
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    invoke-virtual {v2}, Lcom/apm/insight/entity/a;->c()Lorg/json/JSONObject;

    .line 562
    .line 563
    .line 564
    move-result-object v3

    .line 565
    invoke-static {v3}, Lcom/apm/insight/entity/d;->b(Lorg/json/JSONObject;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 566
    .line 567
    .line 568
    if-nez v0, :cond_d

    .line 569
    .line 570
    :try_start_7
    new-instance v3, Lorg/json/JSONObject;

    .line 571
    .line 572
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 573
    .line 574
    .line 575
    :try_start_8
    const-string v0, "filters"

    .line 576
    .line 577
    invoke-virtual {v2, v0, v3}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 578
    .line 579
    .line 580
    goto :goto_9

    .line 581
    :catchall_5
    move-object v0, v3

    .line 582
    goto/16 :goto_d

    .line 583
    .line 584
    :cond_d
    move-object v3, v0

    .line 585
    :goto_9
    const-string v0, "anrType"

    .line 586
    .line 587
    invoke-virtual {v3, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 588
    .line 589
    .line 590
    const-string v0, "max_utm_thread"

    .line 591
    .line 592
    invoke-virtual {v3, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 593
    .line 594
    .line 595
    const-string v0, "max_stm_thread"

    .line 596
    .line 597
    invoke-virtual {v3, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 598
    .line 599
    .line 600
    const-string v0, "max_utm_stm_thread"

    .line 601
    .line 602
    move-object/from16 v10, v17

    .line 603
    .line 604
    invoke-virtual {v3, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 605
    .line 606
    .line 607
    const-string v0, "max_utm_thread_version"

    .line 608
    .line 609
    iget-object v5, v1, Lcom/apm/insight/b/b;->l:Ljava/lang/String;

    .line 610
    .line 611
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 612
    .line 613
    .line 614
    const-string v0, "crash_length"

    .line 615
    .line 616
    invoke-static {}, Lcom/apm/insight/e;->j()J

    .line 617
    .line 618
    .line 619
    move-result-wide v8

    .line 620
    sub-long v8, v6, v8

    .line 621
    .line 622
    const-wide/16 v10, 0x7530

    .line 623
    .line 624
    cmp-long v5, v8, v10

    .line 625
    .line 626
    if-gez v5, :cond_e

    .line 627
    .line 628
    const-string v5, "0 - 30s"

    .line 629
    .line 630
    goto :goto_a

    .line 631
    :cond_e
    const-wide/32 v10, 0xea60

    .line 632
    .line 633
    .line 634
    cmp-long v5, v8, v10

    .line 635
    .line 636
    if-gez v5, :cond_f

    .line 637
    .line 638
    const-string v5, "30s - 1min"

    .line 639
    .line 640
    goto :goto_a

    .line 641
    :cond_f
    const-wide/32 v10, 0x1d4c0

    .line 642
    .line 643
    .line 644
    cmp-long v5, v8, v10

    .line 645
    .line 646
    if-gez v5, :cond_10

    .line 647
    .line 648
    const-string v5, "1min - 2min"

    .line 649
    .line 650
    goto :goto_a

    .line 651
    :cond_10
    const-wide/32 v10, 0x493e0

    .line 652
    .line 653
    .line 654
    cmp-long v5, v8, v10

    .line 655
    .line 656
    if-gez v5, :cond_11

    .line 657
    .line 658
    const-string v5, "2min - 5min"

    .line 659
    .line 660
    goto :goto_a

    .line 661
    :cond_11
    const-wide/32 v10, 0x927c0

    .line 662
    .line 663
    .line 664
    cmp-long v5, v8, v10

    .line 665
    .line 666
    if-gez v5, :cond_12

    .line 667
    .line 668
    const-string v5, "5min - 10min"

    .line 669
    .line 670
    goto :goto_a

    .line 671
    :cond_12
    const-wide/32 v10, 0x1b7740

    .line 672
    .line 673
    .line 674
    cmp-long v5, v8, v10

    .line 675
    .line 676
    if-gez v5, :cond_13

    .line 677
    .line 678
    const-string v5, "10min - 30min"

    .line 679
    .line 680
    goto :goto_a

    .line 681
    :cond_13
    const-wide/32 v10, 0x36ee80

    .line 682
    .line 683
    .line 684
    cmp-long v5, v8, v10

    .line 685
    .line 686
    if-gez v5, :cond_14

    .line 687
    .line 688
    const-string v5, "30min - 1h"

    .line 689
    .line 690
    goto :goto_a

    .line 691
    :cond_14
    const-string v5, "1h - "

    .line 692
    .line 693
    :goto_a
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 694
    .line 695
    .line 696
    const-string v0, "disable_looper_monitor"

    .line 697
    .line 698
    invoke-static {}, Lcom/apm/insight/runtime/a;->c()Z

    .line 699
    .line 700
    .line 701
    move-result v5

    .line 702
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v5

    .line 706
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 707
    .line 708
    .line 709
    const-string v0, "npth_force_apm_crash"

    .line 710
    .line 711
    invoke-static {}, Lcom/apm/insight/c/a;->b()Z

    .line 712
    .line 713
    .line 714
    move-result v5

    .line 715
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v5

    .line 719
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 720
    .line 721
    .line 722
    const-string v0, "sdk_version"

    .line 723
    .line 724
    const-string v5, "2008-20250701130429"

    .line 725
    .line 726
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 727
    .line 728
    .line 729
    const-string v0, "has_logcat"

    .line 730
    .line 731
    invoke-virtual {v2}, Lcom/apm/insight/entity/a;->a()Z

    .line 732
    .line 733
    .line 734
    move-result v5

    .line 735
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v5

    .line 739
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 740
    .line 741
    .line 742
    const-string v0, "memory_leak"

    .line 743
    .line 744
    invoke-static {}, Lcom/apm/insight/e;->f()Ljava/lang/String;

    .line 745
    .line 746
    .line 747
    move-result-object v5

    .line 748
    invoke-static {v5}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;)Z

    .line 749
    .line 750
    .line 751
    move-result v5

    .line 752
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v5

    .line 756
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 757
    .line 758
    .line 759
    const-string v0, "fd_leak"

    .line 760
    .line 761
    invoke-static {}, Lcom/apm/insight/e;->f()Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v5

    .line 765
    invoke-static {v5}, Lcom/apm/insight/entity/a;->b(Ljava/lang/String;)Z

    .line 766
    .line 767
    .line 768
    move-result v5

    .line 769
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v5

    .line 773
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 774
    .line 775
    .line 776
    const-string v0, "threads_leak"

    .line 777
    .line 778
    invoke-static {}, Lcom/apm/insight/e;->f()Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v5

    .line 782
    invoke-static {v5}, Lcom/apm/insight/entity/a;->c(Ljava/lang/String;)Z

    .line 783
    .line 784
    .line 785
    move-result v5

    .line 786
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object v5

    .line 790
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 791
    .line 792
    .line 793
    const-string v0, "is_64_devices"

    .line 794
    .line 795
    invoke-static {}, Lcom/apm/insight/entity/Header;->a()Z

    .line 796
    .line 797
    .line 798
    move-result v5

    .line 799
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 800
    .line 801
    .line 802
    move-result-object v5

    .line 803
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 804
    .line 805
    .line 806
    const-string v0, "is_64_runtime"

    .line 807
    .line 808
    invoke-static {}, Lcom/apm/insight/nativecrash/NativeImpl;->f()Z

    .line 809
    .line 810
    .line 811
    move-result v5

    .line 812
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v5

    .line 816
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 817
    .line 818
    .line 819
    const-string v0, "is_x86_devices"

    .line 820
    .line 821
    invoke-static {}, Lcom/apm/insight/entity/Header;->b()Z

    .line 822
    .line 823
    .line 824
    move-result v5

    .line 825
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 826
    .line 827
    .line 828
    move-result-object v5

    .line 829
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 830
    .line 831
    .line 832
    const-string v0, "has_meminfo_file"

    .line 833
    .line 834
    invoke-static {}, Lcom/apm/insight/e;->f()Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v5

    .line 838
    invoke-static {v5}, Lcom/apm/insight/l/j;->d(Ljava/lang/String;)Ljava/io/File;

    .line 839
    .line 840
    .line 841
    move-result-object v5

    .line 842
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 843
    .line 844
    .line 845
    move-result v5

    .line 846
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object v5

    .line 850
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 851
    .line 852
    .line 853
    const-string v0, "is_root"

    .line 854
    .line 855
    invoke-static {}, Lcom/apm/insight/nativecrash/a;->k()Z

    .line 856
    .line 857
    .line 858
    move-result v5

    .line 859
    if-eqz v5, :cond_15

    .line 860
    .line 861
    const-string/jumbo v5, "true"

    .line 862
    .line 863
    .line 864
    goto :goto_b

    .line 865
    :cond_15
    const-string v5, "false"

    .line 866
    .line 867
    :goto_b
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 868
    .line 869
    .line 870
    const-string v0, "anr_normal_trace"

    .line 871
    .line 872
    iget-boolean v5, v1, Lcom/apm/insight/b/b;->v:Z

    .line 873
    .line 874
    const/4 v8, 0x1

    .line 875
    xor-int/2addr v5, v8

    .line 876
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 877
    .line 878
    .line 879
    move-result-object v5

    .line 880
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 881
    .line 882
    .line 883
    const-string v0, "anr_no_run"

    .line 884
    .line 885
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 886
    .line 887
    .line 888
    move-result-object v5

    .line 889
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 890
    .line 891
    .line 892
    const-string v0, "crash_after_crash"

    .line 893
    .line 894
    invoke-static {}, Lcom/apm/insight/Npth;->hasCrash()Z

    .line 895
    .line 896
    .line 897
    move-result v5

    .line 898
    if-eqz v5, :cond_16

    .line 899
    .line 900
    const-string/jumbo v5, "true"

    .line 901
    .line 902
    .line 903
    goto :goto_c

    .line 904
    :cond_16
    const-string v5, "false"

    .line 905
    .line 906
    :goto_c
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 907
    .line 908
    .line 909
    const-string v0, "from_file"

    .line 910
    .line 911
    invoke-static {}, Lcom/apm/insight/b/d;->b()Z

    .line 912
    .line 913
    .line 914
    move-result v5

    .line 915
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 916
    .line 917
    .line 918
    move-result-object v5

    .line 919
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 920
    .line 921
    .line 922
    const-string v0, "has_dump"

    .line 923
    .line 924
    const-string/jumbo v5, "true"

    .line 925
    .line 926
    .line 927
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 928
    .line 929
    .line 930
    const-string v0, "from_kill"

    .line 931
    .line 932
    const-string v5, "false"

    .line 933
    .line 934
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 935
    .line 936
    .line 937
    const-string v0, "last_resume_activity"

    .line 938
    .line 939
    invoke-static {}, Lcom/apm/insight/runtime/a/b;->d()Lcom/apm/insight/runtime/a/b;

    .line 940
    .line 941
    .line 942
    move-result-object v5

    .line 943
    invoke-virtual {v5}, Lcom/apm/insight/runtime/a/b;->h()Ljava/lang/String;

    .line 944
    .line 945
    .line 946
    move-result-object v5

    .line 947
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 948
    .line 949
    .line 950
    iget v0, v1, Lcom/apm/insight/b/b;->o:I

    .line 951
    .line 952
    if-lez v0, :cond_17

    .line 953
    .line 954
    const-string v5, "may_have_stack_overflow"

    .line 955
    .line 956
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object v0

    .line 960
    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 961
    .line 962
    .line 963
    :cond_17
    :try_start_9
    invoke-direct {v1, v4, v3}, Lcom/apm/insight/b/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 964
    .line 965
    .line 966
    goto :goto_e

    .line 967
    :catchall_6
    move-exception v0

    .line 968
    move-object v4, v0

    .line 969
    :try_start_a
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    .line 970
    .line 971
    .line 972
    const-string v0, "NPTH_CATCH"

    .line 973
    .line 974
    invoke-static {v4, v0}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 975
    .line 976
    .line 977
    goto :goto_e

    .line 978
    :catchall_7
    :goto_d
    move-object v3, v0

    .line 979
    :goto_e
    :try_start_b
    invoke-static {}, Lcom/apm/insight/a/a;->a()Lcom/apm/insight/a/a;

    .line 980
    .line 981
    .line 982
    sget-object v0, Lcom/apm/insight/CrashType;->LAUNCH:Lcom/apm/insight/CrashType;

    .line 983
    .line 984
    invoke-static {}, Lcom/apm/insight/e;->e()Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 985
    .line 986
    .line 987
    :try_start_c
    invoke-static {}, Lcom/apm/insight/a;->e()Ljava/io/File;

    .line 988
    .line 989
    .line 990
    move-result-object v0

    .line 991
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 992
    .line 993
    .line 994
    move-result-wide v4

    .line 995
    const-wide/16 v8, 0x400

    .line 996
    .line 997
    cmp-long v0, v4, v8

    .line 998
    .line 999
    if-lez v0, :cond_18

    .line 1000
    .line 1001
    const-string v0, "has_system_traces"

    .line 1002
    .line 1003
    const-string/jumbo v4, "true"

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {v2, v0, v4}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/apm/insight/entity/a;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 1007
    .line 1008
    .line 1009
    :catchall_8
    :cond_18
    :try_start_d
    invoke-static {}, Lcom/apm/insight/e;->f()Ljava/lang/String;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v0

    .line 1013
    invoke-static {v0}, Lcom/apm/insight/l/j;->e(Ljava/lang/String;)Ljava/io/File;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v0

    .line 1017
    invoke-static {}, Lcom/apm/insight/e;->f()Ljava/lang/String;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v4

    .line 1021
    invoke-static {v4}, Lcom/apm/insight/l/j;->f(Ljava/lang/String;)Ljava/io/File;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v4

    .line 1025
    invoke-static {v0, v4}, Lcom/apm/insight/nativecrash/b;->a(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONArray;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v0

    .line 1029
    const-string v4, "leak_threads_count"

    .line 1030
    .line 1031
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 1032
    .line 1033
    .line 1034
    move-result v5

    .line 1035
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v5

    .line 1039
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 1043
    .line 1044
    .line 1045
    move-result v3

    .line 1046
    if-lez v3, :cond_19

    .line 1047
    .line 1048
    invoke-static {}, Lcom/apm/insight/e;->f()Ljava/lang/String;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v3

    .line 1052
    invoke-static {v3}, Lcom/apm/insight/l/j;->g(Ljava/lang/String;)Ljava/io/File;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v3

    .line 1056
    invoke-static {v3, v0}, Lcom/apm/insight/l/f;->a(Ljava/io/File;Lorg/json/JSONArray;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 1057
    .line 1058
    .line 1059
    :catchall_9
    :cond_19
    :try_start_e
    const-string v0, "mainStackFromTrace"

    .line 1060
    .line 1061
    move-object/from16 v5, v19

    .line 1062
    .line 1063
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v0

    .line 1067
    invoke-static {v0}, Lcom/apm/insight/entity/b;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v3

    .line 1071
    invoke-virtual {v2}, Lcom/apm/insight/entity/a;->c()Lorg/json/JSONObject;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v2

    .line 1075
    new-instance v4, Lcom/apm/insight/b/b$2;

    .line 1076
    .line 1077
    invoke-direct {v4, v1, v6, v7}, Lcom/apm/insight/b/b$2;-><init>(Lcom/apm/insight/b/b;J)V

    .line 1078
    .line 1079
    .line 1080
    invoke-static {v2, v3, v4}, Lcom/apm/insight/entity/b;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/apm/insight/entity/b$a;)V

    .line 1081
    .line 1082
    .line 1083
    invoke-static {v0, v3}, Lcom/apm/insight/b/b;->b(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 1084
    .line 1085
    .line 1086
    goto :goto_10

    .line 1087
    :goto_f
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    .line 1088
    .line 1089
    .line 1090
    const-string v2, "NPTH_CATCH"

    .line 1091
    .line 1092
    invoke-static {v0, v2}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1093
    .line 1094
    .line 1095
    :cond_1a
    :goto_10
    return v18
.end method
