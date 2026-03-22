.class public Lcom/bykv/vk/openvk/preload/geckox/h/a;
.super Ljava/lang/Object;
.source "GeckoPipeline.java"


# direct methods
.method public static a(Lcom/bykv/vk/openvk/preload/a/d/a;)Lcom/bykv/vk/openvk/preload/a/i;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/preload/a/m;
        }
    .end annotation

    .line 166
    :try_start_0
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/a/d/a;->f()Lcom/bykv/vk/openvk/preload/a/d/b;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/bykv/vk/openvk/preload/a/d/d; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 167
    :try_start_1
    sget-object v1, Lcom/bykv/vk/openvk/preload/a/b/a/m;->A:Lcom/bykv/vk/openvk/preload/a/r;

    invoke-virtual {v1, p0}, Lcom/bykv/vk/openvk/preload/a/r;->a(Lcom/bykv/vk/openvk/preload/a/d/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bykv/vk/openvk/preload/a/i;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/bykv/vk/openvk/preload/a/d/d; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_3

    .line 168
    :goto_0
    new-instance v0, Lcom/bykv/vk/openvk/preload/a/p;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/preload/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 169
    :goto_1
    new-instance v0, Lcom/bykv/vk/openvk/preload/a/j;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/preload/a/j;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 170
    :goto_2
    new-instance v0, Lcom/bykv/vk/openvk/preload/a/p;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/preload/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p0

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_0

    .line 171
    sget-object p0, Lcom/bykv/vk/openvk/preload/a/k;->a:Lcom/bykv/vk/openvk/preload/a/k;

    return-object p0

    .line 172
    :cond_0
    new-instance v0, Lcom/bykv/vk/openvk/preload/a/p;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/preload/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a(Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;
    .locals 1

    .line 165
    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/h/a$7;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/preload/geckox/h/a$7;-><init>(Lcom/bykv/vk/openvk/preload/geckox/b;)V

    return-object v0
.end method

.method private static a(Lcom/bykv/vk/openvk/preload/geckox/e/a;)Lcom/bykv/vk/openvk/preload/b/b/a;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 163
    :cond_0
    new-instance p0, Lcom/bykv/vk/openvk/preload/geckox/h/a$3;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/geckox/h/a$3;-><init>()V

    return-object p0
.end method

.method private static a(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;
    .locals 1

    .line 164
    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/h/a$4;

    invoke-direct {v0, p0, p1}, Lcom/bykv/vk/openvk/preload/geckox/h/a$4;-><init>(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)V

    return-object v0
.end method

.method public static a(Lcom/bykv/vk/openvk/preload/geckox/e/a;Ljava/io/File;Lcom/bykv/vk/openvk/preload/geckox/b;Lcom/bykv/vk/openvk/preload/falconx/a/a;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/b/b;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/geckox/e/a;",
            "Ljava/io/File;",
            "Lcom/bykv/vk/openvk/preload/geckox/b;",
            "Lcom/bykv/vk/openvk/preload/falconx/a/a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/geckox/model/CheckRequestBodyModel$TargetChannel;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/bykv/vk/openvk/preload/b/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v5

    const-class v6, Lcom/bykv/vk/openvk/preload/geckox/d/e;

    invoke-virtual {v5, v6}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v5

    .line 3
    invoke-virtual/range {p2 .. p2}, Lcom/bykv/vk/openvk/preload/geckox/b;->d()Ljava/util/List;

    move-result-object v7

    filled-new-array {v1, v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/bykv/vk/openvk/preload/b/h$a;->a([Ljava/lang/Object;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v5

    .line 4
    invoke-virtual {v3, v6}, Lcom/bykv/vk/openvk/preload/falconx/a/a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Lcom/bykv/vk/openvk/preload/b/b/a;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v5

    .line 5
    invoke-virtual {v5}, Lcom/bykv/vk/openvk/preload/b/h$a;->b()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v5

    .line 6
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v5

    const-class v6, Lcom/bykv/vk/openvk/preload/geckox/d/c;

    invoke-virtual {v5, v6}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v5

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    filled-new-array {v2, v7, v8, v0, v9}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/bykv/vk/openvk/preload/b/h$a;->a([Ljava/lang/Object;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v5

    new-instance v7, Lcom/bykv/vk/openvk/preload/b/b/b;

    .line 8
    new-instance v8, Lcom/bykv/vk/openvk/preload/geckox/h/a$6;

    invoke-direct {v8, v2}, Lcom/bykv/vk/openvk/preload/geckox/h/a$6;-><init>(Lcom/bykv/vk/openvk/preload/geckox/b;)V

    .line 9
    invoke-virtual {v3, v6}, Lcom/bykv/vk/openvk/preload/falconx/a/a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v6

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/bykv/vk/openvk/preload/b/b/a;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    const/4 v8, 0x1

    aput-object v6, v9, v8

    invoke-direct {v7, v9}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 10
    invoke-virtual {v5, v7}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Lcom/bykv/vk/openvk/preload/b/b/a;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v5

    .line 11
    invoke-virtual {v5}, Lcom/bykv/vk/openvk/preload/b/h$a;->b()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v5

    .line 12
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-static {}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v5

    const-class v6, Lcom/bykv/vk/openvk/preload/geckox/d/f;

    invoke-virtual {v5, v6}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v5

    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/b;->g()Ljava/util/concurrent/Executor;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bykv/vk/openvk/preload/b/h$a;->a([Ljava/lang/Object;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v5

    .line 14
    new-instance v6, Lcom/bykv/vk/openvk/preload/geckox/h/a$1;

    invoke-direct {v6, v0, v2}, Lcom/bykv/vk/openvk/preload/geckox/h/a$1;-><init>(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)V

    .line 15
    invoke-virtual {v5, v6}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Lcom/bykv/vk/openvk/preload/b/b/a;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bykv/vk/openvk/preload/b/h$a;->b()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v5

    .line 16
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v5, Lcom/bykv/vk/openvk/preload/b/l$b;

    invoke-direct {v5}, Lcom/bykv/vk/openvk/preload/b/l$b;-><init>()V

    .line 18
    const-string v6, "branch_zip"

    invoke-virtual {v5, v6}, Lcom/bykv/vk/openvk/preload/b/l$b;->a(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/b/l$a;

    move-result-object v6

    .line 19
    new-instance v7, Lcom/bykv/vk/openvk/preload/b/l$b;

    invoke-direct {v7}, Lcom/bykv/vk/openvk/preload/b/l$b;-><init>()V

    .line 20
    const-string v8, "patch"

    invoke-virtual {v7, v8}, Lcom/bykv/vk/openvk/preload/b/l$b;->a(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/b/l$a;

    move-result-object v9

    .line 21
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-static {}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v11

    const-class v12, Lcom/bykv/vk/openvk/preload/geckox/d/h;

    invoke-virtual {v11, v12}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v11

    invoke-virtual {v11}, Lcom/bykv/vk/openvk/preload/b/h$a;->b()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-static {}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v11

    const-class v13, Lcom/bykv/vk/openvk/preload/geckox/d/b/b/c;

    invoke-virtual {v11, v13}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v11

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/bykv/vk/openvk/preload/b/h$a;->a([Ljava/lang/Object;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v11

    new-instance v14, Lcom/bykv/vk/openvk/preload/b/b/b;

    .line 24
    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->b(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v15

    .line 25
    invoke-virtual {v3, v13}, Lcom/bykv/vk/openvk/preload/falconx/a/a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v13

    filled-new-array {v15, v13}, [Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v13

    invoke-direct {v14, v13}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 26
    invoke-virtual {v11, v14}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Lcom/bykv/vk/openvk/preload/b/b/a;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v11

    .line 27
    invoke-virtual {v11}, Lcom/bykv/vk/openvk/preload/b/h$a;->b()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v11

    .line 28
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-static {}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v11

    const-class v13, Lcom/bykv/vk/openvk/preload/geckox/d/b/b/b;

    invoke-virtual {v11, v13}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v11

    new-instance v14, Lcom/bykv/vk/openvk/preload/b/b/b;

    .line 30
    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v15

    .line 31
    invoke-virtual {v3, v13}, Lcom/bykv/vk/openvk/preload/falconx/a/a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v13

    filled-new-array {v15, v13}, [Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v13

    invoke-direct {v14, v13}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 32
    invoke-virtual {v11, v14}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Lcom/bykv/vk/openvk/preload/b/b/a;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v11

    .line 33
    invoke-virtual {v11}, Lcom/bykv/vk/openvk/preload/b/h$a;->b()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v11

    .line 34
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-static {}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v11

    const-class v13, Lcom/bykv/vk/openvk/preload/geckox/d/b/b/d;

    invoke-virtual {v11, v13}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v11

    filled-new-array/range {p2 .. p2}, [Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/bykv/vk/openvk/preload/b/h$a;->a([Ljava/lang/Object;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v11

    new-instance v14, Lcom/bykv/vk/openvk/preload/b/b/b;

    .line 36
    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v15

    .line 37
    invoke-virtual {v3, v13}, Lcom/bykv/vk/openvk/preload/falconx/a/a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v13

    filled-new-array {v15, v13}, [Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v13

    invoke-direct {v14, v13}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 38
    invoke-virtual {v11, v14}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Lcom/bykv/vk/openvk/preload/b/b/a;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v11

    .line 39
    invoke-virtual {v11}, Lcom/bykv/vk/openvk/preload/b/h$a;->b()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v11

    .line 40
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-static {}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v11

    .line 42
    const-class v13, Lcom/bykv/vk/openvk/preload/geckox/d/b/b/a;

    invoke-virtual {v11, v13}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v11

    new-instance v14, Lcom/bykv/vk/openvk/preload/b/b/b;

    .line 43
    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v15

    .line 44
    invoke-virtual {v3, v13}, Lcom/bykv/vk/openvk/preload/falconx/a/a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v13

    filled-new-array {v15, v13}, [Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v13

    invoke-direct {v14, v13}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 45
    invoke-virtual {v11, v14}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Lcom/bykv/vk/openvk/preload/b/b/a;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v11

    .line 46
    invoke-virtual {v11}, Lcom/bykv/vk/openvk/preload/b/h$a;->b()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v11

    .line 47
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-static {}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v11

    const-class v13, Lcom/bykv/vk/openvk/preload/geckox/d/b/b/f;

    invoke-virtual {v11, v13}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v11

    new-instance v14, Lcom/bykv/vk/openvk/preload/b/b/b;

    .line 49
    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v15

    .line 50
    invoke-virtual {v3, v13}, Lcom/bykv/vk/openvk/preload/falconx/a/a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v13

    filled-new-array {v15, v13}, [Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v13

    invoke-direct {v14, v13}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 51
    invoke-virtual {v11, v14}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Lcom/bykv/vk/openvk/preload/b/b/a;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v11

    .line 52
    invoke-virtual {v11}, Lcom/bykv/vk/openvk/preload/b/h$a;->b()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v11

    .line 53
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-static {}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v11

    const-class v13, Lcom/bykv/vk/openvk/preload/geckox/d/b/b/e;

    invoke-virtual {v11, v13}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v11

    new-instance v13, Lcom/bykv/vk/openvk/preload/b/b/b;

    .line 55
    invoke-static/range {p0 .. p0}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/e/a;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v14

    filled-new-array {v14}, [Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    invoke-virtual {v11, v13}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Lcom/bykv/vk/openvk/preload/b/b/a;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v11

    invoke-virtual {v11}, Lcom/bykv/vk/openvk/preload/b/h$a;->b()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v11

    .line 56
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {v9, v10}, Lcom/bykv/vk/openvk/preload/b/l$a;->a(Ljava/util/List;)Lcom/bykv/vk/openvk/preload/b/l$a;

    .line 58
    const-string v9, "full"

    invoke-virtual {v7, v9}, Lcom/bykv/vk/openvk/preload/b/l$b;->a(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/b/l$a;

    move-result-object v10

    .line 59
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-static {}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v13

    const-class v14, Lcom/bykv/vk/openvk/preload/geckox/d/g;

    invoke-virtual {v13, v14}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v13

    invoke-virtual {v13}, Lcom/bykv/vk/openvk/preload/b/h$a;->b()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-static {}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v13

    const-class v15, Lcom/bykv/vk/openvk/preload/geckox/d/b/a/b;

    invoke-virtual {v13, v15}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v13

    move-object/from16 v16, v4

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/bykv/vk/openvk/preload/b/h$a;->a([Ljava/lang/Object;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v4

    new-instance v13, Lcom/bykv/vk/openvk/preload/b/b/b;

    move-object/from16 p4, v14

    .line 62
    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->b(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v14

    .line 63
    invoke-virtual {v3, v15}, Lcom/bykv/vk/openvk/preload/falconx/a/a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v15

    filled-new-array {v14, v15}, [Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 64
    invoke-virtual {v4, v13}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Lcom/bykv/vk/openvk/preload/b/b/a;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v4

    .line 65
    invoke-virtual {v4}, Lcom/bykv/vk/openvk/preload/b/h$a;->b()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v4

    .line 66
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-static {}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v4

    const-class v13, Lcom/bykv/vk/openvk/preload/geckox/d/b/a/a;

    invoke-virtual {v4, v13}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v4

    new-instance v14, Lcom/bykv/vk/openvk/preload/b/b/b;

    .line 68
    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v15

    .line 69
    invoke-virtual {v3, v13}, Lcom/bykv/vk/openvk/preload/falconx/a/a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v13

    filled-new-array {v15, v13}, [Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v13

    invoke-direct {v14, v13}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 70
    invoke-virtual {v4, v14}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Lcom/bykv/vk/openvk/preload/b/b/a;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v4

    .line 71
    invoke-virtual {v4}, Lcom/bykv/vk/openvk/preload/b/h$a;->b()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v4

    .line 72
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-static {}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v4

    const-class v13, Lcom/bykv/vk/openvk/preload/geckox/d/b/a/d;

    invoke-virtual {v4, v13}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v4

    new-instance v14, Lcom/bykv/vk/openvk/preload/b/b/b;

    .line 74
    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v15

    .line 75
    invoke-virtual {v3, v13}, Lcom/bykv/vk/openvk/preload/falconx/a/a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v13

    filled-new-array {v15, v13}, [Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v13

    invoke-direct {v14, v13}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 76
    invoke-virtual {v4, v14}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Lcom/bykv/vk/openvk/preload/b/b/a;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v4

    .line 77
    invoke-virtual {v4}, Lcom/bykv/vk/openvk/preload/b/h$a;->b()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v4

    .line 78
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-static {}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v4

    const-class v13, Lcom/bykv/vk/openvk/preload/geckox/d/b/a/c;

    invoke-virtual {v4, v13}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v4

    new-instance v13, Lcom/bykv/vk/openvk/preload/b/b/b;

    .line 80
    invoke-static/range {p0 .. p0}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/e/a;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v14

    filled-new-array {v14}, [Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    invoke-virtual {v4, v13}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Lcom/bykv/vk/openvk/preload/b/b/a;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bykv/vk/openvk/preload/b/h$a;->b()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v4

    .line 81
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {v10, v11}, Lcom/bykv/vk/openvk/preload/b/l$a;->a(Ljava/util/List;)Lcom/bykv/vk/openvk/preload/b/l$a;

    .line 83
    const-class v4, Lcom/bykv/vk/openvk/preload/geckox/d/b;

    invoke-virtual {v7, v4}, Lcom/bykv/vk/openvk/preload/b/l$b;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v7

    .line 84
    invoke-virtual {v6, v7}, Lcom/bykv/vk/openvk/preload/b/l$a;->a(Lcom/bykv/vk/openvk/preload/b/h;)Lcom/bykv/vk/openvk/preload/b/l$a;

    move-result-object v6

    .line 85
    invoke-static {}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v7

    const-class v10, Lcom/bykv/vk/openvk/preload/b/f;

    invoke-virtual {v7, v10}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v7

    invoke-static/range {p2 .. p2}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Lcom/bykv/vk/openvk/preload/b/b/a;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bykv/vk/openvk/preload/b/h$a;->b()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bykv/vk/openvk/preload/b/l$a;->a(Lcom/bykv/vk/openvk/preload/b/h;)Lcom/bykv/vk/openvk/preload/b/l$a;

    .line 86
    const-string v6, "branch_single_file"

    invoke-virtual {v5, v6}, Lcom/bykv/vk/openvk/preload/b/l$b;->a(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/b/l$a;

    move-result-object v6

    .line 87
    new-instance v7, Lcom/bykv/vk/openvk/preload/b/l$b;

    invoke-direct {v7}, Lcom/bykv/vk/openvk/preload/b/l$b;-><init>()V

    .line 88
    invoke-virtual {v7, v8}, Lcom/bykv/vk/openvk/preload/b/l$b;->a(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/b/l$a;

    move-result-object v11

    .line 89
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-static {}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v14

    invoke-virtual {v14, v12}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v12

    invoke-virtual {v12}, Lcom/bykv/vk/openvk/preload/b/h$a;->b()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v12

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v12

    const-class v14, Lcom/bykv/vk/openvk/preload/geckox/d/a/b/c;

    invoke-virtual {v12, v14}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v12

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/bykv/vk/openvk/preload/b/h$a;->a([Ljava/lang/Object;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v12

    new-instance v15, Lcom/bykv/vk/openvk/preload/b/b/b;

    move-object/from16 p5, v8

    .line 92
    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->b(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v8

    .line 93
    invoke-virtual {v3, v14}, Lcom/bykv/vk/openvk/preload/falconx/a/a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v14

    filled-new-array {v8, v14}, [Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v8

    invoke-direct {v15, v8}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 94
    invoke-virtual {v12, v15}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Lcom/bykv/vk/openvk/preload/b/b/a;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v8

    .line 95
    invoke-virtual {v8}, Lcom/bykv/vk/openvk/preload/b/h$a;->b()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v8

    .line 96
    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-static {}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v8

    const-class v12, Lcom/bykv/vk/openvk/preload/geckox/d/a/b/b;

    invoke-virtual {v8, v12}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v8

    new-instance v14, Lcom/bykv/vk/openvk/preload/b/b/b;

    .line 98
    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v15

    .line 99
    invoke-virtual {v3, v12}, Lcom/bykv/vk/openvk/preload/falconx/a/a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v12

    filled-new-array {v15, v12}, [Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v12

    invoke-direct {v14, v12}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 100
    invoke-virtual {v8, v14}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Lcom/bykv/vk/openvk/preload/b/b/a;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v8

    .line 101
    invoke-virtual {v8}, Lcom/bykv/vk/openvk/preload/b/h$a;->b()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v8

    .line 102
    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-static {}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v8

    const-class v12, Lcom/bykv/vk/openvk/preload/geckox/d/a/b/d;

    invoke-virtual {v8, v12}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v8

    filled-new-array/range {p2 .. p2}, [Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/bykv/vk/openvk/preload/b/h$a;->a([Ljava/lang/Object;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v8

    new-instance v14, Lcom/bykv/vk/openvk/preload/b/b/b;

    .line 104
    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v15

    .line 105
    invoke-virtual {v3, v12}, Lcom/bykv/vk/openvk/preload/falconx/a/a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v12

    filled-new-array {v15, v12}, [Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v12

    invoke-direct {v14, v12}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 106
    invoke-virtual {v8, v14}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Lcom/bykv/vk/openvk/preload/b/b/a;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v8

    .line 107
    invoke-virtual {v8}, Lcom/bykv/vk/openvk/preload/b/h$a;->b()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v8

    .line 108
    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-static {}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v8

    const-class v12, Lcom/bykv/vk/openvk/preload/geckox/d/a/b/a;

    invoke-virtual {v8, v12}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v8

    new-instance v14, Lcom/bykv/vk/openvk/preload/b/b/b;

    .line 110
    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v15

    .line 111
    invoke-virtual {v3, v12}, Lcom/bykv/vk/openvk/preload/falconx/a/a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v12

    filled-new-array {v15, v12}, [Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v12

    invoke-direct {v14, v12}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 112
    invoke-virtual {v8, v14}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Lcom/bykv/vk/openvk/preload/b/b/a;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v8

    .line 113
    invoke-virtual {v8}, Lcom/bykv/vk/openvk/preload/b/h$a;->b()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v8

    .line 114
    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-static {}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v8

    const-class v12, Lcom/bykv/vk/openvk/preload/geckox/d/a/b/e;

    invoke-virtual {v8, v12}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v8

    new-instance v14, Lcom/bykv/vk/openvk/preload/b/b/b;

    .line 116
    invoke-static/range {p0 .. p0}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/e/a;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v15

    .line 117
    invoke-virtual {v3, v12}, Lcom/bykv/vk/openvk/preload/falconx/a/a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v12

    filled-new-array {v15, v12}, [Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v12

    invoke-direct {v14, v12}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 118
    invoke-virtual {v8, v14}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Lcom/bykv/vk/openvk/preload/b/b/a;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v8

    .line 119
    invoke-virtual {v8}, Lcom/bykv/vk/openvk/preload/b/h$a;->b()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v8

    .line 120
    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {v11, v13}, Lcom/bykv/vk/openvk/preload/b/l$a;->a(Ljava/util/List;)Lcom/bykv/vk/openvk/preload/b/l$a;

    .line 122
    invoke-virtual {v7, v9}, Lcom/bykv/vk/openvk/preload/b/l$b;->a(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/b/l$a;

    move-result-object v8

    .line 123
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-static {}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v12

    move-object/from16 v13, p4

    invoke-virtual {v12, v13}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v12

    invoke-virtual {v12}, Lcom/bykv/vk/openvk/preload/b/h$a;->b()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-static {}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v12

    const-class v13, Lcom/bykv/vk/openvk/preload/geckox/d/a/a/b;

    invoke-virtual {v12, v13}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v12

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/bykv/vk/openvk/preload/b/h$a;->a([Ljava/lang/Object;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v1

    new-instance v12, Lcom/bykv/vk/openvk/preload/b/b/b;

    .line 126
    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->b(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v14

    .line 127
    invoke-virtual {v3, v13}, Lcom/bykv/vk/openvk/preload/falconx/a/a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v13

    filled-new-array {v14, v13}, [Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 128
    invoke-virtual {v1, v12}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Lcom/bykv/vk/openvk/preload/b/b/a;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/preload/b/h$a;->b()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v1

    .line 130
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-static {}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v1

    const-class v12, Lcom/bykv/vk/openvk/preload/geckox/d/a/a/a;

    invoke-virtual {v1, v12}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v1

    new-instance v13, Lcom/bykv/vk/openvk/preload/b/b/b;

    .line 132
    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v14

    .line 133
    invoke-virtual {v3, v12}, Lcom/bykv/vk/openvk/preload/falconx/a/a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v12

    filled-new-array {v14, v12}, [Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v12

    invoke-direct {v13, v12}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 134
    invoke-virtual {v1, v13}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Lcom/bykv/vk/openvk/preload/b/b/a;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/preload/b/h$a;->b()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v1

    .line 136
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-static {}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v1

    const-class v12, Lcom/bykv/vk/openvk/preload/geckox/d/a/a/c;

    invoke-virtual {v1, v12}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v1

    new-instance v13, Lcom/bykv/vk/openvk/preload/b/b/b;

    .line 138
    invoke-static/range {p0 .. p0}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/e/a;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v14

    .line 139
    invoke-virtual {v3, v12}, Lcom/bykv/vk/openvk/preload/falconx/a/a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v3

    filled-new-array {v14, v3}, [Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v3

    invoke-direct {v13, v3}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 140
    invoke-virtual {v1, v13}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Lcom/bykv/vk/openvk/preload/b/b/a;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/preload/b/h$a;->b()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v1

    .line 142
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {v8, v11}, Lcom/bykv/vk/openvk/preload/b/l$a;->a(Ljava/util/List;)Lcom/bykv/vk/openvk/preload/b/l$a;

    .line 144
    invoke-virtual {v7, v4}, Lcom/bykv/vk/openvk/preload/b/l$b;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v1

    .line 145
    invoke-virtual {v6, v1}, Lcom/bykv/vk/openvk/preload/b/l$a;->a(Lcom/bykv/vk/openvk/preload/b/h;)Lcom/bykv/vk/openvk/preload/b/l$a;

    move-result-object v1

    .line 146
    invoke-static {}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Lcom/bykv/vk/openvk/preload/b/b/a;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/preload/b/h$a;->b()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bykv/vk/openvk/preload/b/l$a;->a(Lcom/bykv/vk/openvk/preload/b/h;)Lcom/bykv/vk/openvk/preload/b/l$a;

    .line 147
    const-string v1, "branch_myarchive_file"

    invoke-virtual {v5, v1}, Lcom/bykv/vk/openvk/preload/b/l$b;->a(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/b/l$a;

    move-result-object v1

    .line 148
    new-instance v3, Lcom/bykv/vk/openvk/preload/b/l$b;

    invoke-direct {v3}, Lcom/bykv/vk/openvk/preload/b/l$b;-><init>()V

    move-object/from16 v6, p5

    .line 149
    invoke-virtual {v3, v6}, Lcom/bykv/vk/openvk/preload/b/l$b;->a(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/b/l$a;

    move-result-object v6

    .line 150
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 151
    invoke-virtual {v6, v7}, Lcom/bykv/vk/openvk/preload/b/l$a;->a(Ljava/util/List;)Lcom/bykv/vk/openvk/preload/b/l$a;

    .line 152
    invoke-virtual {v3, v9}, Lcom/bykv/vk/openvk/preload/b/l$b;->a(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/b/l$a;

    move-result-object v6

    .line 153
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 154
    invoke-virtual {v6, v7}, Lcom/bykv/vk/openvk/preload/b/l$a;->a(Ljava/util/List;)Lcom/bykv/vk/openvk/preload/b/l$a;

    .line 155
    invoke-virtual {v3, v4}, Lcom/bykv/vk/openvk/preload/b/l$b;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v3

    .line 156
    invoke-virtual {v1, v3}, Lcom/bykv/vk/openvk/preload/b/l$a;->a(Lcom/bykv/vk/openvk/preload/b/h;)Lcom/bykv/vk/openvk/preload/b/l$a;

    move-result-object v1

    .line 157
    invoke-static {}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Lcom/bykv/vk/openvk/preload/b/b/a;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/preload/b/h$a;->b()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bykv/vk/openvk/preload/b/l$a;->a(Lcom/bykv/vk/openvk/preload/b/h;)Lcom/bykv/vk/openvk/preload/b/l$a;

    .line 158
    const-class v1, Lcom/bykv/vk/openvk/preload/geckox/d/a;

    invoke-virtual {v5, v1}, Lcom/bykv/vk/openvk/preload/b/l$b;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v1

    move-object/from16 v3, v16

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-static {}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v1

    const-class v4, Lcom/bykv/vk/openvk/preload/geckox/d/i;

    invoke-virtual {v1, v4}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v1

    .line 160
    new-instance v4, Lcom/bykv/vk/openvk/preload/geckox/h/a$2;

    invoke-direct {v4, v0, v2}, Lcom/bykv/vk/openvk/preload/geckox/h/a$2;-><init>(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)V

    .line 161
    invoke-virtual {v1, v4}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Lcom/bykv/vk/openvk/preload/b/b/a;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/b/h$a;->b()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 162
    invoke-static {v3, v0}, Lcom/bykv/vk/openvk/preload/b/c;->a(Ljava/util/List;Lcom/bykv/vk/openvk/preload/b/e;)Lcom/bykv/vk/openvk/preload/b/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/bykv/vk/openvk/preload/a/i;Lcom/bykv/vk/openvk/preload/a/d/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    sget-object v0, Lcom/bykv/vk/openvk/preload/a/b/a/m;->A:Lcom/bykv/vk/openvk/preload/a/r;

    invoke-virtual {v0, p1, p0}, Lcom/bykv/vk/openvk/preload/a/r;->a(Lcom/bykv/vk/openvk/preload/a/d/c;Ljava/lang/Object;)V

    return-void
.end method

.method private static b(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/h/a$5;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/bykv/vk/openvk/preload/geckox/h/a$5;-><init>(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
