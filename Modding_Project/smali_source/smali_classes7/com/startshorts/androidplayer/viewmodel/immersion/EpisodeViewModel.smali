.class public final Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;
.super Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;
.source "EpisodeViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final f:Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final e:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;->f:Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lvk/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lvk/a;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;->e:Lms/i;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic A()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final C()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final E(III)Lkotlinx/coroutines/r;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "queryEpisodeList("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const/16 v1, 0x29

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryEpisodeList$1;

    .line 24
    .line 25
    const/4 v9, 0x0

    .line 26
    move-object v4, v0

    .line 27
    move v5, p1

    .line 28
    move v6, p2

    .line 29
    move v7, p3

    .line 30
    move-object v8, p0

    .line 31
    invoke-direct/range {v4 .. v9}, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryEpisodeList$1;-><init>(IIILcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;Lrs/c;)V

    .line 32
    .line 33
    .line 34
    const/4 v6, 0x2

    .line 35
    const/4 v7, 0x0

    .line 36
    const/4 v4, 0x0

    .line 37
    move-object v2, p0

    .line 38
    move-object v5, v0

    .line 39
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method

.method private final F(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;II)Lkotlinx/coroutines/r;
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "queryPrevEpisodeUnlockedStatus("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x29

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1;

    .line 28
    .line 29
    const/4 v10, 0x0

    .line 30
    move-object v4, v0

    .line 31
    move-object v5, p1

    .line 32
    move-object v6, p2

    .line 33
    move v7, p3

    .line 34
    move v8, p4

    .line 35
    move-object v9, p0

    .line 36
    invoke-direct/range {v4 .. v10}, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;IILcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;Lrs/c;)V

    .line 37
    .line 38
    .line 39
    const/4 v6, 0x2

    .line 40
    const/4 v7, 0x0

    .line 41
    const/4 v4, 0x0

    .line 42
    move-object v2, p0

    .line 43
    move-object v5, v0

    .line 44
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method


# virtual methods
.method public final B()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;->e:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final D(Lcom/startshorts/androidplayer/viewmodel/immersion/a;)V
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/viewmodel/immersion/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/a$a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/a$a;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/a$a;->c()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/a$a;->a()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/a$a;->b()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-direct {p0, v0, v1, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;->E(III)Lkotlinx/coroutines/r;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/a$b;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/a$b;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/a$b;->a()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/a$b;->b()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/a$b;->c()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/a$b;->d()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;->F(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;II)Lkotlinx/coroutines/r;

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void

    .line 54
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 55
    .line 56
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 57
    .line 58
    .line 59
    throw p1
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "EpisodeViewModel"

    .line 2
    .line 3
    return-object v0
.end method
