.class public Lcom/pgl/ssdk/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:J = 0x7080L

.field public static b:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(JLjava/io/InputStream;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    return-wide p0

    :cond_0
    const/16 p0, 0x2000

    .line 1
    new-array p0, p0, [B

    const-wide/16 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p2, p0}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    int-to-long v2, p1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static a()Lorg/json/JSONObject;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 20
    invoke-static {}, Lcom/pgl/ssdk/z;->b()Landroid/content/Context;

    move-result-object v0

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 23
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    if-eqz v0, :cond_4

    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 25
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 26
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 27
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 29
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 30
    array-length v7, v4

    if-lez v7, :cond_0

    .line 31
    array-length v7, v4

    move v8, v6

    :goto_0
    if-ge v8, v7, :cond_0

    aget-object v9, v4, v8

    .line 32
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "arm64"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "v8a"

    .line 34
    invoke-static {v3, v4, v1, v6}, Lcom/pgl/ssdk/f;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Z)V

    goto :goto_1

    :cond_1
    const-string/jumbo v4, "v7a"

    .line 35
    invoke-static {v3, v4, v1, v6}, Lcom/pgl/ssdk/f;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Z)V

    .line 36
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, "lib"

    .line 37
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 39
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 40
    array-length v1, v0

    move v3, v6

    :goto_2
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    const-string v5, "armeabi-v7a.apk"

    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "arm64_v8a.apk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 42
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 44
    invoke-static {v0, v6}, Lcom/pgl/ssdk/f;->a(Ljava/io/File;Z)Lorg/json/JSONObject;

    move-result-object v2

    :cond_4
    return-object v2
.end method

.method public static a(Ljava/io/File;Z)Lorg/json/JSONObject;
    .locals 19

    .line 45
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 49
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 50
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 51
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 52
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 53
    :try_start_0
    new-instance v8, Ljava/util/zip/ZipFile;

    move-object/from16 v9, p0

    invoke-direct {v8, v9}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 54
    :try_start_1
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v9

    .line 55
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 56
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/zip/ZipEntry;

    if-eqz v10, :cond_0

    .line 57
    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    .line 58
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_0

    goto :goto_1

    :catchall_0
    move-object v5, v0

    goto/16 :goto_5

    :cond_1
    :goto_1
    const-string v12, "/"

    .line 59
    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 60
    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v13

    const-string v15, "res/drawable/"

    .line 61
    invoke-virtual {v11, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    move-object/from16 p0, v9

    const/4 v9, 0x2

    if-eqz v15, :cond_3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v16, v0

    const/16 v0, 0xd

    if-le v15, v0, :cond_4

    .line 62
    :try_start_2
    aget-object v0, v12, v9

    .line 63
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    move-object/from16 v9, p0

    move-object/from16 v0, v16

    goto :goto_0

    :catchall_1
    move-object/from16 v5, v16

    goto/16 :goto_5

    :cond_3
    move-object/from16 v16, v0

    :cond_4
    const-string v0, "res/"

    .line 64
    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v15, 0x1

    if-eqz v0, :cond_5

    array-length v0, v12

    if-ne v0, v9, :cond_5

    .line 65
    aget-object v0, v12, v15

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const-string v0, "assets/"

    .line 66
    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    array-length v0, v12

    if-lt v0, v9, :cond_7

    .line 67
    aget-object v0, v12, v15

    .line 68
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "assets/assets/resources/native/"

    .line 69
    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    array-length v0, v12

    const/4 v9, 0x6

    if-lt v0, v9, :cond_2

    invoke-virtual {v7}, Lorg/json/JSONObject;->length()I

    move-result v0

    const/16 v9, 0xa

    if-ge v0, v9, :cond_2

    const/4 v0, 0x4

    .line 70
    aget-object v9, v12, v0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    aget-object v9, v12, v0

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 71
    aget-object v0, v12, v0

    invoke-virtual {v8, v10}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v13, v14, v9}, Lcom/pgl/ssdk/f;->a(JLjava/io/InputStream;)J

    move-result-wide v9

    invoke-virtual {v7, v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_2

    .line 72
    :cond_6
    aget-object v9, v12, v0

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 73
    aget-object v9, v12, v0

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 74
    aget-object v0, v12, v0

    invoke-virtual {v8, v10}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v13, v14, v9}, Lcom/pgl/ssdk/f;->a(JLjava/io/InputStream;)J

    move-result-wide v9

    add-long v9, v17, v9

    invoke-virtual {v7, v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_2

    :cond_7
    const-string v0, "lib/armeabi/"

    .line 75
    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v10, 0xc

    if-le v0, v10, :cond_8

    .line 76
    aget-object v0, v12, v9

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_8
    const-string v0, "lib/armeabi-v7a/"

    .line 77
    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v10, 0x10

    if-le v0, v10, :cond_9

    .line 78
    aget-object v0, v12, v9

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_9
    const-string v0, "lib/arm64-v8a/"

    .line 79
    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v10, 0xe

    if-le v0, v10, :cond_2

    .line 80
    aget-object v0, v12, v9

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_a
    move-object/from16 v16, v0

    .line 81
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "eabi"

    const/4 v10, 0x0

    .line 82
    invoke-static {v0, v9, v4, v10}, Lcom/pgl/ssdk/f;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Z)V

    const-string/jumbo v4, "v7a"

    .line 83
    invoke-static {v0, v4, v5, v10}, Lcom/pgl/ssdk/f;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Z)V

    const-string/jumbo v4, "v8a"

    .line 84
    invoke-static {v0, v4, v6, v10}, Lcom/pgl/ssdk/f;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Z)V

    .line 85
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_b

    const-string v4, "lib"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v5, v16

    .line 86
    :try_start_3
    invoke-virtual {v5, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_b
    move-object/from16 v5, v16

    :goto_3
    if-eqz p1, :cond_c

    .line 87
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_c

    .line 88
    invoke-static {}, Lcom/pgl/ssdk/f;->a()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    :cond_c
    move-object v0, v5

    .line 89
    :goto_4
    :try_start_4
    invoke-virtual {v7}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_d

    const-string v4, "cocos"

    .line 90
    invoke-virtual {v0, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d
    const-string v4, "assets"

    .line 91
    invoke-static {v0, v4, v1, v10}, Lcom/pgl/ssdk/f;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Z)V

    .line 92
    invoke-static {v2}, Lcom/pgl/ssdk/f;->a(Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 93
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_e

    const-string v2, "drawable"

    .line 94
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    :cond_e
    invoke-static {v3}, Lcom/pgl/ssdk/f;->a(Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 96
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_f

    const-string v2, "res"

    .line 97
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_6

    :catchall_2
    move-object v5, v0

    const/4 v8, 0x0

    :catchall_3
    :goto_5
    move-object v0, v5

    :catchall_4
    if-nez v8, :cond_f

    goto :goto_7

    .line 98
    :cond_f
    :goto_6
    :try_start_5
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :goto_7
    return-object v0
.end method

.method private static a(Ljava/util/List;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 6
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 12
    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 13
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_0
    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 15
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_1
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string/jumbo p0, "xml"

    const/4 v4, 0x1

    .line 17
    invoke-static {v0, p0, v1, v4}, Lcom/pgl/ssdk/f;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Z)V

    const-string p0, "png"

    .line 18
    invoke-static {v0, p0, v2, v4}, Lcom/pgl/ssdk/f;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Z)V

    const-string p0, "other"

    .line 19
    invoke-static {v0, p0, v3, v4}, Lcom/pgl/ssdk/f;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Z)V

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    .line 3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    .line 4
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_size"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5
    :cond_0
    invoke-static {p2}, Lcom/pgl/ssdk/n;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static b()J
    .locals 6

    .line 1
    invoke-static {}, Lcom/pgl/ssdk/z;->b()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const-string v3, "pgl_frt"

    .line 10
    .line 11
    invoke-static {v0, v3, v1, v2}, Lcom/pgl/ssdk/x0;->a(Landroid/content/Context;Ljava/lang/String;J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    cmp-long v1, v4, v1

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    const-wide/16 v4, 0x3e8

    .line 24
    .line 25
    div-long/2addr v1, v4

    .line 26
    invoke-static {v0, v3, v1, v2}, Lcom/pgl/ssdk/x0;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-wide v1, v4

    .line 31
    :cond_1
    :goto_0
    return-wide v1
.end method

.method public static declared-synchronized c()V
    .locals 4

    .line 1
    const-class v0, Lcom/pgl/ssdk/f;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/pgl/ssdk/f;->d()Z

    .line 5
    .line 6
    .line 7
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/pgl/ssdk/v;->c()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/File;

    .line 25
    .line 26
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-static {v2, v1}, Lcom/pgl/ssdk/f;->a(Ljava/io/File;Z)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 40
    :try_start_3
    const-string v2, "apk_info"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    .line 42
    :try_start_4
    invoke-static {}, Lcom/pgl/ssdk/v;->b()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 47
    .line 48
    .line 49
    :try_start_5
    const-string v2, "app_name"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 50
    .line 51
    :try_start_6
    invoke-static {}, Lcom/pgl/ssdk/z;->b()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v3}, Lcom/pgl/ssdk/b0;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lcom/pgl/ssdk/ces/out/PglSSManager;->getInstance()Lcom/pgl/ssdk/ces/out/PglSSManager;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/pgl/ssdk/ces/out/PglSSManager;->getPglCallBack()Lcom/pgl/ssdk/ces/out/PglSSCallBack;

    .line 69
    .line 70
    .line 71
    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    :try_start_7
    const-string v3, "detailed_app_info"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 75
    .line 76
    :try_start_8
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-interface {v2, v3, v1}, Lcom/pgl/ssdk/ces/out/PglSSCallBack;->reportSoftDecData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 81
    .line 82
    .line 83
    monitor-exit v0

    .line 84
    return-void

    .line 85
    :catchall_0
    move-exception v1

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    :try_start_9
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v1}, Lcom/pgl/ssdk/u0;->a(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 92
    .line 93
    .line 94
    monitor-exit v0

    .line 95
    return-void

    .line 96
    :goto_0
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 97
    throw v1

    .line 98
    :catchall_1
    :cond_3
    monitor-exit v0

    .line 99
    return-void
.end method

.method private static d()Z
    .locals 9

    .line 1
    invoke-static {}, Lcom/pgl/ssdk/z;->b()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "pgl_is_hit"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v0, v1, v2}, Lcom/pgl/ssdk/x0;->a(Landroid/content/Context;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v4, "hitsTimes "

    .line 15
    .line 16
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {v3}, Lcom/pgl/ssdk/u0;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    if-lez v0, :cond_0

    .line 30
    .line 31
    return v2

    .line 32
    :cond_0
    invoke-static {}, Lcom/pgl/ssdk/f;->b()J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v5

    .line 40
    const-wide/16 v7, 0x3e8

    .line 41
    .line 42
    div-long/2addr v5, v7

    .line 43
    sub-long/2addr v5, v3

    .line 44
    const-string v0, "runningTime "

    .line 45
    .line 46
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/pgl/ssdk/u0;->a(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sget-wide v3, Lcom/pgl/ssdk/f;->a:J

    .line 58
    .line 59
    cmp-long v0, v5, v3

    .line 60
    .line 61
    if-gez v0, :cond_1

    .line 62
    .line 63
    return v2

    .line 64
    :cond_1
    invoke-static {}, Lcom/pgl/ssdk/z;->b()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const/4 v2, 0x1

    .line 69
    invoke-static {v0, v1, v2}, Lcom/pgl/ssdk/x0;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lcom/pgl/ssdk/f;->e()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    return v0
.end method

.method private static e()Z
    .locals 6

    .line 1
    sget v0, Lcom/pgl/ssdk/f;->b:I

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    move v0, v3

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    :goto_0
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 19
    .line 20
    mul-double/2addr v0, v4

    .line 21
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 22
    .line 23
    add-double/2addr v0, v4

    .line 24
    double-to-int v0, v0

    .line 25
    sget v1, Lcom/pgl/ssdk/f;->b:I

    .line 26
    .line 27
    if-gt v0, v1, :cond_2

    .line 28
    .line 29
    move v2, v3

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v2, v0

    .line 32
    :cond_2
    :goto_1
    return v2
.end method
