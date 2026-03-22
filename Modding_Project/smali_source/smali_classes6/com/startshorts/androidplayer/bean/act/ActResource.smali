.class public final Lcom/startshorts/androidplayer/bean/act/ActResource;
.super Ljava/lang/Object;
.source "ActResource.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/bean/act/ActResource$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nActResource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActResource.kt\ncom/startshorts/androidplayer/bean/act/ActResource\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,164:1\n216#2,2:165\n*S KotlinDebug\n*F\n+ 1 ActResource.kt\ncom/startshorts/androidplayer/bean/act/ActResource\n*L\n106#1:165,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/startshorts/androidplayer/bean/act/ActResource$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ActResource"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final endDatetimeLong:J

.field private final extendInfo:Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final id:I

.field private final isLongTerm:I

.field private moduleId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private moduleName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private position:I

.field private priority:I

.field private final rawSkipType:I

.field private recommendId:I

.field private final resourceMap:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final resourceMapShrink:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private resourceType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final showType:I

.field private final skipValue:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final startDatetimeLong:J

.field private upack:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/act/ActResource$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/act/ActResource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->Companion:Lcom/startshorts/androidplayer/bean/act/ActResource$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;ILcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p3    # Ljava/lang/String;
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
    .param p12    # Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p19    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object v0, p0

    move-object/from16 v1, p18

    move-object/from16 v2, p19

    const-string/jumbo v3, "upack"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "resourceType"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v3, p1

    .line 2
    iput v3, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->id:I

    move v3, p2

    .line 3
    iput v3, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->rawSkipType:I

    move-object v3, p3

    .line 4
    iput-object v3, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->skipValue:Ljava/lang/String;

    move v3, p4

    .line 5
    iput v3, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->isLongTerm:I

    move-wide v3, p5

    .line 6
    iput-wide v3, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->startDatetimeLong:J

    move-wide v3, p7

    .line 7
    iput-wide v3, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->endDatetimeLong:J

    move-object v3, p9

    .line 8
    iput-object v3, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->resourceMap:Ljava/lang/String;

    move-object v3, p10

    .line 9
    iput-object v3, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->resourceMapShrink:Ljava/lang/String;

    move/from16 v3, p11

    .line 10
    iput v3, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->showType:I

    move-object/from16 v3, p12

    .line 11
    iput-object v3, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->extendInfo:Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;

    move/from16 v3, p13

    .line 12
    iput v3, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->recommendId:I

    move/from16 v3, p14

    .line 13
    iput v3, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->position:I

    move-object/from16 v3, p15

    .line 14
    iput-object v3, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->moduleId:Ljava/lang/String;

    move-object/from16 v3, p16

    .line 15
    iput-object v3, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->moduleName:Ljava/lang/String;

    move/from16 v3, p17

    .line 16
    iput v3, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->priority:I

    .line 17
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->upack:Ljava/lang/String;

    .line 18
    iput-object v2, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->resourceType:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;ILcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 23

    move/from16 v0, p20

    and-int/lit8 v1, v0, 0x2

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move/from16 v5, p2

    :goto_0
    and-int/lit16 v1, v0, 0x200

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v15, v3

    goto :goto_1

    :cond_1
    move-object/from16 v15, p12

    :goto_1
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_2

    move/from16 v16, v2

    goto :goto_2

    :cond_2
    move/from16 v16, p13

    :goto_2
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_3

    move/from16 v17, v2

    goto :goto_3

    :cond_3
    move/from16 v17, p14

    :goto_3
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_4

    move-object/from16 v18, v3

    goto :goto_4

    :cond_4
    move-object/from16 v18, p15

    :goto_4
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_5

    move-object/from16 v19, v3

    goto :goto_5

    :cond_5
    move-object/from16 v19, p16

    :goto_5
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    move/from16 v20, v1

    goto :goto_6

    :cond_6
    move/from16 v20, p17

    :goto_6
    const v1, 0x8000

    and-int/2addr v1, v0

    .line 19
    const-string v2, ""

    if-eqz v1, :cond_7

    move-object/from16 v21, v2

    goto :goto_7

    :cond_7
    move-object/from16 v21, p18

    :goto_7
    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    move-object/from16 v22, v2

    goto :goto_8

    :cond_8
    move-object/from16 v22, p19

    :goto_8
    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    invoke-direct/range {v3 .. v22}, Lcom/startshorts/androidplayer/bean/act/ActResource;-><init>(IILjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;ILcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/act/ActResource;IILjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;ILcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/act/ActResource;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p20

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->id:I

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->rawSkipType:I

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->skipValue:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->isLongTerm:I

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-wide v6, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->startDatetimeLong:J

    goto :goto_4

    :cond_4
    move-wide/from16 v6, p5

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-wide v8, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->endDatetimeLong:J

    goto :goto_5

    :cond_5
    move-wide/from16 v8, p7

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->resourceMap:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget-object v11, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->resourceMapShrink:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v11, p10

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    iget v12, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->showType:I

    goto :goto_8

    :cond_8
    move/from16 v12, p11

    :goto_8
    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_9

    iget-object v13, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->extendInfo:Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;

    goto :goto_9

    :cond_9
    move-object/from16 v13, p12

    :goto_9
    and-int/lit16 v14, v1, 0x400

    if-eqz v14, :cond_a

    iget v14, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->recommendId:I

    goto :goto_a

    :cond_a
    move/from16 v14, p13

    :goto_a
    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_b

    iget v15, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->position:I

    goto :goto_b

    :cond_b
    move/from16 v15, p14

    :goto_b
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->moduleId:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p15

    :goto_c
    move-object/from16 p15, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->moduleName:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p16

    :goto_d
    move-object/from16 p16, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget v15, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->priority:I

    goto :goto_e

    :cond_e
    move/from16 v15, p17

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move/from16 p17, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->upack:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p18

    :goto_f
    const/high16 v16, 0x10000

    and-int v1, v1, v16

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;->resourceType:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p19

    :goto_10
    move/from16 p1, v2

    move/from16 p2, v3

    move-object/from16 p3, v4

    move/from16 p4, v5

    move-wide/from16 p5, v6

    move-wide/from16 p7, v8

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move/from16 p11, v12

    move-object/from16 p12, v13

    move/from16 p13, v14

    move-object/from16 p18, v15

    move-object/from16 p19, v1

    invoke-virtual/range {p0 .. p19}, Lcom/startshorts/androidplayer/bean/act/ActResource;->copy(IILjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;ILcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/act/ActResource;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public final component10()Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->extendInfo:Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component11()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->recommendId:I

    .line 2
    .line 3
    return v0
.end method

.method public final component12()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->position:I

    .line 2
    .line 3
    return v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->moduleId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->moduleName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component15()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->priority:I

    .line 2
    .line 3
    return v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->upack:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->resourceType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->rawSkipType:I

    .line 2
    .line 3
    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->skipValue:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->isLongTerm:I

    .line 2
    .line 3
    return v0
.end method

.method public final component5()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->startDatetimeLong:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component6()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->endDatetimeLong:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->resourceMap:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->resourceMapShrink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->showType:I

    .line 2
    .line 3
    return v0
.end method

.method public final copy(IILjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;ILcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/act/ActResource;
    .locals 21
    .param p3    # Ljava/lang/String;
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
    .param p12    # Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p19    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move/from16 v1, p1

    .line 2
    .line 3
    move/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    move/from16 v4, p4

    .line 8
    .line 9
    move-wide/from16 v5, p5

    .line 10
    .line 11
    move-wide/from16 v7, p7

    .line 12
    .line 13
    move-object/from16 v9, p9

    .line 14
    .line 15
    move-object/from16 v10, p10

    .line 16
    .line 17
    move/from16 v11, p11

    .line 18
    .line 19
    move-object/from16 v12, p12

    .line 20
    .line 21
    move/from16 v13, p13

    .line 22
    .line 23
    move/from16 v14, p14

    .line 24
    .line 25
    move-object/from16 v15, p15

    .line 26
    .line 27
    move-object/from16 v16, p16

    .line 28
    .line 29
    move/from16 v17, p17

    .line 30
    .line 31
    move-object/from16 v18, p18

    .line 32
    .line 33
    move-object/from16 v19, p19

    .line 34
    .line 35
    const-string/jumbo v0, "upack"

    .line 36
    .line 37
    .line 38
    move-object/from16 v1, p18

    .line 39
    .line 40
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v0, "resourceType"

    .line 44
    .line 45
    move-object/from16 v1, p19

    .line 46
    .line 47
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v20, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 51
    .line 52
    move-object/from16 v0, v20

    .line 53
    .line 54
    move/from16 v1, p1

    .line 55
    .line 56
    invoke-direct/range {v0 .. v19}, Lcom/startshorts/androidplayer/bean/act/ActResource;-><init>(IILjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;ILcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v20
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 12
    .line 13
    iget v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->id:I

    .line 14
    .line 15
    iget v3, p1, Lcom/startshorts/androidplayer/bean/act/ActResource;->id:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->rawSkipType:I

    .line 21
    .line 22
    iget v3, p1, Lcom/startshorts/androidplayer/bean/act/ActResource;->rawSkipType:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->skipValue:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/act/ActResource;->skipValue:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->isLongTerm:I

    .line 39
    .line 40
    iget v3, p1, Lcom/startshorts/androidplayer/bean/act/ActResource;->isLongTerm:I

    .line 41
    .line 42
    if-eq v1, v3, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    iget-wide v3, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->startDatetimeLong:J

    .line 46
    .line 47
    iget-wide v5, p1, Lcom/startshorts/androidplayer/bean/act/ActResource;->startDatetimeLong:J

    .line 48
    .line 49
    cmp-long v1, v3, v5

    .line 50
    .line 51
    if-eqz v1, :cond_6

    .line 52
    .line 53
    return v2

    .line 54
    :cond_6
    iget-wide v3, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->endDatetimeLong:J

    .line 55
    .line 56
    iget-wide v5, p1, Lcom/startshorts/androidplayer/bean/act/ActResource;->endDatetimeLong:J

    .line 57
    .line 58
    cmp-long v1, v3, v5

    .line 59
    .line 60
    if-eqz v1, :cond_7

    .line 61
    .line 62
    return v2

    .line 63
    :cond_7
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->resourceMap:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/act/ActResource;->resourceMap:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_8

    .line 72
    .line 73
    return v2

    .line 74
    :cond_8
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->resourceMapShrink:Ljava/lang/String;

    .line 75
    .line 76
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/act/ActResource;->resourceMapShrink:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_9

    .line 83
    .line 84
    return v2

    .line 85
    :cond_9
    iget v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->showType:I

    .line 86
    .line 87
    iget v3, p1, Lcom/startshorts/androidplayer/bean/act/ActResource;->showType:I

    .line 88
    .line 89
    if-eq v1, v3, :cond_a

    .line 90
    .line 91
    return v2

    .line 92
    :cond_a
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->extendInfo:Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;

    .line 93
    .line 94
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/act/ActResource;->extendInfo:Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;

    .line 95
    .line 96
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_b

    .line 101
    .line 102
    return v2

    .line 103
    :cond_b
    iget v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->recommendId:I

    .line 104
    .line 105
    iget v3, p1, Lcom/startshorts/androidplayer/bean/act/ActResource;->recommendId:I

    .line 106
    .line 107
    if-eq v1, v3, :cond_c

    .line 108
    .line 109
    return v2

    .line 110
    :cond_c
    iget v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->position:I

    .line 111
    .line 112
    iget v3, p1, Lcom/startshorts/androidplayer/bean/act/ActResource;->position:I

    .line 113
    .line 114
    if-eq v1, v3, :cond_d

    .line 115
    .line 116
    return v2

    .line 117
    :cond_d
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->moduleId:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/act/ActResource;->moduleId:Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-nez v1, :cond_e

    .line 126
    .line 127
    return v2

    .line 128
    :cond_e
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->moduleName:Ljava/lang/String;

    .line 129
    .line 130
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/act/ActResource;->moduleName:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-nez v1, :cond_f

    .line 137
    .line 138
    return v2

    .line 139
    :cond_f
    iget v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->priority:I

    .line 140
    .line 141
    iget v3, p1, Lcom/startshorts/androidplayer/bean/act/ActResource;->priority:I

    .line 142
    .line 143
    if-eq v1, v3, :cond_10

    .line 144
    .line 145
    return v2

    .line 146
    :cond_10
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->upack:Ljava/lang/String;

    .line 147
    .line 148
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/act/ActResource;->upack:Ljava/lang/String;

    .line 149
    .line 150
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-nez v1, :cond_11

    .line 155
    .line 156
    return v2

    .line 157
    :cond_11
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->resourceType:Ljava/lang/String;

    .line 158
    .line 159
    iget-object p1, p1, Lcom/startshorts/androidplayer/bean/act/ActResource;->resourceType:Ljava/lang/String;

    .line 160
    .line 161
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-nez p1, :cond_12

    .line 166
    .line 167
    return v2

    .line 168
    :cond_12
    return v0
.end method

.method public final formatBrowserUrl()Ljava/lang/String;
    .locals 20
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/startshorts/androidplayer/bean/act/ActResource;->skipValue:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    if-eqz v0, :cond_f

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_6

    .line 16
    .line 17
    :cond_0
    iget v0, v1, Lcom/startshorts/androidplayer/bean/act/ActResource;->rawSkipType:I

    .line 18
    .line 19
    sget-object v3, Lcom/startshorts/androidplayer/manager/act/SkipType;->H5_BROWSER_OFFICIAL:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-ne v0, v3, :cond_e

    .line 26
    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    iget-object v0, v1, Lcom/startshorts/androidplayer/bean/act/ActResource;->skipValue:Ljava/lang/String;

    .line 30
    .line 31
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, v1, Lcom/startshorts/androidplayer/bean/act/ActResource;->skipValue:Ljava/lang/String;

    .line 35
    .line 36
    const-string v4, "?"

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    const/4 v6, 0x2

    .line 40
    const/4 v7, 0x0

    .line 41
    invoke-static {v0, v4, v5, v6, v7}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const-string v8, "&"

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    :goto_0
    const-string v0, "platform=android&"

    .line 57
    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, "openType=browser&"

    .line 62
    .line 63
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string/jumbo v4, "statusBarHeight="

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    sget-object v4, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->J()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const/16 v4, 0x26

    .line 87
    .line 88
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    sget-object v0, Lud/b;->a:Lud/b;

    .line 99
    .line 100
    invoke-virtual {v0}, Lud/b;->f0()Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;->getABTestIds()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    if-eqz v0, :cond_2

    .line 111
    .line 112
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    if-lez v9, :cond_2

    .line 117
    .line 118
    new-instance v9, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v10, "cmsAbTestId="

    .line 124
    .line 125
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    :cond_2
    iget v0, v1, Lcom/startshorts/androidplayer/bean/act/ActResource;->id:I

    .line 142
    .line 143
    const/4 v9, -0x1

    .line 144
    if-eq v0, v9, :cond_3

    .line 145
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v10, "resourceBitId="

    .line 152
    .line 153
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    iget v10, v1, Lcom/startshorts/androidplayer/bean/act/ActResource;->id:I

    .line 157
    .line 158
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    :cond_3
    iget-object v0, v1, Lcom/startshorts/androidplayer/bean/act/ActResource;->moduleId:Ljava/lang/String;

    .line 172
    .line 173
    if-eqz v0, :cond_5

    .line 174
    .line 175
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-nez v0, :cond_4

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    const-string v10, "moduleId="

    .line 188
    .line 189
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    iget-object v10, v1, Lcom/startshorts/androidplayer/bean/act/ActResource;->moduleId:Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    :cond_5
    :goto_1
    iget v0, v1, Lcom/startshorts/androidplayer/bean/act/ActResource;->position:I

    .line 208
    .line 209
    if-eq v0, v9, :cond_6

    .line 210
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    const-string v9, "positionId="

    .line 217
    .line 218
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    iget v9, v1, Lcom/startshorts/androidplayer/bean/act/ActResource;->position:I

    .line 222
    .line 223
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    :cond_6
    iget v0, v1, Lcom/startshorts/androidplayer/bean/act/ActResource;->recommendId:I

    .line 237
    .line 238
    if-lez v0, :cond_7

    .line 239
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    const-string v9, "audienceRecommendId="

    .line 246
    .line 247
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    iget v9, v1, Lcom/startshorts/androidplayer/bean/act/ActResource;->recommendId:I

    .line 251
    .line 252
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    :cond_7
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 266
    .line 267
    const/4 v9, 0x1

    .line 268
    invoke-static {v0, v7, v9, v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->u(Lcom/startshorts/androidplayer/manager/event/EventManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroid/os/Bundle;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    if-eqz v0, :cond_8

    .line 273
    .line 274
    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 275
    .line 276
    .line 277
    move-result-object v10

    .line 278
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 279
    .line 280
    .line 281
    move-result-object v10

    .line 282
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 283
    .line 284
    .line 285
    move-result v11

    .line 286
    if-eqz v11, :cond_8

    .line 287
    .line 288
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v11

    .line 292
    check-cast v11, Ljava/lang/String;

    .line 293
    .line 294
    new-instance v12, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    const/16 v13, 0x3d

    .line 303
    .line 304
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0, v11}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v11

    .line 311
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v11

    .line 321
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    goto :goto_2

    .line 325
    :cond_8
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/base/o;->c:Lcom/startshorts/androidplayer/manager/api/base/o$a;

    .line 326
    .line 327
    invoke-static {v0, v7, v9, v7}, Lcom/startshorts/androidplayer/manager/api/base/o$a;->b(Lcom/startshorts/androidplayer/manager/api/base/o$a;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/HashMap;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    const-string v4, "clientPlatform"

    .line 332
    .line 333
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    const-string v4, "Authorization"

    .line 337
    .line 338
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    const-string v4, "TraceId"

    .line 342
    .line 343
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    const-string v4, "hasProxy"

    .line 347
    .line 348
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    const-string v4, "model"

    .line 352
    .line 353
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v10

    .line 357
    check-cast v10, Ljava/lang/String;

    .line 358
    .line 359
    const-string v11, "encode(...)"

    .line 360
    .line 361
    const-string v12, "UTF-8"

    .line 362
    .line 363
    if-eqz v10, :cond_a

    .line 364
    .line 365
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 366
    .line 367
    .line 368
    move-result v13

    .line 369
    if-nez v13, :cond_9

    .line 370
    .line 371
    goto :goto_3

    .line 372
    :cond_9
    invoke-static {v10, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v14

    .line 376
    invoke-static {v14, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    const/16 v18, 0x4

    .line 380
    .line 381
    const/16 v19, 0x0

    .line 382
    .line 383
    const-string v15, "+"

    .line 384
    .line 385
    const-string v16, "%20"

    .line 386
    .line 387
    const/16 v17, 0x0

    .line 388
    .line 389
    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v10

    .line 393
    invoke-interface {v0, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    :cond_a
    :goto_3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 405
    .line 406
    .line 407
    move-result v4

    .line 408
    if-eqz v4, :cond_b

    .line 409
    .line 410
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v4

    .line 414
    check-cast v4, Ljava/util/Map$Entry;

    .line 415
    .line 416
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v10

    .line 420
    check-cast v10, Ljava/lang/String;

    .line 421
    .line 422
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    const-string v10, "="

    .line 426
    .line 427
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v4

    .line 434
    check-cast v4, Ljava/lang/String;

    .line 435
    .line 436
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    goto :goto_4

    .line 443
    :cond_b
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 444
    .line 445
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a0()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 446
    .line 447
    .line 448
    move-result-object v4

    .line 449
    if-eqz v4, :cond_c

    .line 450
    .line 451
    :try_start_0
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 452
    .line 453
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    invoke-virtual {v4, v0}, Lcom/startshorts/androidplayer/bean/account/Account;->getFormatNickname(Landroid/content/Context;)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    invoke-static {v0, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v13

    .line 465
    invoke-static {v13, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    const-string v14, "+"

    .line 469
    .line 470
    const-string v15, "%20"

    .line 471
    .line 472
    const/16 v17, 0x4

    .line 473
    .line 474
    const/16 v18, 0x0

    .line 475
    .line 476
    const/16 v16, 0x0

    .line 477
    .line 478
    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    goto :goto_5

    .line 483
    :catch_0
    move-exception v0

    .line 484
    sget-object v10, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 485
    .line 486
    new-instance v11, Ljava/lang/StringBuilder;

    .line 487
    .line 488
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    .line 490
    .line 491
    const-string v12, "encode nickname exception -> "

    .line 492
    .line 493
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    const-string v11, "ActResource"

    .line 508
    .line 509
    invoke-virtual {v10, v11, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    :goto_5
    const-string/jumbo v0, "userCode="

    .line 513
    .line 514
    .line 515
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/account/Account;->getUserCode()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    const-string v0, "&nickname="

    .line 526
    .line 527
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    :cond_c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    const-string/jumbo v2, "toString(...)"

    .line 541
    .line 542
    .line 543
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    invoke-static {v0, v8, v5, v6, v7}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 547
    .line 548
    .line 549
    move-result v2

    .line 550
    if-eqz v2, :cond_d

    .line 551
    .line 552
    invoke-static {v0, v9}, Lkotlin/text/StringsKt;->B1(Ljava/lang/String;I)Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    :cond_d
    return-object v0

    .line 557
    :cond_e
    iget-object v0, v1, Lcom/startshorts/androidplayer/bean/act/ActResource;->skipValue:Ljava/lang/String;

    .line 558
    .line 559
    return-object v0

    .line 560
    :cond_f
    :goto_6
    return-object v2
.end method

.method public final getEndDatetimeLong()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->endDatetimeLong:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getExtendInfo()Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->extendInfo:Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public final getModuleId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->moduleId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getModuleName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->moduleName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->position:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPriority()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->priority:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRawSkipType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->rawSkipType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRecommendId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->recommendId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getResourceMap()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->resourceMap:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResourceMapShrink()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->resourceMapShrink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResourceType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->resourceType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->showType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSkipTypeForEvent()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->rawSkipType:I

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/manager/act/SkipType;->SHORTS:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const-string v0, "reel"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/manager/act/SkipType;->H5:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    const-string v0, "h5_inapp_open"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    sget-object v1, Lcom/startshorts/androidplayer/manager/act/SkipType;->H5_BROWSER_OFFICIAL:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-ne v0, v1, :cond_2

    .line 32
    .line 33
    const-string v0, "h5_external_official_open"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    sget-object v1, Lcom/startshorts/androidplayer/manager/act/SkipType;->H5_BROWSER_THIRD:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-ne v0, v1, :cond_3

    .line 43
    .line 44
    const-string v0, "h5_external_non_official_open"

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    sget-object v1, Lcom/startshorts/androidplayer/manager/act/SkipType;->MARKETING_CAMPAIGN:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-ne v0, v1, :cond_4

    .line 54
    .line 55
    const-string v0, "activity"

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    sget-object v1, Lcom/startshorts/androidplayer/manager/act/SkipType;->COMBINATION_ACT:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-ne v0, v1, :cond_5

    .line 65
    .line 66
    const-string v0, "combined_activity"

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_5
    sget-object v1, Lcom/startshorts/androidplayer/manager/act/SkipType;->PROGRAMMATIC_AD:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-ne v0, v1, :cond_6

    .line 76
    .line 77
    const-string v0, "ad_programmatic"

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_6
    sget-object v1, Lcom/startshorts/androidplayer/manager/act/SkipType;->BRAND_AD:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-ne v0, v1, :cond_7

    .line 87
    .line 88
    const-string v0, "ad_brand"

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_7
    const-string v0, ""

    .line 92
    .line 93
    :goto_0
    return-object v0
.end method

.method public final getSkipValue()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->skipValue:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStartDatetimeLong()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->startDatetimeLong:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getUpack()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->upack:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->id:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->rawSkipType:I

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->skipValue:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    move v1, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    :goto_0
    add-int/2addr v0, v1

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->isLongTerm:I

    .line 33
    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    add-int/2addr v0, v1

    .line 39
    mul-int/lit8 v0, v0, 0x1f

    .line 40
    .line 41
    iget-wide v3, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->startDatetimeLong:J

    .line 42
    .line 43
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    add-int/2addr v0, v1

    .line 48
    mul-int/lit8 v0, v0, 0x1f

    .line 49
    .line 50
    iget-wide v3, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->endDatetimeLong:J

    .line 51
    .line 52
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    add-int/2addr v0, v1

    .line 57
    mul-int/lit8 v0, v0, 0x1f

    .line 58
    .line 59
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->resourceMap:Ljava/lang/String;

    .line 60
    .line 61
    if-nez v1, :cond_1

    .line 62
    .line 63
    move v1, v2

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    :goto_1
    add-int/2addr v0, v1

    .line 70
    mul-int/lit8 v0, v0, 0x1f

    .line 71
    .line 72
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->resourceMapShrink:Ljava/lang/String;

    .line 73
    .line 74
    if-nez v1, :cond_2

    .line 75
    .line 76
    move v1, v2

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    :goto_2
    add-int/2addr v0, v1

    .line 83
    mul-int/lit8 v0, v0, 0x1f

    .line 84
    .line 85
    iget v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->showType:I

    .line 86
    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    add-int/2addr v0, v1

    .line 92
    mul-int/lit8 v0, v0, 0x1f

    .line 93
    .line 94
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->extendInfo:Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;

    .line 95
    .line 96
    if-nez v1, :cond_3

    .line 97
    .line 98
    move v1, v2

    .line 99
    goto :goto_3

    .line 100
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    :goto_3
    add-int/2addr v0, v1

    .line 105
    mul-int/lit8 v0, v0, 0x1f

    .line 106
    .line 107
    iget v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->recommendId:I

    .line 108
    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    add-int/2addr v0, v1

    .line 114
    mul-int/lit8 v0, v0, 0x1f

    .line 115
    .line 116
    iget v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->position:I

    .line 117
    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    add-int/2addr v0, v1

    .line 123
    mul-int/lit8 v0, v0, 0x1f

    .line 124
    .line 125
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->moduleId:Ljava/lang/String;

    .line 126
    .line 127
    if-nez v1, :cond_4

    .line 128
    .line 129
    move v1, v2

    .line 130
    goto :goto_4

    .line 131
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    :goto_4
    add-int/2addr v0, v1

    .line 136
    mul-int/lit8 v0, v0, 0x1f

    .line 137
    .line 138
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->moduleName:Ljava/lang/String;

    .line 139
    .line 140
    if-nez v1, :cond_5

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    :goto_5
    add-int/2addr v0, v2

    .line 148
    mul-int/lit8 v0, v0, 0x1f

    .line 149
    .line 150
    iget v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->priority:I

    .line 151
    .line 152
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    add-int/2addr v0, v1

    .line 157
    mul-int/lit8 v0, v0, 0x1f

    .line 158
    .line 159
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->upack:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    add-int/2addr v0, v1

    .line 166
    mul-int/lit8 v0, v0, 0x1f

    .line 167
    .line 168
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->resourceType:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    add-int/2addr v0, v1

    .line 175
    return v0
.end method

.method public final isBrandAd()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->rawSkipType:I

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/manager/act/SkipType;->BRAND_AD:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_0

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
    return v0
.end method

.method public final isBrandAdPicture()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->extendInfo:Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->getAdsType()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    move v1, v2

    .line 14
    :cond_0
    return v1
.end method

.method public final isBrandAdVideo()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->extendInfo:Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->getAdsType()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x2

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    :cond_0
    return v1
.end method

.method public final isLongTerm()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->isLongTerm:I

    .line 2
    .line 3
    return v0
.end method

.method public final isProgrammaticAd()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->rawSkipType:I

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/manager/act/SkipType;->PROGRAMMATIC_AD:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_0

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
    return v0
.end method

.method public final isShorts()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->rawSkipType:I

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/manager/act/SkipType;->SHORTS:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_0

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
    return v0
.end method

.method public final setModuleId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->moduleId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setModuleName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->moduleName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->position:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPriority(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->priority:I

    .line 2
    .line 3
    return-void
.end method

.method public final setRecommendId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->recommendId:I

    .line 2
    .line 3
    return-void
.end method

.method public final setResourceType(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->resourceType:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setUpack(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->upack:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ActResource(id="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->id:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", rawSkipType="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->rawSkipType:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", skipValue="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->skipValue:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", isLongTerm="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->isLongTerm:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", startDatetimeLong="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->startDatetimeLong:J

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", endDatetimeLong="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->endDatetimeLong:J

    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", resourceMap="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->resourceMap:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", resourceMapShrink="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->resourceMapShrink:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", showType="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->showType:I

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", extendInfo="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->extendInfo:Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", recommendId="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->recommendId:I

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, ", position="

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->position:I

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v1, ", moduleId="

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->moduleId:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, ", moduleName="

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->moduleName:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v1, ", priority="

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->priority:I

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v1, ", upack="

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->upack:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v1, ", resourceType="

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResource;->resourceType:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const/16 v1, 0x29

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    return-object v0
.end method
