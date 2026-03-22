.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$a;,
        Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$b;,
        Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;,
        Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nVastAdLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastAdLoader.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastAdLoaderImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 5 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 6 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 7 builders.kt\nio/ktor/client/request/BuildersKt\n*L\n1#1,797:1\n1#2:798\n774#3:799\n865#3,2:800\n1053#3:802\n1557#3:813\n1628#3,3:814\n774#3:817\n865#3,2:818\n1863#3:825\n774#3:826\n865#3,2:827\n1863#3,2:829\n1864#3:831\n774#3:832\n865#3,2:833\n1557#3:835\n1628#3,3:836\n774#3:839\n865#3,2:840\n56#4:803\n59#4:807\n56#4:820\n59#4:824\n46#5:804\n51#5:806\n46#5:821\n51#5:823\n105#6:805\n105#6:822\n332#7:808\n225#7:809\n99#7,2:810\n22#7:812\n*S KotlinDebug\n*F\n+ 1 VastAdLoader.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastAdLoaderImpl\n*L\n239#1:799\n239#1:800,2\n240#1:802\n483#1:813\n483#1:814,3\n509#1:817\n509#1:818,2\n618#1:825\n626#1:826\n626#1:827,2\n627#1:829,2\n618#1:831\n681#1:832\n681#1:833,2\n692#1:835\n692#1:836,3\n697#1:839\n697#1:840,2\n243#1:803\n243#1:807\n532#1:820\n532#1:824\n243#1:804\n243#1:806\n532#1:821\n532#1:823\n243#1:805\n532#1:822\n354#1:808\n354#1:809\n354#1:810,2\n354#1:812\n*E\n"
    }
.end annotation


# static fields
.field public static final i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/v;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/x;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lcom/moloco/sdk/internal/services/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lio/ktor/client/HttpClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/y;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/v;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/x;Lcom/moloco/sdk/internal/services/g0;Lio/ktor/client/HttpClient;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/y;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/v;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/moloco/sdk/internal/services/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lio/ktor/client/HttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/y;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "parseVast"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mediaConfig"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "mediaCacheRepository"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string/jumbo v0, "vastTracker"

    .line 17
    .line 18
    .line 19
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "connectivityService"

    .line 23
    .line 24
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "httpClient"

    .line 28
    .line 29
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v0, "screenService"

    .line 33
    .line 34
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/v;

    .line 41
    .line 42
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;

    .line 43
    .line 44
    iput-object p3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;

    .line 45
    .line 46
    iput-object p4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->d:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/x;

    .line 47
    .line 48
    iput-object p5, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->e:Lcom/moloco/sdk/internal/services/g0;

    .line 49
    .line 50
    iput-object p6, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->f:Lio/ktor/client/HttpClient;

    .line 51
    .line 52
    iput-object p7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->g:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/y;

    .line 53
    .line 54
    const-string p1, "VastAdLoaderImpl"

    .line 55
    .line 56
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 57
    .line 58
    return-void
.end method

.method public static final synthetic A(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;)D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->x()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static final f(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$a;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->e(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$a;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final g(Lms/i;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lms/i<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$b;",
            ">;)",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$b;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$b;

    .line 6
    .line 7
    return-object p0
.end method

.method public static final synthetic h()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final i(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;Lcom/moloco/sdk/common_adapter_internal/b;Ljava/util/List;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/c;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->j(Ljava/util/List;Lcom/moloco/sdk/common_adapter_internal/b;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/c;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final k(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;Ljava/util/List;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/e;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->l(Ljava/util/List;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/e;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final synthetic m(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;DLcom/moloco/sdk/common_adapter_internal/b;ZLjava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->r(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;DLcom/moloco/sdk/common_adapter_internal/b;ZLjava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic n(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b;Ljava/util/List;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->s(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b;Ljava/util/List;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic o(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/q;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$a;DLcom/moloco/sdk/common_adapter_internal/b;ZLjava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->t(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/q;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$a;DLcom/moloco/sdk/common_adapter_internal/b;ZLjava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic p(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/r;Ljava/util/List;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a;Ljava/util/List;DLjava/lang/Long;Lcom/moloco/sdk/common_adapter_internal/b;ZLjava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p11}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->u(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/r;Ljava/util/List;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a;Ljava/util/List;DLjava/lang/Long;Lcom/moloco/sdk/common_adapter_internal/b;ZLjava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic q(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/z;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;DLcom/moloco/sdk/common_adapter_internal/b;ZLjava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->v(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/z;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;DLcom/moloco/sdk/common_adapter_internal/b;ZLjava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic y(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic z(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/y;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->g:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/y;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;JLrs/c;)Ljava/lang/Object;
    .locals 11
    .param p1    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;",
            "J",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$o;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$o;->l:I

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
    iput v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$o;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$o;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$o;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$o;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$o;->l:I

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
    iget-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$o;->i:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;

    .line 41
    .line 42
    iget-object p2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$o;->h:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;

    .line 45
    .line 46
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_2
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    sget-object v4, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 62
    .line 63
    iget-object v5, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 64
    .line 65
    new-instance p4, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v2, "Waiting for "

    .line 71
    .line 72
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-static {p2, p3}, Lkotlin/time/b;->K(J)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v2, " to load the vast media file: "

    .line 83
    .line 84
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;

    .line 88
    .line 89
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    const/16 v9, 0xc

    .line 97
    .line 98
    const/4 v10, 0x0

    .line 99
    const/4 v7, 0x0

    .line 100
    const/4 v8, 0x0

    .line 101
    invoke-static/range {v4 .. v10}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    new-instance p4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$p;

    .line 105
    .line 106
    const/4 v2, 0x0

    .line 107
    invoke-direct {p4, p0, p1, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$p;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;Lrs/c;)V

    .line 108
    .line 109
    .line 110
    iput-object p0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$o;->h:Ljava/lang/Object;

    .line 111
    .line 112
    iput-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$o;->i:Ljava/lang/Object;

    .line 113
    .line 114
    iput v3, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$o;->l:I

    .line 115
    .line 116
    invoke-static {p2, p3, p4, v0}, Lkotlinx/coroutines/TimeoutKt;->f(JLkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p4

    .line 120
    if-ne p4, v1, :cond_3

    .line 121
    .line 122
    return-object v1

    .line 123
    :cond_3
    move-object p2, p0

    .line 124
    :goto_1
    check-cast p4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/h;

    .line 125
    .line 126
    sget-object p3, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 127
    .line 128
    iget-object v1, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 129
    .line 130
    const/16 v5, 0xc

    .line 131
    .line 132
    const/4 v6, 0x0

    .line 133
    const-string v2, "Either timeout occurred or media file streaming had terminal status"

    .line 134
    .line 135
    const/4 v3, 0x0

    .line 136
    const/4 v4, 0x0

    .line 137
    move-object v0, p3

    .line 138
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    iget-object v1, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 142
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    const-string v2, "Stream status: "

    .line 149
    .line 150
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v2, " on timeout"

    .line 157
    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    move-object v0, p3

    .line 166
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    if-nez p4, :cond_7

    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;->g()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/f;

    .line 172
    .line 173
    .line 174
    move-result-object p4

    .line 175
    invoke-virtual {p4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/f;->e()Ljava/io/File;

    .line 176
    .line 177
    .line 178
    move-result-object p4

    .line 179
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_6

    .line 184
    .line 185
    invoke-virtual {p4}, Ljava/io/File;->length()J

    .line 186
    .line 187
    .line 188
    move-result-wide v0

    .line 189
    const-wide/16 v2, 0x0

    .line 190
    .line 191
    cmp-long v0, v0, v2

    .line 192
    .line 193
    if-nez v0, :cond_4

    .line 194
    .line 195
    goto/16 :goto_2

    .line 196
    .line 197
    :cond_4
    iget-object v1, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 198
    .line 199
    const/16 v5, 0xc

    .line 200
    .line 201
    const/4 v6, 0x0

    .line 202
    const-string v2, "Local vast media resource exists and has some content. Checking for bitrate information"

    .line 203
    .line 204
    const/4 v3, 0x0

    .line 205
    const/4 v4, 0x0

    .line 206
    move-object v0, p3

    .line 207
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;->g()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/f;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/f;->f()Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    if-eqz v0, :cond_5

    .line 219
    .line 220
    iget-object v1, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 221
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    const-string v2, "Checking for playability of VAST ad with bitrate: "

    .line 228
    .line 229
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;->g()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/f;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-virtual {v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/f;->f()Ljava/lang/Integer;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    const/16 v5, 0xc

    .line 248
    .line 249
    const/4 v6, 0x0

    .line 250
    const/4 v3, 0x0

    .line 251
    const/4 v4, 0x0

    .line 252
    move-object v0, p3

    .line 253
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p4}, Ljava/io/File;->length()J

    .line 257
    .line 258
    .line 259
    move-result-wide v0

    .line 260
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;->g()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/f;

    .line 261
    .line 262
    .line 263
    move-result-object p4

    .line 264
    invoke-virtual {p4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/f;->f()Ljava/lang/Integer;

    .line 265
    .line 266
    .line 267
    move-result-object p4

    .line 268
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 269
    .line 270
    .line 271
    move-result p4

    .line 272
    invoke-virtual {p2, v0, v1, p4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->c(JI)D

    .line 273
    .line 274
    .line 275
    move-result-wide v7

    .line 276
    iget-object v1, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 277
    .line 278
    new-instance p4, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .line 282
    .line 283
    const-string v0, "VAST ad has playable duration: "

    .line 284
    .line 285
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {p4, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    const-string v0, " seconds"

    .line 292
    .line 293
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    move-object v0, p3

    .line 301
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    iget-object p4, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;

    .line 305
    .line 306
    invoke-virtual {p4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;->c()D

    .line 307
    .line 308
    .line 309
    move-result-wide v0

    .line 310
    cmpg-double p4, v7, v0

    .line 311
    .line 312
    if-gez p4, :cond_9

    .line 313
    .line 314
    iget-object v1, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 315
    .line 316
    const/16 v5, 0xc

    .line 317
    .line 318
    const/4 v6, 0x0

    .line 319
    const-string v2, "VAST does not have enough playable duration, so failing "

    .line 320
    .line 321
    const/4 v3, 0x0

    .line 322
    const/4 v4, 0x0

    .line 323
    move-object v0, p3

    .line 324
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    new-instance p1, Lcom/moloco/sdk/internal/g0$a;

    .line 328
    .line 329
    sget-object p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;->y:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;

    .line 330
    .line 331
    invoke-direct {p1, p2}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    return-object p1

    .line 335
    :cond_5
    iget-object v1, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 336
    .line 337
    const/16 v5, 0xc

    .line 338
    .line 339
    const/4 v6, 0x0

    .line 340
    const-string v2, "VAST ad playable duration cannot be determined due to no bitrate information"

    .line 341
    .line 342
    const/4 v3, 0x0

    .line 343
    const/4 v4, 0x0

    .line 344
    move-object v0, p3

    .line 345
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    new-instance p1, Lcom/moloco/sdk/internal/g0$a;

    .line 349
    .line 350
    sget-object p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;->z:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;

    .line 351
    .line 352
    invoke-direct {p1, p2}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    return-object p1

    .line 356
    :cond_6
    :goto_2
    iget-object v1, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 357
    .line 358
    new-instance p1, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object p4

    .line 367
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    const-string p4, " does not exist or is empty"

    .line 371
    .line 372
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    const/16 v5, 0xc

    .line 380
    .line 381
    const/4 v6, 0x0

    .line 382
    const/4 v3, 0x0

    .line 383
    const/4 v4, 0x0

    .line 384
    move-object v0, p3

    .line 385
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    iget-object v1, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 389
    .line 390
    const-string v2, "Failed to start streaming media file, reporting timeout error"

    .line 391
    .line 392
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    new-instance p1, Lcom/moloco/sdk/internal/g0$a;

    .line 396
    .line 397
    sget-object p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;->x:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;

    .line 398
    .line 399
    invoke-direct {p1, p2}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 400
    .line 401
    .line 402
    return-object p1

    .line 403
    :cond_7
    instance-of v0, p4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/h$a;

    .line 404
    .line 405
    if-eqz v0, :cond_8

    .line 406
    .line 407
    iget-object v1, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 408
    .line 409
    const/16 v5, 0xc

    .line 410
    .line 411
    const/4 v6, 0x0

    .line 412
    const-string v2, "Streamed entire file successfully"

    .line 413
    .line 414
    const/4 v3, 0x0

    .line 415
    const/4 v4, 0x0

    .line 416
    move-object v0, p3

    .line 417
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 418
    .line 419
    .line 420
    new-instance p2, Lcom/moloco/sdk/internal/g0$b;

    .line 421
    .line 422
    invoke-direct {p2, p1}, Lcom/moloco/sdk/internal/g0$b;-><init>(Ljava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    return-object p2

    .line 426
    :cond_8
    instance-of v0, p4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/h$b;

    .line 427
    .line 428
    if-eqz v0, :cond_9

    .line 429
    .line 430
    iget-object v1, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 431
    .line 432
    const/16 v5, 0xc

    .line 433
    .line 434
    const/4 v6, 0x0

    .line 435
    const-string v2, "Failed to stream file"

    .line 436
    .line 437
    const/4 v3, 0x0

    .line 438
    const/4 v4, 0x0

    .line 439
    move-object v0, p3

    .line 440
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 441
    .line 442
    .line 443
    new-instance p1, Lcom/moloco/sdk/internal/g0$a;

    .line 444
    .line 445
    check-cast p4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/h$b;

    .line 446
    .line 447
    invoke-virtual {p4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/h$b;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a;

    .line 448
    .line 449
    .line 450
    move-result-object p2

    .line 451
    invoke-static {p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/u;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;

    .line 452
    .line 453
    .line 454
    move-result-object p2

    .line 455
    invoke-direct {p1, p2}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 456
    .line 457
    .line 458
    return-object p1

    .line 459
    :cond_9
    iget-object v1, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 460
    .line 461
    const/16 v5, 0xc

    .line 462
    .line 463
    const/4 v6, 0x0

    .line 464
    const-string v2, "Media file partially exists and ready for streaming"

    .line 465
    .line 466
    const/4 v3, 0x0

    .line 467
    const/4 v4, 0x0

    .line 468
    move-object v0, p3

    .line 469
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    new-instance p2, Lcom/moloco/sdk/internal/g0$b;

    .line 473
    .line 474
    invoke-direct {p2, p1}, Lcom/moloco/sdk/internal/g0$b;-><init>(Ljava/lang/Object;)V

    .line 475
    .line 476
    .line 477
    return-object p2
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;ZLrs/c;)Ljava/lang/Object;
    .locals 18
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    instance-of v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$e;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$e;

    .line 11
    .line 12
    iget v3, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$e;->m:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$e;->m:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$e;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$e;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$e;->k:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$e;->m:I

    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    const/4 v6, 0x1

    .line 39
    if-eqz v4, :cond_3

    .line 40
    .line 41
    if-eq v4, v6, :cond_2

    .line 42
    .line 43
    if-ne v4, v5, :cond_1

    .line 44
    .line 45
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_2

    .line 49
    .line 50
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v1

    .line 58
    :cond_2
    iget-boolean v4, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$e;->j:Z

    .line 59
    .line 60
    iget-object v6, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$e;->i:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v6, Ljava/lang/String;

    .line 63
    .line 64
    iget-object v7, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$e;->h:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;

    .line 67
    .line 68
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    move v9, v4

    .line 72
    move-object v10, v6

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/v;

    .line 78
    .line 79
    iput-object v0, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$e;->h:Ljava/lang/Object;

    .line 80
    .line 81
    move-object/from16 v4, p2

    .line 82
    .line 83
    iput-object v4, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$e;->i:Ljava/lang/Object;

    .line 84
    .line 85
    move/from16 v7, p3

    .line 86
    .line 87
    iput-boolean v7, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$e;->j:Z

    .line 88
    .line 89
    iput v6, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$e;->m:I

    .line 90
    .line 91
    move-object/from16 v6, p1

    .line 92
    .line 93
    invoke-interface {v1, v6, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/v;->b(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-ne v1, v3, :cond_4

    .line 98
    .line 99
    return-object v3

    .line 100
    :cond_4
    move-object v10, v4

    .line 101
    move v9, v7

    .line 102
    move-object v7, v0

    .line 103
    :goto_1
    check-cast v1, Lcom/moloco/sdk/internal/g0;

    .line 104
    .line 105
    instance-of v4, v1, Lcom/moloco/sdk/internal/g0$a;

    .line 106
    .line 107
    if-eqz v4, :cond_5

    .line 108
    .line 109
    sget-object v11, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 110
    .line 111
    iget-object v12, v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 112
    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v3, "Failed to parse vast XML: "

    .line 119
    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    check-cast v1, Lcom/moloco/sdk/internal/g0$a;

    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v13

    .line 136
    const/16 v16, 0xc

    .line 137
    .line 138
    const/16 v17, 0x0

    .line 139
    .line 140
    const/4 v14, 0x0

    .line 141
    const/4 v15, 0x0

    .line 142
    invoke-static/range {v11 .. v17}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    new-instance v2, Lcom/moloco/sdk/internal/g0$a;

    .line 146
    .line 147
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-direct {v2, v1}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    return-object v2

    .line 155
    :cond_5
    instance-of v4, v1, Lcom/moloco/sdk/internal/g0$b;

    .line 156
    .line 157
    if-eqz v4, :cond_9

    .line 158
    .line 159
    check-cast v1, Lcom/moloco/sdk/internal/g0$b;

    .line 160
    .line 161
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/g0$b;->a()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    move-object v8, v1

    .line 166
    check-cast v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/z;

    .line 167
    .line 168
    invoke-static {}, Lcom/moloco/sdk/internal/scheduling/c;->a()Lcom/moloco/sdk/internal/scheduling/a;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-interface {v1}, Lcom/moloco/sdk/internal/scheduling/a;->getDefault()Lkotlin/coroutines/CoroutineContext;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    new-instance v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$f;

    .line 177
    .line 178
    const/4 v11, 0x0

    .line 179
    move-object v6, v4

    .line 180
    invoke-direct/range {v6 .. v11}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$f;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/z;ZLjava/lang/String;Lrs/c;)V

    .line 181
    .line 182
    .line 183
    const/4 v6, 0x0

    .line 184
    iput-object v6, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$e;->h:Ljava/lang/Object;

    .line 185
    .line 186
    iput-object v6, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$e;->i:Ljava/lang/Object;

    .line 187
    .line 188
    iput v5, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$e;->m:I

    .line 189
    .line 190
    invoke-static {v1, v4, v2}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    if-ne v1, v3, :cond_6

    .line 195
    .line 196
    return-object v3

    .line 197
    :cond_6
    :goto_2
    check-cast v1, Lcom/moloco/sdk/internal/g0;

    .line 198
    .line 199
    instance-of v2, v1, Lcom/moloco/sdk/internal/g0$a;

    .line 200
    .line 201
    if-eqz v2, :cond_7

    .line 202
    .line 203
    new-instance v2, Lcom/moloco/sdk/internal/g0$a;

    .line 204
    .line 205
    check-cast v1, Lcom/moloco/sdk/internal/g0$a;

    .line 206
    .line 207
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-direct {v2, v1}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_7
    instance-of v2, v1, Lcom/moloco/sdk/internal/g0$b;

    .line 216
    .line 217
    if-eqz v2, :cond_8

    .line 218
    .line 219
    new-instance v2, Lcom/moloco/sdk/internal/g0$b;

    .line 220
    .line 221
    check-cast v1, Lcom/moloco/sdk/internal/g0$b;

    .line 222
    .line 223
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/g0$b;->a()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-direct {v2, v1}, Lcom/moloco/sdk/internal/g0$b;-><init>(Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    :goto_3
    return-object v2

    .line 231
    :cond_8
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    .line 232
    .line 233
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 234
    .line 235
    .line 236
    throw v1

    .line 237
    :cond_9
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    .line 238
    .line 239
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 240
    .line 241
    .line 242
    throw v1
.end method

.method public final c(JI)D
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    mul-long/2addr p1, v0

    .line 5
    mul-int/lit16 p3, p3, 0x3e8

    .line 6
    .line 7
    long-to-double p1, p1

    .line 8
    int-to-double v0, p3

    .line 9
    div-double/2addr p1, v0

    .line 10
    return-wide p1
.end method

.method public final e(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$a;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$b;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v3, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v4, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    if-eqz p1, :cond_6

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$a;->c()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_6

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_6

    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    check-cast v5, Ljava/util/List;

    .line 49
    .line 50
    new-instance v6, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v7, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    new-instance v8, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v9

    .line 73
    if-eqz v9, :cond_1

    .line 74
    .line 75
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    move-object v10, v9

    .line 80
    check-cast v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/j;

    .line 81
    .line 82
    sget-object v11, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;

    .line 83
    .line 84
    invoke-static {v11, v10}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;->m(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/j;)Z

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    if-nez v10, :cond_0

    .line 89
    .line 90
    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    if-eqz v8, :cond_5

    .line 103
    .line 104
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    check-cast v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/j;

    .line 109
    .line 110
    invoke-virtual {v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/j;->b()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/k;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    instance-of v10, v9, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/k$b;

    .line 115
    .line 116
    if-eqz v10, :cond_3

    .line 117
    .line 118
    invoke-virtual {v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/j;->b()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/k;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    check-cast v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/k$b;

    .line 123
    .line 124
    invoke-virtual {v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/k$b;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/r;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    invoke-virtual {v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/r;->e()Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    invoke-static {v0, v9}, Lkotlin/collections/CollectionsKt;->E(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 133
    .line 134
    .line 135
    invoke-virtual {v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/r;->f()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    if-eqz v9, :cond_2

    .line 140
    .line 141
    invoke-virtual {v9}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a;->b()Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object v10

    .line 145
    invoke-static {v1, v10}, Lkotlin/collections/CollectionsKt;->E(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 146
    .line 147
    .line 148
    invoke-virtual {v9}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a;->c()Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v9

    .line 152
    invoke-static {v2, v9}, Lkotlin/collections/CollectionsKt;->E(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 153
    .line 154
    .line 155
    :cond_2
    invoke-virtual {v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/r;->b()Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt;->E(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_3
    instance-of v9, v9, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/k$a;

    .line 164
    .line 165
    if-eqz v9, :cond_4

    .line 166
    .line 167
    invoke-virtual {v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/j;->b()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/k;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    check-cast v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/k$a;

    .line 172
    .line 173
    invoke-virtual {v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/k$a;->a()Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    invoke-static {v7, v8}, Lkotlin/collections/CollectionsKt;->E(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 182
    .line 183
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 184
    .line 185
    .line 186
    throw p1

    .line 187
    :cond_5
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :cond_6
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$b;

    .line 196
    .line 197
    new-instance v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a;

    .line 198
    .line 199
    const/4 v6, 0x0

    .line 200
    invoke-direct {v5, v6, v1, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b0;Ljava/util/List;Ljava/util/List;)V

    .line 201
    .line 202
    .line 203
    invoke-direct {p1, v0, v5, v3, v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$b;-><init>(Ljava/util/List;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a;Ljava/util/List;Ljava/util/List;)V

    .line 204
    .line 205
    .line 206
    return-object p1
.end method

.method public final j(Ljava/util/List;Lcom/moloco/sdk/common_adapter_internal/b;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/g;",
            ">;",
            "Lcom/moloco/sdk/common_adapter_internal/b;",
            ")",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/c;"
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
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object v2, v1

    .line 21
    check-cast v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/g;

    .line 22
    .line 23
    sget-object v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;

    .line 24
    .line 25
    invoke-static {v3, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;->l(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/g;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/g;->e()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p2}, Lcom/moloco/sdk/common_adapter_internal/b;->f()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p2}, Lcom/moloco/sdk/common_adapter_internal/b;->c()I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-static {p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/t;->h(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/Comparator;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/g;

    .line 74
    .line 75
    const/4 p2, 0x0

    .line 76
    if-eqz p1, :cond_8

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/g;->e()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/t;->s()Ljava/util/Comparator;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->r0(Ljava/util/List;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    move-object v2, v0

    .line 95
    check-cast v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0;

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/g;->f()Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const/4 v1, 0x0

    .line 102
    if-eqz v0, :cond_2

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    move v3, v0

    .line 109
    goto :goto_1

    .line 110
    :cond_2
    move v3, v1

    .line 111
    :goto_1
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/g;->d()Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    if-eqz v0, :cond_3

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    move v4, v0

    .line 122
    goto :goto_2

    .line 123
    :cond_3
    move v4, v1

    .line 124
    :goto_2
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/g;->b()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/h;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    if-eqz v0, :cond_4

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/h;->a()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    :cond_4
    move-object v5, p2

    .line 135
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/g;->b()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/h;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    if-eqz p2, :cond_6

    .line 140
    .line 141
    invoke-virtual {p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/h;->b()Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    if-nez p2, :cond_5

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_5
    :goto_3
    move-object v6, p2

    .line 149
    goto :goto_5

    .line 150
    :cond_6
    :goto_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    goto :goto_3

    .line 155
    :goto_5
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/g;->c()Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    new-instance v7, Ljava/util/ArrayList;

    .line 160
    .line 161
    const/16 p2, 0xa

    .line 162
    .line 163
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 164
    .line 165
    .line 166
    move-result p2

    .line 167
    invoke-direct {v7, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    .line 169
    .line 170
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result p2

    .line 178
    if-eqz p2, :cond_7

    .line 179
    .line 180
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    check-cast p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/y;

    .line 185
    .line 186
    invoke-virtual {p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/y;->c()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    invoke-interface {v7, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    goto :goto_6

    .line 194
    :cond_7
    new-instance p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/c;

    .line 195
    .line 196
    move-object v1, p2

    .line 197
    invoke-direct/range {v1 .. v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/c;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0;IILjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 198
    .line 199
    .line 200
    :cond_8
    return-object p2
.end method

.method public final l(Ljava/util/List;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/e;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/n;",
            ">;)",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/e;"
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
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object v2, v1

    .line 21
    check-cast v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/n;

    .line 22
    .line 23
    sget-object v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;

    .line 24
    .line 25
    invoke-static {v3, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;->n(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/n;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/t;->f()Ljava/util/Comparator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/n;

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    if-eqz p1, :cond_7

    .line 51
    .line 52
    new-instance v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/e;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/n;->f()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/n;->h()Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const/4 v3, 0x0

    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    move v4, v1

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    move v4, v3

    .line 72
    :goto_1
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/n;->d()Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    move v5, v1

    .line 83
    goto :goto_2

    .line 84
    :cond_3
    move v5, v3

    .line 85
    :goto_2
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/n;->b()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/o;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/o;->a()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    :cond_4
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/n;->b()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/o;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    if-eqz v1, :cond_6

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/o;->b()Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    if-nez v1, :cond_5

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_5
    :goto_3
    move-object v6, v1

    .line 109
    goto :goto_5

    .line 110
    :cond_6
    :goto_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    goto :goto_3

    .line 115
    :goto_5
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/n;->g()Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/n;->c()Ljava/lang/Long;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/n;->e()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/t;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    move-object v1, v10

    .line 128
    move v3, v4

    .line 129
    move v4, v5

    .line 130
    move-object v5, v0

    .line 131
    invoke-direct/range {v1 .. v9}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/e;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0;IILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/t;)V

    .line 132
    .line 133
    .line 134
    move-object v0, v10

    .line 135
    :cond_7
    return-object v0
.end method

.method public final r(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;DLcom/moloco/sdk/common_adapter_internal/b;ZLjava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;",
            "D",
            "Lcom/moloco/sdk/common_adapter_internal/b;",
            "Z",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;",
            ">;>;)",
            "Ljava/lang/Object;"
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
    move-object/from16 v3, p8

    .line 8
    .line 9
    instance-of v4, v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v3

    .line 14
    check-cast v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;

    .line 15
    .line 16
    iget v5, v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;->s:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v5, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    iput v5, v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;->s:I

    .line 26
    .line 27
    :goto_0
    move-object v13, v4

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    new-instance v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;

    .line 30
    .line 31
    invoke-direct {v4, v0, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;Lrs/c;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :goto_1
    iget-object v3, v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;->q:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iget v5, v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;->s:I

    .line 42
    .line 43
    const-string v6, "Failed to load wrapper vast ad: "

    .line 44
    .line 45
    const/4 v7, 0x2

    .line 46
    const/4 v8, 0x1

    .line 47
    if-eqz v5, :cond_3

    .line 48
    .line 49
    if-eq v5, v8, :cond_2

    .line 50
    .line 51
    if-ne v5, v7, :cond_1

    .line 52
    .line 53
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_9

    .line 57
    .line 58
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 61
    .line 62
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v1

    .line 66
    :cond_2
    iget v1, v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;->p:I

    .line 67
    .line 68
    iget-boolean v2, v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;->o:Z

    .line 69
    .line 70
    iget-wide v10, v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;->n:D

    .line 71
    .line 72
    iget-object v5, v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;->m:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v5, Ljava/util/List;

    .line 75
    .line 76
    iget-object v12, v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;->l:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v12, Ljava/lang/String;

    .line 79
    .line 80
    iget-object v14, v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;->k:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v14, Lcom/moloco/sdk/common_adapter_internal/b;

    .line 83
    .line 84
    iget-object v15, v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;->j:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v15, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;

    .line 87
    .line 88
    iget-object v7, v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;->i:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b;

    .line 91
    .line 92
    iget-object v9, v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;->h:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v9, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;

    .line 95
    .line 96
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    move-object/from16 v16, v12

    .line 100
    .line 101
    move v12, v2

    .line 102
    move-object v2, v5

    .line 103
    move-object v5, v9

    .line 104
    goto/16 :goto_4

    .line 105
    .line 106
    :cond_3
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    sget-object v3, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 110
    .line 111
    iget-object v5, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 112
    .line 113
    new-instance v7, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v9, "Loading wrapper vast ad: "

    .line 119
    .line 120
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b;->e()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v18

    .line 134
    const/16 v21, 0xc

    .line 135
    .line 136
    const/16 v22, 0x0

    .line 137
    .line 138
    const/16 v19, 0x0

    .line 139
    .line 140
    const/16 v20, 0x0

    .line 141
    .line 142
    move-object/from16 v16, v3

    .line 143
    .line 144
    move-object/from16 v17, v5

    .line 145
    .line 146
    invoke-static/range {v16 .. v22}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    if-eqz v2, :cond_4

    .line 150
    .line 151
    invoke-virtual/range {p2 .. p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;->f()I

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    add-int/2addr v5, v8

    .line 156
    goto :goto_2

    .line 157
    :cond_4
    const/4 v5, 0x0

    .line 158
    :goto_2
    sget-object v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;

    .line 159
    .line 160
    if-eqz v2, :cond_5

    .line 161
    .line 162
    invoke-virtual/range {p2 .. p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;->c()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$a;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    if-eqz v9, :cond_5

    .line 167
    .line 168
    invoke-virtual {v9}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$a;->d()Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    goto :goto_3

    .line 173
    :cond_5
    const/4 v9, 0x0

    .line 174
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b;->b()Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    invoke-static {v7, v9, v10}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;->d(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    const/4 v9, 0x4

    .line 183
    if-gt v5, v9, :cond_10

    .line 184
    .line 185
    if-eqz v2, :cond_6

    .line 186
    .line 187
    invoke-virtual/range {p2 .. p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;->e()Ljava/util/Set;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    if-eqz v9, :cond_6

    .line 192
    .line 193
    invoke-virtual/range {p1 .. p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b;->e()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v10

    .line 197
    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    if-ne v9, v8, :cond_6

    .line 202
    .line 203
    goto/16 :goto_a

    .line 204
    .line 205
    :cond_6
    if-eqz v2, :cond_7

    .line 206
    .line 207
    invoke-virtual/range {p2 .. p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;->d()Z

    .line 208
    .line 209
    .line 210
    move-result v9

    .line 211
    if-nez v9, :cond_7

    .line 212
    .line 213
    goto/16 :goto_a

    .line 214
    .line 215
    :cond_7
    iput-object v0, v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;->h:Ljava/lang/Object;

    .line 216
    .line 217
    iput-object v1, v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;->i:Ljava/lang/Object;

    .line 218
    .line 219
    iput-object v2, v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;->j:Ljava/lang/Object;

    .line 220
    .line 221
    move-object/from16 v3, p5

    .line 222
    .line 223
    iput-object v3, v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;->k:Ljava/lang/Object;

    .line 224
    .line 225
    move-object/from16 v9, p7

    .line 226
    .line 227
    iput-object v9, v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;->l:Ljava/lang/Object;

    .line 228
    .line 229
    iput-object v7, v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;->m:Ljava/lang/Object;

    .line 230
    .line 231
    move-wide/from16 v10, p3

    .line 232
    .line 233
    iput-wide v10, v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;->n:D

    .line 234
    .line 235
    move/from16 v12, p6

    .line 236
    .line 237
    iput-boolean v12, v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;->o:Z

    .line 238
    .line 239
    iput v5, v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;->p:I

    .line 240
    .line 241
    iput v8, v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;->s:I

    .line 242
    .line 243
    invoke-virtual {v0, v1, v7, v13}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->s(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b;Ljava/util/List;Lrs/c;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v14

    .line 247
    if-ne v14, v4, :cond_8

    .line 248
    .line 249
    return-object v4

    .line 250
    :cond_8
    move-object v15, v2

    .line 251
    move-object v2, v7

    .line 252
    move-object/from16 v16, v9

    .line 253
    .line 254
    move-object v7, v1

    .line 255
    move v1, v5

    .line 256
    move-object v5, v0

    .line 257
    move-object/from16 v23, v14

    .line 258
    .line 259
    move-object v14, v3

    .line 260
    move-object/from16 v3, v23

    .line 261
    .line 262
    :goto_4
    check-cast v3, Lcom/moloco/sdk/internal/g0;

    .line 263
    .line 264
    instance-of v9, v3, Lcom/moloco/sdk/internal/g0$a;

    .line 265
    .line 266
    if-eqz v9, :cond_9

    .line 267
    .line 268
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 269
    .line 270
    iget-object v2, v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 271
    .line 272
    new-instance v4, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    check-cast v3, Lcom/moloco/sdk/internal/g0$a;

    .line 281
    .line 282
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    const/16 v5, 0xc

    .line 294
    .line 295
    const/4 v6, 0x0

    .line 296
    const/4 v7, 0x0

    .line 297
    const/4 v8, 0x0

    .line 298
    move-object/from16 p1, v1

    .line 299
    .line 300
    move-object/from16 p2, v2

    .line 301
    .line 302
    move-object/from16 p3, v4

    .line 303
    .line 304
    move-object/from16 p4, v7

    .line 305
    .line 306
    move/from16 p5, v8

    .line 307
    .line 308
    move/from16 p6, v5

    .line 309
    .line 310
    move-object/from16 p7, v6

    .line 311
    .line 312
    invoke-static/range {p1 .. p7}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    new-instance v1, Lcom/moloco/sdk/internal/g0$a;

    .line 316
    .line 317
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    invoke-direct {v1, v2}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    return-object v1

    .line 325
    :cond_9
    instance-of v6, v3, Lcom/moloco/sdk/internal/g0$b;

    .line 326
    .line 327
    if-eqz v6, :cond_f

    .line 328
    .line 329
    check-cast v3, Lcom/moloco/sdk/internal/g0$b;

    .line 330
    .line 331
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/g0$b;->a()Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    move-object v6, v3

    .line 336
    check-cast v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/z;

    .line 337
    .line 338
    sget-object v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;

    .line 339
    .line 340
    if-eqz v15, :cond_a

    .line 341
    .line 342
    invoke-virtual {v15}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;->c()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$a;

    .line 343
    .line 344
    .line 345
    move-result-object v9

    .line 346
    if-eqz v9, :cond_a

    .line 347
    .line 348
    invoke-virtual {v9}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$a;->e()Ljava/util/List;

    .line 349
    .line 350
    .line 351
    move-result-object v9

    .line 352
    goto :goto_5

    .line 353
    :cond_a
    const/4 v9, 0x0

    .line 354
    :goto_5
    invoke-virtual {v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b;->d()Ljava/util/List;

    .line 355
    .line 356
    .line 357
    move-result-object v8

    .line 358
    invoke-static {v3, v9, v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;->d(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 359
    .line 360
    .line 361
    move-result-object v8

    .line 362
    if-eqz v15, :cond_b

    .line 363
    .line 364
    invoke-virtual {v15}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;->c()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$a;

    .line 365
    .line 366
    .line 367
    move-result-object v9

    .line 368
    if-eqz v9, :cond_b

    .line 369
    .line 370
    invoke-virtual {v9}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$a;->c()Ljava/util/List;

    .line 371
    .line 372
    .line 373
    move-result-object v9

    .line 374
    goto :goto_6

    .line 375
    :cond_b
    const/4 v9, 0x0

    .line 376
    :goto_6
    invoke-virtual {v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b;->a()Ljava/util/List;

    .line 377
    .line 378
    .line 379
    move-result-object v18

    .line 380
    invoke-static/range {v18 .. v18}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-static {v3, v9, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;->d(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    if-eqz v15, :cond_c

    .line 389
    .line 390
    invoke-virtual {v15}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;->e()Ljava/util/Set;

    .line 391
    .line 392
    .line 393
    move-result-object v9

    .line 394
    goto :goto_7

    .line 395
    :cond_c
    const/4 v9, 0x0

    .line 396
    :goto_7
    invoke-virtual {v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b;->e()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v15

    .line 400
    invoke-static {v3, v9, v15}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;->j(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    new-instance v9, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;

    .line 405
    .line 406
    invoke-virtual {v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b;->c()Ljava/lang/Boolean;

    .line 407
    .line 408
    .line 409
    move-result-object v7

    .line 410
    if-eqz v7, :cond_d

    .line 411
    .line 412
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 413
    .line 414
    .line 415
    move-result v7

    .line 416
    goto :goto_8

    .line 417
    :cond_d
    const/4 v7, 0x1

    .line 418
    :goto_8
    new-instance v15, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$a;

    .line 419
    .line 420
    invoke-direct {v15, v8, v2, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$a;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 421
    .line 422
    .line 423
    invoke-direct {v9, v1, v3, v7, v15}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;-><init>(ILjava/util/Set;ZLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$a;)V

    .line 424
    .line 425
    .line 426
    const/4 v0, 0x0

    .line 427
    iput-object v0, v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;->h:Ljava/lang/Object;

    .line 428
    .line 429
    iput-object v0, v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;->i:Ljava/lang/Object;

    .line 430
    .line 431
    iput-object v0, v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;->j:Ljava/lang/Object;

    .line 432
    .line 433
    iput-object v0, v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;->k:Ljava/lang/Object;

    .line 434
    .line 435
    iput-object v0, v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;->l:Ljava/lang/Object;

    .line 436
    .line 437
    iput-object v0, v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;->m:Ljava/lang/Object;

    .line 438
    .line 439
    const/4 v0, 0x2

    .line 440
    iput v0, v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$l;->s:I

    .line 441
    .line 442
    move-object v7, v9

    .line 443
    move-wide v8, v10

    .line 444
    move-object v10, v14

    .line 445
    move v11, v12

    .line 446
    move-object/from16 v12, v16

    .line 447
    .line 448
    invoke-virtual/range {v5 .. v13}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->v(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/z;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;DLcom/moloco/sdk/common_adapter_internal/b;ZLjava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v3

    .line 452
    if-ne v3, v4, :cond_e

    .line 453
    .line 454
    return-object v4

    .line 455
    :cond_e
    :goto_9
    return-object v3

    .line 456
    :cond_f
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 457
    .line 458
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 459
    .line 460
    .line 461
    throw v0

    .line 462
    :cond_10
    :goto_a
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/x;->e:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/x;

    .line 463
    .line 464
    move-object/from16 v1, p0

    .line 465
    .line 466
    invoke-virtual {v1, v7, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->w(Ljava/util/List;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/x;)V

    .line 467
    .line 468
    .line 469
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;->e:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;

    .line 470
    .line 471
    iget-object v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 472
    .line 473
    new-instance v4, Ljava/lang/StringBuilder;

    .line 474
    .line 475
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v4

    .line 488
    const/16 v5, 0xc

    .line 489
    .line 490
    const/4 v6, 0x0

    .line 491
    const/4 v7, 0x0

    .line 492
    const/4 v8, 0x0

    .line 493
    move-object/from16 p1, v3

    .line 494
    .line 495
    move-object/from16 p2, v2

    .line 496
    .line 497
    move-object/from16 p3, v4

    .line 498
    .line 499
    move-object/from16 p4, v7

    .line 500
    .line 501
    move/from16 p5, v8

    .line 502
    .line 503
    move/from16 p6, v5

    .line 504
    .line 505
    move-object/from16 p7, v6

    .line 506
    .line 507
    invoke-static/range {p1 .. p7}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 508
    .line 509
    .line 510
    new-instance v2, Lcom/moloco/sdk/internal/g0$a;

    .line 511
    .line 512
    invoke-direct {v2, v0}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 513
    .line 514
    .line 515
    return-object v2
.end method

.method public final s(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b;Ljava/util/List;Lrs/c;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/z;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    instance-of v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$g;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$g;

    .line 11
    .line 12
    iget v3, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$g;->l:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$g;->l:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$g;

    .line 25
    .line 26
    invoke-direct {v2, v1, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$g;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$g;->j:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$g;->l:I

    .line 36
    .line 37
    const/4 v5, 0x3

    .line 38
    const/4 v6, 0x2

    .line 39
    const/4 v7, 0x1

    .line 40
    const/4 v8, 0x0

    .line 41
    if-eqz v4, :cond_4

    .line 42
    .line 43
    if-eq v4, v7, :cond_3

    .line 44
    .line 45
    if-eq v4, v6, :cond_2

    .line 46
    .line 47
    if-ne v4, v5, :cond_1

    .line 48
    .line 49
    iget-object v3, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$g;->i:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v3, Ljava/util/List;

    .line 52
    .line 53
    iget-object v2, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$g;->h:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;

    .line 56
    .line 57
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_5

    .line 61
    .line 62
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 65
    .line 66
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :cond_2
    iget-object v4, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$g;->i:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v4, Ljava/util/List;

    .line 73
    .line 74
    iget-object v6, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$g;->h:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;

    .line 77
    .line 78
    :try_start_0
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lio/ktor/client/plugins/HttpRequestTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    goto/16 :goto_4

    .line 82
    .line 83
    :catch_0
    move-exception v0

    .line 84
    :goto_1
    move-object v9, v4

    .line 85
    goto/16 :goto_9

    .line 86
    .line 87
    :catch_1
    move-exception v0

    .line 88
    :goto_2
    move-object v9, v4

    .line 89
    goto/16 :goto_b

    .line 90
    .line 91
    :cond_3
    iget-object v4, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$g;->i:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v4, Ljava/util/List;

    .line 94
    .line 95
    iget-object v9, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$g;->h:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v9, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;

    .line 98
    .line 99
    :try_start_1
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Lio/ktor/client/plugins/HttpRequestTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :catch_2
    move-exception v0

    .line 104
    move-object v6, v9

    .line 105
    goto :goto_1

    .line 106
    :catch_3
    move-exception v0

    .line 107
    move-object v6, v9

    .line 108
    goto :goto_2

    .line 109
    :cond_4
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    :try_start_2
    sget-object v10, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 113
    .line 114
    iget-object v11, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 115
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v4, "Fetching wrapper vast tag url: "

    .line 122
    .line 123
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual/range {p1 .. p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b;->e()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v12

    .line 137
    const/16 v15, 0xc

    .line 138
    .line 139
    const/16 v16, 0x0

    .line 140
    .line 141
    const/4 v13, 0x0

    .line 142
    const/4 v14, 0x0

    .line 143
    invoke-static/range {v10 .. v16}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->f:Lio/ktor/client/HttpClient;

    .line 147
    .line 148
    invoke-virtual/range {p1 .. p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b;->e()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    new-instance v9, Lio/ktor/client/request/HttpRequestBuilder;

    .line 153
    .line 154
    invoke-direct {v9}, Lio/ktor/client/request/HttpRequestBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-static {v9, v4}, Lio/ktor/client/request/a;->b(Lio/ktor/client/request/HttpRequestBuilder;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-wide/16 v10, 0x1388

    .line 161
    .line 162
    invoke-static {v9, v10, v11}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/c;->b(Lio/ktor/client/request/HttpRequestBuilder;J)V

    .line 163
    .line 164
    .line 165
    sget-object v4, Lwr/m;->b:Lwr/m$a;

    .line 166
    .line 167
    invoke-virtual {v4}, Lwr/m$a;->a()Lwr/m;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-virtual {v9, v4}, Lio/ktor/client/request/HttpRequestBuilder;->n(Lwr/m;)V

    .line 172
    .line 173
    .line 174
    new-instance v4, Lio/ktor/client/statement/HttpStatement;

    .line 175
    .line 176
    invoke-direct {v4, v9, v0}, Lio/ktor/client/statement/HttpStatement;-><init>(Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/client/HttpClient;)V

    .line 177
    .line 178
    .line 179
    iput-object v1, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$g;->h:Ljava/lang/Object;
    :try_end_2
    .catch Lio/ktor/client/plugins/HttpRequestTimeoutException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 180
    .line 181
    move-object/from16 v9, p2

    .line 182
    .line 183
    :try_start_3
    iput-object v9, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$g;->i:Ljava/lang/Object;

    .line 184
    .line 185
    iput v7, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$g;->l:I

    .line 186
    .line 187
    invoke-virtual {v4, v2}, Lio/ktor/client/statement/HttpStatement;->d(Lrs/c;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0
    :try_end_3
    .catch Lio/ktor/client/plugins/HttpRequestTimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 191
    if-ne v0, v3, :cond_5

    .line 192
    .line 193
    return-object v3

    .line 194
    :cond_5
    move-object v4, v9

    .line 195
    move-object v9, v1

    .line 196
    :goto_3
    :try_start_4
    check-cast v0, Ltr/c;

    .line 197
    .line 198
    iput-object v9, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$g;->h:Ljava/lang/Object;

    .line 199
    .line 200
    iput-object v4, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$g;->i:Ljava/lang/Object;

    .line 201
    .line 202
    iput v6, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$g;->l:I

    .line 203
    .line 204
    invoke-static {v0, v8, v2, v7, v8}, Lio/ktor/client/statement/HttpResponseKt;->c(Ltr/c;Ljava/nio/charset/Charset;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v0
    :try_end_4
    .catch Lio/ktor/client/plugins/HttpRequestTimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 208
    if-ne v0, v3, :cond_6

    .line 209
    .line 210
    return-object v3

    .line 211
    :cond_6
    move-object v6, v9

    .line 212
    :goto_4
    :try_start_5
    check-cast v0, Ljava/lang/String;
    :try_end_5
    .catch Lio/ktor/client/plugins/HttpRequestTimeoutException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 213
    .line 214
    iget-object v7, v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/v;

    .line 215
    .line 216
    iput-object v6, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$g;->h:Ljava/lang/Object;

    .line 217
    .line 218
    iput-object v4, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$g;->i:Ljava/lang/Object;

    .line 219
    .line 220
    iput v5, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$g;->l:I

    .line 221
    .line 222
    invoke-interface {v7, v0, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/v;->b(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    if-ne v0, v3, :cond_7

    .line 227
    .line 228
    return-object v3

    .line 229
    :cond_7
    move-object v3, v4

    .line 230
    move-object v2, v6

    .line 231
    :goto_5
    instance-of v4, v0, Lcom/moloco/sdk/internal/g0$b;

    .line 232
    .line 233
    if-eqz v4, :cond_8

    .line 234
    .line 235
    check-cast v0, Lcom/moloco/sdk/internal/g0$b;

    .line 236
    .line 237
    goto :goto_6

    .line 238
    :cond_8
    move-object v0, v8

    .line 239
    :goto_6
    if-eqz v0, :cond_9

    .line 240
    .line 241
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/g0$b;->a()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    move-object v8, v0

    .line 246
    check-cast v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/z;

    .line 247
    .line 248
    :cond_9
    if-nez v8, :cond_a

    .line 249
    .line 250
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/x;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/x;

    .line 251
    .line 252
    invoke-virtual {v2, v3, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->w(Ljava/util/List;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/x;)V

    .line 253
    .line 254
    .line 255
    sget-object v4, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 256
    .line 257
    iget-object v5, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 258
    .line 259
    const/16 v9, 0xc

    .line 260
    .line 261
    const/4 v10, 0x0

    .line 262
    const-string v6, "Failed to create VAST object from XML"

    .line 263
    .line 264
    const/4 v7, 0x0

    .line 265
    const/4 v8, 0x0

    .line 266
    invoke-static/range {v4 .. v10}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    new-instance v0, Lcom/moloco/sdk/internal/g0$a;

    .line 270
    .line 271
    sget-object v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;

    .line 272
    .line 273
    invoke-direct {v0, v2}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    return-object v0

    .line 277
    :cond_a
    new-instance v0, Lcom/moloco/sdk/internal/g0$b;

    .line 278
    .line 279
    invoke-direct {v0, v8}, Lcom/moloco/sdk/internal/g0$b;-><init>(Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    return-object v0

    .line 283
    :catch_4
    move-exception v0

    .line 284
    move-object v13, v0

    .line 285
    goto :goto_a

    .line 286
    :catch_5
    move-exception v0

    .line 287
    move-object v13, v0

    .line 288
    goto :goto_c

    .line 289
    :catch_6
    move-exception v0

    .line 290
    :goto_7
    move-object v6, v1

    .line 291
    goto :goto_9

    .line 292
    :catch_7
    move-exception v0

    .line 293
    :goto_8
    move-object v6, v1

    .line 294
    goto :goto_b

    .line 295
    :catch_8
    move-exception v0

    .line 296
    move-object/from16 v9, p2

    .line 297
    .line 298
    goto :goto_7

    .line 299
    :catch_9
    move-exception v0

    .line 300
    move-object/from16 v9, p2

    .line 301
    .line 302
    goto :goto_8

    .line 303
    :goto_9
    move-object v13, v0

    .line 304
    move-object v4, v9

    .line 305
    :goto_a
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/x;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/x;

    .line 306
    .line 307
    invoke-virtual {v6, v4, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->w(Ljava/util/List;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/x;)V

    .line 308
    .line 309
    .line 310
    sget-object v10, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 311
    .line 312
    iget-object v11, v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 313
    .line 314
    const/16 v15, 0x8

    .line 315
    .line 316
    const/16 v16, 0x0

    .line 317
    .line 318
    const-string v12, "Fetching wrapper vast tag url fetch error"

    .line 319
    .line 320
    const/4 v14, 0x0

    .line 321
    invoke-static/range {v10 .. v16}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    new-instance v0, Lcom/moloco/sdk/internal/g0$a;

    .line 325
    .line 326
    sget-object v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;->g:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;

    .line 327
    .line 328
    invoke-direct {v0, v2}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    return-object v0

    .line 332
    :goto_b
    move-object v13, v0

    .line 333
    move-object v4, v9

    .line 334
    :goto_c
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/x;->d:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/x;

    .line 335
    .line 336
    invoke-virtual {v6, v4, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->w(Ljava/util/List;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/x;)V

    .line 337
    .line 338
    .line 339
    sget-object v10, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 340
    .line 341
    iget-object v11, v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 342
    .line 343
    const/16 v15, 0x8

    .line 344
    .line 345
    const/16 v16, 0x0

    .line 346
    .line 347
    const-string v12, "Fetching wrapper vast tag url timed out"

    .line 348
    .line 349
    const/4 v14, 0x0

    .line 350
    invoke-static/range {v10 .. v16}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    new-instance v0, Lcom/moloco/sdk/internal/g0$a;

    .line 354
    .line 355
    sget-object v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;->f:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;

    .line 356
    .line 357
    invoke-direct {v0, v2}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    return-object v0
.end method

.method public final t(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/q;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$a;DLcom/moloco/sdk/common_adapter_internal/b;ZLjava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/q;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$a;",
            "D",
            "Lcom/moloco/sdk/common_adapter_internal/b;",
            "Z",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p8

    .line 6
    .line 7
    instance-of v3, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;

    .line 13
    .line 14
    iget v4, v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;->x:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;->x:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;

    .line 27
    .line 28
    invoke-direct {v3, v0, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;Lrs/c;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;->v:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iget v5, v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;->x:I

    .line 38
    .line 39
    const/4 v6, 0x1

    .line 40
    if-eqz v5, :cond_2

    .line 41
    .line 42
    if-ne v5, v6, :cond_1

    .line 43
    .line 44
    iget-boolean v1, v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;->u:Z

    .line 45
    .line 46
    iget-wide v8, v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;->t:D

    .line 47
    .line 48
    iget-object v5, v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;->s:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/j;

    .line 51
    .line 52
    iget-object v10, v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;->r:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v10, Ljava/util/Iterator;

    .line 55
    .line 56
    iget-object v11, v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;->q:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v11, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;

    .line 59
    .line 60
    iget-object v12, v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;->p:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v12, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/c;

    .line 63
    .line 64
    iget-object v13, v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;->o:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/f;

    .line 67
    .line 68
    iget-object v14, v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;->n:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v14, Lms/i;

    .line 71
    .line 72
    iget-object v15, v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;->m:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v15, Ljava/util/List;

    .line 75
    .line 76
    iget-object v7, v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;->l:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v7, Ljava/lang/String;

    .line 79
    .line 80
    iget-object v6, v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;->k:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v6, Lcom/moloco/sdk/common_adapter_internal/b;

    .line 83
    .line 84
    move/from16 p1, v1

    .line 85
    .line 86
    iget-object v1, v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;->j:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$a;

    .line 89
    .line 90
    move-object/from16 p2, v1

    .line 91
    .line 92
    iget-object v1, v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;->i:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/q;

    .line 95
    .line 96
    move-object/from16 p3, v1

    .line 97
    .line 98
    iget-object v1, v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;->h:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;

    .line 101
    .line 102
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    move-object/from16 v0, p3

    .line 106
    .line 107
    move-wide/from16 v16, v8

    .line 108
    .line 109
    move-object v8, v6

    .line 110
    move-object v9, v7

    .line 111
    move/from16 v7, p1

    .line 112
    .line 113
    move-object v6, v5

    .line 114
    move-object v5, v4

    .line 115
    move-object v4, v2

    .line 116
    move-object/from16 v2, p2

    .line 117
    .line 118
    goto/16 :goto_3

    .line 119
    .line 120
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 121
    .line 122
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 123
    .line 124
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw v1

    .line 128
    :cond_2
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    sget-object v2, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 132
    .line 133
    iget-object v6, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 134
    .line 135
    const/16 v10, 0xc

    .line 136
    .line 137
    const/4 v11, 0x0

    .line 138
    const-string v7, "Trying to load RenderAd"

    .line 139
    .line 140
    const/4 v8, 0x0

    .line 141
    const/4 v9, 0x0

    .line 142
    move-object v5, v2

    .line 143
    invoke-static/range {v5 .. v11}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    sget-object v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;

    .line 147
    .line 148
    if-eqz v1, :cond_3

    .line 149
    .line 150
    invoke-virtual/range {p2 .. p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$a;->d()Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    goto :goto_1

    .line 155
    :cond_3
    const/4 v6, 0x0

    .line 156
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/q;->b()Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    invoke-static {v5, v6, v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;->d(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/q;->a()Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    if-eqz v6, :cond_4

    .line 173
    .line 174
    sget-object v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/x;->g:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/x;

    .line 175
    .line 176
    invoke-virtual {v0, v5, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->w(Ljava/util/List;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/x;)V

    .line 177
    .line 178
    .line 179
    iget-object v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 180
    .line 181
    const/16 v3, 0xc

    .line 182
    .line 183
    const/4 v4, 0x0

    .line 184
    const-string v5, "No creatives in InLine"

    .line 185
    .line 186
    const/4 v6, 0x0

    .line 187
    const/4 v7, 0x0

    .line 188
    move-object/from16 p1, v2

    .line 189
    .line 190
    move-object/from16 p2, v1

    .line 191
    .line 192
    move-object/from16 p3, v5

    .line 193
    .line 194
    move-object/from16 p4, v6

    .line 195
    .line 196
    move/from16 p5, v7

    .line 197
    .line 198
    move/from16 p6, v3

    .line 199
    .line 200
    move-object/from16 p7, v4

    .line 201
    .line 202
    invoke-static/range {p1 .. p7}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    new-instance v1, Lcom/moloco/sdk/internal/g0$a;

    .line 206
    .line 207
    sget-object v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;->h:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;

    .line 208
    .line 209
    invoke-direct {v1, v2}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    return-object v1

    .line 213
    :cond_4
    new-instance v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/h;

    .line 214
    .line 215
    invoke-direct {v2, v0, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/h;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$a;)V

    .line 216
    .line 217
    .line 218
    invoke-static {v2}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    sget-object v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;

    .line 223
    .line 224
    invoke-virtual/range {p1 .. p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/q;->a()Ljava/util/List;

    .line 225
    .line 226
    .line 227
    move-result-object v7

    .line 228
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 229
    .line 230
    .line 231
    move-result-object v7

    .line 232
    move-object/from16 v8, p7

    .line 233
    .line 234
    move-object v9, v0

    .line 235
    move-object v15, v2

    .line 236
    move-object v10, v3

    .line 237
    move-object v0, v5

    .line 238
    move-object v12, v6

    .line 239
    move-object v11, v7

    .line 240
    const/4 v13, 0x0

    .line 241
    const/4 v14, 0x0

    .line 242
    move-wide/from16 v5, p3

    .line 243
    .line 244
    move-object/from16 v3, p5

    .line 245
    .line 246
    move/from16 v7, p6

    .line 247
    .line 248
    move-object v2, v1

    .line 249
    move-object/from16 v1, p1

    .line 250
    .line 251
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 252
    .line 253
    .line 254
    move-result v16

    .line 255
    if-eqz v16, :cond_c

    .line 256
    .line 257
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v16

    .line 261
    move-object/from16 v28, v4

    .line 262
    .line 263
    move-object/from16 v4, v16

    .line 264
    .line 265
    check-cast v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/j;

    .line 266
    .line 267
    if-eqz v14, :cond_5

    .line 268
    .line 269
    if-eqz v13, :cond_5

    .line 270
    .line 271
    goto/16 :goto_5

    .line 272
    .line 273
    :cond_5
    move/from16 p1, v7

    .line 274
    .line 275
    sget-object v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;

    .line 276
    .line 277
    invoke-static {v7, v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;->m(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/j;)Z

    .line 278
    .line 279
    .line 280
    move-result v7

    .line 281
    if-eqz v7, :cond_6

    .line 282
    .line 283
    move/from16 v7, p1

    .line 284
    .line 285
    move-object/from16 v4, v28

    .line 286
    .line 287
    goto :goto_2

    .line 288
    :cond_6
    if-nez v14, :cond_a

    .line 289
    .line 290
    invoke-virtual {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/j;->b()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/k;

    .line 291
    .line 292
    .line 293
    move-result-object v7

    .line 294
    instance-of v7, v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/k$b;

    .line 295
    .line 296
    if-eqz v7, :cond_a

    .line 297
    .line 298
    invoke-virtual {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/j;->b()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/k;

    .line 299
    .line 300
    .line 301
    move-result-object v7

    .line 302
    check-cast v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/k$b;

    .line 303
    .line 304
    invoke-virtual {v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/k$b;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/r;

    .line 305
    .line 306
    .line 307
    move-result-object v17

    .line 308
    invoke-static {v15}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->g(Lms/i;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$b;

    .line 309
    .line 310
    .line 311
    move-result-object v7

    .line 312
    invoke-virtual {v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$b;->c()Ljava/util/List;

    .line 313
    .line 314
    .line 315
    move-result-object v18

    .line 316
    invoke-static {v15}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->g(Lms/i;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$b;

    .line 317
    .line 318
    .line 319
    move-result-object v7

    .line 320
    invoke-virtual {v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$b;->d()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a;

    .line 321
    .line 322
    .line 323
    move-result-object v19

    .line 324
    invoke-virtual {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/j;->b()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/k;

    .line 325
    .line 326
    .line 327
    move-result-object v7

    .line 328
    check-cast v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/k$b;

    .line 329
    .line 330
    invoke-virtual {v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/k$b;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/r;

    .line 331
    .line 332
    .line 333
    move-result-object v7

    .line 334
    invoke-virtual {v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/r;->a()Ljava/lang/Long;

    .line 335
    .line 336
    .line 337
    move-result-object v23

    .line 338
    iput-object v9, v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;->h:Ljava/lang/Object;

    .line 339
    .line 340
    iput-object v1, v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;->i:Ljava/lang/Object;

    .line 341
    .line 342
    iput-object v2, v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;->j:Ljava/lang/Object;

    .line 343
    .line 344
    iput-object v3, v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;->k:Ljava/lang/Object;

    .line 345
    .line 346
    iput-object v8, v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;->l:Ljava/lang/Object;

    .line 347
    .line 348
    iput-object v0, v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;->m:Ljava/lang/Object;

    .line 349
    .line 350
    iput-object v15, v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;->n:Ljava/lang/Object;

    .line 351
    .line 352
    iput-object v14, v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;->o:Ljava/lang/Object;

    .line 353
    .line 354
    iput-object v13, v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;->p:Ljava/lang/Object;

    .line 355
    .line 356
    iput-object v12, v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;->q:Ljava/lang/Object;

    .line 357
    .line 358
    iput-object v11, v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;->r:Ljava/lang/Object;

    .line 359
    .line 360
    iput-object v4, v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;->s:Ljava/lang/Object;

    .line 361
    .line 362
    iput-wide v5, v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;->t:D

    .line 363
    .line 364
    move/from16 v7, p1

    .line 365
    .line 366
    iput-boolean v7, v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;->u:Z

    .line 367
    .line 368
    move-object/from16 p1, v4

    .line 369
    .line 370
    const/4 v4, 0x1

    .line 371
    iput v4, v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$h;->x:I

    .line 372
    .line 373
    move-object/from16 v16, v9

    .line 374
    .line 375
    move-object/from16 v20, v0

    .line 376
    .line 377
    move-wide/from16 v21, v5

    .line 378
    .line 379
    move-object/from16 v24, v3

    .line 380
    .line 381
    move/from16 v25, v7

    .line 382
    .line 383
    move-object/from16 v26, v8

    .line 384
    .line 385
    move-object/from16 v27, v10

    .line 386
    .line 387
    invoke-virtual/range {v16 .. v27}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->u(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/r;Ljava/util/List;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a;Ljava/util/List;DLjava/lang/Long;Lcom/moloco/sdk/common_adapter_internal/b;ZLjava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v4

    .line 391
    move-wide/from16 v16, v5

    .line 392
    .line 393
    move-object/from16 v5, v28

    .line 394
    .line 395
    if-ne v4, v5, :cond_7

    .line 396
    .line 397
    return-object v5

    .line 398
    :cond_7
    move-object/from16 v6, p1

    .line 399
    .line 400
    move-object/from16 v29, v15

    .line 401
    .line 402
    move-object v15, v0

    .line 403
    move-object v0, v1

    .line 404
    move-object v1, v9

    .line 405
    move-object v9, v8

    .line 406
    move-object v8, v3

    .line 407
    move-object v3, v10

    .line 408
    move-object v10, v11

    .line 409
    move-object v11, v12

    .line 410
    move-object v12, v13

    .line 411
    move-object v13, v14

    .line 412
    move-object/from16 v14, v29

    .line 413
    .line 414
    :goto_3
    check-cast v4, Lcom/moloco/sdk/internal/g0;

    .line 415
    .line 416
    move-object/from16 p1, v0

    .line 417
    .line 418
    instance-of v0, v4, Lcom/moloco/sdk/internal/g0$a;

    .line 419
    .line 420
    if-eqz v0, :cond_8

    .line 421
    .line 422
    sget-object v18, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 423
    .line 424
    iget-object v0, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 425
    .line 426
    new-instance v11, Ljava/lang/StringBuilder;

    .line 427
    .line 428
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    .line 430
    .line 431
    move-object/from16 v25, v1

    .line 432
    .line 433
    const-string v1, "Failed to prepare RenderLinear: "

    .line 434
    .line 435
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    check-cast v4, Lcom/moloco/sdk/internal/g0$a;

    .line 439
    .line 440
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v20

    .line 451
    const/16 v23, 0xc

    .line 452
    .line 453
    const/16 v24, 0x0

    .line 454
    .line 455
    const/16 v21, 0x0

    .line 456
    .line 457
    const/16 v22, 0x0

    .line 458
    .line 459
    move-object/from16 v19, v0

    .line 460
    .line 461
    invoke-static/range {v18 .. v24}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;

    .line 469
    .line 470
    move-object/from16 v1, p1

    .line 471
    .line 472
    move-object v4, v6

    .line 473
    move-object v11, v10

    .line 474
    move-object v10, v3

    .line 475
    move-object v3, v8

    .line 476
    move-object v8, v9

    .line 477
    move-object/from16 v9, v25

    .line 478
    .line 479
    move-object/from16 v29, v12

    .line 480
    .line 481
    move-object v12, v0

    .line 482
    move-object v0, v15

    .line 483
    move-object v15, v14

    .line 484
    move-object v14, v13

    .line 485
    move-object/from16 v13, v29

    .line 486
    .line 487
    goto :goto_4

    .line 488
    :cond_8
    move-object/from16 v25, v1

    .line 489
    .line 490
    instance-of v0, v4, Lcom/moloco/sdk/internal/g0$b;

    .line 491
    .line 492
    if-eqz v0, :cond_9

    .line 493
    .line 494
    check-cast v4, Lcom/moloco/sdk/internal/g0$b;

    .line 495
    .line 496
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/g0$b;->a()Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/f;

    .line 501
    .line 502
    move-object/from16 v1, p1

    .line 503
    .line 504
    move-object v4, v6

    .line 505
    move-object v13, v12

    .line 506
    move-object v12, v11

    .line 507
    move-object v11, v10

    .line 508
    move-object v10, v3

    .line 509
    move-object v3, v8

    .line 510
    move-object v8, v9

    .line 511
    move-object/from16 v9, v25

    .line 512
    .line 513
    move-object/from16 v29, v14

    .line 514
    .line 515
    move-object v14, v0

    .line 516
    move-object v0, v15

    .line 517
    move-object/from16 v15, v29

    .line 518
    .line 519
    goto :goto_4

    .line 520
    :cond_9
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 521
    .line 522
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 523
    .line 524
    .line 525
    throw v0

    .line 526
    :cond_a
    move/from16 v7, p1

    .line 527
    .line 528
    move-object/from16 p1, v4

    .line 529
    .line 530
    move-wide/from16 v16, v5

    .line 531
    .line 532
    move-object/from16 v5, v28

    .line 533
    .line 534
    move-object/from16 v4, p1

    .line 535
    .line 536
    :goto_4
    if-nez v13, :cond_b

    .line 537
    .line 538
    invoke-virtual {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/j;->b()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/k;

    .line 539
    .line 540
    .line 541
    move-result-object v6

    .line 542
    instance-of v6, v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/k$a;

    .line 543
    .line 544
    if-eqz v6, :cond_b

    .line 545
    .line 546
    invoke-virtual {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/j;->b()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/k;

    .line 547
    .line 548
    .line 549
    move-result-object v4

    .line 550
    check-cast v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/k$a;

    .line 551
    .line 552
    invoke-virtual {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/k$a;->a()Ljava/util/List;

    .line 553
    .line 554
    .line 555
    move-result-object v4

    .line 556
    invoke-virtual {v9, v4, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->j(Ljava/util/List;Lcom/moloco/sdk/common_adapter_internal/b;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/c;

    .line 557
    .line 558
    .line 559
    move-result-object v13

    .line 560
    :cond_b
    move-object v4, v5

    .line 561
    move-wide/from16 v5, v16

    .line 562
    .line 563
    goto/16 :goto_2

    .line 564
    .line 565
    :cond_c
    :goto_5
    if-nez v14, :cond_d

    .line 566
    .line 567
    sget-object v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/x;->h:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/x;

    .line 568
    .line 569
    invoke-virtual {v9, v0, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->w(Ljava/util/List;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/x;)V

    .line 570
    .line 571
    .line 572
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 573
    .line 574
    iget-object v1, v9, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 575
    .line 576
    new-instance v2, Ljava/lang/StringBuilder;

    .line 577
    .line 578
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 579
    .line 580
    .line 581
    const-string v3, "Failed to load linear: "

    .line 582
    .line 583
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v2

    .line 593
    const/16 v3, 0xc

    .line 594
    .line 595
    const/4 v4, 0x0

    .line 596
    const/4 v5, 0x0

    .line 597
    const/4 v6, 0x0

    .line 598
    move-object/from16 p1, v0

    .line 599
    .line 600
    move-object/from16 p2, v1

    .line 601
    .line 602
    move-object/from16 p3, v2

    .line 603
    .line 604
    move-object/from16 p4, v5

    .line 605
    .line 606
    move/from16 p5, v6

    .line 607
    .line 608
    move/from16 p6, v3

    .line 609
    .line 610
    move-object/from16 p7, v4

    .line 611
    .line 612
    invoke-static/range {p1 .. p7}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 613
    .line 614
    .line 615
    new-instance v0, Lcom/moloco/sdk/internal/g0$a;

    .line 616
    .line 617
    invoke-direct {v0, v12}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 618
    .line 619
    .line 620
    return-object v0

    .line 621
    :cond_d
    sget-object v4, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 622
    .line 623
    iget-object v5, v9, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 624
    .line 625
    const/16 v6, 0xc

    .line 626
    .line 627
    const/4 v7, 0x0

    .line 628
    const-string v8, "RenderAd loaded successfully."

    .line 629
    .line 630
    const/4 v10, 0x0

    .line 631
    const/4 v11, 0x0

    .line 632
    move-object/from16 p1, v4

    .line 633
    .line 634
    move-object/from16 p2, v5

    .line 635
    .line 636
    move-object/from16 p3, v8

    .line 637
    .line 638
    move-object/from16 p4, v10

    .line 639
    .line 640
    move/from16 p5, v11

    .line 641
    .line 642
    move/from16 p6, v6

    .line 643
    .line 644
    move-object/from16 p7, v7

    .line 645
    .line 646
    invoke-static/range {p1 .. p7}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v14}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/f;->d()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/e;

    .line 650
    .line 651
    .line 652
    move-result-object v4

    .line 653
    if-nez v4, :cond_e

    .line 654
    .line 655
    invoke-static {v15}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->g(Lms/i;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$b;

    .line 656
    .line 657
    .line 658
    move-result-object v4

    .line 659
    invoke-virtual {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$b;->b()Ljava/util/List;

    .line 660
    .line 661
    .line 662
    move-result-object v4

    .line 663
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/List;)Ljava/util/List;

    .line 664
    .line 665
    .line 666
    move-result-object v4

    .line 667
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->e0(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    .line 668
    .line 669
    .line 670
    move-result-object v4

    .line 671
    new-instance v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/i;

    .line 672
    .line 673
    invoke-direct {v5, v9}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/i;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;)V

    .line 674
    .line 675
    .line 676
    invoke-static {v4, v5}, Lkotlin/sequences/j;->G(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 677
    .line 678
    .line 679
    move-result-object v4

    .line 680
    invoke-static {v4}, Lkotlin/sequences/j;->x(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    move-result-object v4

    .line 684
    move-object/from16 v23, v4

    .line 685
    .line 686
    check-cast v23, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/e;

    .line 687
    .line 688
    const/16 v24, 0x3f

    .line 689
    .line 690
    const/16 v25, 0x0

    .line 691
    .line 692
    const/16 v17, 0x0

    .line 693
    .line 694
    const/16 v18, 0x0

    .line 695
    .line 696
    const/16 v19, 0x0

    .line 697
    .line 698
    const/16 v20, 0x0

    .line 699
    .line 700
    const/16 v21, 0x0

    .line 701
    .line 702
    const/16 v22, 0x0

    .line 703
    .line 704
    move-object/from16 v16, v14

    .line 705
    .line 706
    invoke-static/range {v16 .. v25}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/f;->b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/f;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/t;Ljava/io/File;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/h;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/e;ILjava/lang/Object;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/f;

    .line 707
    .line 708
    .line 709
    move-result-object v14

    .line 710
    :cond_e
    move-object/from16 v17, v14

    .line 711
    .line 712
    if-nez v13, :cond_f

    .line 713
    .line 714
    invoke-static {v15}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->g(Lms/i;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$b;

    .line 715
    .line 716
    .line 717
    move-result-object v4

    .line 718
    invoke-virtual {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$b;->a()Ljava/util/List;

    .line 719
    .line 720
    .line 721
    move-result-object v4

    .line 722
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/List;)Ljava/util/List;

    .line 723
    .line 724
    .line 725
    move-result-object v4

    .line 726
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->e0(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    .line 727
    .line 728
    .line 729
    move-result-object v4

    .line 730
    new-instance v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/l;

    .line 731
    .line 732
    invoke-direct {v5, v9, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/l;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;Lcom/moloco/sdk/common_adapter_internal/b;)V

    .line 733
    .line 734
    .line 735
    invoke-static {v4, v5}, Lkotlin/sequences/j;->G(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 736
    .line 737
    .line 738
    move-result-object v3

    .line 739
    invoke-static {v3}, Lkotlin/sequences/j;->x(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    .line 740
    .line 741
    .line 742
    move-result-object v3

    .line 743
    move-object v13, v3

    .line 744
    check-cast v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/c;

    .line 745
    .line 746
    :cond_f
    move-object/from16 v18, v13

    .line 747
    .line 748
    sget-object v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;

    .line 749
    .line 750
    if-eqz v2, :cond_10

    .line 751
    .line 752
    invoke-virtual {v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$a;->e()Ljava/util/List;

    .line 753
    .line 754
    .line 755
    move-result-object v7

    .line 756
    goto :goto_6

    .line 757
    :cond_10
    const/4 v7, 0x0

    .line 758
    :goto_6
    invoke-virtual {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/q;->c()Ljava/util/List;

    .line 759
    .line 760
    .line 761
    move-result-object v1

    .line 762
    invoke-static {v3, v7, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;->d(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 763
    .line 764
    .line 765
    move-result-object v1

    .line 766
    new-instance v2, Ljava/util/ArrayList;

    .line 767
    .line 768
    const/16 v3, 0xa

    .line 769
    .line 770
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 771
    .line 772
    .line 773
    move-result v3

    .line 774
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 775
    .line 776
    .line 777
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 778
    .line 779
    .line 780
    move-result-object v1

    .line 781
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 782
    .line 783
    .line 784
    move-result v3

    .line 785
    if-eqz v3, :cond_11

    .line 786
    .line 787
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 788
    .line 789
    .line 790
    move-result-object v3

    .line 791
    check-cast v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/p;

    .line 792
    .line 793
    invoke-virtual {v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/p;->a()Ljava/lang/String;

    .line 794
    .line 795
    .line 796
    move-result-object v3

    .line 797
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 798
    .line 799
    .line 800
    goto :goto_7

    .line 801
    :cond_11
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 802
    .line 803
    iget-object v3, v9, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 804
    .line 805
    const/16 v4, 0xc

    .line 806
    .line 807
    const/4 v5, 0x0

    .line 808
    const-string v6, "Returning RenderAd"

    .line 809
    .line 810
    const/4 v7, 0x0

    .line 811
    const/4 v8, 0x0

    .line 812
    move-object/from16 p1, v1

    .line 813
    .line 814
    move-object/from16 p2, v3

    .line 815
    .line 816
    move-object/from16 p3, v6

    .line 817
    .line 818
    move-object/from16 p4, v7

    .line 819
    .line 820
    move/from16 p5, v8

    .line 821
    .line 822
    move/from16 p6, v4

    .line 823
    .line 824
    move-object/from16 p7, v5

    .line 825
    .line 826
    invoke-static/range {p1 .. p7}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 827
    .line 828
    .line 829
    new-instance v1, Lcom/moloco/sdk/internal/g0$b;

    .line 830
    .line 831
    new-instance v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;

    .line 832
    .line 833
    const/16 v22, 0x10

    .line 834
    .line 835
    const/16 v23, 0x0

    .line 836
    .line 837
    const/16 v21, 0x0

    .line 838
    .line 839
    move-object/from16 v16, v3

    .line 840
    .line 841
    move-object/from16 v19, v2

    .line 842
    .line 843
    move-object/from16 v20, v0

    .line 844
    .line 845
    invoke-direct/range {v16 .. v23}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/f;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/c;Ljava/util/List;Ljava/util/List;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 846
    .line 847
    .line 848
    invoke-direct {v1, v3}, Lcom/moloco/sdk/internal/g0$b;-><init>(Ljava/lang/Object;)V

    .line 849
    .line 850
    .line 851
    return-object v1
.end method

.method public final u(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/r;Ljava/util/List;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a;Ljava/util/List;DLjava/lang/Long;Lcom/moloco/sdk/common_adapter_internal/b;ZLjava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/r;",
            "Ljava/util/List<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/y;",
            ">;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;D",
            "Ljava/lang/Long;",
            "Lcom/moloco/sdk/common_adapter_internal/b;",
            "Z",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/f;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-wide/from16 v0, p5

    .line 4
    .line 5
    move-object/from16 v2, p11

    .line 6
    .line 7
    instance-of v3, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$n;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$n;

    .line 13
    .line 14
    iget v4, v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$n;->o:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v7, v4, v5

    .line 19
    .line 20
    if-eqz v7, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$n;->o:I

    .line 24
    .line 25
    :goto_0
    move-object v7, v3

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    new-instance v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$n;

    .line 28
    .line 29
    invoke-direct {v3, v6, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$n;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;Lrs/c;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :goto_1
    iget-object v2, v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$n;->m:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    iget v3, v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$n;->o:I

    .line 40
    .line 41
    const/4 v9, 0x1

    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    if-ne v3, v9, :cond_1

    .line 45
    .line 46
    iget-object v0, v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$n;->l:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 49
    .line 50
    iget-object v1, v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$n;->k:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a;

    .line 53
    .line 54
    iget-object v3, v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$n;->j:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v3, Ljava/util/List;

    .line 57
    .line 58
    iget-object v4, v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$n;->i:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/r;

    .line 61
    .line 62
    iget-object v5, v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$n;->h:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;

    .line 65
    .line 66
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    move-object/from16 v17, v2

    .line 70
    .line 71
    move-object v2, v1

    .line 72
    move-object v1, v3

    .line 73
    move-object/from16 v3, v17

    .line 74
    .line 75
    goto/16 :goto_3

    .line 76
    .line 77
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 80
    .line 81
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v0

    .line 85
    :cond_2
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    sget-object v10, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 89
    .line 90
    iget-object v11, v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 91
    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v3, "Preparing InLine RenderLinear with target linear size: "

    .line 98
    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v12

    .line 109
    const/16 v15, 0xc

    .line 110
    .line 111
    const/16 v16, 0x0

    .line 112
    .line 113
    const/4 v13, 0x0

    .line 114
    const/4 v14, 0x0

    .line 115
    invoke-static/range {v10 .. v16}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual/range {p1 .. p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/r;->c()Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    new-instance v3, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-eqz v4, :cond_4

    .line 136
    .line 137
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    move-object v5, v4

    .line 142
    check-cast v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/s;

    .line 143
    .line 144
    sget-object v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;

    .line 145
    .line 146
    invoke-static {v10, v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;->o(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/s;)Z

    .line 147
    .line 148
    .line 149
    move-result v11

    .line 150
    if-nez v11, :cond_3

    .line 151
    .line 152
    invoke-virtual {v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/s;->i()Z

    .line 153
    .line 154
    .line 155
    move-result v11

    .line 156
    if-eqz v11, :cond_3

    .line 157
    .line 158
    invoke-virtual {v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/s;->g()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-static {v10, v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;->p(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    if-eqz v5, :cond_3

    .line 167
    .line 168
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_4
    invoke-virtual/range {p8 .. p8}, Lcom/moloco/sdk/common_adapter_internal/b;->f()I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual/range {p8 .. p8}, Lcom/moloco/sdk/common_adapter_internal/b;->c()I

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    move-object/from16 v5, p7

    .line 189
    .line 190
    invoke-static {v0, v1, v5, v2, v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/t;->g(DLjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/Comparator;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt;->U0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_5

    .line 203
    .line 204
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/x;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/x;

    .line 205
    .line 206
    move-object/from16 v1, p4

    .line 207
    .line 208
    invoke-virtual {v6, v1, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->w(Ljava/util/List;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/x;)V

    .line 209
    .line 210
    .line 211
    new-instance v0, Lcom/moloco/sdk/internal/g0$a;

    .line 212
    .line 213
    sget-object v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;

    .line 214
    .line 215
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    return-object v0

    .line 219
    :cond_5
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 220
    .line 221
    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 222
    .line 223
    .line 224
    sget-object v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;->E:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;

    .line 225
    .line 226
    iput-object v1, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 227
    .line 228
    invoke-static {v0}, Lkotlinx/coroutines/flow/c;->a(Ljava/lang/Iterable;)Lkt/b;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-static {v0}, Lkotlinx/coroutines/flow/c;->h(Lkt/b;)Lkt/b;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    new-instance v11, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m;

    .line 237
    .line 238
    move-object v0, v11

    .line 239
    move/from16 v2, p9

    .line 240
    .line 241
    move-object/from16 v3, p0

    .line 242
    .line 243
    move-object/from16 v4, p10

    .line 244
    .line 245
    move-object v5, v10

    .line 246
    invoke-direct/range {v0 .. v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m;-><init>(Lkt/b;ZLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 247
    .line 248
    .line 249
    iput-object v6, v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$n;->h:Ljava/lang/Object;

    .line 250
    .line 251
    move-object/from16 v0, p1

    .line 252
    .line 253
    iput-object v0, v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$n;->i:Ljava/lang/Object;

    .line 254
    .line 255
    move-object/from16 v1, p2

    .line 256
    .line 257
    iput-object v1, v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$n;->j:Ljava/lang/Object;

    .line 258
    .line 259
    move-object/from16 v2, p3

    .line 260
    .line 261
    iput-object v2, v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$n;->k:Ljava/lang/Object;

    .line 262
    .line 263
    iput-object v10, v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$n;->l:Ljava/lang/Object;

    .line 264
    .line 265
    iput v9, v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$n;->o:I

    .line 266
    .line 267
    invoke-static {v11, v7}, Lkotlinx/coroutines/flow/c;->A(Lkt/b;Lrs/c;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    if-ne v3, v8, :cond_6

    .line 272
    .line 273
    return-object v8

    .line 274
    :cond_6
    move-object v4, v0

    .line 275
    move-object v5, v6

    .line 276
    move-object v0, v10

    .line 277
    :goto_3
    check-cast v3, Lkotlin/Pair;

    .line 278
    .line 279
    if-nez v3, :cond_7

    .line 280
    .line 281
    new-instance v1, Lcom/moloco/sdk/internal/g0$a;

    .line 282
    .line 283
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 284
    .line 285
    invoke-direct {v1, v2}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    sget-object v2, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 289
    .line 290
    iget-object v3, v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 291
    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .line 296
    .line 297
    const-string v5, "Failed to load media file: "

    .line 298
    .line 299
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 303
    .line 304
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    const/16 v4, 0xc

    .line 312
    .line 313
    const/4 v5, 0x0

    .line 314
    const/4 v7, 0x0

    .line 315
    const/4 v8, 0x0

    .line 316
    move-object/from16 p1, v2

    .line 317
    .line 318
    move-object/from16 p2, v3

    .line 319
    .line 320
    move-object/from16 p3, v0

    .line 321
    .line 322
    move-object/from16 p4, v7

    .line 323
    .line 324
    move/from16 p5, v8

    .line 325
    .line 326
    move/from16 p6, v4

    .line 327
    .line 328
    move-object/from16 p7, v5

    .line 329
    .line 330
    invoke-static/range {p1 .. p7}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    return-object v1

    .line 334
    :cond_7
    invoke-virtual {v3}, Lkotlin/Pair;->b()Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/s;

    .line 339
    .line 340
    invoke-virtual {v3}, Lkotlin/Pair;->d()Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    check-cast v3, Ljava/io/File;

    .line 345
    .line 346
    sget-object v7, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 347
    .line 348
    iget-object v8, v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 349
    .line 350
    new-instance v9, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .line 354
    .line 355
    const-string v10, "Found a RenderLinear MediaFile: "

    .line 356
    .line 357
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v10

    .line 364
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    const-string v10, " for url: "

    .line 368
    .line 369
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/s;->e()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v10

    .line 376
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v9

    .line 383
    const/16 v10, 0xc

    .line 384
    .line 385
    const/4 v11, 0x0

    .line 386
    const/4 v12, 0x0

    .line 387
    const/4 v13, 0x0

    .line 388
    move-object/from16 p1, v7

    .line 389
    .line 390
    move-object/from16 p2, v8

    .line 391
    .line 392
    move-object/from16 p3, v9

    .line 393
    .line 394
    move-object/from16 p4, v12

    .line 395
    .line 396
    move/from16 p5, v13

    .line 397
    .line 398
    move/from16 p6, v10

    .line 399
    .line 400
    move-object/from16 p7, v11

    .line 401
    .line 402
    invoke-static/range {p1 .. p7}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/r;->f()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a;

    .line 406
    .line 407
    .line 408
    move-result-object v8

    .line 409
    const/4 v9, 0x0

    .line 410
    if-eqz v8, :cond_8

    .line 411
    .line 412
    invoke-virtual {v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b0;

    .line 413
    .line 414
    .line 415
    move-result-object v8

    .line 416
    if-eqz v8, :cond_8

    .line 417
    .line 418
    invoke-virtual {v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b0;->a()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v8

    .line 422
    goto :goto_4

    .line 423
    :cond_8
    move-object v8, v9

    .line 424
    :goto_4
    sget-object v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;

    .line 425
    .line 426
    invoke-virtual {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/r;->e()Ljava/util/List;

    .line 427
    .line 428
    .line 429
    move-result-object v11

    .line 430
    invoke-static {v10, v11, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;->d(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    new-instance v11, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a;

    .line 435
    .line 436
    invoke-virtual {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/r;->f()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a;

    .line 437
    .line 438
    .line 439
    move-result-object v12

    .line 440
    if-eqz v12, :cond_9

    .line 441
    .line 442
    invoke-virtual {v12}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b0;

    .line 443
    .line 444
    .line 445
    move-result-object v12

    .line 446
    goto :goto_5

    .line 447
    :cond_9
    move-object v12, v9

    .line 448
    :goto_5
    invoke-virtual {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/r;->f()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a;

    .line 449
    .line 450
    .line 451
    move-result-object v13

    .line 452
    if-eqz v13, :cond_a

    .line 453
    .line 454
    invoke-virtual {v13}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a;->b()Ljava/util/List;

    .line 455
    .line 456
    .line 457
    move-result-object v13

    .line 458
    goto :goto_6

    .line 459
    :cond_a
    move-object v13, v9

    .line 460
    :goto_6
    if-eqz v2, :cond_b

    .line 461
    .line 462
    invoke-virtual {v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a;->b()Ljava/util/List;

    .line 463
    .line 464
    .line 465
    move-result-object v14

    .line 466
    goto :goto_7

    .line 467
    :cond_b
    move-object v14, v9

    .line 468
    :goto_7
    invoke-static {v10, v13, v14}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;->d(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 469
    .line 470
    .line 471
    move-result-object v13

    .line 472
    invoke-virtual {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/r;->f()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a;

    .line 473
    .line 474
    .line 475
    move-result-object v14

    .line 476
    if-eqz v14, :cond_c

    .line 477
    .line 478
    invoke-virtual {v14}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a;->c()Ljava/util/List;

    .line 479
    .line 480
    .line 481
    move-result-object v14

    .line 482
    goto :goto_8

    .line 483
    :cond_c
    move-object v14, v9

    .line 484
    :goto_8
    if-eqz v2, :cond_d

    .line 485
    .line 486
    invoke-virtual {v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a;->c()Ljava/util/List;

    .line 487
    .line 488
    .line 489
    move-result-object v9

    .line 490
    :cond_d
    invoke-static {v10, v14, v9}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;->d(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 491
    .line 492
    .line 493
    move-result-object v2

    .line 494
    invoke-direct {v11, v12, v13, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b0;Ljava/util/List;Ljava/util/List;)V

    .line 495
    .line 496
    .line 497
    iget-object v2, v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 498
    .line 499
    new-instance v9, Ljava/lang/StringBuilder;

    .line 500
    .line 501
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    .line 503
    .line 504
    const-string v12, "Returning RenderLinear for url: "

    .line 505
    .line 506
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/s;->e()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v12

    .line 513
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    const-string v12, ", with bitrate: "

    .line 517
    .line 518
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/s;->b()Ljava/lang/Integer;

    .line 522
    .line 523
    .line 524
    move-result-object v12

    .line 525
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    const/16 v12, 0x20

    .line 529
    .line 530
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v9

    .line 537
    const/16 v12, 0xc

    .line 538
    .line 539
    const/4 v13, 0x0

    .line 540
    const/4 v14, 0x0

    .line 541
    const/4 v15, 0x0

    .line 542
    move-object/from16 p1, v7

    .line 543
    .line 544
    move-object/from16 p2, v2

    .line 545
    .line 546
    move-object/from16 p3, v9

    .line 547
    .line 548
    move-object/from16 p4, v14

    .line 549
    .line 550
    move/from16 p5, v15

    .line 551
    .line 552
    move/from16 p6, v12

    .line 553
    .line 554
    move-object/from16 p7, v13

    .line 555
    .line 556
    invoke-static/range {p1 .. p7}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 557
    .line 558
    .line 559
    new-instance v2, Lcom/moloco/sdk/internal/g0$b;

    .line 560
    .line 561
    new-instance v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/f;

    .line 562
    .line 563
    invoke-virtual {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/r;->d()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/t;

    .line 564
    .line 565
    .line 566
    move-result-object v9

    .line 567
    invoke-virtual {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/s;->b()Ljava/lang/Integer;

    .line 568
    .line 569
    .line 570
    move-result-object v12

    .line 571
    invoke-virtual {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/s;->e()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    invoke-static {v10, v1, v11}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;Ljava/util/List;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/h;

    .line 576
    .line 577
    .line 578
    move-result-object v1

    .line 579
    invoke-virtual {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/r;->b()Ljava/util/List;

    .line 580
    .line 581
    .line 582
    move-result-object v4

    .line 583
    invoke-virtual {v5, v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->l(Ljava/util/List;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/e;

    .line 584
    .line 585
    .line 586
    move-result-object v4

    .line 587
    move-object/from16 p1, v7

    .line 588
    .line 589
    move-object/from16 p2, v9

    .line 590
    .line 591
    move-object/from16 p3, v3

    .line 592
    .line 593
    move-object/from16 p4, v12

    .line 594
    .line 595
    move-object/from16 p5, v0

    .line 596
    .line 597
    move-object/from16 p6, v8

    .line 598
    .line 599
    move-object/from16 p7, v1

    .line 600
    .line 601
    move-object/from16 p8, v4

    .line 602
    .line 603
    invoke-direct/range {p1 .. p8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/f;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/t;Ljava/io/File;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/h;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/e;)V

    .line 604
    .line 605
    .line 606
    invoke-direct {v2, v7}, Lcom/moloco/sdk/internal/g0$b;-><init>(Ljava/lang/Object;)V

    .line 607
    .line 608
    .line 609
    return-object v2
.end method

.method public final v(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/z;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;DLcom/moloco/sdk/common_adapter_internal/b;ZLjava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/z;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;",
            "D",
            "Lcom/moloco/sdk/common_adapter_internal/b;",
            "Z",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v1, p8

    .line 6
    .line 7
    instance-of v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$k;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    move-object v2, v1

    .line 12
    check-cast v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$k;

    .line 13
    .line 14
    iget v3, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$k;->l:I

    .line 15
    .line 16
    const/high16 v4, -0x80000000

    .line 17
    .line 18
    and-int v5, v3, v4

    .line 19
    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    sub-int/2addr v3, v4

    .line 23
    iput v3, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$k;->l:I

    .line 24
    .line 25
    :goto_0
    move-object v11, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    new-instance v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$k;

    .line 28
    .line 29
    invoke-direct {v2, v10, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$k;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;Lrs/c;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :goto_1
    iget-object v1, v11, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$k;->j:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v12

    .line 39
    iget v2, v11, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$k;->l:I

    .line 40
    .line 41
    const/4 v13, 0x1

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    if-ne v2, v13, :cond_1

    .line 45
    .line 46
    iget-object v0, v11, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$k;->i:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 49
    .line 50
    iget-object v2, v11, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$k;->h:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;

    .line 53
    .line 54
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_5

    .line 58
    .line 59
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 62
    .line 63
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_2
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    sget-object v2, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 71
    .line 72
    iget-object v3, v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 73
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v4, "Loading vast ad with wrapperChainParams: "

    .line 80
    .line 81
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    const/16 v7, 0xc

    .line 92
    .line 93
    const/4 v8, 0x0

    .line 94
    const/4 v5, 0x0

    .line 95
    const/4 v6, 0x0

    .line 96
    invoke-static/range {v2 .. v8}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    sget-object v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;

    .line 100
    .line 101
    const/4 v2, 0x0

    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    invoke-virtual/range {p2 .. p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;->c()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$a;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    if-eqz v3, :cond_3

    .line 109
    .line 110
    invoke-virtual {v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$a;->d()Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    goto :goto_2

    .line 115
    :cond_3
    move-object v3, v2

    .line 116
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/z;->b()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-static {v1, v3, v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;->c(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$c;Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual/range {p1 .. p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/z;->a()Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_5

    .line 133
    .line 134
    if-eqz v0, :cond_4

    .line 135
    .line 136
    sget-object v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/x;->f:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/x;

    .line 137
    .line 138
    :cond_4
    invoke-virtual {v10, v1, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->w(Ljava/util/List;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/x;)V

    .line 139
    .line 140
    .line 141
    new-instance v0, Lcom/moloco/sdk/internal/g0$a;

    .line 142
    .line 143
    sget-object v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;->d:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;

    .line 144
    .line 145
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    return-object v0

    .line 149
    :cond_5
    if-eqz v0, :cond_6

    .line 150
    .line 151
    invoke-virtual/range {p2 .. p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;->c()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$a;

    .line 152
    .line 153
    .line 154
    move-result-object v14

    .line 155
    const/16 v18, 0x5

    .line 156
    .line 157
    const/16 v19, 0x0

    .line 158
    .line 159
    const/4 v15, 0x0

    .line 160
    const/16 v17, 0x0

    .line 161
    .line 162
    move-object/from16 v16, v1

    .line 163
    .line 164
    invoke-static/range {v14 .. v19}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$a;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$a;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$a;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    const/4 v5, 0x7

    .line 169
    const/4 v6, 0x0

    .line 170
    const/4 v1, 0x0

    .line 171
    const/4 v2, 0x0

    .line 172
    const/4 v3, 0x0

    .line 173
    move-object/from16 v0, p2

    .line 174
    .line 175
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;->b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;ILjava/util/Set;ZLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$a;ILjava/lang/Object;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    move-object v3, v0

    .line 180
    goto :goto_3

    .line 181
    :cond_6
    move-object v3, v2

    .line 182
    :goto_3
    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 183
    .line 184
    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 185
    .line 186
    .line 187
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;->F:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;

    .line 188
    .line 189
    iput-object v0, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 190
    .line 191
    invoke-virtual/range {p1 .. p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/z;->a()Ljava/util/List;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_9

    .line 209
    .line 210
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    move-object v4, v2

    .line 215
    check-cast v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/c;

    .line 216
    .line 217
    invoke-virtual {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/c;->b()Ljava/lang/Integer;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    if-eqz v5, :cond_8

    .line 222
    .line 223
    new-instance v5, Lkotlin/ranges/IntRange;

    .line 224
    .line 225
    const/4 v6, 0x0

    .line 226
    invoke-direct {v5, v6, v13}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/c;->b()Ljava/lang/Integer;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    invoke-virtual {v5, v4}, Lkotlin/ranges/IntRange;->i(I)Z

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    if-eqz v4, :cond_7

    .line 242
    .line 243
    :cond_8
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    goto :goto_4

    .line 247
    :cond_9
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$j;

    .line 248
    .line 249
    invoke-direct {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$j;-><init>()V

    .line 250
    .line 251
    .line 252
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->U0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-static {v0}, Lkotlinx/coroutines/flow/c;->a(Ljava/lang/Iterable;)Lkt/b;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-static {v0}, Lkotlinx/coroutines/flow/c;->h(Lkt/b;)Lkt/b;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    new-instance v15, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i;

    .line 265
    .line 266
    move-object v0, v15

    .line 267
    move-object/from16 v2, p0

    .line 268
    .line 269
    move-wide/from16 v4, p3

    .line 270
    .line 271
    move-object/from16 v6, p5

    .line 272
    .line 273
    move/from16 v7, p6

    .line 274
    .line 275
    move-object/from16 v8, p7

    .line 276
    .line 277
    move-object v9, v14

    .line 278
    invoke-direct/range {v0 .. v9}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i;-><init>(Lkt/b;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;DLcom/moloco/sdk/common_adapter_internal/b;ZLjava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 279
    .line 280
    .line 281
    iput-object v10, v11, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$k;->h:Ljava/lang/Object;

    .line 282
    .line 283
    iput-object v14, v11, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$k;->i:Ljava/lang/Object;

    .line 284
    .line 285
    iput v13, v11, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$k;->l:I

    .line 286
    .line 287
    invoke-static {v15, v11}, Lkotlinx/coroutines/flow/c;->A(Lkt/b;Lrs/c;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    if-ne v1, v12, :cond_a

    .line 292
    .line 293
    return-object v12

    .line 294
    :cond_a
    move-object v2, v10

    .line 295
    move-object v0, v14

    .line 296
    :goto_5
    check-cast v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;

    .line 297
    .line 298
    if-nez v1, :cond_b

    .line 299
    .line 300
    new-instance v1, Lcom/moloco/sdk/internal/g0$a;

    .line 301
    .line 302
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 303
    .line 304
    invoke-direct {v1, v3}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    sget-object v3, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 308
    .line 309
    iget-object v2, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->h:Ljava/lang/String;

    .line 310
    .line 311
    new-instance v4, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .line 315
    .line 316
    const-string v5, "Failed to load linear: "

    .line 317
    .line 318
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 322
    .line 323
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    const/16 v4, 0xc

    .line 331
    .line 332
    const/4 v5, 0x0

    .line 333
    const/4 v6, 0x0

    .line 334
    const/4 v7, 0x0

    .line 335
    move-object/from16 p1, v3

    .line 336
    .line 337
    move-object/from16 p2, v2

    .line 338
    .line 339
    move-object/from16 p3, v0

    .line 340
    .line 341
    move-object/from16 p4, v6

    .line 342
    .line 343
    move/from16 p5, v7

    .line 344
    .line 345
    move/from16 p6, v4

    .line 346
    .line 347
    move-object/from16 p7, v5

    .line 348
    .line 349
    invoke-static/range {p1 .. p7}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    return-object v1

    .line 353
    :cond_b
    new-instance v0, Lcom/moloco/sdk/internal/g0$b;

    .line 354
    .line 355
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/g0$b;-><init>(Ljava/lang/Object;)V

    .line 356
    .line 357
    .line 358
    return-object v0
.end method

.method public final w(Ljava/util/List;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/x;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/x;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->d:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/x;

    .line 2
    .line 3
    const/16 v5, 0xc

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/x$a;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/x;Ljava/util/List;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/x;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final x()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->e:Lcom/moloco/sdk/internal/services/g0;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/moloco/sdk/internal/services/g0;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 13
    .line 14
    :goto_0
    return-wide v0
.end method
