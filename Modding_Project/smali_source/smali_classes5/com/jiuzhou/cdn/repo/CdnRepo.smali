.class public final Lcom/jiuzhou/cdn/repo/CdnRepo;
.super Ljava/lang/Object;
.source "CdnRepo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCdnRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CdnRepo.kt\ncom/jiuzhou/cdn/repo/CdnRepo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,169:1\n1863#2,2:170\n*S KotlinDebug\n*F\n+ 1 CdnRepo.kt\ncom/jiuzhou/cdn/repo/CdnRepo\n*L\n50#1:170,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/jiuzhou/cdn/repo/CdnRepo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static e:J

.field private static final f:Lcom/google/gson/Gson;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/jiuzhou/cdn/repo/CdnRepo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/jiuzhou/cdn/repo/CdnRepo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/jiuzhou/cdn/repo/CdnRepo;->a:Lcom/jiuzhou/cdn/repo/CdnRepo;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    sput-object v0, Lcom/jiuzhou/cdn/repo/CdnRepo;->b:Ljava/lang/String;

    .line 11
    .line 12
    sput-object v0, Lcom/jiuzhou/cdn/repo/CdnRepo;->c:Ljava/lang/String;

    .line 13
    .line 14
    sput-object v0, Lcom/jiuzhou/cdn/repo/CdnRepo;->d:Ljava/lang/String;

    .line 15
    .line 16
    const-wide/16 v0, -0x1

    .line 17
    .line 18
    sput-wide v0, Lcom/jiuzhou/cdn/repo/CdnRepo;->e:J

    .line 19
    .line 20
    new-instance v0, Lcom/google/gson/Gson;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/jiuzhou/cdn/repo/CdnRepo;->f:Lcom/google/gson/Gson;

    .line 26
    .line 27
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

.method public static synthetic b(Lcom/jiuzhou/cdn/repo/CdnRepo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/jiuzhou/cdn/model/request/CdnEvent;
    .locals 15

    move/from16 v0, p16

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object/from16 v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object/from16 v3, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object/from16 v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_3

    const-wide/16 v5, -0x1

    goto :goto_3

    :cond_3
    move-wide/from16 v5, p5

    :goto_3
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_4

    move-object v7, v2

    goto :goto_4

    :cond_4
    move-object/from16 v7, p7

    :goto_4
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_5

    move-object v8, v2

    goto :goto_5

    :cond_5
    move-object/from16 v8, p8

    :goto_5
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_6

    move-object v9, v2

    goto :goto_6

    :cond_6
    move-object/from16 v9, p9

    :goto_6
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_7

    move-object v10, v2

    goto :goto_7

    :cond_7
    move-object/from16 v10, p10

    :goto_7
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_8

    move-object v11, v2

    goto :goto_8

    :cond_8
    move-object/from16 v11, p11

    :goto_8
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_9

    move-object v12, v2

    goto :goto_9

    :cond_9
    move-object/from16 v12, p12

    :goto_9
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_a

    const/4 v13, -0x1

    goto :goto_a

    :cond_a
    move/from16 v13, p13

    :goto_a
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_b

    move-object v14, v2

    goto :goto_b

    :cond_b
    move-object/from16 v14, p14

    :goto_b
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_c

    goto :goto_c

    :cond_c
    move-object/from16 v2, p15

    :goto_c
    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-object/from16 p4, v1

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    move-wide/from16 p7, v5

    move-object/from16 p9, v7

    move-object/from16 p10, v8

    move-object/from16 p11, v9

    move-object/from16 p12, v10

    move-object/from16 p13, v11

    move-object/from16 p14, v12

    move/from16 p15, v13

    move-object/from16 p16, v14

    move-object/from16 p17, v2

    .line 1
    invoke-virtual/range {p2 .. p17}, Lcom/jiuzhou/cdn/repo/CdnRepo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/jiuzhou/cdn/model/request/CdnEvent;

    move-result-object v0

    return-object v0
.end method

.method private final c(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lbc/f;->a:Lbc/f;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Lbc/f;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p5}, Lbc/a;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-static {p3}, Lbc/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    invoke-static {p1, p2, p3}, Lbc/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string p2, "encrypt(...)"

    .line 42
    .line 43
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/jiuzhou/cdn/model/request/CdnEvent;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p1

    const-string v1, "eventType"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/jiuzhou/cdn/model/request/CdnEvent;

    invoke-direct {v1}, Lcom/jiuzhou/cdn/model/request/CdnEvent;-><init>()V

    .line 2
    sget-object v2, Lbc/c;->a:Lbc/c;

    invoke-virtual {v2}, Lbc/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jiuzhou/cdn/model/request/CdnEvent;->setBrand(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Lbc/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jiuzhou/cdn/model/request/CdnEvent;->setModel(Ljava/lang/String;)V

    .line 4
    sget-object v3, Lcom/jiuzhou/cdn/repo/CdnRepo;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/jiuzhou/cdn/model/request/CdnEvent;->setUid(Ljava/lang/String;)V

    .line 5
    sget-object v3, Lcom/jiuzhou/cdn/repo/CdnRepo;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/jiuzhou/cdn/model/request/CdnEvent;->setDevice_id(Ljava/lang/String;)V

    .line 6
    const-string v3, "android"

    invoke-virtual {v1, v3}, Lcom/jiuzhou/cdn/model/request/CdnEvent;->setOs(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Lbc/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jiuzhou/cdn/model/request/CdnEvent;->setOs_version(Ljava/lang/String;)V

    .line 8
    sget-object v3, Lcom/jiuzhou/cdn/repo/CdnRepo;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/jiuzhou/cdn/model/request/CdnEvent;->setCountry_code(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Lbc/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiuzhou/cdn/model/request/CdnEvent;->setApp_version(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, p1}, Lcom/jiuzhou/cdn/model/request/CdnEvent;->setEvent_type(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/jiuzhou/cdn/model/request/CdnEvent;->setLocal_time(J)V

    .line 12
    sget-wide v2, Lcom/jiuzhou/cdn/repo/CdnRepo;->e:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v1}, Lcom/jiuzhou/cdn/model/request/CdnEvent;->getLocal_time()J

    move-result-wide v2

    sget-wide v6, Lcom/jiuzhou/cdn/repo/CdnRepo;->e:J

    add-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Lcom/jiuzhou/cdn/model/request/CdnEvent;->setCheck_time(J)V

    .line 14
    :cond_0
    invoke-virtual {v1}, Lcom/jiuzhou/cdn/model/request/CdnEvent;->getCheck_time()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/jiuzhou/cdn/model/request/CdnEvent;->getLocal_time()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/jiuzhou/cdn/model/request/CdnEvent;->getCheck_time()J

    move-result-wide v2

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/jiuzhou/cdn/model/request/CdnEvent;->setEvent_time(J)V

    move-object v0, p2

    .line 15
    invoke-virtual {v1, p2}, Lcom/jiuzhou/cdn/model/request/CdnEvent;->setCdn_domain(Ljava/lang/String;)V

    move-object v0, p3

    .line 16
    invoke-virtual {v1, p3}, Lcom/jiuzhou/cdn/model/request/CdnEvent;->setResource(Ljava/lang/String;)V

    move-object v0, p4

    .line 17
    invoke-virtual {v1, p4}, Lcom/jiuzhou/cdn/model/request/CdnEvent;->setResolution(Ljava/lang/String;)V

    move-wide v2, p5

    .line 18
    invoke-virtual {v1, p5, p6}, Lcom/jiuzhou/cdn/model/request/CdnEvent;->setEvent_duration(J)V

    move-object v0, p7

    .line 19
    invoke-virtual {v1, p7}, Lcom/jiuzhou/cdn/model/request/CdnEvent;->setBatch_id(Ljava/lang/String;)V

    move-object/from16 v0, p8

    .line 20
    invoke-virtual {v1, v0}, Lcom/jiuzhou/cdn/model/request/CdnEvent;->setReq_header(Ljava/lang/String;)V

    move-object/from16 v0, p9

    .line 21
    invoke-virtual {v1, v0}, Lcom/jiuzhou/cdn/model/request/CdnEvent;->setRes_header(Ljava/lang/String;)V

    move-object/from16 v0, p10

    .line 22
    invoke-virtual {v1, v0}, Lcom/jiuzhou/cdn/model/request/CdnEvent;->setErr_code(Ljava/lang/String;)V

    move-object/from16 v0, p11

    .line 23
    invoke-virtual {v1, v0}, Lcom/jiuzhou/cdn/model/request/CdnEvent;->setHttp_status_code(Ljava/lang/String;)V

    move-object/from16 v0, p12

    .line 24
    invoke-virtual {v1, v0}, Lcom/jiuzhou/cdn/model/request/CdnEvent;->setBlock_type(Ljava/lang/String;)V

    move/from16 v0, p13

    .line 25
    invoke-virtual {v1, v0}, Lcom/jiuzhou/cdn/model/request/CdnEvent;->setVideo_duration(I)V

    move-object/from16 v0, p14

    .line 26
    invoke-virtual {v1, v0}, Lcom/jiuzhou/cdn/model/request/CdnEvent;->setNetwork_type(Ljava/lang/String;)V

    move-object/from16 v0, p15

    .line 27
    invoke-virtual {v1, v0}, Lcom/jiuzhou/cdn/model/request/CdnEvent;->setRemark(Ljava/lang/String;)V

    .line 28
    const-string v0, "1.42.3.103"

    invoke-virtual {v1, v0}, Lcom/jiuzhou/cdn/model/request/CdnEvent;->setPlay_sdk_version(Ljava/lang/String;)V

    .line 29
    const-string v0, "1.2.8"

    invoke-virtual {v1, v0}, Lcom/jiuzhou/cdn/model/request/CdnEvent;->setCollect_sdk_version(Ljava/lang/String;)V

    return-object v1
.end method

.method public final d(Lrs/c;)Ljava/lang/Object;
    .locals 6
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Ljava/util/List<",
            "Lcom/jiuzhou/cdn/model/CdnInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/jiuzhou/cdn/repo/CdnRepo$getCdnListAsync$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/jiuzhou/cdn/repo/CdnRepo$getCdnListAsync$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/jiuzhou/cdn/repo/CdnRepo$getCdnListAsync$1;->j:I

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
    iput v1, v0, Lcom/jiuzhou/cdn/repo/CdnRepo$getCdnListAsync$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/jiuzhou/cdn/repo/CdnRepo$getCdnListAsync$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/jiuzhou/cdn/repo/CdnRepo$getCdnListAsync$1;-><init>(Lcom/jiuzhou/cdn/repo/CdnRepo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/jiuzhou/cdn/repo/CdnRepo$getCdnListAsync$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/jiuzhou/cdn/repo/CdnRepo$getCdnListAsync$1;->j:I

    .line 32
    .line 33
    const-string v3, "CdnRepo"

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    const/4 v5, 0x0

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    if-ne v2, v4, :cond_1

    .line 40
    .line 41
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catch_0
    move-exception p1

    .line 46
    goto :goto_2

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :try_start_1
    sget-object p1, Lyb/b;->a:Lyb/b$a;

    .line 59
    .line 60
    invoke-virtual {p1}, Lyb/b$a;->b()Lyb/b;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput v4, v0, Lcom/jiuzhou/cdn/repo/CdnRepo$getCdnListAsync$1;->j:I

    .line 65
    .line 66
    invoke-interface {p1, v0}, Lyb/b;->b(Lrs/c;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-ne p1, v1, :cond_3

    .line 71
    .line 72
    return-object v1

    .line 73
    :cond_3
    :goto_1
    check-cast p1, Lac/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :goto_2
    sget-object v0, Lbc/e;->a:Lbc/e$a;

    .line 77
    .line 78
    const-string v1, "httpLog: getCdnList"

    .line 79
    .line 80
    invoke-virtual {v0, v3, v1, p1}, Lbc/e$a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    move-object p1, v5

    .line 84
    :goto_3
    sget-object v0, Lbc/e;->a:Lbc/e$a;

    .line 85
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v2, "httpLog: "

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    if-eqz p1, :cond_4

    .line 97
    .line 98
    invoke-virtual {p1}, Lac/a;->b()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Ljava/util/List;

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_4
    move-object v2, v5

    .line 106
    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v0, v3, v1}, Lbc/e$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    if-eqz p1, :cond_5

    .line 117
    .line 118
    invoke-static {p1}, Lac/b;->a(Lac/a;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_5

    .line 123
    .line 124
    invoke-virtual {p1}, Lac/a;->b()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    return-object p1

    .line 129
    :cond_5
    return-object v5
.end method

.method public final e(Ljava/util/List;Lrs/c;)Ljava/lang/Object;
    .locals 21
    .param p1    # Ljava/util/List;
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
            "Ljava/util/List<",
            "Lcom/jiuzhou/cdn/model/CdnInfo;",
            ">;",
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
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    move-object/from16 v1, p1

    .line 7
    .line 8
    check-cast v1, Ljava/lang/Iterable;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/jiuzhou/cdn/model/CdnInfo;

    .line 25
    .line 26
    sget-object v3, Lcom/jiuzhou/cdn/repo/CdnRepo;->a:Lcom/jiuzhou/cdn/repo/CdnRepo;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/jiuzhou/cdn/model/CdnInfo;->getCdn()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v2}, Lcom/jiuzhou/cdn/model/CdnInfo;->getPath()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-virtual {v2}, Lcom/jiuzhou/cdn/model/CdnInfo;->getLatency()Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 43
    .line 44
    .line 45
    move-result-wide v7

    .line 46
    :goto_1
    move-wide v8, v7

    .line 47
    goto :goto_2

    .line 48
    :cond_0
    const-wide/32 v7, 0xea60

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :goto_2
    const/16 v19, 0x3fe8

    .line 53
    .line 54
    const/16 v20, 0x0

    .line 55
    .line 56
    const-string v4, "EVENT_VIDEO_ELAPSED_TIME"

    .line 57
    .line 58
    const/4 v7, 0x0

    .line 59
    const/4 v10, 0x0

    .line 60
    const/4 v11, 0x0

    .line 61
    const/4 v12, 0x0

    .line 62
    const/4 v13, 0x0

    .line 63
    const/4 v14, 0x0

    .line 64
    const/4 v15, 0x0

    .line 65
    const/16 v16, 0x0

    .line 66
    .line 67
    const/16 v17, 0x0

    .line 68
    .line 69
    const/16 v18, 0x0

    .line 70
    .line 71
    invoke-static/range {v3 .. v20}, Lcom/jiuzhou/cdn/repo/CdnRepo;->b(Lcom/jiuzhou/cdn/repo/CdnRepo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/jiuzhou/cdn/model/request/CdnEvent;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    move-object/from16 v2, p0

    .line 80
    .line 81
    move-object/from16 v3, p2

    .line 82
    .line 83
    invoke-virtual {v2, v0, v3}, Lcom/jiuzhou/cdn/repo/CdnRepo;->f(Ljava/util/List;Lrs/c;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-ne v0, v1, :cond_2

    .line 92
    .line 93
    return-object v0

    .line 94
    :cond_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 95
    .line 96
    return-object v0
.end method

.method public final f(Ljava/util/List;Lrs/c;)Ljava/lang/Object;
    .locals 16
    .param p1    # Ljava/util/List;
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
            "Ljava/util/List<",
            "Lcom/jiuzhou/cdn/model/request/CdnEvent;",
            ">;",
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
    move-object/from16 v0, p2

    .line 2
    .line 3
    instance-of v1, v0, Lcom/jiuzhou/cdn/repo/CdnRepo$logEvents$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/jiuzhou/cdn/repo/CdnRepo$logEvents$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/jiuzhou/cdn/repo/CdnRepo$logEvents$1;->j:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/jiuzhou/cdn/repo/CdnRepo$logEvents$1;->j:I

    .line 20
    .line 21
    move-object/from16 v8, p0

    .line 22
    .line 23
    :goto_0
    move-object v15, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance v1, Lcom/jiuzhou/cdn/repo/CdnRepo$logEvents$1;

    .line 26
    .line 27
    move-object/from16 v8, p0

    .line 28
    .line 29
    invoke-direct {v1, v8, v0}, Lcom/jiuzhou/cdn/repo/CdnRepo$logEvents$1;-><init>(Lcom/jiuzhou/cdn/repo/CdnRepo;Lrs/c;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :goto_1
    iget-object v0, v15, Lcom/jiuzhou/cdn/repo/CdnRepo$logEvents$1;->h:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget v2, v15, Lcom/jiuzhou/cdn/repo/CdnRepo$logEvents$1;->j:I

    .line 40
    .line 41
    const-string v14, "CdnRepo"

    .line 42
    .line 43
    const/4 v9, 0x1

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    if-ne v2, v9, :cond_1

    .line 47
    .line 48
    :try_start_0
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    move-object v2, v14

    .line 52
    goto :goto_2

    .line 53
    :catch_0
    move-exception v0

    .line 54
    move-object v2, v14

    .line 55
    goto :goto_3

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_2
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_3
    :try_start_1
    new-instance v10, Lcom/jiuzhou/cdn/model/request/LogEventCdnReq;

    .line 77
    .line 78
    move-object/from16 v0, p1

    .line 79
    .line 80
    invoke-direct {v10, v0}, Lcom/jiuzhou/cdn/model/request/LogEventCdnReq;-><init>(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    sget-object v0, Lcom/jiuzhou/cdn/repo/CdnRepo;->f:Lcom/google/gson/Gson;

    .line 84
    .line 85
    invoke-virtual {v0, v10}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    sget-object v0, Lbc/c;->a:Lbc/c;

    .line 90
    .line 91
    invoke-virtual {v0}, Lbc/c;->a()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-nez v0, :cond_4

    .line 96
    .line 97
    const-string v0, ""

    .line 98
    .line 99
    :cond_4
    move-object v4, v0

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 101
    .line 102
    .line 103
    move-result-wide v11

    .line 104
    sget-object v13, Lcom/jiuzhou/cdn/repo/CdnRepo;->d:Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    move-object/from16 v2, p0

    .line 110
    .line 111
    move-wide v5, v11

    .line 112
    move-object v7, v13

    .line 113
    invoke-direct/range {v2 .. v7}, Lcom/jiuzhou/cdn/repo/CdnRepo;->c(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    sget-object v2, Lyb/b;->a:Lyb/b$a;

    .line 118
    .line 119
    invoke-virtual {v2}, Lyb/b$a;->b()Lyb/b;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    iput v9, v15, Lcom/jiuzhou/cdn/repo/CdnRepo$logEvents$1;->j:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 124
    .line 125
    move-object v9, v2

    .line 126
    move-object v2, v14

    .line 127
    move-object v14, v0

    .line 128
    :try_start_2
    invoke-interface/range {v9 .. v15}, Lyb/b;->a(Lcom/jiuzhou/cdn/model/request/LogEventCdnReq;JLjava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    if-ne v0, v1, :cond_5

    .line 133
    .line 134
    return-object v1

    .line 135
    :cond_5
    :goto_2
    sget-object v1, Lbc/e;->a:Lbc/e$a;

    .line 136
    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v4, "logEvents result -> "

    .line 143
    .line 144
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v1, v2, v0}, Lbc/e$a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 155
    .line 156
    .line 157
    goto :goto_4

    .line 158
    :catch_1
    move-exception v0

    .line 159
    :goto_3
    sget-object v1, Lbc/e;->a:Lbc/e$a;

    .line 160
    .line 161
    const-string v3, "logEvents failed -> "

    .line 162
    .line 163
    invoke-virtual {v1, v2, v3, v0}, Lbc/e$a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    .line 165
    .line 166
    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 167
    .line 168
    return-object v0
.end method

.method public final g(J)V
    .locals 0

    .line 1
    sput-wide p1, Lcom/jiuzhou/cdn/repo/CdnRepo;->e:J

    .line 2
    .line 3
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/jiuzhou/cdn/repo/CdnRepo;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/jiuzhou/cdn/repo/CdnRepo;->d:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/jiuzhou/cdn/repo/CdnRepo;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;
    .locals 18
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
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
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p6

    .line 8
    .line 9
    const-string v4, "uploadLogs failed -> "

    .line 10
    .line 11
    const-string v5, ") logKey("

    .line 12
    .line 13
    const-string v6, ") fileName("

    .line 14
    .line 15
    sget-object v7, Lbc/g;->a:Lbc/g;

    .line 16
    .line 17
    invoke-static/range {p3 .. p3}, Lws/f;->h(Ljava/io/File;)[B

    .line 18
    .line 19
    .line 20
    move-result-object v8

    .line 21
    invoke-virtual {v7, v8}, Lbc/g;->b([B)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    sget-object v8, Lokhttp3/HttpUrl;->k:Lokhttp3/HttpUrl$Companion;

    .line 26
    .line 27
    const-string v9, "https://cdn-v2.shorttv.live/api/log/upload"

    .line 28
    .line 29
    invoke-virtual {v8, v9}, Lokhttp3/HttpUrl$Companion;->f(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    if-eqz v8, :cond_0

    .line 34
    .line 35
    invoke-virtual {v8}, Lokhttp3/HttpUrl;->k()Lokhttp3/HttpUrl$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    if-eqz v8, :cond_0

    .line 40
    .line 41
    const-string v9, "uid"

    .line 42
    .line 43
    invoke-virtual {v8, v9, v0}, Lokhttp3/HttpUrl$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 44
    .line 45
    .line 46
    const-string v9, "logFileName"

    .line 47
    .line 48
    invoke-virtual {v8, v9, v1}, Lokhttp3/HttpUrl$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 49
    .line 50
    .line 51
    const-string v9, "sha256"

    .line 52
    .line 53
    invoke-virtual {v8, v9, v7}, Lokhttp3/HttpUrl$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 54
    .line 55
    .line 56
    const-string v9, "logKey"

    .line 57
    .line 58
    invoke-virtual {v8, v9, v2}, Lokhttp3/HttpUrl$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 v8, 0x0

    .line 63
    :goto_0
    const-string v14, "CdnRepo"

    .line 64
    .line 65
    if-nez v8, :cond_2

    .line 66
    .line 67
    sget-object v0, Lbc/e;->a:Lbc/e$a;

    .line 68
    .line 69
    const-string v1, "uploadLogs failed -> urlBuilder is null"

    .line 70
    .line 71
    invoke-virtual {v0, v14, v1}, Lbc/e$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    if-eqz v3, :cond_1

    .line 75
    .line 76
    invoke-interface {v3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    :cond_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 80
    .line 81
    return-object v0

    .line 82
    :cond_2
    sget-object v9, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 83
    .line 84
    sget-object v10, Lokhttp3/MediaType;->e:Lokhttp3/MediaType$Companion;

    .line 85
    .line 86
    const-string v11, "application/octet-stream"

    .line 87
    .line 88
    invoke-virtual {v10, v11}, Lokhttp3/MediaType$Companion;->b(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    move-object/from16 v12, p3

    .line 93
    .line 94
    invoke-virtual {v9, v10, v12}, Lokhttp3/RequestBody$Companion;->c(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    .line 95
    .line 96
    .line 97
    move-result-object v13

    .line 98
    sget-object v9, Lbc/c;->a:Lbc/c;

    .line 99
    .line 100
    invoke-virtual {v9}, Lbc/c;->a()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    if-nez v9, :cond_3

    .line 105
    .line 106
    const-string v9, ""

    .line 107
    .line 108
    :cond_3
    move-object v11, v9

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 110
    .line 111
    .line 112
    move-result-wide v16

    .line 113
    sget-object v10, Lcom/jiuzhou/cdn/repo/CdnRepo;->d:Ljava/lang/String;

    .line 114
    .line 115
    move-object/from16 v9, p0

    .line 116
    .line 117
    move-object/from16 p7, v10

    .line 118
    .line 119
    move-object v10, v7

    .line 120
    move-object v15, v13

    .line 121
    move-wide/from16 v12, v16

    .line 122
    .line 123
    move-object v3, v14

    .line 124
    move-object/from16 v14, p7

    .line 125
    .line 126
    invoke-direct/range {v9 .. v14}, Lcom/jiuzhou/cdn/repo/CdnRepo;->c(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v9

    .line 130
    new-instance v10, Lokhttp3/Request$Builder;

    .line 131
    .line 132
    invoke-direct {v10}, Lokhttp3/Request$Builder;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v8}, Lokhttp3/HttpUrl$Builder;->c()Lokhttp3/HttpUrl;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    invoke-virtual {v10, v8}, Lokhttp3/Request$Builder;->l(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    const-string v10, "localTime"

    .line 144
    .line 145
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v11

    .line 149
    invoke-virtual {v8, v10, v11}, Lokhttp3/Request$Builder;->e(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    const-string v10, "deviceId"

    .line 154
    .line 155
    move-object/from16 v11, p7

    .line 156
    .line 157
    invoke-virtual {v8, v10, v11}, Lokhttp3/Request$Builder;->e(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    const-string v10, "checksum"

    .line 162
    .line 163
    invoke-virtual {v8, v10, v9}, Lokhttp3/Request$Builder;->e(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    invoke-virtual {v8, v15}, Lokhttp3/Request$Builder;->h(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    invoke-virtual {v8}, Lokhttp3/Request$Builder;->b()Lokhttp3/Request;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    :try_start_0
    sget-object v9, Lbc/e;->a:Lbc/e$a;

    .line 176
    .line 177
    new-instance v10, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    const-string v11, "start uploadLogs -> uid("

    .line 183
    .line 184
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v11, ") sha256("

    .line 197
    .line 198
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v7, ") fileSize("

    .line 205
    .line 206
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->length()J

    .line 210
    .line 211
    .line 212
    move-result-wide v11

    .line 213
    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const/16 v7, 0x29

    .line 223
    .line 224
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v10

    .line 231
    invoke-virtual {v9, v3, v10}, Lbc/e$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    sget-object v10, Lzb/f;->a:Lzb/f;

    .line 235
    .line 236
    invoke-virtual {v10}, Lzb/f;->f()Lokhttp3/OkHttpClient;

    .line 237
    .line 238
    .line 239
    move-result-object v10

    .line 240
    invoke-virtual {v10, v8}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/Call;

    .line 241
    .line 242
    .line 243
    move-result-object v8

    .line 244
    invoke-interface {v8}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 245
    .line 246
    .line 247
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 248
    :try_start_1
    invoke-virtual {v8}, Lokhttp3/Response;->isSuccessful()Z

    .line 249
    .line 250
    .line 251
    move-result v10

    .line 252
    if-eqz v10, :cond_6

    .line 253
    .line 254
    new-instance v10, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .line 258
    .line 259
    const-string v11, "uploadLogs success -> uid("

    .line 260
    .line 261
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-virtual {v9, v3, v0}, Lbc/e$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    if-eqz p5, :cond_4

    .line 290
    .line 291
    invoke-interface/range {p5 .. p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 295
    .line 296
    :cond_4
    move-object/from16 v1, p6

    .line 297
    .line 298
    move-object v2, v3

    .line 299
    :cond_5
    :goto_1
    const/4 v0, 0x0

    .line 300
    goto :goto_3

    .line 301
    :catchall_0
    move-exception v0

    .line 302
    move-object/from16 v1, p6

    .line 303
    .line 304
    move-object v2, v3

    .line 305
    :goto_2
    move-object v3, v0

    .line 306
    goto :goto_4

    .line 307
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v8}, Lokhttp3/Response;->w()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-virtual {v9, v3, v0}, Lbc/e$a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    .line 328
    .line 329
    move-object/from16 v1, p6

    .line 330
    .line 331
    move-object v2, v3

    .line 332
    if-eqz v1, :cond_5

    .line 333
    .line 334
    :try_start_2
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 338
    .line 339
    goto :goto_1

    .line 340
    :catchall_1
    move-exception v0

    .line 341
    goto :goto_2

    .line 342
    :goto_3
    :try_start_3
    invoke-static {v8, v0}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 343
    .line 344
    .line 345
    goto :goto_6

    .line 346
    :catch_0
    move-exception v0

    .line 347
    goto :goto_5

    .line 348
    :goto_4
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 349
    :catchall_2
    move-exception v0

    .line 350
    move-object v5, v0

    .line 351
    :try_start_5
    invoke-static {v8, v3}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 352
    .line 353
    .line 354
    throw v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 355
    :catch_1
    move-exception v0

    .line 356
    move-object/from16 v1, p6

    .line 357
    .line 358
    move-object v2, v3

    .line 359
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    sget-object v3, Lbc/e;->a:Lbc/e$a;

    .line 379
    .line 380
    invoke-virtual {v3, v2, v0}, Lbc/e$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    if-eqz v1, :cond_7

    .line 384
    .line 385
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    :cond_7
    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 389
    .line 390
    return-object v0
.end method
