.class public final Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nIlrdEventsRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IlrdEventsRepository.kt\ncom/moloco/sdk/internal/ilrd/IlrdEventsRepository\n+ 2 CoroutineUtils.kt\ncom/moloco/sdk/internal/utils/CoroutineUtilsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,430:1\n17#2,8:431\n17#2,8:439\n1#3:447\n*S KotlinDebug\n*F\n+ 1 IlrdEventsRepository.kt\ncom/moloco/sdk/internal/ilrd/IlrdEventsRepository\n*L\n193#1:431,8\n243#1:439,8\n*E\n"
    }
.end annotation


# static fields
.field public static final s:Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final t:I


# instance fields
.field public final a:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:J

.field public final e:I

.field public final f:J

.field public final g:J

.field public final h:Lcom/moloco/sdk/internal/services/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/moloco/sdk/internal/services/p;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lcom/moloco/sdk/internal/services/h0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lcom/moloco/sdk/internal/ilrd/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Lcom/moloco/sdk/internal/ilrd/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:Lcom/moloco/sdk/internal/ilrd/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final p:Lqt/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Lcom/moloco/sdk/internal/ilrd/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->s:Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$b;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->t:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lgt/g0;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;JIJJLcom/moloco/sdk/internal/services/j;Landroidx/lifecycle/Lifecycle;Lcom/moloco/sdk/internal/services/p;Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/internal/services/h0;Lcom/moloco/sdk/internal/ilrd/d;Lcom/moloco/sdk/internal/ilrd/d;Lcom/moloco/sdk/internal/ilrd/d;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p6

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    move-object/from16 v7, p13

    move-object/from16 v8, p14

    move-object/from16 v9, p15

    move-object/from16 v10, p16

    move-object/from16 v11, p17

    move-object/from16 v12, p18

    move-object/from16 v13, p19

    const-string v14, "scope"

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v14, "url"

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "persistentHttpRequest"

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v14, "timeProvider"

    invoke-static {v5, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "processLifeycle"

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "advertisingIdService"

    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "pubId"

    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "appId"

    invoke-static {v9, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "dataStoreService"

    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "sessionExpiryScheduler"

    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "sessionMaxLengthScheduler"

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "scheduledUploadScheduler"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v1, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->a:Lgt/g0;

    .line 4
    iput-object v2, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->b:Ljava/lang/String;

    .line 5
    iput-object v3, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;

    move-wide/from16 v14, p4

    .line 6
    iput-wide v14, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->d:J

    .line 7
    iput v4, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->e:I

    move-wide/from16 v14, p7

    .line 8
    iput-wide v14, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->f:J

    move-wide/from16 v14, p9

    .line 9
    iput-wide v14, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->g:J

    .line 10
    iput-object v5, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->h:Lcom/moloco/sdk/internal/services/j;

    .line 11
    iput-object v7, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->i:Lcom/moloco/sdk/internal/services/p;

    .line 12
    iput-object v8, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->j:Ljava/lang/String;

    .line 13
    iput-object v9, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->k:Ljava/lang/String;

    .line 14
    iput-object v10, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->l:Lcom/moloco/sdk/internal/services/h0;

    .line 15
    iput-object v11, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->m:Lcom/moloco/sdk/internal/ilrd/d;

    .line 16
    iput-object v12, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->n:Lcom/moloco/sdk/internal/ilrd/d;

    .line 17
    iput-object v13, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->o:Lcom/moloco/sdk/internal/ilrd/d;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 18
    invoke-static {v3, v5, v7}, Lqt/d;->b(ZILjava/lang/Object;)Lqt/a;

    move-result-object v3

    iput-object v3, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->p:Lqt/a;

    .line 19
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->r:Ljava/util/List;

    .line 20
    sget-object v3, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ILRD repository initialized - url="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uploadInterval="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p7 .. p8}, Lkotlin/time/b;->K(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", maxBatchSize="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sessionExpiry="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p5}, Lkotlin/time/b;->K(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", maxSessionLength="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p9 .. p10}, Lkotlin/time/b;->K(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xc

    const/4 v5, 0x0

    const-string v8, "IlrdEventsRepository"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 p2, v3

    move-object/from16 p3, v8

    move-object/from16 p4, v2

    move-object/from16 p5, v9

    move/from16 p6, v10

    move/from16 p7, v4

    move-object/from16 p8, v5

    invoke-static/range {p2 .. p8}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 21
    new-instance v2, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$a;

    invoke-direct {v2, v0, v6, v7}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$a;-><init>(Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;Landroidx/lifecycle/Lifecycle;Lrs/c;)V

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 p2, v5

    move-object/from16 p3, v6

    move-object/from16 p4, v2

    move/from16 p5, v3

    move-object/from16 p6, v4

    invoke-static/range {p1 .. p6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    return-void
.end method

.method public synthetic constructor <init>(Lgt/g0;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;JIJJLcom/moloco/sdk/internal/services/j;Landroidx/lifecycle/Lifecycle;Lcom/moloco/sdk/internal/services/p;Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/internal/services/h0;Lcom/moloco/sdk/internal/ilrd/d;Lcom/moloco/sdk/internal/ilrd/d;Lcom/moloco/sdk/internal/ilrd/d;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 21

    move-object/from16 v1, p1

    move-object/from16 v11, p11

    move/from16 v0, p20

    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_0

    .line 22
    new-instance v2, Lcom/moloco/sdk/internal/ilrd/d;

    const-string v3, "SessionExpiryScheduler"

    invoke-direct {v2, v1, v11, v3}, Lcom/moloco/sdk/internal/ilrd/d;-><init>(Lgt/g0;Lcom/moloco/sdk/internal/services/j;Ljava/lang/String;)V

    move-object/from16 v17, v2

    goto :goto_0

    :cond_0
    move-object/from16 v17, p17

    :goto_0
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_1

    .line 23
    new-instance v2, Lcom/moloco/sdk/internal/ilrd/d;

    const-string v3, "SessionMaxLengthScheduler"

    invoke-direct {v2, v1, v11, v3}, Lcom/moloco/sdk/internal/ilrd/d;-><init>(Lgt/g0;Lcom/moloco/sdk/internal/services/j;Ljava/lang/String;)V

    move-object/from16 v18, v2

    goto :goto_1

    :cond_1
    move-object/from16 v18, p18

    :goto_1
    const v2, 0x8000

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 24
    new-instance v0, Lcom/moloco/sdk/internal/ilrd/d;

    const-string v2, "UploadIntervalScheduler"

    invoke-direct {v0, v1, v11, v2}, Lcom/moloco/sdk/internal/ilrd/d;-><init>(Lgt/g0;Lcom/moloco/sdk/internal/services/j;Ljava/lang/String;)V

    move-object/from16 v19, v0

    goto :goto_2

    :cond_2
    move-object/from16 v19, p19

    :goto_2
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    .line 25
    invoke-direct/range {v0 .. v20}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;-><init>(Lgt/g0;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;JIJJLcom/moloco/sdk/internal/services/j;Landroidx/lifecycle/Lifecycle;Lcom/moloco/sdk/internal/services/p;Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/internal/services/h0;Lcom/moloco/sdk/internal/ilrd/d;Lcom/moloco/sdk/internal/ilrd/d;Lcom/moloco/sdk/internal/ilrd/d;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lgt/g0;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;JIJJLcom/moloco/sdk/internal/services/j;Landroidx/lifecycle/Lifecycle;Lcom/moloco/sdk/internal/services/p;Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/internal/services/h0;Lcom/moloco/sdk/internal/ilrd/d;Lcom/moloco/sdk/internal/ilrd/d;Lcom/moloco/sdk/internal/ilrd/d;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p19}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;-><init>(Lgt/g0;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;JIJJLcom/moloco/sdk/internal/services/j;Landroidx/lifecycle/Lifecycle;Lcom/moloco/sdk/internal/services/p;Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/internal/services/h0;Lcom/moloco/sdk/internal/ilrd/d;Lcom/moloco/sdk/internal/ilrd/d;Lcom/moloco/sdk/internal/ilrd/d;)V

    return-void
.end method

.method public static final synthetic a(Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;Lcom/moloco/sdk/internal/ilrd/h$a;)Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->b(Lcom/moloco/sdk/internal/ilrd/h$a;)Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;)Lcom/moloco/sdk/internal/services/h0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->l:Lcom/moloco/sdk/internal/services/h0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->e(Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic h(Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;)Lqt/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->p:Lqt/a;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final b(Lcom/moloco/sdk/internal/ilrd/h$a;)Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;
    .locals 10

    .line 1
    invoke-static {}, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->newBuilder()Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue$a;->a(Ljava/lang/String;)Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue$a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->q:Lcom/moloco/sdk/internal/ilrd/a;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ilrd/a;->i()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue$a;->e(Ljava/lang/String;)Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue$a;

    .line 26
    .line 27
    .line 28
    sget-object v3, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v4, "Event created: sessionId="

    .line 36
    .line 37
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ilrd/a;->i()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v4, ", sessionAge="

    .line 48
    .line 49
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v4, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->h:Lcom/moloco/sdk/internal/services/j;

    .line 53
    .line 54
    invoke-interface {v4}, Lcom/moloco/sdk/internal/services/j;->a()J

    .line 55
    .line 56
    .line 57
    move-result-wide v4

    .line 58
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ilrd/a;->j()J

    .line 59
    .line 60
    .line 61
    move-result-wide v6

    .line 62
    sub-long/2addr v4, v6

    .line 63
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, "ms"

    .line 67
    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    const/16 v8, 0xc

    .line 76
    .line 77
    const/4 v9, 0x0

    .line 78
    const-string v4, "IlrdEventsRepository"

    .line 79
    .line 80
    const/4 v6, 0x0

    .line 81
    const/4 v7, 0x0

    .line 82
    invoke-static/range {v3 .. v9}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :cond_0
    instance-of v1, p1, Lcom/moloco/sdk/internal/ilrd/h$a$b;

    .line 86
    .line 87
    if-eqz v1, :cond_1

    .line 88
    .line 89
    check-cast p1, Lcom/moloco/sdk/internal/ilrd/h$a$b;

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/ilrd/h$a$b;->a()Lcom/moloco/sdk/IlrdRequest$MaxImpression;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {v0, p1}, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue$a;->c(Lcom/moloco/sdk/IlrdRequest$MaxImpression;)Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue$a;

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    instance-of v1, p1, Lcom/moloco/sdk/internal/ilrd/h$a$a;

    .line 100
    .line 101
    if-eqz v1, :cond_2

    .line 102
    .line 103
    check-cast p1, Lcom/moloco/sdk/internal/ilrd/h$a$a;

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/ilrd/h$a$a;->a()Lcom/moloco/sdk/IlrdRequest$LevelPlayImpression;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {v0, p1}, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue$a;->b(Lcom/moloco/sdk/IlrdRequest$LevelPlayImpression;)Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue$a;

    .line 110
    .line 111
    .line 112
    :goto_0
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    .line 117
    .line 118
    return-object p1

    .line 119
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 120
    .line 121
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 122
    .line 123
    .line 124
    throw p1
.end method

.method public final e(Lrs/c;)Ljava/lang/Object;
    .locals 14
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

    .line 1
    instance-of v0, p1, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$e;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$e;->l:I

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
    iput v1, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$e;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$e;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$e;-><init>(Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$e;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$e;->l:I

    .line 32
    .line 33
    const-string v3, "ilrd_session_store"

    .line 34
    .line 35
    const/4 v4, 0x2

    .line 36
    const/4 v5, 0x1

    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    if-eq v2, v5, :cond_2

    .line 40
    .line 41
    if-ne v2, v4, :cond_1

    .line 42
    .line 43
    iget-object v1, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$e;->i:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v1, Ljava/lang/String;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$e;->h:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;

    .line 50
    .line 51
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_2
    iget-object v2, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$e;->h:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v2, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;

    .line 66
    .line 67
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->l:Lcom/moloco/sdk/internal/services/h0;

    .line 75
    .line 76
    iput-object p0, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$e;->h:Ljava/lang/Object;

    .line 77
    .line 78
    iput v5, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$e;->l:I

    .line 79
    .line 80
    invoke-interface {p1, v3, v0}, Lcom/moloco/sdk/internal/services/h0;->a(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-ne p1, v1, :cond_4

    .line 85
    .line 86
    return-object v1

    .line 87
    :cond_4
    move-object v2, p0

    .line 88
    :goto_1
    check-cast p1, Ljava/lang/String;

    .line 89
    .line 90
    if-nez p1, :cond_5

    .line 91
    .line 92
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 93
    .line 94
    return-object p1

    .line 95
    :cond_5
    iget-object v5, v2, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->l:Lcom/moloco/sdk/internal/services/h0;

    .line 96
    .line 97
    iput-object v2, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$e;->h:Ljava/lang/Object;

    .line 98
    .line 99
    iput-object p1, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$e;->i:Ljava/lang/Object;

    .line 100
    .line 101
    iput v4, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$e;->l:I

    .line 102
    .line 103
    invoke-interface {v5, v3, v0}, Lcom/moloco/sdk/internal/services/h0;->b(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    if-ne v0, v1, :cond_6

    .line 108
    .line 109
    return-object v1

    .line 110
    :cond_6
    move-object v1, p1

    .line 111
    move-object v0, v2

    .line 112
    :goto_2
    new-instance p1, Lcom/moloco/sdk/internal/ilrd/a;

    .line 113
    .line 114
    iget-object v2, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->h:Lcom/moloco/sdk/internal/services/j;

    .line 115
    .line 116
    invoke-direct {p1, v2, v1}, Lcom/moloco/sdk/internal/ilrd/a;-><init>(Lcom/moloco/sdk/internal/services/j;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object v1, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->h:Lcom/moloco/sdk/internal/services/j;

    .line 120
    .line 121
    invoke-interface {v1}, Lcom/moloco/sdk/internal/services/j;->a()J

    .line 122
    .line 123
    .line 124
    move-result-wide v1

    .line 125
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/ilrd/a;->j()J

    .line 126
    .line 127
    .line 128
    move-result-wide v3

    .line 129
    sub-long v3, v1, v3

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/ilrd/a;->g()Lcom/moloco/sdk/internal/ilrd/a$b;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-virtual {v5}, Lcom/moloco/sdk/internal/ilrd/a$b;->f()J

    .line 136
    .line 137
    .line 138
    move-result-wide v5

    .line 139
    iget-wide v7, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->g:J

    .line 140
    .line 141
    invoke-static {v7, v8}, Lkotlin/time/b;->q(J)J

    .line 142
    .line 143
    .line 144
    move-result-wide v7

    .line 145
    cmp-long v3, v3, v7

    .line 146
    .line 147
    if-lez v3, :cond_7

    .line 148
    .line 149
    sget-object v7, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 150
    .line 151
    const/16 v12, 0xc

    .line 152
    .line 153
    const/4 v13, 0x0

    .line 154
    const-string v8, "IlrdEventsRepository"

    .line 155
    .line 156
    const-string v9, "Discarding restored session - exceeded maximum length"

    .line 157
    .line 158
    const/4 v10, 0x0

    .line 159
    const/4 v11, 0x0

    .line 160
    invoke-static/range {v7 .. v13}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 164
    .line 165
    return-object p1

    .line 166
    :cond_7
    const-wide/16 v3, 0x0

    .line 167
    .line 168
    cmp-long v3, v5, v3

    .line 169
    .line 170
    if-lez v3, :cond_8

    .line 171
    .line 172
    sub-long/2addr v1, v5

    .line 173
    iget-wide v3, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->d:J

    .line 174
    .line 175
    invoke-static {v3, v4}, Lkotlin/time/b;->q(J)J

    .line 176
    .line 177
    .line 178
    move-result-wide v3

    .line 179
    cmp-long v1, v1, v3

    .line 180
    .line 181
    if-lez v1, :cond_8

    .line 182
    .line 183
    sget-object v2, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 184
    .line 185
    const/16 v7, 0xc

    .line 186
    .line 187
    const/4 v8, 0x0

    .line 188
    const-string v3, "IlrdEventsRepository"

    .line 189
    .line 190
    const-string v4, "Discarding restored session - exceeded inactivity timeout"

    .line 191
    .line 192
    const/4 v5, 0x0

    .line 193
    const/4 v6, 0x0

    .line 194
    invoke-static/range {v2 .. v8}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 198
    .line 199
    return-object p1

    .line 200
    :cond_8
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 201
    .line 202
    const/16 v6, 0xc

    .line 203
    .line 204
    const/4 v7, 0x0

    .line 205
    const-string v2, "IlrdEventsRepository"

    .line 206
    .line 207
    const-string v3, "ILRD session restored successfully"

    .line 208
    .line 209
    const/4 v4, 0x0

    .line 210
    const/4 v5, 0x0

    .line 211
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    iput-object p1, v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->q:Lcom/moloco/sdk/internal/ilrd/a;

    .line 215
    .line 216
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 217
    .line 218
    return-object p1
.end method

.method public final f()V
    .locals 11
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->q:Lcom/moloco/sdk/internal/ilrd/a;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/ilrd/a;->k()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->q:Lcom/moloco/sdk/internal/ilrd/a;

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    iget-object v1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->h:Lcom/moloco/sdk/internal/services/j;

    .line 19
    .line 20
    invoke-interface {v1}, Lcom/moloco/sdk/internal/services/j;->a()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/ilrd/a;->j()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    sub-long/2addr v1, v3

    .line 29
    sget-object v10, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v4, "Session validation - age: "

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v4, "ms, limit: "

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-wide v4, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->g:J

    .line 50
    .line 51
    invoke-static {v4, v5}, Lkotlin/time/b;->q(J)J

    .line 52
    .line 53
    .line 54
    move-result-wide v4

    .line 55
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v4, "ms"

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    const/16 v8, 0xc

    .line 68
    .line 69
    const/4 v9, 0x0

    .line 70
    const-string v4, "IlrdEventsRepository"

    .line 71
    .line 72
    const/4 v6, 0x0

    .line 73
    const/4 v7, 0x0

    .line 74
    move-object v3, v10

    .line 75
    invoke-static/range {v3 .. v9}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-wide v3, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->g:J

    .line 79
    .line 80
    invoke-static {v3, v4}, Lkotlin/time/b;->q(J)J

    .line 81
    .line 82
    .line 83
    move-result-wide v3

    .line 84
    cmp-long v3, v1, v3

    .line 85
    .line 86
    if-gtz v3, :cond_1

    .line 87
    .line 88
    const-wide/16 v3, 0x0

    .line 89
    .line 90
    cmp-long v3, v1, v3

    .line 91
    .line 92
    if-gez v3, :cond_3

    .line 93
    .line 94
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v4, "Session has invalid duration ("

    .line 100
    .line 101
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v1, "ms), expiring"

    .line 108
    .line 109
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    const/16 v8, 0xc

    .line 117
    .line 118
    const/4 v9, 0x0

    .line 119
    const-string v4, "IlrdEventsRepository"

    .line 120
    .line 121
    const/4 v6, 0x0

    .line 122
    const/4 v7, 0x0

    .line 123
    move-object v3, v10

    .line 124
    invoke-static/range {v3 .. v9}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/ilrd/a;->c()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->q()V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->q()V

    .line 135
    .line 136
    .line 137
    :cond_3
    :goto_1
    return-void
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->r:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i(Lcom/moloco/sdk/internal/ilrd/h$a;)V
    .locals 3
    .param p1    # Lcom/moloco/sdk/internal/ilrd/h$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "ilrdData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->a:Lgt/g0;

    .line 7
    .line 8
    new-instance v1, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$c;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, p0, p1, v2}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$c;-><init>(Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;Lcom/moloco/sdk/internal/ilrd/h$a;Lrs/c;)V

    .line 12
    .line 13
    .line 14
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->a:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 15
    .line 16
    sget-object v2, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    .line 17
    .line 18
    invoke-static {v0, p1, v2, v1}, Lgt/e;->c(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/r;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final j()Lcom/moloco/sdk/internal/ilrd/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->q:Lcom/moloco/sdk/internal/ilrd/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Z
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->r:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->e:I

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 17
    .line 18
    const/16 v6, 0xc

    .line 19
    .line 20
    const/4 v7, 0x0

    .line 21
    const-string v2, "IlrdEventsRepository"

    .line 22
    .line 23
    const-string v3, "batch size reached"

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return v0
.end method

.method public final declared-synchronized l()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->f()V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw v0
.end method

.method public final m()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->n:Lcom/moloco/sdk/internal/ilrd/d;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->g:J

    .line 4
    .line 5
    new-instance v3, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$f;

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v3, p0, v4}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$f;-><init>(Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;Lrs/c;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, v3}, Lcom/moloco/sdk/internal/ilrd/d;->b(JLkotlin/jvm/functions/Function1;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final n()V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->m:Lcom/moloco/sdk/internal/ilrd/d;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->d:J

    .line 4
    .line 5
    new-instance v3, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$g;

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v3, p0, v4}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$g;-><init>(Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;Lrs/c;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, v3}, Lcom/moloco/sdk/internal/ilrd/d;->b(JLkotlin/jvm/functions/Function1;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final o()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->o:Lcom/moloco/sdk/internal/ilrd/d;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->f:J

    .line 4
    .line 5
    new-instance v3, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$h;

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v3, p0, v4}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$h;-><init>(Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;Lrs/c;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, v3}, Lcom/moloco/sdk/internal/ilrd/d;->b(JLkotlin/jvm/functions/Function1;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 3
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->a:Lgt/g0;

    .line 7
    .line 8
    new-instance v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$d;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p0, v1}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$d;-><init>(Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;Lrs/c;)V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->a:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 15
    .line 16
    sget-object v2, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    .line 17
    .line 18
    invoke-static {p1, v1, v2, v0}, Lgt/e;->c(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/r;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final p()V
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->o()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->r:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 13
    .line 14
    const/16 v6, 0xc

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    const-string v2, "IlrdEventsRepository"

    .line 18
    .line 19
    const-string v3, "Request for sendEvent came, but event list is empty. Returning"

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-static {}, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->newBuilder()Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest$a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "Android"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest$a;->c(Ljava/lang/String;)Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest$a;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->j:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest$a;->f(Ljava/lang/String;)Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest$a;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->k:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest$a;->e(Ljava/lang/String;)Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest$a;

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->i:Lcom/moloco/sdk/internal/services/p;

    .line 47
    .line 48
    invoke-interface {v1}, Lcom/moloco/sdk/internal/services/p;->a()Lcom/moloco/sdk/internal/services/o;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    instance-of v2, v1, Lcom/moloco/sdk/internal/services/o$a;

    .line 53
    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    check-cast v1, Lcom/moloco/sdk/internal/services/o$a;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 v1, 0x0

    .line 60
    :goto_0
    if-eqz v1, :cond_2

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/services/o$a;->a()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest$a;->b(Ljava/lang/String;)Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest$a;

    .line 67
    .line 68
    .line 69
    :cond_2
    iget-object v1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->r:Ljava/util/List;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest$a;->a(Ljava/lang/Iterable;)Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest$a;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    .line 79
    .line 80
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 81
    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v3, "Ilrd request created now sending it with "

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->getEventsList()Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v3, " events"

    .line 104
    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    const/16 v6, 0xc

    .line 113
    .line 114
    const/4 v7, 0x0

    .line 115
    const-string v2, "IlrdEventsRepository"

    .line 116
    .line 117
    const/4 v4, 0x0

    .line 118
    const/4 v5, 0x0

    .line 119
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    sget-object v1, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->s:Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$b;

    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const-string/jumbo v2, "toByteArray(...)"

    .line 129
    .line 130
    .line 131
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-static {v1, v0}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$b;->a(Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$b;[B)[B

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;

    .line 139
    .line 140
    iget-object v2, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->b:Ljava/lang/String;

    .line 141
    .line 142
    sget-object v3, Lio/ktor/http/a$a;->a:Lio/ktor/http/a$a;

    .line 143
    .line 144
    invoke-virtual {v3}, Lio/ktor/http/a$a;->b()Lio/ktor/http/a;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    const-string v4, "gzip"

    .line 149
    .line 150
    invoke-interface {v1, v2, v0, v3, v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/f;->a(Ljava/lang/String;[BLio/ktor/http/a;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->r:Ljava/util/List;

    .line 154
    .line 155
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 156
    .line 157
    .line 158
    return-void
.end method

.method public final q()V
    .locals 11
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/ilrd/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->h:Lcom/moloco/sdk/internal/services/j;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v1, v3, v2, v3}, Lcom/moloco/sdk/internal/ilrd/a;-><init>(Lcom/moloco/sdk/internal/services/j;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->q:Lcom/moloco/sdk/internal/ilrd/a;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->m()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->o()V

    .line 16
    .line 17
    .line 18
    sget-object v4, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v1, "New session started: "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->q:Lcom/moloco/sdk/internal/ilrd/a;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ilrd/a;->i()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    const/16 v9, 0xc

    .line 46
    .line 47
    const/4 v10, 0x0

    .line 48
    const-string v5, "IlrdEventsRepository"

    .line 49
    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v8, 0x0

    .line 52
    invoke-static/range {v4 .. v10}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
