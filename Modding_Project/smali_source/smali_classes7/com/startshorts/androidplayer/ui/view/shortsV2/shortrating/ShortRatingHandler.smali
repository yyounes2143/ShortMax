.class public final Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;
.super Ljava/lang/Object;
.source "ShortRatingHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$a;,
        Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final g:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->g:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->a:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$b;

    .line 5
    .line 6
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->c:Ljava/util/Set;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic a(Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->k(Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;)Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->a:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$b;

    .line 2
    .line 3
    return-object p0
.end method

.method private final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->e:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 13
    .line 14
    const-string v2, "ShortRatingHandler"

    .line 15
    .line 16
    const-string v3, "cancelCountDown"

    .line 17
    .line 18
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->e:Lkotlinx/coroutines/r;

    .line 22
    .line 23
    return-void
.end method

.method private final d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->f:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 13
    .line 14
    const-string v2, "ShortRatingHandler"

    .line 15
    .line 16
    const-string v3, "cancelLoadIconsJob"

    .line 17
    .line 18
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->f:Lkotlinx/coroutines/r;

    .line 22
    .line 23
    return-void
.end method

.method private static final k(Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p1, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->b:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    iget-object p1, p1, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->c:Ljava/util/Set;

    .line 11
    .line 12
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method


# virtual methods
.method public final e(IZ)Ljava/lang/String;
    .locals 1
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
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const/16 p1, 0x2d

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public final f()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->c()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->d()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->d:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "shortPlayId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "shortPlayContentInfo"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->d:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->c:Ljava/util/Set;

    .line 31
    .line 32
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->i()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->b:Ljava/lang/String;

    .line 43
    .line 44
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->d:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;

    .line 45
    .line 46
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 47
    .line 48
    new-instance v4, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$loadIcons$1;

    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    invoke-direct {v4, p2, p0, p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$loadIcons$1;-><init>(Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;Lrs/c;)V

    .line 52
    .line 53
    .line 54
    const/4 v5, 0x2

    .line 55
    const/4 v6, 0x0

    .line 56
    const-string v2, "loadIcons"

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->f:Lkotlinx/coroutines/r;

    .line 64
    .line 65
    return-void
.end method

.method public final h()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->i()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->a:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$b;

    .line 6
    .line 7
    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->f()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->d:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->c:Ljava/util/Set;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final j(Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;)V
    .locals 9
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "mShortPlayContentInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->d:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;->w(Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->c()V

    .line 18
    .line 19
    .line 20
    sget-object v2, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 21
    .line 22
    sget-object p1, Lqe/b;->a:Lqe/b;

    .line 23
    .line 24
    invoke-virtual {p1}, Lqe/b;->g()Lcom/startshorts/androidplayer/bean/configure/ServerController;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/ServerController;->getShow_rating_duration()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    int-to-long v3, p1

    .line 33
    const-wide/16 v5, 0x3e8

    .line 34
    .line 35
    mul-long/2addr v3, v5

    .line 36
    new-instance v6, Lbk/a;

    .line 37
    .line 38
    invoke-direct {v6, v0, p0}, Lbk/a;-><init>(Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;)V

    .line 39
    .line 40
    .line 41
    const/4 v7, 0x2

    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->g(Lcom/startshorts/androidplayer/utils/CoroutineUtil;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->e:Lkotlinx/coroutines/r;

    .line 49
    .line 50
    :cond_0
    return-void
.end method
